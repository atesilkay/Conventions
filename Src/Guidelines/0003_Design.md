
# Design Tips

This section contains various design and performance tips. Tips are not grouped into specific categories.
Some of them can be controlled via static analyzer tools but some of them needs to be practiced by developers.


## Constants

* Use constants for values which will **never change**
* Declare constant rather than `0`,`1`, `false`, `null`etc.
* Don't pass boolean parameters. Make them constant instead.

<div style="page-break-after: always;"></div>

## Readonly vs constant

Constant burned to the compiled code. Readonly initialized during runtime before object constructor exists. After that they are frozen.

Keep in mind if you want to change constant libraries should be built and distributed again.

Although following example is not perfect it is sufficient to demonstrate the situation here.
Image TypeA and TypeB are in different assemblies. TypeB is referencing constant value from TypeA.
When TypeB is compiled that constant value is taken and burned directly to AssemblyB.
At some point Diameter value changed and TypeA compiled but TypeB is not compiled.
In this case TypeB will contain old value of diameter.
If you forget to compiled TypeB you'll have major problems.

    ```cs
    namespace AssemblyA
    {
        public class TypeA
        {
            public const int Diameter = 29;
        }
    }

    namespace AssemblyB
    {
        public class TypeB
        {
            public Calculate()
            {
                var int = TypeA.Diameter;
            }        
        }
    }
    ```

<div style="page-break-after: always;"></div>

## Static 

* If have a `static` variable, consider passing it as a parameter. Try to avoid direclty accessing statics within classes, methods.
* If you have predefined object of a type use static readonly

    ```cs
    public class FileFormat
    {
        public static readonly FileFormat Merchantormat = new FileFormat("mercanh.config");
        public static readonly FileFormat PartnerFormat = new FileFormat("partner.config");
        ...
    }
    ```

## Declarations

* Always try to declare variables within minimum scope block.
* Try to initialize variables as they are declared.


<div style="page-break-after: always;"></div>

## Class

* Fields should be prive and can be accessed through Properties
* Don't provide setter properties unless value is going to be changed by callers
* Keep property getters and setters simple and clean. They should not generate exceptions.
* Check arguments. If they are not within valid range, value etc. Throw exception like `ArgumentOutofRange` exception.
* When creating new class instance use object initializers instead of seperate statements.

    ```cs  
        Cat cat = new Cat 
        { 
            Age = 10, 
            Name = "Fluffy" 
        };
    ```
<div style="page-break-after: always;"></div>

### Constructor

* Abstract types should not have public constructors.
* Constructor should create valid ready to be used object. You can not let user to set parameters to make it valid to run.

    Following class can be instantiated but it will not be valid object. We may have considered creating constructor to take hostname as a parameter.

    ```cs   
    public class ServiceConnector
    {
        public void ServiceConnector()
        { }
    
        //constructor requires necessary parameters
        void ServiceConnector(string host)
        { 
            //...
        }    
        public string Host { get; set; }
        public void Connect();    
    }
    ```
<div style="page-break-after: always;"></div>

### new & base & virtual

* Do not use the “new” keyword on method and property declarations to hide members of a derived type. This causes to break polymorphism.

    Following application first prints "Laser_____Document#1", then "Document#1"

    ```cs   
    public class Printer
    {
        public virtual void Print(string document)
        {
            Console.WriteLine(document);
        }
    }

    public class LaserPrinter:Printer
    {
        public new void Print(string document)
        {
            Console.WriteLine("Laser_____" + document);
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            LaserPrinter prnt = new LaserPrinter();
            prnt.Print("Document #1"); //Prints Laser.....

            var basePrnt = (Printer) prnt;
            basePrnt.Print("Document #1"); //Prints Document#1
        }
    }

    ```

<div style="page-break-after: always;"></div>

* Only use the “base” keyword when invoking a base class constructor or base implementation within an override.

    Imagine you've written following library to help your calculations and it is working fine.

    ```cs   
    public class Math
    {
        public virtual int Sum(int a, int b)
        {
            return a + b;
        }
    }
    public class SuperMath: Math
    {
        public int MultiplyByTwo(int x)
        {
            return base.Sum(x, x);
        }
    }
    static void Main(string[] args)
    {
        SuperMath sm = new SuperMath();
        Console.WriteLine(sm.MultiplyByTwo(2)); // prints 4
    }
    ```

    At some day your SuperMath calculations changed from normal sum and you wanted to introduce new behaviour.
    Your new code will look like following. Since you've called base method within MultiplyByTwo method your programm will keep executing old behaviour.

    ```cs   
    public class Math
    {
        public virtual int Sum(int a, int b)
        {
            return a + b;
        }
    }
    public class SuperMath: Math
    {
        public int MultiplyByTwo(int x)
        {
            return base.Sum(x, x);
        }
        public override int Sum(int a, int b)
        {
            return a + b + 1;
        }
    }
    static void Main(string[] args)
    {
        SuperMath sm = new SuperMath();
        Console.WriteLine(sm.MultiplyByTwo(2)); // prints 4
    }
    ```
