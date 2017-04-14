# Naming Conventions

Naming is one of the hardest things we developers have to face each day. Programmers tend to us bad names within their code.
It is hard to find good and understandable names and it is very hard to keep that as a habit. 
Each line of code you write will be read by someone else in the future so help them and leave understandable code.
You might already be working on someone elses code so plase start correct bad namings as you struggle to understand the code. 
Most important you might be helping future yourself who will be reading five years old code you have written.


<div align="center" class="imgDiv">
    <img src="images\joke.jpg" width="400px">
</div>

<div style="page-break-after: always;"></div>



### Language Perspective

Code is read so names should not be disconnected from the language

- Always and always favor readibility. (Ex: Otorhinolaryngologist, Worcestershire)
- **Don’t** use meaningless words.  (Ex: foo, dodo, aliveli)
- **Don’t** use general words. (Ex: data,input)
- Names should follow English grammar rules.
- Capitalize compond word correctly 

```cs
    DataBase -> Database
    MetaData -> Metadata
    SurName -> Surname
```
<div style="page-break-after: always;"></div>

### Character Limitations


- Identifiers should contain only alphabetic characters.
- **Don’t** use non-English characters. (Ex: Turkish Ş, Ç, Ü, Ğ, Ö, ş, ç, ü, ğ, ö, ı etc.)
- **Don’t** use _underscore or any special chars (*)
- **Don’t** use numbers within identifier name (**), (***)


    
```cs
public string seçilmişMi;
public double years5;
public float first_identity;
public double amount1;
public string conditionsé 
```
    
(*)The ***underscore*** is allowed only as a leading character for fields if they are ***`private`***.

(**) Numbers allowed only for local variables and method parameters and only appear as a suffix.

(***) In a sorting routine that accepts two elements; in that case, “value1” and “value2” are appropriate

<div style="page-break-after: always;"></div>

### Structural Perspective

- Avoid using short names as much as possible
- **Don’t** use Hungarian Notation  
- **Don’t** use prefixes to group anything
- **Don’t** use `List`, `Array` as suffix within identifier. Instead use plurals.
- **Don’t** use C\# reserved words as identifier
- **Don’t** multiply anything (namespace, class etc.) with just changing capitalization.
- **Don’t** use types within identifiers such as `Enum`, `Class` etc.
- Try to append computational qualifiers to variable names like Average, Count, Sum, Min, and Max where appropriate.


    ```cs
    string strName;
    string strSurname;

    List<int> numberList;
    in[] scoreArray;

    class BookClass(...)
    enum StatusEnum(...)

    class Customer(...)
    class CustomeR(...)
    ```
<div style="page-break-after: always;"></div>

### Environmental Perspective

-   Avoid any conflict with existing .NET framework namespaces, or types
-   Keep .NET framework naming traditions if you are creating similar concept. For example if you create a class behaving like a **List** try to provide similar members Add, Remove etc. Not AddItem, RemoveItem.
-   **Don’t** include terms Utility, Helper in classes. These are tend to be static classes and they usually added without considering OOP principles

<div style="page-break-after: always;"></div>

### Capitalization Summary

<table class="tg">
    <tr>
    <th class="tg-yw4l">Term</th>
    <th class="tg-yw4l">Meaning</th>
    </tr>
    <tr>
    <td class="tg-yw4l">c</td>
    <td class="tg-yw4l">camelCase</td>
    </tr>
    <tr>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">PascalCase</td>
    </tr>
    <tr>
    <td class="tg-yw4l">_</td>
    <td class="tg-yw4l">Prefix with underscore</td>
    </tr>
    <tr>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">Not Applicable</td>
    </tr>
