import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';
import '../providers/theory.dart';

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

Widget getNotebook(String text) => ResponsiveNotebookBackground(
      options: const ResponsiveNotebookBackgroundOptions(
        blankLines: 2,
        horizontalPadding: 20,
        lineWidth: 2.5,
        backgroundColor: Colors.black12,
        lineColor: Colors.blueAccent,
        lineType: LineType.line,
        styleForHeightCalculation: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.brown,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.brown,
        ),
      ),
    );

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
          {'text': 'Procedural Programming Language', 'score': true},
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
  Theory(
    id: 'i2',
    title: 'Data Type In "C"',
    subIndex: [
      "Data Types",
      "Format Specifiers",
      "Type Qualifier",
      "More On Data Types"
    ],
    theoryContent: [
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
    ],
    quiz: [
      {
        'questionText': "Rules for declaring variable are/is?",
        'answers': [
          {
            'text':
                'Names can contain letters, digits and underscores and Names must begin with a letter or an underscore (_)',
            'score': false
          },
          {
            'text':
                'Names are case sensitive (myVar and myvar are different variables)',
            'score': false
          },
          {
            'text':
                'Names cannot contain whitespaces or special characters like !, #, %, etc. and Reserved words (such as int) cannot be used as names',
            'score': false
          },
          {'text': 'All of the above ', 'score': true}
        ],
      },
      {
        'questionText': "Which of the following is not reserved Word?",
        'answers': [
          {'text': 'Do', 'score': false},
          {'text': 'Else', 'score': false},
          {'text': 'Int', 'score': false},
          {'text': 'Does', 'score': true}
        ],
      },
      {
        'questionText': "Stdio.h indicates ________",
        'answers': [
          {'text': 'Defines core input and output functions  ', 'score': true},
          {'text': 'Defines exact width integer types', 'score': false},
          {
            'text':
                'Defines numeric conversion functions, pseudo-random network generator, memory allocation',
            'score': false
          },
          {'text': 'Defines several useful types and macros', 'score': false}
        ],
      },
      {
        'questionText': "C language supports   ________ literals.",
        'answers': [
          {'text': 'Signed', 'score': false},
          {'text': 'Unsigned', 'score': false},
          {'text': 'Both signed and unsigned ', 'score': true},
          {'text': 'None of the above', 'score': false}
        ],
      },
      {
        'questionText': "Size of char _____bytes.",
        'answers': [
          {'text': '2', 'score': false},
          {'text': '4', 'score': false},
          {'text': '1', 'score': true},
          {'text': '8', 'score': false}
        ]
      },
    ],
  ),
  Theory(
    id: 'i3',
    title: 'Variables',
    subIndex: [
      "Variables",
      "As Constants",
      "Data Type Conversion",
      "Types of Variables"
    ],
    theoryContent: [
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
    ],
    quiz: [
      {
        'questionText':
            "___________ in C are used to take inputs and print the output of a type.",
        'answers': [
          {'text': 'Type Qualifiers', 'score': false},
          {'text': 'Format specifiers ', 'score': true},
          {'text': 'Both', 'score': false},
          {'text': 'None of the above', 'score': false}
        ],
      },
      {
        'questionText': "Which format Specifier is used for signed char?",
        'answers': [
          {'text': '%i', 'score': false},
          {'text': '%d', 'score': false},
          {'text': '%s', 'score': false},
          {'text': '%c', 'score': true}
        ],
      },
      {
        'questionText':
            "A  ______  is used to refine the declaration of a variable",
        'answers': [
          {'text': 'Type Qualifiers', 'score': true},
          {'text': 'Format specifiers ', 'score': false},
          {'text': 'Both', 'score': false},
          {'text': 'None of the above', 'score': false}
        ],
      },
      {
        'questionText': "__________ can't be used with 'float' data type.",
        'answers': [
          {'text': 'Signed', 'score': true},
          {'text': 'Unsigned', 'score': false},
          {'text': 'Both signed and unsigned ', 'score': false},
          {'text': 'None of the above', 'score': false}
        ],
      },
      {
        'questionText':
            "Variables can be declared as constants by using the “_____” keyword before the datatype of the variable",
        'answers': [
          {'text': 'Var', 'score': false},
          {'text': 'String', 'score': false},
          {'text': 'Const', 'score': true},
          {'text': 'Int', 'score': false}
        ],
      }
    ],
  ),
  Theory(
    id: 'i4',
    title: 'Data Input and Output',
    subIndex: ["Reading The Data", "Output The Data"],
    theoryContent: [
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
    ],
    quiz: [
      {
        'questionText':
            "Which of the following is an example of a primary input device?",
        'answers': [
          {'text': 'Printer', 'score': false},
          {'text': 'Scanner', 'score': false},
          {'text': 'Monitor', 'score': false},
          {'text': 'Keyboard', 'score': true}
        ],
      },
      {
        'questionText':
            "Which of the following is an example of a secondary input device?",
        'answers': [
          {'text': 'Mouse', 'score': false},
          {'text': 'Webcam', 'score': false},
          {'text': 'Microphone', 'score': false},
          {'text': 'CD/DVD drive', 'score': true}
        ],
      },
      {
        'questionText':
            "Which type of data storage device provides the fastest access to data?",
        'answers': [
          {'text': 'Hard disk drive (HDD)', 'score': false},
          {'text': 'Solid-state drive (SSD)', 'score': true},
          {'text': 'Optical disc', 'score': false},
          {'text': 'USB flash drive', 'score': false}
        ],
      },
      {
        'questionText':
            "Which of the following is an example of an output device?",
        'answers': [
          {'text': 'Microphone', 'score': false},
          {'text': 'Projector', 'score': true},
          {'text': 'Touchscreen', 'score': false},
          {'text': 'Scanner', 'score': false}
        ],
      },
      {
        'questionText':
            "Which type of printer works by spraying ink onto paper?",
        'answers': [
          {'text': 'Laser printer', 'score': false},
          {'text': 'Inkjet printer', 'score': true},
          {'text': 'Dot matrix printer', 'score': false},
          {'text': 'Thermal printer', 'score': false}
        ],
      },
    ],
  ),
  Theory(
    id: 'i5',
    title: 'Operators',
    subIndex: [
      "Arithmetic",
      "Relational",
      "Logical",
      "Assignment",
      "Increment/ Decrement",
      "Conditional"
    ],
    theoryContent: [
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
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
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
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
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
                    child:
                        Center(child: Text('Is Greater Than or Equals to ?')),
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
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
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
            "1)It is denoted by symbol '='.\n 2)It is used to assign value to variable.\n 3)It is binary operator.\n 4)It has right to left associativity.\n 5)It has the lowest priority.",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "variable=expression;\n OR\n variable=value;\n\n e.g\n int x;\n x=5;",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Increment/Decrement Operators",
          ),
          getSubHeading(
            "Increment Opertor",
          ),
          getContent(
            "1)It is denoted by symbol '++'.\n 2)It increments the value of variable by (1).\n 3)It is unary operator.",
          ),
          getSubHeading(
            "Decrement Operator",
          ),
          getContent(
            "1)It is denoted by symbol '--'.\n 2)It decrements the value of variable by (1).\n 3)It is unary operator.",
          ),
          getSubHeading(
            "Note:-",
          ),
          getContent(
            "1)These operators can't be operated on constant values.\n 2)Both operators can be used in prefix(++x) and postfix(x++) forms.\n 3)Prefix forms have high priority. That means it is incremented or decremented and used in hybrid expressions.\n 4)Postfix forms have low priority. That means current value is used in expression and then incremented or decremented.",
          ),
          getContent(
            "for.e.g.\n int x=5, y=7, z;\n z=x+y--;\n Value of z becomes 12.",
          ),
          getContent(
            "for.e.g.\n int x=5, y=7, z;\n z=y - ++x;\n Value of z becomes 1.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Conditional Operator",
          ),
          getContent(
            "1)It is denoted by symbol '?'.\n 2)It is only turnary operator in 'c'.",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "(condition)?exp1:exp2;",
          ),
          getContent(
            "1)If condition is true, exp1 is evaluated.\n 2)If condition is false, exp2 is evaluated.\n 3)Conditional operator can be used to replace simple 'if-else' statement in symbolic form.\n\n e.g. x=(y>0)?1:0;",
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText':
            "What is the correct operator to perform the modulo operation in C?",
        'answers': [
          {'text': '%', 'score': true},
          {'text': '^', 'score': false},
          {'text': '*', 'score': false},
          {'text': '/', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the correct operator to perform bitwise OR in C?",
        'answers': [
          {'text': '||', 'score': false},
          {'text': '|', 'score': true},
          {'text': '^', 'score': false},
          {'text': '&', 'score': false}
        ],
      },
      {
        'questionText':
            "Which operator is used to compare two values for equality in C?",
        'answers': [
          {'text': '=', 'score': false},
          {'text': '==', 'score': true},
          {'text': '!=', 'score': false},
          {'text': '>', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the correct operator to increment a variable by 1 in C?",
        'answers': [
          {'text': '+', 'score': false},
          {'text': '++', 'score': true},
          {'text': '+=', 'score': false},
          {'text': '/', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the correct operator to perform a logical AND operation in C?",
        'answers': [
          {'text': '&&', 'score': true},
          {'text': '||', 'score': false},
          {'text': '&', 'score': false},
          {'text': '|', 'score': false}
        ],
      },
    ],
  ),
  Theory(
    id: 'i6',
    title: 'Decision Control Structure',
    subIndex: [
      "'if' Control Structure",
      "'if-else' Control Structure",
      "'switch-case' Control Structure",
    ],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "'if' Control Structure",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "if(condition)\n{\n   ------\n   ------\n}",
          ),
          getContent(
            "1)When control reaches 'if' statement, condition is evaluated.\n 2)If condition is true ,set of istructions inside 'if' block is executed.\n 3)If condition is false ,set of istructions inside 'if' block is not executed. ",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "'if-else' Control Structure",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "if(condition)\n{\n   --------\n   //Action A\n   --------\n}\n else\n{\n   --------\n   //Action B\n   --------\n}",
          ),
          getContent(
            "1) When control reaches 'if' statement, condition is evaluated.\n 2) If condition is true, set of instructions inside 'if' block is executed (Action A is executed).\n 3) If condition is false, set of instructions inside 'else' block is executed (Action B is executed).",
          ),
          getHeading(
            "Nesting of'if-else'",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
              "if(condition)\n{\n   --------\n   //Action A\n   --------\n}\n else\n{\n   --------\n   //Action B\n   --------\n}")
        ],
      ),
      Column(
        children: [
          getHeading(
            "'Switch-Case' Control Structure",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getNotebook(
            "switch(variable){\n     case <value_1> : Action_1;break;\n     case <value_2> : Action_2;break;\n     case <value_3> : Action_3;break;\n     .\n     .\n     .\n     default:default_action;\n}",
          ),
          getContent(
            "1) When control reaches 'switch' statement, value of variable is checked.\n2) Action correponding to matching case is executed and control jumps out of switch case control.\n3) If matching case is not found 'default' action isexecuted.\n4) 'default' and 'break' is optional. If 'break' keyword is not used, actions corresponding to matching case are executed.",
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText':
            "Which keyword is used to define an if-else statement in C?",
        'answers': [
          {'text': 'if', 'score': true},
          {'text': 'else', 'score': false},
          {'text': 'switch', 'score': false},
          {'text': 'case', 'score': false}
        ],
      },
      {
        'questionText': "What is the purpose of the switch statement in C?",
        'answers': [
          {
            'text':
                'To perform a series of actions based on multiple conditions',
            'score': true
          },
          {'text': 'To execute a block of code repeatedly', 'score': false},
          {
            'text': 'To define a default case for decision-making',
            'score': false
          },
          {'text': 'To handle exceptions in the program', 'score': false}
        ],
      },
      {
        'questionText':
            "How many conditions can be checked in an if-else-if ladder statement in C?",
        'answers': [
          {'text': 'Only one condition', 'score': false},
          {'text': 'Two conditions', 'score': false},
          {'text': 'Multiple conditions', 'score': true},
          {'text': 'It depends on the specific C compiler', 'score': false}
        ],
      },
      {
        'questionText':
            "Which of the following is NOT a valid relational operator in C?",
        'answers': [
          {'text': '==', 'score': false},
          {'text': '!=', 'score': false},
          {'text': '<>', 'score': true},
          {'text': '<=', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the result of the expression (5 > 3) && (2 < 4) in C?",
        'answers': [
          {'text': '0', 'score': false},
          {'text': '1', 'score': true},
          {'text': 'true', 'score': false},
          {'text': 'false', 'score': false}
        ],
      },
    ],
  ),
  Theory(
    id: 'i7',
    title: 'Loop Control Structure',
    subIndex: [
      "'for' Loop",
      "'while' Loop",
      "'do-while' Loop",
      "'goto' Statement",
      "'break' And 'continue' Keywords"
    ],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "'For' Loop",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getNotebook(
            "for(initialization ; condition ; change){\n         --------\n         //Istructions\n         --------\n}",
          ),
          getContent(
            "1) When control reaches 'for' statement initialization is executed once.\n2) After initialization, condition is evaluated.\n3) If condition is true, set of instructions inside body of loop then change is executed.\n4) After change, condition is evaluated again. Steps 3,4,5 are repeated until condition turns false.\n5) When condition becomes false, control jumps out of the loop.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "'While' Loop",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getNotebook(
            "while(condition){\n         --------\n         //Istructions\n         --------\n}",
          ),
          getContent(
            "1) When control reaches 'while' statement, condition is evaluated.\n2) If condition is true, set of instructions inside bodyof loop are executed.\n3) After execution of body of loop condition isevaluated again.\n4) Step two and three are repeated until condition becomes false.\n5) When condition becomes false, control jumps out of body of loop.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "'do-while' Loop",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getNotebook(
            "do{\n         --------\n         //Istructions\n         --------\n}while(condition);",
          ),
          getContent(
            "1) When control reaches 'do' statement, set of instructions inside body of loop are executed. After executing body of loop condition in 'while' is evaluated.\n2) If condition is true, body of loop is executed again.\n3) When condition turns false, control jumps out of body of loop.\n4) In this loop, body of loop is executed once thoughcondition is false.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "'goto' Sttement",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "goto LABEL;",
          ),
          getContent(
            "Keyword 'goto' is used to transfer the control of program from one statement to another statement followed by colon(:)",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Keyword 'break':",
          ),
          getContent(
            "1) The 'break' keyword is used to break the loop and transfer the control outside the loop.\n2) Keyword 'break' is used in 'switch-case' to break the control. It is also used in for loop, while loop, do-while loop to stop the loop.\n3) When 'break' keyword is used in loop, control jumps out of the body of loop.",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getHeading(
            "Keyword 'Continue'",
          ),
          getContent(
            "1) 'continue' keyword is used to pass the control for next repetition of loop.\n2) When 'continue' keyword is used inside loop, control jumps at the beginning of loop for next repetition",
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText': "What is the purpose of the break statement in C?",
        'answers': [
          {'text': 'To terminate the program execution', 'score': false},
          {'text': 'To skip the current iteration of a loop', 'score': false},
          {
            'text': 'To skip the remaining code in a switch case',
            'score': true
          },
          {'text': 'To print output to the console', 'score': false}
        ],
      },
      {
        'questionText':
            "Which statement is used to exit from the current loop iteration and start the next iteration in C?",
        'answers': [
          {'text': 'break', 'score': false},
          {'text': 'continue', 'score': true},
          {'text': 'exit', 'score': false},
          {'text': 'return', 'score': false}
        ],
      },
      {
        'questionText':
            "Which loop control structure always executes the loop body at least once?",
        'answers': [
          {'text': 'for loop', 'score': true},
          {'text': 'while loop', 'score': false},
          {'text': 'do-while loop', 'score': false},
          {'text': 'if-else statement', 'score': false}
        ],
      },
      {
        'questionText': "What is the purpose of the nested loop in C?",
        'answers': [
          {'text': 'To execute a loop within another loop', 'score': true},
          {'text': 'To create an infinite loop', 'score': false},
          {'text': 'To skip the loop execution', 'score': false},
          {'text': 'To terminate the program execution', 'score': false}
        ],
      },
      {
        'questionText':
            "Which loop control structure is ideal when the number of iterations is determined by a condition at the beginning of the loop body?",
        'answers': [
          {'text': 'for loop', 'score': false},
          {'text': 'while loop', 'score': true},
          {'text': 'do-while loop', 'score': false},
          {'text': 'if-else statement', 'score': false}
        ],
      },
    ],
  ),
  Theory(
    id: 'i8',
    title: 'Array',
    subIndex: [
      "Defination, Syntax And Declaration",
      "Initialization",
      "Two-Dimensional Array"
    ],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "Array",
          ),
          getContent(
            "1) Array is collection of multiple elements of same data type in a single variable name.\n2) Array is derived data type.",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "<data_type> array_name [SIZE];",
          ),
          getContent(
            "3) Size is number of elements.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Array Initialization",
          ),
          getContent(
            "1) Array elements are stored sequentially in continuous memory block.\n2) Total memory of array is equals to memory requiredby all the elements of array.",
          ),
          getSubHeading(
            "Initialization e.g. :-",
          ),
          getContent(
            "int a[5]={1,2,3,6,7};",
          ),
          getContent(
            "3) An individual elements of the array can be access by using subscripted notations like 'a[i]', where 'a' is array_name and 'i' is index number of the elemet.\n4) Index number of first element is zero (0), Index no.of 2nd element is 1.",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getHeading(
            "Points about Array Initialization",
          ),
          getContent(
            "1) If array is not initialized then elements contains garbage value.\n2) Array can be initialized only with constants.\n3) Rules are same as declaration of variable.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Two-Dimensionnal Array",
          ),
          getContent(
            "1) Two dimensional array can be defined as an array which stores data in tabular form.\n2) In Two dimensional array declaration we specify number of rows and columns.\n3) Array is derived data type.\n4) ROW is no. of rows and COLUMN is no. of columns.",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "<data_type> array-name [ROW] [COLUMN];",
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText':
            "Which of the following correctly declares an array in C?",
        'answers': [
          {'text': 'int array[]', 'score': true},
          {'text': 'array int[]', 'score': false},
          {'text': 'int[] array', 'score': false},
          {'text': 'int []array', 'score': false}
        ],
      },
      {
        'questionText': "What is the index of the first element in an array?",
        'answers': [
          {'text': 'The index can vary depending on the array', 'score': false},
          {'text': '1', 'score': false},
          {'text': '-1', 'score': false},
          {'text': '0', 'score': true}
        ],
      },
      {
        'questionText':
            "How do you access the value at a specific index in an array?",
        'answers': [
          {'text': 'array(index)', 'score': false},
          {'text': 'array[index]', 'score': true},
          {'text': 'array.index', 'score': false},
          {'text': 'index(array)', 'score': false}
        ],
      },
      {
        'questionText': "How do you declare a two-dimensional array in C?",
        'answers': [
          {'text': 'int array[][]', 'score': false},
          {'text': 'int[] array[]', 'score': false},
          {'text': 'int array[][]', 'score': false},
          {'text': 'int[][] array', 'score': true}
        ],
      },
      {
        'questionText':
            "Which operator is used to access elements of an array?",
        'answers': [
          {'text': '+', 'score': false},
          {'text': '/', 'score': false},
          {'text': ':', 'score': false},
          {'text': '[]', 'score': true}
        ],
      },
    ],
  ),
  Theory(
    id: 'i9',
    title: 'Function',
    subIndex: [
      "Introduction",
      "FUnction 'main()'",
      "Components of Function",
      "Arguments and Parameters",
      "The 'return' Statement",
      "Types of Function",
      "Recursive Function"
    ],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "Function",
          ),
          getContent(
            "Function is a sub program or block of code written seperately to perform specific task.",
          ),
          getSubHeading(
            "Advantages of Function:",
          ),
          getContent(
            "1) Functions break our program into number of smaller modules. This makes program easier to understand and debug.\n2) Function enables us to use same block of code several times at several spaces in program.\n3) This eliminates unnecessary duplications of code.\n4) It saves time and memory.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Function 'main()'",
          ),
          getContent(
            "Every program must have function 'main()'\n'main()' function is important part of C program. Program would not run without 'main()' function.\nExecution of every program in 'C' always starts with function 'main()'.",
          ),
          getSubHeading(
            "main()' function can be written as:",
          ),
          getContent(
            "1) main()\n2) int main()\n3) void main()",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Components of function",
          ),
          getSubHeading(
            "1)Function Declaration:-",
          ),
          getContent(
            "Any function must be declared or define before its use",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "<return-type> function-name (parameter-list);",
          ),
          getSubHeading(
            "Points about Function Declaration :",
          ),
          getContent(
            "1) <return-type> is data type of value to be return by function.\n2) If Function doesn't returns any value, return type should 'void'.\n3) 'function-name' is identifier given by programmer.\n4) 'parameter-list' is list of data types of values to be passed to function.",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getSubHeading(
            "2)Function Call:-",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "<function-name> (actual-parameters);",
          ),
          getSubHeading(
            "Actual Parameter:-",
          ),
          getContent(
            "1) Actual parameters can be constant values or variable. Actual parameters are variables in which values are passed to call function and stored in formal parameters.\n2) If function doesn't take any parameters the brackets (0) are left empty.\n3) Whenever function is called, control immediately jumps to the body of function. Any function can call any other function, any number of times.",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getSubHeading(
            "Body of Function:-",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getNotebook(
            "<return-type> function-name(formal-parameters){\n       ---------\n       ---------\n}",
          ),
          getContent(
            "1) It is actual block of code which is executed when a particular function is called.\n2) Formal parameters are variabless in which values of actual parameters are collected.\n3) After executing body of called function, control returns back to calling function and continuous execution from next instructions after function call.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Arguments and Parameters",
          ),
          getContent(
            "1) To pass the values to the function that values is called as arguments or parameters.\n2) The parameters or arguments are used to provide communication with the calling and called function.\n3) The actual parameters are the parameters of calling function and formal parameters are that of called function.\n4) The number and data type of actual parameters should match with that of formal parameters.\n5) Parameter are optional and present in opening and closing parenthesis.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "'return' Statement",
          ),
          getContent(
            "1) The keyword 'return' is used to return a value from called function back to the calling function.\n2) It returns values present in parenthesis (brackets).\n3) Value of any data type can be returned.\n4) Only one value can returned at a time.\n5) If function doesn't return any value then we have to define return data type as an 'void'",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getContent(
            "return (value/variable);",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "1)Standard Library Functions",
          ),
          getContent(
            "1) Functions are already declared and defined by developer of language or compiler.\n2) These functions are defined in header (.h) files.\n3) for e.g. Functions printf(), scanf(), etc.",
          ),
          getHeading(
            "2) User-Defined Functions:",
          ),
          getContent(
            "1) Functions are declared and defined by programmer.\n2) Available and defined in source code itself.\n3) for e.g. To calculate addition function declared should - add();",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Recursive Function:",
          ),
          getContent(
            "1) When a function is being called within a function itself then it is referred as recursion, such function is referred as recursive function.\n2) Recursion is indirect way of looping.\n3) Recursion is time consuming process which reduces speed of execution of program, so programmer should avoid recursive function as long as possible.",
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText':
            "Which of the following is the correct way to declare a function in C?",
        'answers': [
          {'text': 'function_name()', 'score': true},
          {'text': 'void function_name()', 'score': false},
          {'text': 'function_name(void)', 'score': false},
          {'text': 'void function_name(void)', 'score': false}
        ],
      },
      {
        'questionText': "What is the purpose of a function prototype in C?",
        'answers': [
          {
            'text': 'It defines the implementation of a function.',
            'score': false
          },
          {'text': 'It declares the return type of a function.', 'score': true},
          {'text': 'It declares the parameters of a function.', 'score': false},
          {'text': 'It specifies the name of a function.', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the return type of a function that does not return any value?",
        'answers': [
          {'text': 'int', 'score': false},
          {'text': 'float', 'score': false},
          {'text': 'void', 'score': true},
          {'text': 'double', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the purpose of the return statement in a function?",
        'answers': [
          {
            'text': 'It terminates the execution of the program.',
            'score': false
          },
          {
            'text': 'It specifies the data type of the function.',
            'score': false
          },
          {
            'text': 'It returns a value from the function to the calling code.',
            'score': true
          },
          {'text': 'It declares the function as recursive.', 'score': false}
        ],
      },
      {
        'questionText': "How do you pass an array to a function in C?",
        'answers': [
          {'text': 'By using the * operator.', 'score': false},
          {'text': 'By specifying the array name.', 'score': true},
          {'text': 'By passing the array size as a parameter.', 'score': false},
          {
            'text': 'By passing the array name along with its size.',
            'score': false
          }
        ],
      },
    ],
  ),
  Theory(
    id: 'i10',
    title: 'String',
    subIndex: [
      "String",
      "String Initialization",
      "String Input and Output",
      "String Library Function"
    ],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "String : ",
          ),
          getContent(
            "1) A collection of characters is referred as string.\n2) String is an array of charaters.",
          ),
          getSubHeading(
            "Syntax :- ",
          ),
          getContent(
            "------------------------------------------",
          ),
          getContent(
            "char <var-name>[SIZE];",
          ),
          getContent(
            "------------------------------------------",
          ),
          getContent(
            "1) Where, <var-name> is name of string chooesn by programmer\n2) SIZE is maximum number of characters to be stored in string.",
          ),
          getContent(
            "NOTE : Each String is always terminated by special character '\0' i.e. null character",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "String Initialization : ",
          ),
          getContent(
            "AString can be initialized as follows:",
          ),
          getContent(
            "------------------------------------------",
          ),
          getContent(
            "char str[30]={'H','E','L','L','O','\0'};",
          ),
          getContent(
            "OR",
          ),
          getContent(
            "char str[30]='HELLO';",
          ),
          getContent(
            "------------------------------------------",
          ),
          getSubHeading(
            "Memory Representation : ",
          ),
          getNotebook(
            "          0 1 2 3 4 5-----29\nstr=  |H|E|L|L|O|/0|--|--|\n        <---30 Bytes----->\n",
          ),
          getContent(
            "An Individual character of string is accessed through subscripted notation like str[i], where 'str' is a string name and 'i' is index number of character",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "1) String Input :",
          ),
          getContent(
            "Thwere are two methods to read string input from user/Keyboard.",
          ),
          getSubHeading(
            "1)Through function 'scanf()': \nSyntax :-",
          ),
          getContent(
            "scanf(\"%s\", string-name);",
          ),
          getContent(
            "Function 'scanf()' reads only one word in a string because 'space' is considered as seperator.",
          ),
          getSubHeading(
            "2)Through function 'gets()': \nSyntax:-",
          ),
          getContent(
            "gets(string-names);",
          ),
          getContent(
            "Function 'gets()' reads multiple words including space in a string. Enter key is considered as a seperator.",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getHeading(
            "2)String Output: ",
          ),
          getContent(
            "There are two methods to print string on monitor.",
          ),
          getSubHeading(
            "1)Through function 'printf()':\nSyntax:-",
          ),
          getContent(
            "printf(\"%s\", styring-name);",
          ),
          getContent(
            "Function 'printf()' print value of string variable on monitor.",
          ),
          getSubHeading(
            "2)Through function 'gets()':\nSyntax:-",
          ),
          getContent(
            "puts(string-name);",
          ),
          getContent(
            "Function 'puts()' print value of string variable on monitor and movies cursor on new line by default.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "String Library Functions:",
          ),
          getContent(
            "To use String Library functions 'string.h' header file should included in source code as follows: #include<string.h>'",
          ),
          getSubHeading(
            "1) Function 'strlen()':",
          ),
          getContent(
            "This function returns length of given string to integer variable.",
          ),
          getSubHeading(
            "Syntax :-",
          ),
          getContent(
            "<integer-variable> = strlen(string-name);",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getSubHeading(
            "2) Function 'strcpy()':",
          ),
          getContent(
            "This function copies one string into another string. Second string is copied into first string.",
          ),
          getSubHeading(
            "Syntax :-",
          ),
          getContent(
            "strcpy(destination-string, source-string",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getSubHeading(
            "3) Function 'strcat()':",
          ),
          getContent(
            "This function concatenates two strings together. Source string is concatenated with target string.",
          ),
          getSubHeading(
            "Syntax :-",
          ),
          getContent(
            "strcat (target-string, source-string);",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getHeading(
            "4) Function 'strcmp()':",
          ),
          getContent(
            "This function compares two strings alphabetically. It Returns ASCII difference of mismatched character. If there is no mismatch it returns 0.",
          ),
          getSubHeading(
            "Syntax :-",
          ),
          getContent(
            "<int-variable> = strcmp(string-1, string-2);",
          ),
          Divider(
            color: Color(0xff645CAA),
          ),
          getSubHeading(
            "5) Function 'strrev()':",
          ),
          getContent(
            "This function reverses the contents of given string. Given string is modified and it contains reverse of original data.",
          ),
          getSubHeading(
            "Syntax :-",
          ),
          getContent("strrev (string-name);")
        ],
      ),
    ],
    quiz: [
      {
        'questionText':
            "Which of the following is the correct way to declare and initialize a string in C?",
        'answers': [
          {'text': 'string str = "Hello";', 'score': true},
          {'text': 'str[] = "Hello";', 'score': false},
          {'text': 'char str[] = "Hello";', 'score': false},
          {'text': 'char[] str = "Hello";', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the size of the string literal \"Hello\" in C?",
        'answers': [
          {'text': '6', 'score': false},
          {'text': '4', 'score': true},
          {'text': '7', 'score': false},
          {'text': '8', 'score': false}
        ],
      },
      {
        'questionText':
            "How do you access an individual character of a string in C?",
        'answers': [
          {'text': 'By using the subscript notation []', 'score': true},
          {'text': 'By using the dot operator (.)', 'score': false},
          {'text': 'By using the arrow operator (->)', 'score': false},
          {'text': 'By using the ampersand (&)', 'score': false}
        ],
      },
      {
        'questionText': "How do you compare two strings for equality in C?",
        'answers': [
          {'text': 'By using the assignment operator (=)', 'score': false},
          {'text': 'By using the equality operator (==)', 'score': true},
          {'text': 'By using the comparison operator (<)', 'score': false},
          {'text': 'By using the strcmp() function', 'score': false}
        ],
      },
      {
        'questionText': "How do you find the length of a string in C?",
        'answers': [
          {
            'text':
                'By subtracting the starting address from the ending address',
            'score': false
          },
          {'text': 'By using the strlen() function', 'score': false},
          {'text': 'By using the length() function', 'score': true},
          {
            'text':
                'By dividing the size of the string by the size of one character',
            'score': false
          }
        ],
      },
    ],
  ),
  Theory(
    id: 'i11',
    title: 'Storage Classes',
    subIndex: ["Storage Classes"],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "Storage Classes: ",
          ),
          getContent(
            "Storage class of a variable specifies its storage location default initial value, scope and life.",
          ),
          getSubHeading(
            "There are four storage classes: ",
          ),
          getContent(
            "By above table, you can understand storage classes.",
          ),
          getContent(
            "'auto' is default storage class",
          ),
          getContent(
            "refer Programs for more understanding...",
          )
        ],
      ),
    ],
    quiz: [],
  ),
  Theory(
    id: 'i12',
    title: 'Preprocessors',
    subIndex: ["Directives", "Include Directive", "Macro Directive"],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "Preprocessor's Directive :",
          ),
          getContent(
            "1) At preprocessing stage, source code is modified according to the preprocessor directive in program.",
          ),
          getSubHeading(
            "2) Preprocessor directive is a keyword or statement which informs compiler to make additional changes or modification in program.",
          ),
          getContent(
            "3) Preprocessor directive always begins with '#' symbol (Hash). and doesn't ends with semicolon(;).",
          ),
          getContent(
            "4) There are some of following preprocessors directives in 'C':",
          ),
          getContent(
            "#include\n#error\n#define\n#if\n#endif\n#elif, etc",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "'#include' Directive :",
          ),
          getContent(
            "1)It is file inclusion directive.\n2) It is used to include or import header files(.h) files in our program.",
          ),
          getSubHeading(
            "Syntax : ",
          ),
          getNotebook(
            "#include <filename>\nOR\n#include \"filename\"",
          ),
          getContent(
            "e.g. #include<stdio.h>",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "'#define' or Macro Directive :",
          ),
          getContent(
            "1) It is definition directive, It is used to define symbolic constant or macro.\n2) Macro is an expresion which is substituted by specific value of a program.",
          ),
          getSubHeading(
            "Syntax :",
          ),
          getNotebook(
            "#define NAME value\nOR\n#define #EXP (A) expansion_in_A",
          ),
          getContent(
            "Above syntax creates symbolic constant NAME of macro EXP(A).\nEvery occurance of NAME or EXP(A) in program is replaced by appropriate value or expansion at preprocessor.",
          )
        ],
      ),
    ],
    quiz: [
      {
        'questionText':
            "Which of the following is used to include a header file in C?",
        'answers': [
          {'text': '#import', 'score': false},
          {'text': '#include', 'score': true},
          {'text': '#define', 'score': false},
          {'text': '#pragma', 'score': false}
        ],
      },
      {
        'questionText': "What is the purpose of the #define directive in C?",
        'answers': [
          {'text': 'It is used to include a header file.', 'score': false},
          {'text': 'It is used to declare a variable.', 'score': false},
          {'text': 'It is used to define a constant value.', 'score': true},
          {'text': 'It is used to comment out a block of code.', 'score': false}
        ],
      },
      {
        'questionText': "Preprocessor directive always begin with ______",
        'answers': [
          {'text': '%', 'score': false},
          {'text': '\$', 'score': false},
          {'text': '#', 'score': true},
          {'text': '&', 'score': false}
        ],
      },
    ],
  ),
  Theory(
    id: 'i13',
    title: 'Pointers',
    subIndex: [
      "Introduction and Declaration",
      "Accessing Values of variables",
      "Application of Pointers",
      "Pointer Arithmetic",
      "Array of Pointers",
      "Pointer of String",
      "Memory Allocation",
      "Pointer to Pointer"
    ],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "Introduction to Pointer :",
          ),
          getContent(
            "Pointer is a variable which is used to store memory address of another variable.",
          ),
          getSubHeading(
            "Syntax :-",
          ),
          getContent(
            "<data-type> *pointer_name;",
          ),
          getContent(
            "'data-type' of pointer should be same as 'data-type' of variable whose address is to be stored.\nWhen we declare a variable, computer allocates memory of appropriate size according to the data type of a variable.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Accessing value of Variable:",
          ),
          getSubHeading(
            "Memory Representation: ",
          ),
          getNotebook(
            "For e.g.\n       int x=10;\n       x <--variable name\n       25<--value\n       8500<--address\nAddress is random value like 8200, 8201, 8389, etc.",
          ),
          getSubHeading(
            "Memory Represesnatation",
          ),
          getContent(
            "We can access value of variable through variable name OR address of variable. To access data in memory indirectly through memory address, we need to use pointer.\nAddress of Operator '&' gives memory address of a variable.\nValue at operator'* gives value at address stored in pointer variable.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Applications of Pointer: ",
          ),
          getContent(
            "Applications of pointer to pass the parameters are as follows:",
          ),
          getSubHeading(
            "1) Call By Value:",
          ),
          getContent(
            "1) Value of actual parameter is passed to called function.\n2) Value of actual parameter collected in appropriate type of variable in called function.\n3) Actual Parameters and formal parameters have different/seperate memory allocations.\n4) Change in formal parameters inside function will doesn't affects (change) on actual parameter of calling parameter.",
          ),
          getSubHeading(
            "2) Call By Reference:",
          ),
          getContent(
              "1) Address of actual parameter is passed to called function.\n2) Address of actual parameter is collected in appropriate type of pointer variable in called function.\n3) Formal parameter contains address of actual parameter.\n4) Change in value in memory through formal parameter affects (changes) value of actual parameter indirectly.")
        ],
      ),
      Column(
        children: [
          getHeading(
            "Pointer Arithmetic :",
          ),
          getContent(
            "1) Pointer arithmetic is concern with arithmetic mathematical operations with pointer.\n2) Mathematical operations like +, -, *, / can be\nperformed using pointers\n3) Pointer can be incremented or decremented in multiple size of data type.\n4) Two pointers can't be added or multiplied or divided with each other.\n5) One pointer can be subtracted from another of same data type.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Array Of Pointers :",
          ),
          getContent(
              "1) Pointers are useful in arrays. Array is collection of same type of same elements.\n2) After declaring array, computer allocates continuous memory blocks of appropriate size and stores base address in array name.\n3) Array is a pointer which contains address of first location of allocated memory.\n4) Subscripted notation 'a[i]' is expanded as '*(a+i)' to access the individual element of array.")
        ],
      ),
      Column(
        children: [
          getHeading(
            "Pointer to String: ",
          ),
          getContent(
            "1) We learnt that, array is a pointer.\n2) We know that, string is array of characters. Array contains base address. i.e. String is actually a pointer of characteristics.\nfor e.g.\nchar str[30]=\"HELLO\";\n'str' contains base address = 8210 'str' is total of 30 Bytes.",
          ),
          getContent(
            "Character  H    E    L    L    O    /0",
          ),
          getContent(
            "Address   9001 9002 9003 9004 9005 9006",
          ),
          getContent(
            "Memory Allocation\n1) When we pass string to a function, base address is actually pased to called function. 2) Formal parameter is also a pointer which contains\nbase address of string. 3) If we change any element in function it will indirectly affect original string.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Memory Allocation:",
          ),
          getSubHeading(
            "There are two types of Memory Allocation:",
          ),
          getContent(
            "\n1) Compile-time/Static Memory Allocation:\n1) Memory is allocated during compilation of program. For each execution size of memory is fixed.\n2) Array declaration is example of static/memory time memory allocation.\n3) If size of array is greater than actual requirement then it is wastage of memory and if size of array is less than actual requirement then it is loss of data.\n4) To overcome this problem runtime memory allocation is used.\n2) Runtime/Dynamic Memory Allocation:\n1) Memory is allocated during execution of program.\n2) For each execution, size of memory may different.\n3) Memory is allocated according to user's requirement.\nFollowing functions are used for dynamic memory allocation:\n1) 'malloc()': Used to allocate memory block at run time.",
          ),
          getContent(
            "Syntax :-\np=(data_type) malloc (n* sizeof(data_ty\n'p' is pointer variable.\n'n' is number of elements. 'sizeof' operator in 'C' which give memory size of variable or data type.\n2) 'free()' Function used to release memory allocated at runtime.\nSyntax :-\nfree (p);\n'p' is appropriate pointer.",
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Pointer to Pointer :",
          ),
          getContent(
            "1) Pointer is a variable which stores address of variable.\n2) To store memory address of one pointer in another is referred as pointer to pointer.\nSyntax :-\n<data-type> **pointer_name;\n3) Array of pointer is example of pointer.",
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText': "What is a pointer in C?",
        'answers': [
          {
            'text': 'A variable that stores the address of another variable',
            'score': true
          },
          {'text': 'A variable that stores a character value', 'score': false},
          {'text': 'A variable that stores an integer value', 'score': false},
          {
            'text': 'A variable that stores a floating-point value',
            'score': false
          }
        ],
      },
      {
        'questionText': "How do you declare a pointer variable in C?",
        'answers': [
          {'text': 'int pointer;', 'score': false},
          {'text': 'pointer int;', 'score': false},
          {'text': 'int* pointer;', 'score': true},
          {'text': 'pointer* int;', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the purpose of the const keyword when used with a pointer in C?",
        'answers': [
          {'text': 'It makes the pointer constant.', 'score': false},
          {
            'text': 'It makes the value at the memory location constant.',
            'score': true
          },
          {
            'text': 'It makes the pointer and the value constant.',
            'score': false
          },
          {
            'text': 'It is not valid to use the const keyword with a pointer.',
            'score': false
          }
        ],
      },
      {
        'questionText': "What is the purpose of an array of pointers in C?",
        'answers': [
          {
            'text':
                'It allows for efficient storage and access of multiple variables.',
            'score': true
          },
          {'text': 'It enables dynamic memory allocation.', 'score': false},
          {'text': 'It simplifies string manipulation.', 'score': false},
          {
            'text': 'It is not a valid construct in the C language.',
            'score': false
          }
        ],
      },
    ],
  ),
  Theory(
    id: 'i14',
    title: 'Structure and Union',
    subIndex: ["Structure", "Union"],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "Structure",
          ),
          getContent(
            "1) Structure is an user-defined data type. Structure is collection of different data type of element.\n2) Structure is used to create a variable which can store multiple values of different data types.",
          ),
          getList(
            [
              " DECLARATION OF STRUCTURE",
              " MEMORY ALLOCATION AND ACCESS",
              " ARRAY OF STRUCTURE",
              " STRUCTURE WITH POINTER",
            ],
          ),
        ],
      ),
      Column(
        children: [
          getHeading(
            "Union",
          ),
          getContent(
            "Union, like structure contain members, whose individual data types may vary. This is a major distinction between them in terms of storage. In structures each member has its own storage location, where all the members of a union use the same location.",
          ),
          getSubHeading(
            "Syntax:-",
          ),
          getNotebook(
            "union <tag-name>{\n      <data_type> member-1;\n      <data_type> member-2;\n      .\n      .\n      \n      <data_type> member-n;\n} variable_name;",
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText': "What is a structure in C?",
        'answers': [
          {
            'text':
                'A data type that allows storing multiple values of the same type',
            'score': false
          },
          {
            'text': 'A collection of different data types grouped together',
            'score': true
          },
          {'text': 'A function that returns multiple values', 'score': false},
          {'text': 'A way to store data in a single variable', 'score': false}
        ],
      },
      {
        'questionText':
            "Which operator is used to access members of a structure in C?",
        'answers': [
          {'text': '.', 'score': true},
          {'text': '::', 'score': false},
          {'text': '->', 'score': false},
          {'text': '*', 'score': false}
        ],
      },
      {
        'questionText': "What is the size of a structure in C?",
        'answers': [
          {'text': 'The sum of the sizes of its members', 'score': true},
          {
            'text': 'The maximum size of any member in the structure',
            'score': false
          },
          {'text': 'The average size of its members', 'score': false},
          {
            'text': 'The size of the first member in the structure',
            'score': false
          }
        ],
      },
      {
        'questionText': "Which keyword is used to declare a union in C?",
        'answers': [
          {'text': 'struct', 'score': false},
          {'text': 'unionize', 'score': false},
          {'text': 'union', 'score': true},
          {'text': 'typedef', 'score': false}
        ],
      },
      {
        'questionText':
            "What is the main difference between a structure and a union in C?",
        'answers': [
          {
            'text':
                'A structure can store multiple values, whereas a union can only store one value.',
            'score': false
          },
          {
            'text':
                'A structure allows accessing its members individually, whereas a union allows accessing only one member at a time.',
            'score': false
          },
          {
            'text':
                'A structure can have members of different data types, whereas a union can have members of the same data type only.',
            'score': false
          },
          {
            'text':
                'A structure allocates memory for all its members, whereas a union shares memory among its members.',
            'score': true
          }
        ],
      },
    ],
  ),
  Theory(
    id: 'i15',
    title: 'Command Line Arguments',
    subIndex: ["Command Line Arguments"],
    theoryContent: [
      Column(
        children: [
          getHeading(
            "Command Line Arguments",
          ),
          getContent(
            "1) Command line argument is a programming through DOS prompt or DOS Shell i.e. command prompt of PC.\n2) To execute commands, Start Command prompt in PC and run built executables through command.\n3) You can learn more through programs.",
          ),
          getSubHeading(
            "Steps To Start command prompt (Microsoft Windows):",
          ),
          getContent(
            "1) Expand Start Bar, Write 'Run' in search and open.\n2) Type 'cmd' and press 'OK', Command prompt windows will start.\n3) Type command to execute in text field of command prompt.",
          ),
        ],
      ),
    ],
    quiz: [
      {
        'questionText': "What are command line arguments in C?",
        'answers': [
          {
            'text': 'Parameters passed to a function during its declaration',
            'score': false
          },
          {
            'text':
                'Arguments provided to the main() function when a program is run from the command line',
            'score': true
          },
          {
            'text': 'Inputs provided to a scanf() function call',
            'score': false
          },
          {
            'text': 'Arguments passed to a function by reference',
            'score': false
          }
        ],
      },
      {
        'questionText':
            "Which header file is required to use command line arguments in C?",
        'answers': [
          {'text': '<stdio.h>', 'score': false},
          {'text': '<stdlib.h>', 'score': true},
          {'text': '<string.h>', 'score': false},
          {'text': '<conio.h>', 'score': false}
        ],
      },
      {
        'questionText': "How are command line arguments accessed in C?",
        'answers': [
          {'text': 'By using the argc variable', 'score': false},
          {'text': 'By using the args variable', 'score': false},
          {'text': 'By using the cmdargs variable', 'score': false},
          {'text': 'By using the argv variable', 'score': true}
        ],
      },
      {
        'questionText': "What is the data type of command line arguments in C?",
        'answers': [
          {'text': 'int', 'score': false},
          {'text': 'char', 'score': false},
          {'text': 'string', 'score': false},
          {'text': 'char pointer (char*)', 'score': true}
        ],
      },
      {
        'questionText':
            "Which symbol is used to separate command line arguments in C?",
        'answers': [
          {'text': 'Space', 'score': true},
          {'text': 'Comma', 'score': false},
          {'text': 'Semicolon', 'score': false},
          {'text': 'Backslash', 'score': false}
        ],
      },
    ],
  ),
];