<div style="page-break-after: always;"></div>

* Do not call virtual members on an object inside its constructors. 

    When virtual member is called. Most derived override called before constructor execution of derived class. The example below illustrates this problem:
      1. Constructor of Vehicle called
      2. StartEngine within SUV called
      3. CheckFuel within Vehicle called
      4. Tank is empty because it is set via constructor of SUV

    ```cs 
    public interface ITank
    {
        bool Empty { get; }
    }
    class Tank : ITank
    {
        public bool Empty { get {return true;}} //Against formatting rules
    }
    public abstract class Vehicle
    {
        private ITank _tank;
        public ITank Tank
        {
            get { return _tank; }
            set { _tank = value; }
        }
        public Vehicle()
        {
            StartEngine();
        }
        protected abstract void StartEngine();
        protected void CheckFuel()
        {
            if (!Tank.Empty) // Crashes 
            {
                // startit it
            }
        }
    }
    public class SUV : Vehicle
    {   
        public SUV(ITank tank)
        : base()
        {
            Tank = tank;
        }
        protected override void StartEngine()
        {
            CheckFuel();
        }    
    }
    ```
<div style="page-break-after: always;"></div>

### Method

* Don't use default values. Use overloads and set default values within method.

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public class Point
{
    public void SetPoint(int x, int y = 0)
    {
        //implementation
    }
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public class Point
{
    public void SetPoint(int x, int y)
    {
        //implementation
    }
    public void Set(int x)
    {
        SetPoint(x, 0);
    }
}
```
</div>
</div>
</div>
</div>
</div>  


* If parameter countmore than 5 try to refactor or consider using struct or class
* Don't use parameter types to distinguish methods if behaviour is the same

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
TypeA Parse(string json);
TypeA ParseFromXml(XmlDocument xml);
TypeA ParseFromStream(Stram stream);
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs          
TypeA Parse(string json);
TypeA Parse(XmlDocument xml);
TypeA Parse(Stram stream);
```
</div>
</div>
</div>
</div>
</div>  

* Don't use parameters to hold state temporarily. This will cause confusion
* Methods should not take boolean parameters. This indicates they are doing more than one job.
* try to avoid ref / out parameters

<div style="page-break-after: always;"></div>

### Properties

* Properties don't to be called within order. They should not depend on each other to create valid state of the object. In other words properties can be set in any order without causing exceptions.


    ```cs  
    class Dealer()
    {
        private string _code; 
        public string Code
        {
            get { return _code; }
            set { _code = value; }
        }

        private string _region; 
        public string Region
        {
            get { return _region; }
            set {         
                _region = value;
                 RegisterDealer();
            }
        }

        protected void RegisterDealer()
        {
            Register(Code,Region);
        }    
    }
    ```

<div style="page-break-after: always;"></div>

## Enums

* Use `enums` instead of `constants` or `#define` values
* Don't use `Enum.IsDefined` since it is an expensive call
* Be carefull before changing enums, they probably will be used by many libraries.
* If enum members will not be used any more mark them with `ObsoleteAttribute`
* Don't assign values explicitly to enumerations unless you want to enforce specific value.
* The first value in an enumeration is the default; make sure that the most appropriate simple enumeration value is listed first.

<div style="page-break-after: always;"></div>

## Strings

* First rule don't hardcode strings. Make them constants
* Second rule don't hardcode strings. Think about using `resources` or something else.
* String literals should start with `@` to escape chars.
* Don't concetanation with + within loops. Use Appender

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
string str = string.Empty;
for (int i = 0; i < 10; i++)
{
    str += i.ToString();
} 
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
StringBuilder sb = new StringBuilder();
for (int i = 0; i < 10; i++)
{
    sb.Append(i.ToString());
}
```
</div>
</div>
</div>
</div>
</div>  

*  Do use the String.ToUpperInvariant method instead of the String.ToLowerInvariant method when you
normalize strings for comparison. <span id="SA1133_" class="spanny">[[CA1308](#)]</span>

* Avoid hidden string allocations within a loop. Use String.Compare() for case-sensitive

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
int id = -1;
string name = “ninja developer”;
for(int i=0; i < developerList.Count; i++)
{
    if(developerList[i].Name.ToLower() == name)
    {
        id = customerList[i].ID;
    }
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
int id = -1;
string name = “ninja developer”;
for(int i=0; i < developerList.Count; i++)
{
    // The “ignoreCase = true” argument performs a
    // case-insensitive compare without new allocation.
    if(String.Compare(developerList[i].Name, name, true)== 0)
    {
        id = developerList[i].ID;
    }
}
```
</div>
</div>
</div>
</div>
</div>  

* `use String.IsNullOrEmpty` instead of `(s == null)` or `(s.Length == 0)`.

## Arrays

* Static readonly arrays are misguiding since their elements can change. Instead use read-only collections.
* Don't return **null** arrays or collection. Return **empty** arrays and collections instead of `NULL` reference.

## Structs

* Consider defining a structure instead of a class if most of the following conditions apply:

  * Instances of the type are small (16 bytes or less) and commonly short-lived.
  * The type is commonly embedded in other types.
  * The type logically represents a single value and is similar to a primitive type, like an int or a double. Such as amount
  * The type is immutable.
  
* Avoid methods when defining struct

<div style="page-break-after: always;"></div>

## Statements
### Switch

* Switch statements shuld have default

### Loops

Don't change loop variable within loop

### Conditions

* Avoid evaluate boolean againts true or false.

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
if(valid == true)
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
if(valid)
```
</div>
</div>
</div>
</div>
</div>  

* Avoid assignments, increments within conditional statements if( (i=2) == 2)

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
if((i=5) > dayOfTheWeek)
```
</div>
</div>
</div>
</div>
</div>

* simplify compex conditionals. encapsulate them within methods

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
if (((value > _minValue) && (value != _maxValue)) && (value < _maxValue))
{…}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
isHigherThanMin = (value > _minValue);
dontEqualMax = (value != _maxValue);
isSmallMax = (value < _maxValue);
isInValueRange =  isHigherThanMin & dontEqualMax & isSmallMax
```
</div>
</div>
</div>
</div>
</div>  


* if statement can be simplified replace if/else statements with them

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
bool eligible = false;
if (value > 10)
{
    eligible = true;
}
else
{
    eligible = false;
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
bool eligible = (value > 10);
```
</div>
</div>
</div>
</div>
</div>  


<div style="page-break-after: always;"></div>

## Exceptions
* Always try to catch specific exceptions. Try to be as specific as possible.
```cs
try
{
}
catch (ArgumentNullException ex)
{
}
catch (ArgumentOutOfRangeException ex)
{
}
catch (TimeoutException ex)
{
}
catch (Exception ex)
{         
}
```

* Don't use `throw ex;` you lose call stack;

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
try
{
}
catch (Exception ex)
{
    //Logging etc. 
    throw ex;
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs          
try
{
}
catch (Exception ex)
{
    //Logging etc. 
    throw;
}
```
</div>
</div>
</div>
</div>
</div>  


* Empty catch block is like a black hole. Never use unless you have a really really good requirement

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">NOT GOOD</span></div>
<div class="divTableCell">
```cs        
try
{
}
catch (Exception ex)
{
    //If you don't do anything here exception will be swollen.
}
```
</div>
</div>
</div>
</div>
</div>  

* Avoid try-catch within catch block

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">NOT GOOD</span></div>
<div class="divTableCell">
```cs        
try
{
}
catch (Exception ex)
{
    //Logging etc. 
    try
    {

    }
    catch (Exception ex)
    {
        //Did some recovery and logging
        throw;
    }                
}
```
</div>
</div>
</div>
</div>
</div>  

* Don't throw exceptions within finally block

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">NOT GOOD</span></div>
<div class="divTableCell">
```cs        
try
{
}
catch (Exception ex)
{
    //Did some recovery and logging
}
finally
{
    if(transaction.IsFaulted)
    {
        throw new MyException();
    }
}
```
</div>
</div>
</div>
</div>
</div>

* Derive from Exception not ApplicationException (!!!)
* If exception will travel accross application boundaries than it should be serializable


<div style="page-break-after: always;"></div>

## Cleanup

* Always implement IDisposable if you're accessing native sources (stream, file, connection etc.)
* Disposable object should be cleaned within finally block
* If you have native resource allocations free them within finally block. (stream, file, connection etc.)
* Call the GC.SuppressFinalize method to prevent Finalize from being executed if Dispose() has already been called.

```cs
public void Dispose()
{
    Dispose(true);
    GC.SuppressFinalize(this);
}
```
* Make sure that Dispose can be called multiple times safely; all other methods should raise an ObjectDisposedException if Dispose has already been called.



## Null Control

* If a reference may be null, test it before using it
* use Debug.Assert to verify that it is not null. Debug.Assert statements will be removed when assembly compiled on release mode. (???)


## Comments

* Never use comments to track things to done.Nobody cares about TODO's. They are hard to reach and track.


## Miscellaneous

* Build with the highest warning level
* Always remove unnecessary libraries. By doing this you'll have reduced package sizes.
* Don't use magic numbers. Consider making them constants.
* Direct casts -> as
* use var only type is obvious.
* Don't use magic numbers