</table> 
<table class="tg">
  <tr>
    <th class="tg-yw4l">Identifier</th>
    <th class="tg-yw4l">Public</th>
    <th class="tg-yw4l">Protected</th>
    <th class="tg-yw4l">Internal</th>
    <th class="tg-yw4l">Private</th>
    <th class="tg-yw4l">Naming Structure</th>
  </tr>
  <tr>
    <td class="tg-yw4l">Project File</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l"></td>
  </tr>
  <tr>
    <td class="tg-yw4l">Source File</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l"></td>
  </tr>
  <tr>
    <td class="tg-yw4l">Class, Structure</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Namespace</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Enumeration</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Method</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Verb or Verb phrase</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Property</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Noun or Adjective</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Field</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">_c</td>
    <td class="tg-yw4l">Noun or Adjective.</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Static Field</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">_c</td>
    <td class="tg-yw4l">Noun or Adjective.</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Event</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Verb or Verb phrase</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Delegate</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l"></td>
  </tr>
  <tr>
    <td class="tg-yw4l">Interface</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Generic Class</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Constant</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">_c</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Inline Variables</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">c</td>
    <td class="tg-yw4l"></td>
  </tr>
  <tr>
    <td class="tg-yw4l">Parameter</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">x</td>
    <td class="tg-yw4l">c</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Generic Type Parameter</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Resource</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">Noun</td>
  </tr>
  <tr>
    <td class="tg-yw4l">Attribute Class</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">PAttribute</td>
    <td class="tg-yw4l"></td>
  </tr>
  <tr>
    <td class="tg-yw4l">Exception Class</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">P</td>
    <td class="tg-yw4l">PException</td>
    <td class="tg-yw4l"></td>
  </tr>
</table>
<div style="page-break-after: always;"></div>

## Naming Guidelines

Following are naming advices for specific elements.

### Project File

- Assembly should contain appropriate values for copyrights etc.
- Project name should match assembly & namespace

### Source File

