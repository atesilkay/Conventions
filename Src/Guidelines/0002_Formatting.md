# Formatting


## Member Ordering

Members of the class should be ordered as below.

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


Members of the same type should be ordered as below

    1. public
    2. internal
    3. protected internal
    4. protected
    5. private


## Namespaces

- Place namespace using statements together at the top of the file.
- Never put using statement within namespace scope.
- It is a good practice to group namespaces according to company or logical groups.

## Indentation

- Don’t use tabs for indentation. Check if your VS IDE set properly
- Recursively indent all code blocks contained within braces
- Don’t indent object initializers.
- Don’t indent lambda expressions. Treat as object initializers.

## Line Breaking

- If there is a long line break it up from:
  - after comma
  - after operator

- When breaking be careful about readability. Bad example would be seen like this:

    ```cs
    var = a * b / (c - g +
    f) + 4 * z;
    ```



## Spacing

- Keywords must follow with space

    ```cs
    //FALSE
    
    if(true != false)
    {
        //do something
    }
    
    //CORRECT
    
    if (true != false)
    {
        //do something
    }
    ```


- Use single space after comma. For example between method parameters.

    ```cs
    //FALSE
    
    public void Spacing(string name,string surname)
    {
    }
    
    //CORRECT
    
    public void Spacing(string name, string surname)
    {
    }
    ```

- There is no space before or after parenthesis **()**
    ```cs
    //FALSE
    if ( ( true != false ) &  ( false == true ) )
    {
        //do something
    }
    
    //CORRECT
    if ((true != false) & (false == true))
    {
        //do something
    }
    ```

- There is no space before or after bracket **\[\]**
    ```cs
    //FALSE
    Int [ 10 ]  integers = new int [ 10 ] ;
    
    //CORECT
    int[10] integers = new int[10];
    ```

- There is no space before or after for attribute definition brackets **\[Attribute\]**
    ```cs
    //FALSE
    [ Serializable ]
    public class Customer : ICustomer
    {
    }
    
    //CORRECT
    [Serializable]
    public class Customer : ICustomer
    {
    }
    ```

- There is no space before or after for generic brackets **<>**

    ```cs
    //FALSE
    List< int > amounts = new List< int >();
    
    //CORRECT
    List<int> amounts = new List<int>();
    ```

- There is no space before or after for generic brackets **{}**
    ```cs
    FALSE
    public bool EmtyMethod()
    {
        if (true != false) {return true;}
    }
    
    CORRECT
    public bool EmtyMethod()
    {
        if (true != false) { return true; }
    }
    ```


- Nullable type symbol should not be preceded by space **?**
    ```cs
    FALSE
    private int ? maximumValue;
    
    public int CalculateMax(int ? currentValue)
    {
                
    }
    
    CORECT
    private int? maximumValue;
    
    public int CalculateMax(int? currentValue)
    {
                
    }
    ```

- There is no space before or after for member access symbol. **.**

    ```cs
    FALSE
    
    Customer customer = new Customer();
    customer . CalculateMax();
    
    CORECT
    
    Customer customer = new Customer();
    customer.CalculateMax();
    ```

- There is no space before or after for increment decrement symbol. **++ --**
    ```cs
    FALSE
    int yearsToAdd = 1;
    yearsToAdd ++;
    yearsToAdd --;
    
    CORECT
    int yearsToAdd = 1;
    yearsToAdd++;
    yearsToAdd--;
    ```

- There is no space before or after for negative positive signs. **+ -**
    ```cs
    FALSE
    int maxTotal = - 500;
    int minTotal = + 500;
    
    CORECT
    int maxTotal = -500;
    int minTotal = +500;
    ```

- There is space before or after for negative positive signs. **:**
    ```cs
    FALSE
    
    public class Class2<T>:Class1 where T:string
    {
        public Class2(int x):base(x)
        {
        }
    }
    
    CORECT
    public class Class2<T> : Class1 where T : string
    {
        public Class2(int x) : base(x)
        {
        }
    }
    ```

- There should not be meaningless multiple spaces within or end of the line.
- Semicolons don’t preceded with space
- Infix notations : There is single space surrounding operator
    ```cs
    FALSE
    
    int yearsToAdd=1;
    yearsToAdd=3+5;
    yearsToAdd=5*5;
    
    bool why=! false;
    
    CORECT
    
    int yearsToAdd = 1;
    yearsToAdd = 3 + 5;
    yearsToAdd = 5 * 5;
    
    bool why = !false;
    ```

- Postfix notations there is no space between operator and argument.


## Brackets / Braces

Allman style will be applied for all the brackets.

