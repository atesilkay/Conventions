# Formatting


## Member Ordering

* Members of the class should be ordered as below.

    1. Fields
    2. Constructors
    3. Finalizers (Destructors)
    4. Delegates
    5. Events
    6. Enums
    7. Interfaces
    8. Properties
    9. Indexers
    10. Methods
    11. Structs
    12. Classes


* Members of the same type should be ordered as below

    1. public
    2. internal
    3. protected internal
    4. protected
    5. private

For ordering these rules may be applied <span class="spanny">[[SA1200 - SA1217](#ordering-rules)]</span>
<div style="page-break-after: always;"></div>

## Namespaces

* Place namespace using statements together at the top of the file.
* Never put using statement within namespace scope.
* It is a good practice to group namespaces according to company or logical groups.

<div style="page-break-after: always;"></div>

## Indentation

* Don’t use tabs for indentation. Check if your VS IDE set properly <span id="SA1027_" class="spanny">[[SA1027](#spacing-rules)]</span>
* Recursively indent all code blocks contained within braces
* Don’t indent object initializers.

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
var customer = new Customer()
                {
                    Age = 1,
                    Name = "Barış",
                    Surname = "Akan"
                };
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
var customer = new Customer()
{
    Age = 1,
    Name = "Barış",
    Surname = "Akan"
};
```
</div>
</div>
</div>
</div>
</div>


* Don’t indent lambda expressions. Treat as object initializers.

<div style="page-break-after: always;"></div>

## Line Breaking

* If there is a long line break it up from:  
  * after comma  <span id="SA1113_" class="spanny">[[SA1113](#readability-rules)]</span>
  * after operator
  
* When breaking be careful about readability. Bad example would be seen like this:
  
<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    var = a * b / (c - g +
    f) + 4 * z;
```
</div>
</div>
</div>
</div>
</div>


<div style="page-break-after: always;"></div>

## Spacing

* Keywords must follow with space <span id="SA1000_" class="spanny">[[SA1000](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
if(true != false)
{
    //do something
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
if (true != false)
{
    //do something
}
```
</div>
</div>
</div>
</div>
</div>


* Use single space after comma. For example between method parameters. <span id="SA1001_" class="spanny">[[SA1001](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public void Spacing(string name,string surname)
{
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public void Spacing(string name, string surname)
{
}
```
</div>
</div>
</div>
</div>
</div>


* There is no space before or after parenthesis **()** <span id="SA1008_9_" class="spanny">[[SA1008 - SA1009](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
if ( ( true != false ) &  ( false == true ) )
{
    //do something
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
if ((true != false) & (false == true))
{
    //do something
}
```
</div>
</div>
</div>
</div>
</div>

* There is no space before or after bracket **\[\]**  <span id="SA1010_11_" class="spanny">[[SA1010 - SA1011](#spacing-rules)]</span>
<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
Int [ 10 ]  integers = new int [ 10 ] ;
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
int[10] integers = new int[10];
```
</div>
</div>
</div>
</div>
</div>      

* There is no space before or after for attribute definition brackets **\[Attribute\]** <span id="SA1016_17_" class="spanny">[[SA1016 - SA1017](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
[ Serializable ]
public class Customer : ICustomer
{
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
[Serializable]
public class Customer : ICustomer
{
}
```
</div>
</div>
</div>
</div>
</div>


* There is no space before or after for generic brackets **<>** <span id="SA1014_15_" class="spanny">[[SA1014 - SA1015](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
List< int > amounts = new List< int >();
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
List<int> amounts = new List<int>();
```
</div>
</div>
</div>
</div>
</div>   
 

* There is no space before or after for generic brackets **{}** <span id="SA1012_13_" class="spanny">[[SA1012 - SA1013](#spacing-rules)]</span>


<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public bool EmtyMethod()
{
    if (true != false) {return true;}
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public bool EmtyMethod()
{
    if (true != false) { return true; }
}
```
</div>
</div>
</div>
</div>
</div>   
  

* Nullable type symbol should not be preceded by space **?** <span id="SA1018_" class="spanny">[[SA1018](#spacing-rules)]</span>


<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
private int ? maximumValue;
    
public int CalculateMax(int ? currentValue)
{
                
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
private int? maximumValue;
    
public int CalculateMax(int? currentValue)
{
                
}
```
</div>
</div>
</div>
</div>
</div>

* There is no space before or after for member access symbol. **.** <span id="SA1019_" class="spanny">[[SA1019](#spacing-rules)]</span>
<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
Customer customer = new Customer();
customer . CalculateMax();
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
Customer customer = new Customer();
customer.CalculateMax();
```
</div>
</div>
</div>
</div>
</div>


* There is no space before or after for increment decrement symbol. **++ --** <span id="SA1020_" class="spanny">[[SA1020](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
int yearsToAdd = 1;
yearsToAdd ++;
yearsToAdd --;
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
int yearsToAdd = 1;
yearsToAdd++;
yearsToAdd--;
```
</div>
</div>
</div>
</div>
</div>


* There is no space before or after for negative positive signs. **+ -** <span id="SA1021_22_" class="spanny">[[SA1021 - SA1022](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
int maxTotal = - 500;
int minTotal = + 500;
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
int yearsToAdd = 1;
int maxTotal = -500;
int minTotal = +500;
```
</div>
</div>
</div>
</div>
</div>


* There is space before or after for negative positive signs. **:** <span id="SA1024_" class="spanny">[[SA1024](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public class Class2<T>:Class1 where T:string
{
    public Class2(int x):base(x)
    {
    }
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public class Class2<T> : Class1 where T : string
{
    public Class2(int x) : base(x)
    {
    }
}
```
</div>
</div>
</div>
</div>
</div>
   

* There should not be meaningless multiple spaces within or end of the line. <span id="SA1025_28_" class="spanny">[[SA1025 - SA1028](#spacing-rules)]</span>
* Semicolons don’t preceded with space <span id="SA1002_" class="spanny">[[SA1002](#spacing-rules)]</span>
* Infix notations : There is single space surrounding operator <span id="SA1003_" class="spanny">[[SA1003](#spacing-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
int yearsToAdd=1;
yearsToAdd=3+5;
yearsToAdd=5*5;
    
bool why=! false;
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
int yearsToAdd = 1;
yearsToAdd = 3 + 5;
yearsToAdd = 5 * 5;
    
bool why = !false;
```
</div>
</div>
</div>
</div>
</div> 


* Postfix notations there is no space between operator and argument. <span id="SA1003_" class="spanny">[[SA1003](#spacing-rules)]</span>

<div style="page-break-after: always;"></div>

## Brackets / Braces

Allman style will be applied for all the brackets.

* Curly brackets go on their own line in most cases. <span id="SA1500_" class="spanny">[[SA1500](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public string GetName(){  
   //implementation            
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public string GetName()
{  
   //implementation            
}
```
</div>
</div>
</div>
</div>
</div>     
  

* According to the first rule statements should not be on a single line. <span id="SA1501_" class="spanny">[[SA1501](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
if (canHold) { var k = 255; }
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
if (canHold)
{
    var k = 255;
}
```
</div>
</div>
</div>
</div>
</div>    
      
<div style="page-break-after: always;"></div>

### Properties

* Abstract properties goes into a single line with brackets

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public abstract int Age
{
    get; set;
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public abstract int Age { get; set; }
```
</div>
</div>
</div>
</div>
</div>  

     

* Simple getters and setters should go on the same line

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public int Age
{
    get; set;
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public int Age { get; set; }
```
</div>
</div>
</div>
</div>
</div>  

 
* When getter or setter gets complex common rule applies. Brackets goes to their own lines.
    
* Getter or setter both written multiline or single line. <span id="SA1504_" class="spanny">[[SA1504](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public bool Enabled
{
    get { return this.enabled; }

    set
    {
        this.enabled = value;
    }
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public bool Enabled
{
    get { return this.enabled; }
    set { this.enabled = value; }
}
//OR
public bool Enabled
{
    get
    {
        return this.enabled;
    }

    set
    {
        this.enabled = value;
    }
}
```
</div>
</div>
</div>
</div>
</div>  


### Methods

* All method declaration brackets should go their own lines. This actually applies to all elements using brackets. <span id="SA1502_" class="spanny">[[SA1502](#layout-rules)]</span>
    
<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public int GetAge() { return Age; }
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public int GetAge()
{
    return Age;
}
```
</div>
</div>
</div>
</div>
</div>  
    

* Event empty methods braces should be in separate lines

* Parameter list must follow decleration  <span id="SA1114_" class="spanny">[[SA1114](#readability-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public string JoinName(
 
    string first, string last)
{
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public string JoinName(string first, string last)
{
}
```
</div>
</div>
</div>
</div>
</div>  


* If you break parameters into multiple lines line  <span id="SA1115_17_" class="spanny">[[SA1115 - SA1116 - SA1117](#readability-rules)]</span>
    
    * parameters can be on a single line
    * parameters can be on multiple lines "each following with a comma"

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    public string JoinName(string first
        ,string last)
    {
    }
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
    public string JoinName(string first, string last)
    {
    }
    
    //OR

    public string JoinName(,
        string first,
        string last)
    {
    }
```
</div>
</div>
</div>
</div>
</div>  

<div style="page-break-after: always;"></div>

## Empty Lines

Empty/blank lines are helping to improve readability of the document. 

* Elements should be separated by single black line. <span id="SA1516_" class="spanny">[[SA1516](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    public void Method1()
    {
    }
    public bool Property
    {
        get { return true; }
    }
```
</div>
</div>
</div>
</div>
</div>  


* Multiple blank lines are not allowed. <span id="SA1507_" class="spanny">[[SA1507](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    public bool Enabled
    {
        get
        {
            Console.WriteLine("Getting the enabled flag.");
    

    
            return this.enabled;
        }
    }
```
</div>
</div>
</div>
</div>
</div>  



* Opening or closing brackets never preceded by blank line <span id="SA1508_09_" class="spanny">[[SA1508 - SA1509](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    public bool Enabled
    
    {
        get
    
        {
            return this.enabled;
        }
    }
```
</div>
</div>
</div>
</div>
</div>  


* Opening or closing brackets never followed by blank line <span id="SA1505_" class="spanny">[[SA1505](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    public bool Enabled
    {
    
        get
        {
    
            return this.enabled;
        }
    }
```
</div>
</div>
</div>
</div>
</div>  

* Source file should not contain blank lines at the beginning or at the end. <span id="SA1517_18_" class="spanny">[[SA1517 - SA1518](#layout-rules)]</span>

### Statements

* Closing brackets followed by blank line <span id="SA1513_" class="spanny">[[SA1513](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    public bool Enabled
    {
        get
        {
            return this.enabled;
        }}
```
</div>
</div>
</div>
</div>
</div>      


* Chained blocks such as try/catch and if-else should not be separated by blank line <span id="SA1510_" class="spanny">[[SA1510](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    try
    {
        this.SomeMethod();
    }
    
    catch (Exception ex)
    {
        Console.WriteLine(ex.ToString());
    }
```
</div>
</div>
</div>
</div>
</div>  

* Do – while block should not be separated by blank line <span id="SA1511_" class="spanny">[[SA1511](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    do
    {
        Console.WriteLine("Loop forever");
    }
    
    while (true);
```
</div>
</div>
</div>
</div>
</div>  

<div style="page-break-after: always;"></div>

## Parenthesis

* Try to avoid unnecessary parenthesis![] <span id="SA1119_" class="spanny">[[SA1119](#layout-rules)]</span>

* Openning parenthesis of method calls should follow declaration.  <span id="SA1110_" class="spanny">[[SA1110](#readability-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    return CalculatePoint
        (10,20);
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
    return CalculatePoint(10,20);
```
</div>
</div>
</div>
</div>
</div>  



* Closing parenthesis should follow last parameter.  <span id="SA1111_" class="spanny">[[SA1111](#readability-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
return CalculatePoint(10,20
);
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
return CalculatePoint(10,20);
```
</div>
</div>
</div>
</div>
</div>  

  
* If there are no parameters openning and closing parenthesis shuld be on the same line.  <span id="SA1112_" class="spanny">[[SA1112](#readability-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
var x = this.CalculatePoint(
                            );
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
var x = this.CalculatePoint();
```
</div>
</div>
</div>
</div>
</div>  

<div style="page-break-after: always;"></div>

## Statements

* Do not put more than one variable or variables of different types on the same line when declaring them. <span id="SA1132_" class="spanny">[[SA1132](#readability-rules)]</span>
    
<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
    int a,b,c;
    string name,surname;
```
</div>
</div>
</div>
</div>
</div>      


* Each line should contain only one statement.

* Do not encapsulate statement brackets within regions <span id="SA1109_" class="spanny">[[SA1109](#readability-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">BAD</span></div>
<div class="divTableCell">
```cs        
if (x != y)
#region
{
}
#endregion
```
</div>
</div>
</div>
</div>
</div>  

* Don't embed comments between block statements <span id="SA1108_" class="spanny">[[SA1108](#readability-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">BAD</span></div>
<div class="divTableCell">
```cs        
if (x != y)
// Make sure x does not equal y
{
}
```
</div>
</div>
</div>
</div>
</div>  


### Conditional statements

* Always use braces for conditional statements  <span id="SA1503_" class="spanny">[[SA1503](#layout-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
if (true)
    return false;
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
if (true)
{
    return false;
}
```
</div>
</div>
</div>
</div>
</div>  

<div style="page-break-after: always;"></div>

## Class Definitions

* Type declarations of generic class should go their own lines  <span id="SA1127_" class="spanny">[[SA1127](#readability-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
private void Method<T, R>() where T : class where R : class, new()
{
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
private void Method<T, R>()
    where T : class
    where R : class, new()
{
}
```
</div>
</div>
</div>
</div>
</div>  


* Constructor initializer goes into a seperate line with the colon **:** character <span id="SA1128_" class="spanny">[[SA1128](#readability-rules)]</span>

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
public class TypeName
{
    public TypeName() : this(0)
    {
    }

    public TypeName(int value)
    {
    }
}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
public class TypeName
{
    public TypeName() 
        : this(0)
    {
    }
    public TypeName(int value)
    {
    }
}
```
</div>
</div>
</div>
</div>
</div>  

<div style="page-break-after: always;"></div>

## Region

* Separate interface implementation by using regions. (For example separate IDisposable implementations with a region)

* If class whole purpose is implementing that interface do not use region.

* Private fields and constants should be put in a region

* If there is a nested class put it in a region (AV2407 kuralını incele)


<div style="page-break-after: always;"></div>

## Attributes

* Attributes should be defined separately.  <span id="SA1133_" class="spanny">[[SA1133](#readability-rules)]</span>
* If they are related they can be combined together (unless if above rule is enabled)

<div markdown="1" class="divTableCellO">
<div class="divTable">
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCellF"><span class="spannyfalse">FALSE</span></div>
<div class="divTableCell">
```cs        
[Attrbute1, Attrbute2, Attrbute3]
public class MyClass
{…}
```
</div>
</div>
<div class="divTableRow">
<div class="divTableCellF"><span class="spannytrue">TRUE</span></div>
<div class="divTableCell">
```cs     
[Attrbute1, RelatedAttribute2]
[Attrbute3]
[Attrbute4]
public class MyClass
{…}
```
</div>
</div>
</div>
</div>
</div>  


<div style="page-break-after: always;"></div>

## Comments

* All comments should be written in the same language, be grammatically correct, and contain appropriate punctuation

* Do not use inline-comments to explain obvious code. Well written code is self documenting

* If you are commenting more than the written code most probably there is something wrong. That code is potentially buggy or too complicated and should be worked on.



### Single Line Comments

* You should use the `// `comment style to `"comment out"` code

* Single line comments must be indented to the indent level when they are used for code documentation.

* Use inline-comments to explain assumptions, known issues, and algorithm insights.

* Only use comments for bad code to say “fix this code” – otherwise remove, or rewrite the code!

### Block Comments

* Block comments should usually be avoided.
* Generally block comments are useful for comment out large sections of code.
* When you wish to use block comments you should use the following style
     
    ```cs
       /* Line 1
        * Line 2
        * Line 3
        */

    ```


### Documentation Comments

* For descriptions use of the `///` comments to give C ♯ standard descriptions is recommended.

* Always add `CDATA` tags to comments containing code and other embedded markup in order to avoid encoding issues.
 
    ```cs
        /// <example>
        /// Add the following key to the “appSettings” section of your config:
        /// <code><![CDATA[
        /// <configuration>
        /// <appSettings>
        /// <add key=”mySetting” value=”myValue”/>
        /// </appSettings>
        /// </configuration>
        /// ]]]]></code>
        /// </example>

    ```