- Avoid having multiple namespace per file. <span id="SA1403_" class="spanny">[[SA1403](#maintainability-rules)]</span>
- Each source file should contain one public class. (Nested class may be accepted) <span id="SA1402_" class="spanny">[[SA1402](#maintainability-rules)]</span>
- Class name should be same with source file name.

### Namespace

- Avoid any conflict with existing .NET framework namespaces, or types
- **Don’t** use same identifier for a namespace and a type within same namespace
- **Don’t** put name of a type within namespace. Just plural form of a noun is ok.

### Class, Structure

- If a class implements a single interface, it should reflect this by incorporating the interface name into its.
- Try to add an appropriate suffix if possible. When sub-classing well known types such as `Dictionary`, `List` etc.
- **Don’t** name an element with the same identifier as its containing element
- Attribute classes should be named with **`Attribute`** suffix. (RULE YAZILACAK)
- Exception classes should be named with **`Exception`** suffix (RULE YAZILACAK)

### Interface

- Prefix interfaces with the letter **“I”**. <span id="SA1302_" class="spanny">[[SA1302](#naming-rules)]</span>

### Enumeration

- Use singular names for enums.
- Use plural name for bit fields.
- Don’t prefix (or suffix) enum type or enum values

<div style="page-break-after: always;"></div>

### Method

- Methods names should include a verb.
- Method names should not repeat information from the enclosing type.
- State what a method does; do not describe the parameters. Let the signatures tell themselves.
- Avoid defining everything as a noun or a manager. Prefer names that are logically relevant.
- Methods that set a single property value should begin with the verb Set.
- **Don’t** include ‘and’ within the name of method. If you do so that means method is violating single responsibility principle.
- Extension Methods should be put in a class with Extensions suffix.
- Methods with return values should have a name describing the value returned.

<div style="page-break-after: always;"></div>

### Property

- Do not include parent class name within property name
- Try to prefix Boolean variables and properties with “Can”, “Is”, “Has” where it **really** adds value (4)
- A property’s backing field (if present) must be an underscore followed by the name of the property in camel case.
- Do not include type information in property names. For example, for a property of type IMetaRelation, use the name Relation instead of the name MetaRelation.
- Make the identifier as short as possible without losing information. For example, if a class named IViewContext has a property of type IViewContextHandler, that property should be called Handler. (5)
- Avoid repeating information in a class member that is already in the class name.
- Don’t use List, Collection within name
- Don’t prefix property names with “Get” or “Set”
- Name of the property can be same of the enumeration.

(4): Always prefer affirmative phrase CanSeek instead of CantSeek
(5): If there are two properties that could be shortened in this way, then neither of them should be. If the class in the example IEventListHandler, then the properties should be named something like ViewContextHandler and EventListhandler, respectively

### Field

- Don’t use non-private fields. Use properties instead.
- Since all fields should be private they should all start with “_” prefix (RULE yazılacak)

### Static Field

Same as Field

### Constant

Same as Field

<div style="page-break-after: always;"></div>

### Variables

- Parameter names should be named with camel-case without prefix <span id="SA1308_" class="spanny">[[SA1308](#naming-rules)]</span>
- Names need only be as specific as scope requires. <span id="SA1312_" class="spanny">[[SA1312](#naming-rules)]</span>
- Since scope is very limited more abbreviation is allowed
- Avoid using single characters for the loops. Try to extend index names with an appropriate suffix. ( For ex. colIndex, customerIndex)
- Avoid enumeration variable names like number1, number2

<div align="center" class="imgDiv">
<img src="images\variable_names.jpg" width="400px">
</div>
<div style="page-break-after: always;"></div>

### Parameters

- Parameter names should be camel-case <span id="SA1313_" class="spanny">[[SA1313](#naming-rules)]</span>
- Prefer whole words instead of abbreviation. (Ex: idx -> index , trnx -> transaction)
- Don’t repeat type within parameter name. (E.g. a parameter of type IDataContext should be\ called context instead of dataContext ) *(6)*
- Keep parameter name short without losing meaning
- Parameter names should be based on their intended use or purpose rather than their type (unless the type indicates the purpose adequately).

*(6) However, if the method also, at some point, makes use of an IViewContext, you should make the parameter name more specific, using dataContext instead.*

### Events

- Verbs and verb phrases are best to name events. Click, Deleted, Opened, Dispatched, Updated etc.
- Single events should be named with a noun followed by a descriptive verb in the past tense.
- Paired events should be named like gerund form - past tense
- Do not use “Before” or “After” prefixes or postfixes to indicate pre and post events. Check previous items
- Do not use “Begin” or “End” prefixes or postfixes to indicate pre and post events. Check previous items
- Event receivers should be named according to their task not to the event they are related. Because they do their task even they are not listening to the event.
- Name event argument classes with the EventArgs suffix

### Delegates

- If delegate is used in events suffix with “EventHandler”
- If delegate is used as event handler suffix with “Callback”

### Generic Class

- Always use single capital letter.

### Generic Parameters

- If there is only one generic parameters use **`T`**
- If there are two parameters with relation like key – value name **`K, V`**
- If there are multiple parameters give something special starting with **`T`** <span id="SA1314_" class="spanny">[[SA1314](#naming-rules)]</span>

### Lambda Expressions

- Don’t use x as a parameter name
- Parameters should be treated like parameters in standard methods
- Don’t create complex lambda expression instead create method
- Underscore irrelevant lambda parameters

### Async Methods

- Postfix asynchronous methods with Async

### Acronyms and Abbrevations 

- Prefer whole words or predefined short forms and abbrevations.
- Try not to abbrevate words. ( Instead of **`public int num;`** use    **`public int number;`**)
- Any abbrevations should be well known among team members.
- Avoid using single character names i , l , t. ( Use index, temp, length. )
- Avoid abbrevations longer than **5** characters
- Should be Pascal Case (7), (8)

*(7) If it is two letters it should be used UPPERCASE*

*(8) If it is at the beginning to camel-case identifier, it is always small*
