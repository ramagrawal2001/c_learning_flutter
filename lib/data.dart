import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';
import 'model/theory.dart';

const subHeadingStyle = TextStyle(
    color: Color(0xff645CAA), fontSize: 18, fontWeight: FontWeight.bold);

Widget getHeading(String text) {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xff645CAA),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget getSubHeading(String text) {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xff645CAA),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget getContent(String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
      overflow: TextOverflow.clip,
      textAlign: TextAlign.justify,
    ),
  );
}

Widget getList(List<String> l) {
  return Column(
    children: [
      for (var item in l)
        ListTile(
          leading: Container(
            height: 7.0,
            width: 7.0,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          title: new Text(item),
          minLeadingWidth: 12,
        ),
    ],
  );
}

final THEORY_DATA = [
  Theory(
    id: 'i1',
    title: 'Introduction',
    subIndex: [
      "Hardware and Software",
      "Introduction to 'c' Language",
      "Tokens",
      "Constants and Variables",
      "Keywords used in'C'",
      "Structure of 'C' Program"
    ],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "Hardware and Software",
          ),
          getHeading(
            "A computer system is divided into two categories:",
          ),
          getContent(
            "Hardware and Software. Hardware refers to the physical  and visible components of the system such as a monitor, CPU, keyboard and mouse. Software, on the other hand, refers to a set of instructions which enable the hardware to perform a specific set of tasks. The software must  be installed in the hardware to function properly and similarly, the hardware must be present for the tasks to  be performed. Both are interdependent, yet they are also different from each other.",
          ),
          getSubHeading(
            "Hardware",
          ),
          getContent(
            "Hardware is further divided into four main categories: \nInput Devices \nOutput Devices \nSecondary Storage Devices \nInternal Components",
          ),
          getSubHeading(
            "Software",
          ),
          getContent(
            "Software is further divided into two main categories: \nApplication Software \nSystem Software",
          )
        ],
      ),
      Column(
        children: [
          getHeading(
            "Introduction to 'C' Language",
          ),
          getContent(
            "C is a general-purpose programming language created by Dennis Ritchie at the Bell Laboratories in 1972.\nIt is a very popular language, despite being old.\n C is strongly associated with UNIX, as it was developed to write the UNIX operating system.",
          ),
          getHeading(
            "Difference between C and C++",
          ),
          getContent(
            "C++ was developed as an extension of C, and both languages have almost the same syntax. \n The main difference between C and C++ is that C++ support classes and objects, while C does not",
          ),
          getHeading(
            "Why Learn C ?",
          ),
          getContent(
            "It is one of the most popular programming language in the world \n If you know C, you will have no problem learning other popular programming languages such as Java, Python, C++, C#, etc, as the syntax is similar \n C is very fast, compared to other programming languages, like Java and Python \n C is very versatile; it can be used in both applications and technologies",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Tokens in 'C' : ",
          ),
          getContent(
            "A token is the smallest unit used in a C program. Each and every punctuation and word that you come across in a C program is token. A compiler breaks a C program into tokens and then proceeds ahead to the next stages used in the compilation process.",
          ),
          getSubHeading(
            "Use of Tokens: ",
          ),
          getContent(
            "For instance, without words, you cannot create any sentence- similarly, you cannot create any program without using tokens in C language. Thus, we can also say that tokens are the building blocks or the very basic components used in creating any program in the C language.",
          ),
          getSubHeading(
            "Classification and Types of Tokens in C:",
          ),
          getContent(
            "Here are the categories in which we can divide the token in C language:\nIdentifiers in C \nKeywords in C \nOperators in C \nStrings in C \nSpecial Characters in C \nConstant in C",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Constants and Variables",
          ),
          getHeading(
            "Constants:",
          ),
          getContent(
            "As the name suggests the name constants is given to such variables or values in C programming language which cannot be modified once they are defined. They are fixed values in a program. There can be any types of constants like integer, float, octal, hexadecimal, character constants etc. Every constant has some range. The integers that are too big to fit into an int will be taken as a long. Now there are various ranges that differ from unsigned to signed bits. Under the signed bit, the range of an int varies from -128 to +127 and under the unsigned bit, int varies from 0 to 255.",
          ),
          getHeading(
            "Variables",
          ),
          getContent(
            "A variable in simple terms is a storage place which has some memory allocated to it. Basically, a variable used to store some form of data. Different types of variables require different amounts of memory and have some specific set of operations which can be applied to them.",
          ),
          getContent(
            "The general rules for naming variables are:\nNames can contain letters, digits and underscores\nNames must begin with a letter or an underscore (_)\nNames are case sensitive (myVar and myvar are different variables)\nNames cannot contain whitespaces or special characters like !, #, %, etc.\nReserved words (such as int) cannot be used as names",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Keywords in C ",
          ),
          getContent(
            "A keyword is a reserved word. You cannot use it as a variable name, constant name, etc. There are only 32 reserved words (keywords) in the C language.",
          ),
          getList(
            [
              "auto",
              "double",
              "int",
              "struct",
              "break",
              "else",
              "switch",
              "case",
              "enum",
              "register",
              "typedef",
              "char",
              "extern",
              "return",
              "union",
              "const",
              "float",
              "short",
              "unsigned",
              "continue",
              "for",
              "signed",
              "void",
              "default",
              "goto",
              "sizeof",
              "volatile",
              "do",
              "if",
              "static",
              "long",
              "while",
            ],
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Structure of a C program:",
          ),
          getContent(
            "After the above discussion, we can formally assess the structure of a C program. By structure, it is meant that any program can be written in this structure only. Writing a C program in any other structure will hence lead to a Compilation Error. The structure of a C program is as follows:",
          ),
          getSubHeading(
            "The components of the above structure are: ",
          ),
          getSubHeading(
            "Header Files Inclusion:",
          ),
          getContent(
            "The first and foremost component is the inclusion of the Header files in a C program. A header file is a file with extension .h which contains C function declarations and macro definitions to be shared between several source files. Some of C Header files: ",
          ),
          getList(
            [
              "stddef.h - Defines several useful types and macros.",
              "stdint.h - Defines exact width integer types.",
              "stdio.h - Defines core input and output functions",
              "stdlib.h - Defines numeric conversion functions, pseudo-random network generator, memory allocation",
              "string.h - Defines string handling functions",
              "math.h - Defines common mathematical functions",
            ],
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText': "Which of the following is an example of hardware?",
        'answers': [
          {'text': 'Ms word', 'score': false},
          {'text': 'Excel', 'score': false},
          {'text': 'Monitor', 'score': true},
          {'text': 'Photoshop', 'score': false},
        ],
      },
      {
        'questionText': "Which of the following is software category?",
        'answers': [
          {'text': 'Internal component', 'score': false},
          {'text': 'Application Software ', 'score': true},
          {'text': 'Secondary Storage Devices', 'score': false},
          {'text': 'Input devices', 'score': false}
        ]
      },
      {
        'questionText': "C is a_______?",
        'answers': [
          {'text': 'Procedural Programming Language', 'score': false},
          {'text': 'Object oriented programming language', 'score': false},
          {'text': 'General purpose programming language   ', 'score': true},
          {'text': 'All of the above', 'score': false}
        ]
      },
      {
        'questionText': "The main difference between C and C++ is that_______?",
        'answers': [
          {
            'text': 'C++  support classes and objects, while C does not. ',
            'score': true
          },
          {
            'text': 'C support objects and C++ support classes and object.',
            'score': false
          },
          {
            'text': 'C  support classes and objects, while C++ does not.',
            'score': false
          },
          {
            'text': 'C++ support Object and C support classes and Object.',
            'score': false
          }
        ]
      },
      {
        'questionText': "What is C Tokens?",
        'answers': [
          {
            'text': 'the smallest individual units of c program  ',
            'score': true
          },
          {
            'text': 'the basic element recognized by the compiler',
            'score': false
          },
          {'text': 'the largest individual units of program', 'score': false},
          {'text': '1&2 both', 'score': false}
        ]
      },
    ],
  ),
  Theory(id: 'i2', title: 'Data Type In "C"', subIndex: [
    "Data Types",
    "Format Specifiers",
    "Type Qualifier",
    "More On Data Types"
  ], theoryContent: [
    Column(
      children: [
        getHeading(
          "Data Types in C",
        ),
        getSubHeading(
          "Basic Data Types",
        ),
        getContent(
          "The basic data types are integer-based and floating-point based. C language supports both signed and unsigned literals. \n The memory size of the basic data types may change according to 32 or 64-bit operating system.",
        ),
        getHeading(
          "Data type  Size",
        ),
        getContent(
          "int:	2 or 4 bytes\n float:	4 bytes \n double:	8 bytes	\n char	1 byte",
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "Format specifiers",
        ),
        getContent(
          "Format specifiers in C are used to take inputs and print the output of a type. The symbol we use in every format specifier is %. Format specifiers tell the compiler about the type of data that must be given or input and the type of data that must be printed on the screen.",
        ),
        getHeading(
          "The Most Commonly Used Format Specifiers in C",
        ),
        getContent(
          "%d or %i \n decimal integer or signed integer ",
        ),
        getContent(
          "%c \n Signed character ",
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "Type Qualifiers",
        ),
        getContent(
          "A type qualifier is used to refine the declaration of a variable, a function, and parameters along with the data types.\n Qualifiers are extends of the data types.\n These are some type Qualifiers\n",
        ),
        getList(
          [
            "Long=> To increase the length of variables",
            "Short=> To decrease the length of variables ",
            "Const=>  To create constant variables",
            "Volatile=> Applied to a variable when it is declared",
            "Signed=> Positive and negative values",
            "Unsigned=> Only for positive values",
          ],
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "More On Data Types",
        ),
        getContent(
          "Each variable in C has an associated data type. Each data type requires different amounts of memory and has some specific operations which can be performed over it. It specifies the type of data that the variable can store like integer, character, floating, double, etc. The data type is a collection of data with values having fixed values, meaning as well as its characteristics",
        ),
        getSubHeading(
          "1.Short",
        ),
        getContent(
          "It is default modifier for 'int' and 'float' data types.\n It can't be used with 'char' data type",
        ),
        getSubHeading(
          "2.Long",
        ),
        getContent(
          "It is used to allocate more memory to 'int' or 'float' variables.\n for example:- \n long int x; \n It will allocate 4 bytes keyword 'double' can be used to declare long float. 'long' can't be used with 'char' data type.",
        ),
        getSubHeading(
          "3.Signed",
        ),
        getContent(
          "It is default behaviour for 'int' and 'char' data types.\n Signed can't be used with 'float' data type.",
        ),
        getSubHeading(
          "4.Unsigned",
        ),
        getContent(
          "Using this keyword ,we can store only positive numbers. This keyword can't be used for 'float' data type.",
        ),
      ],
    ),
  ]),
  Theory(id: 'i3', title: 'Variables', subIndex: [
    "Variables",
    "As Constants",
    "Data Type Conversion",
    "Types of Variables"
  ], theoryContent: [
    Column(
      children: [
        getHeading(
          "Variables in C",
        ),
        getContent(
          "Variable is basically nothing but the name of a memory location that we use for storing data. We can change the value of a variable in C or any other language, and we can also reuse it multiple times. We use symbols in variables for representing the memory location- so that it becomes easily identifiable by any user.",
        ),
        getSubHeading(
          "Variable Declaration:",
        ),
        getContent(
          "<data_type> <variable_name>;\n e.g. int var; float x; char y;",
        ),
        getSubHeading(
          "Rules for Declaring Variable",
        ),
        getList(
          [
            "Names can contain letters, digits and underscores.",
            "Names must begin with a letter or an underscore (_)",
            "Names are case sensitive ( myVar and myvar are different variables)",
            "Names cannot contain whitespaces or special characters like !, #, %, etc.",
            "Reserved words (such as int ) cannot be used as names.",
          ],
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          'Variables as Constants',
        ),
        getContent(
          "Variables can be declared as constants by using the “const” keyword before the datatype of the variable. The constant variables can be initialized once only. The default value of constant variables are zero.\n\n ",
        ),
        getSubHeading(
          "Constant Variable Declaration",
        ),
        getContent(
          "const <data_type> <variable_name>=value\n\n e.g. const int x=2;\n const float pi=3.14;",
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "Data Type Convesion",
        ),
        getContent(
          "Data Type conversion in C is the process of converting one data type to another. The type conversion/type casting is only performed to those data types where conversion is possible. Type conversion is performed by a compiler. In type conversion, the destination data type can’t be smaller than the source data type.",
        ),
        getContent(
          "There are two types of type casting\n 1)Implicit Type Casting\n 2)Explicit Type Casting",
        ),
        getSubHeading(
          "Implicit Type Casting",
        ),
        getContent(
          "Also known as ‘automatic type conversion’. If type of value on right side doesn't matches with type of variable on left side then compiler performs implicit type casting on its own.\n for e.g.\n int x = 10.2\n then 10.2 s converted into 10 in x variable. ",
        ),
        getSubHeading(
          "Explicit Type Casting",
        ),
        getContent(
          "Explicit type conversion is done by the user by using (type) operator.\n for e.g. int a,c;\n float b;\n c = (int) a + b;\n Here, the resultant of ‘a+b’ is converted into ‘int’ explicitly and then assigned to ‘c’.",
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "Types of Variables",
        ),
        getContent(
          "There are main two types of variables\n 1)Local Variables\n 2)Global Variables",
        ),
        getSubHeading(
          "1)Local Variables",
        ),
        getContent(
          "Variables that are declared within or inside a function block are known as Local variables.\n If the local variable is not initialized, it takes the garbage value (random value) by default.\n Local variables are stored in a stack in memory.\n The scope is limited and remains within the function only in which they are declared.",
        ),
        getSubHeading(
          "2)Global Variables",
        ),
        getContent(
          "Global variables are those variables which are declared outside of all the functions or block and can be accessed globally in a program.\n If the global variable is not initialized, it takes zero by default.\n Global variables are stored in the data segment of memory.\n The scope remains throughout the program.",
        ),
      ],
    ),
  ]),
  Theory(id: 'i4', title: 'Data Input and Output', subIndex: [
    "Reading The Data",
    "Output The Data"
  ], theoryContent: [
    Column(
      children: [
        getHeading(
          "Reading the data",
        ),
        getSubHeading(
          "Input The Data - scanf()",
        ),
        getContent(
          "'c' provides function scanf() for reading the values from the keyboard by user.",
        ),
        getSubHeading(
          "Syntax:-",
        ),
        getContent(
          "scanf('format_string',address_of_variable);",
        ),
        getContent(
          "1) Format String contains appropriate number and appropriate type of format specifier in appropriate order \n 2)Address of variable is retrived by using symbol '&'",
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "Output The Data",
        ),
        getContent(
          "'c' provides function printf() to display output on monitor",
        ),
        getSubHeading(
          "Syntax:-",
        ),
        getContent(
          "printf('message_string', list_of_variables);",
        ),
        getContent(
          " 1)Message String contains message, format specifiers and escape sequences \n 2)Message string is printed as it is on monitor except format specifiers and escape sequences. \n 3)Value of appropriate variable is printed in place of format specifiers.",
        ),
      ],
    ),
  ]),
  Theory(id: 'i5', title: 'Operators', subIndex: [
    "Arithmetic",
    "Relational",
    "Logical",
    "Assignment",
    "Increment/ Decrement"
  ], theoryContent: [
    Column(
      children: [
        getHeading(
          "Arithmetic Operators",
        ),
        Center(
            child: Container(
          margin: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(
                color: Colors.black, style: BorderStyle.solid, width: 1),
            children: [
              TableRow(children: [
                TableCell(
                  child: Container(
                      color: Color.fromARGB(255, 118, 132, 211),
                      padding: EdgeInsets.all(3),
                      child: Center(
                          child: Text(
                        'Opeartor',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
                ),
                TableCell(
                  child: Container(
                      color: Color.fromARGB(255, 118, 132, 211),
                      padding: EdgeInsets.all(3),
                      child: Center(
                          child: Text('Meaning',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('+')),
                ),
                TableCell(
                  child: Center(child: Text('Addition')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('-')),
                ),
                TableCell(
                  child: Center(child: Text('Substraction')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('*')),
                ),
                TableCell(
                  child: Center(child: Text('Multiplication')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('/')),
                ),
                TableCell(
                  child: Center(child: Text('Division')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('%')),
                ),
                TableCell(
                  child: Center(child: Text('Modulus')),
                ),
              ]),
            ],
          ),
        )),
        getContent(
          "Given above are some arithmetic operators. They are used to perform arithematic operations. These are binary operations.Arithmetic operators have high priority.\n\n Note:- '%' Modulus operator gives the remainder of division between two integer.It is commonly used to check  divisibility.",
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "Relational Operators",
        ),
        Center(
            child: Container(
          margin: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(
                color: Colors.black, style: BorderStyle.solid, width: 1),
            children: [
              TableRow(children: [
                TableCell(
                  child: Container(
                      color: Color.fromARGB(255, 118, 132, 211),
                      padding: EdgeInsets.all(3),
                      child: Center(
                          child: Text(
                        'Opeartor',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
                ),
                TableCell(
                  child: Container(
                      color: Color.fromARGB(255, 118, 132, 211),
                      padding: EdgeInsets.all(3),
                      child: Center(
                          child: Text('Meaning',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('<')),
                ),
                TableCell(
                  child: Center(child: Text('Is Less Than ?')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('>')),
                ),
                TableCell(
                  child: Center(child: Text('Is Greater Than ?')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('<==')),
                ),
                TableCell(
                  child: Center(child: Text('Is Less Than or Equals to ?')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('>==')),
                ),
                TableCell(
                  child: Center(child: Text('Is Greater Than or Equals to ?')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('==')),
                ),
                TableCell(
                  child: Center(child: Text('Is Equals to ?')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('!=')),
                ),
                TableCell(
                  child: Center(child: Text('Is not equals to ?')),
                ),
              ]),
            ],
          ),
        )),
        getContent(
          "These operators are used to compare to values. These are binary operators.  Relational Expression always evaluted to either true or false. Tese operators are used to form conditon in programming. They have lower priority than Arithmetic operators.",
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "Logical Operators",
        ),
        Center(
            child: Container(
          margin: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(
                color: Colors.black, style: BorderStyle.solid, width: 1),
            children: [
              TableRow(children: [
                TableCell(
                  child: Container(
                      color: Color.fromARGB(255, 118, 132, 211),
                      padding: EdgeInsets.all(3),
                      child: Center(
                          child: Text(
                        'Opeartor',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
                ),
                TableCell(
                  child: Container(
                      color: Color.fromARGB(255, 118, 132, 211),
                      padding: EdgeInsets.all(3),
                      child: Center(
                          child: Text('Meaning',
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('&&')),
                ),
                TableCell(
                  child: Center(child: Text('Logical AND')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('||')),
                ),
                TableCell(
                  child: Center(child: Text('Logical OR')),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Center(child: Text('!')),
                ),
                TableCell(
                  child: Center(child: Text('Logical NOT')),
                ),
              ]),
            ],
          ),
        )),
        getContent(
          "Logical Operators are used to combine  two or more conditions logically. Logical Expressions are always evaluated to either true or false. These operatos have lower priority than Relational operators.",
        ),
        getSubHeading(
          "Logical 'AND' Operator",
        ),
        getContent(
          "1)It is denoted by symbol '&&'.\n 2)Logical AND is true if and only if all the conditions are true.\n 3)It is binary operator.",
        ),
        getSubHeading(
          "Logical 'OR' Operator ",
        ),
        getContent(
          "1)It is denoted by symbol '||'.\n 2)Logical OR is true if any of the conditions is true.It becomes false if all the conditions are false.\n 3)It is binary operator.",
        ),
        getSubHeading(
          "Logical 'NOT' Operator ",
        ),
        getContent(
          "1)It is denoted by symbol '!'.\n 2)Logical NOT is used to negate the conditions.\n 3)It is unary operator.\n 4)It is true if condition is false.",
        ),
      ],
    ),
    Column(
      children: [
        getHeading(
          "Assignment Opertor",
        ),
        getContent(
          "1)It is denoted by symbol '='.\n 2)It is used to assign value to variable\n 3)It is binary operator.\n 4)It has right to left associativity.\n 5)It has the lowest priority.",
        ),
        getSubHeading(
          "Syntax:-",
        ),
        getContent(
          "variable=expression;\n OR\n variable=value;\n\n e.g\n int x;\n x=5;",
        ),
      ],
    )
  ]),
  Theory(id: 'i6', title: 'Decision Control Structure', subIndex: [
    "'if' Control Structure",
    "'if-else' Control Structure",
    "'switch-case' Control Structure",
    "Conditional Operator"
  ]),
  Theory(id: 'i7', title: 'Loop Control Structure', subIndex: [
    "'for' Loop",
    "'while' Loop",
    "'do-while' Loop",
    "'goto' Statement",
    "'break' And 'continue' Keywords"
  ]),
  Theory(id: 'i8', title: 'Array', subIndex: [
    "Defination, Syntax And Declaration",
    "Initialization",
    "Two-Dimensional Array"
  ]),
  Theory(id: 'i9', title: 'Function', subIndex: [
    "Introduction",
    "FUnction 'main()'",
    "Components of Function",
    "Arguments and Parameters",
    "The 'return' Statement",
    "Types of Function",
    "Recursive Function"
  ]),
  Theory(id: 'i10', title: 'String', subIndex: [
    "String",
    "String Initialization",
    "String Input and Output",
    "String Library Function"
  ]),
  Theory(id: 'i11', title: 'Storage Classes', subIndex: ["Storage Classes"]),
  Theory(
      id: 'i12',
      title: 'Preprocessors',
      subIndex: ["Directives", "Include Directive", "Macro Directive"]),
  Theory(id: 'i13', title: 'Pointers', subIndex: [
    "Introduction and Declaration",
    "Accessing Values of variables",
    "Application of Pointers",
    "Pointer Arithmetic",
    "Array of Pointers",
    "Pointer of String",
    "Memory Allocation",
    "Pointer to Pointer"
  ]),
  Theory(
      id: 'i14',
      title: 'Structure and Union',
      subIndex: ["Structure", "Union"]),
  Theory(
      id: 'i15',
      title: 'Command Line Arguments',
      subIndex: ["Command Line Arguments"])
];