- Curly brackets go on their own line in most cases.
    ```cs
    FALSE
    
    public string GetName(){
    
    //implementation            
    }
    
    CORECT
    
    public string GetName()
    {
    
    //implementation            
    }
    ```


- According to the first rule statements should not be on a single line.
    ```cs
    FALSE
    
    if (canHold) { var k = 255; }
    
    CORECT
    
    if (canHold)
    {
        var k = 255;
    }
    ```

### Properties

- Abstract properties goes into a single line with brackets

    ```cs
    FALSE
    
    public abstract int Age
    {
        get; set;
    }
    
    CORRECT
    
    public abstract int Age { get; set; }
    ```
 

- Simple getters and setters should go on the same line
- When getter or setter gets complex common rule applies. Brackets goes to their own lines.
- Getter or setter both written multiline or single line.

### Methods

- All method declaration brackets should go their own lines. This actually applies to all elements using brackets.

    ```cs
    FALSE
    
    public int GetAge() { return Age; }
    
    CORECT
    
    public int GetAge()
    {
        return Age;
    }
    ```

- Event empty methods braces should be in separate lines

### Conditional statements

- Always use braces for conditional statements

    ```cs
    FALSE
    
    if (true)
        return false;
    
    CORECT
    
    if (true)
    {
        return false;
    }
    ```


## Empty Lines


Empty/blank lines are helping to improve readability of the document.

- Elements should be separated by single black line.

    ```cs
    FALSE
    
    public void Method1()
    {
    }
    public bool Property
    {
        get { return true; }
    }
    ```

- Multiple blank lines are not allowed.
    ```cs
    FALSE
    
    public bool Enabled
    {
        get
        {
            Console.WriteLine("Getting the enabled flag.");
    
    
            return this.enabled;
        }
    }
    ```

- Opening or closing brackets never preceded by blank line

    ```cs
    FALSE
    
    public bool Enabled
    
    {
        get
    
        {
            return this.enabled;
        }
    }
    ```

- Opening or closing brackets never followed by blank line

    ```cs
    
    FALSE
    
    public bool Enabled
    {
    
        get
        {
    
            return this.enabled;
        }
    }
    
    ```

- Closing brackets followed by blank line

    ```cs
    
    FALSE
    
    public bool Enabled
    {
        get
        {
            return this.enabled;
        }}
        
    ```

- Chained blocks such as try/catch and if-else should not be separated by blank line
    ```cs
    FALSE
    
    try
    {
        this.SomeMethod();
    }
    
    catch (Exception ex)
    {
        Console.WriteLine(ex.ToString());
    }
    ```

- Do – while block should not be separated by blank line
    ```cs
    FALSE
    
    do
    {
        Console.WriteLine("Loop forever");
    }
    
    while (true);
    ```


- Source file should not contain blank lines at the beginning or at the end.

## Parenthesis

- Try to avoid unnecessary parenthesis![]

## Statements

- Do not put more than one variable or variables of different types on the same line when declaring them.

    ```cs
    int a,b,c;
    string name,surname;
    ```

- Each line should contain only one statement.

## Region

- Separate interface implementation by using regions. (For example separate IDisposable implementations with a region)

- If class whole purpose is implementing that interface do not use region.

- Private fields and constants should be put in a region

- If there is a nested class put it in a region (AV2407 kuralını incele)


## Attributes

- Attributes should be defined separately.
- If they are related they can be combined together

    ```cs
    FALSE
    
    [Attrbute1, Attrbute2, Attrbute3]
    public class MyClass
    {…}
    
    CORECT
    [Attrbute1, RelatedAttribute2]
    [Attrbute3]
    [Attrbute4]
    public class MyClass
    {…}
    ```


## Comments

- All comments should be written in the same language, be grammatically correct, and contain appropriate punctuation

- Do not use inline-comments to explain obvious code. Well written code is self documenting

- If you are commenting more than the written code most probably there is something wrong. That code is potentially buggy or too complicated and should be worked on.


![](images/quote-code-never-lies-comments-sometimes-do-ron-jeffries-87-86-54.jpg)


### Single Line Comments

- You should use the `// `comment style to `"comment out"` code

- Single line comments must be indented to the indent level when they are used for code documentation.

- Use inline-comments to explain assumptions, known issues, and algorithm insights.

- Only use comments for bad code to say “fix this code” – otherwise remove, or rewrite the code!

### Block Comments

- Block comments should usually be avoided.
- Generally block comments are useful for comment out large sections of code.
- When you wish to use block comments you should use the following style

    ```cs
       /* Line 1
        * Line 2
        * Line 3
        */

    ```


### Documentation Comments

- For descriptions use of the `///` comments to give C ♯ standard descriptions is recommended.

- Always add `CDATA` tags to comments containing code and other embedded markup in order to avoid encoding issues.

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