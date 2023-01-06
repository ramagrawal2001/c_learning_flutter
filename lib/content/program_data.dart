import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

import '../model/program.dart';

Widget getHeading(String text) {
  return Text(
    text,
    style: TextStyle(
      color: Color(0xff645CAA),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );
}

Widget getNotebook(String text) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ResponsiveNotebookBackground(
        options: const ResponsiveNotebookBackgroundOptions(
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
      ),
    );

Widget getOutput(String s) {
  return Container(
    color: Colors.black,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(20),
    child: Text(
      s,
      style: TextStyle(color: Colors.white),
    ),
  );
}

Widget getColumn(List<Widget> li) {
  return SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: li,
      ),
    ),
  );
}

Widget getQuestion(String s) {
  return Container(
    width: double.infinity,
    color: Colors.black26,
    padding: EdgeInsets.all(10),
    child: Text(s),
  );
}

// Widget getCode(String s) {
//   return Container(
//     height: 500,
//     child: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Container(
//           color: Colors.red,
//           padding: EdgeInsets.all(20.0),
//           child: Text(
//             s + s + s,
//             style: TextStyle(fontSize: 20),
//           ),
//         ),
//       ),
//     ),
//   );
// }

final PROGRAM_DATA = [
  Program(
    id: 'pi1',
    title: "1. Simple Programs",
    subIndex: [
      "Print 'Hello World' on Screen",
      "Using Escape Sequences",
      "Printing Values of Variables",
      "Accept Values from user and print",
      "Swapping the Values",
    ],
    programContent: [
      getColumn(
        [
          getQuestion("Print 'Hello World' Program"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main(){\n     printf(\"Hello World\");\n}"),
          getHeading('Output :'),
          getOutput("Hello World"),
        ],
      ),
      getColumn(
        [
          getQuestion("Using Escape sequence in program"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main(){\n     printf(\"Hello\\nWorld\");\n}"),
          getHeading('Output :'),
          getOutput("Hello\nWorld"),
        ],
      ),
      getColumn(
        [
          getQuestion("To print value of variables using format specifiers"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main(){\n     int x=10;\n     float f=10.8;\n     char c='A'\n     printf(\"x=%d \\nf=%f \\nc=%c\", x,f,c);\n}"),
          getHeading('Output :'),
          getOutput("x=10\nf=10.800000\nc=A"),
        ],
      ),
      getColumn(
        [
          getQuestion("Get input from user and print user input values"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main(){\n     int x;\n     float f;\n     char c;\n     printf(\"Enter the int, float, char values :\");\n     scanf(\"%d %f %c\", &x, &f, &c);\n     printf(\"\\nX=%d \\nF=%f \\nC=%c\", x, f, c);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter the int, float, char values :5\n10.546\nR\n\nX=5\nF=10.546000\nC=R"),
        ],
      ),
      getColumn(
        [
          getQuestion("To swap the values between two variables"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main(){\n     int a, b, t;\n     printf(\"Enter values of 'A' and 'B' = \");\n     scanf(\"%d%d\", &a, &b);\n     t=a;\n     a=b;\n     b=t;\n     printf(\"A=%d B=%d\", a, b);\n}"),
          getHeading('Output :'),
          getOutput("Enter values of 'A' and 'B' = 10\n20\nA=20 B=10"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi2',
    title: "2. Arithmetic Operation",
    subIndex: [
      "Addition and Subtraction",
      "Multiplication And Division",
      "Calculate Square",
      "Calculate Area and Perimeter of Circle",
      "Read 3 Integers and Calculate Average",
      "Calculate Simple Interest",
      "Conversion of Celsius into Fahrenheit",
    ],
    programContent: [
      getColumn([
        getQuestion("To perform addition or subtraction operations"),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main(){\n     int x, y, sum;\n     printf(\"Enter Two Integers : \");\n     scanf(\"%d %d\", &x, &y);\n     sum=x+y;\n     printf(\"\\nAddition = %d\", sum);\n}"),
        getHeading("Output :"),
        getOutput("Enter Two Integers : 12\n54\n\nAddition = 66"),
      ]),
      getColumn([
        getQuestion("To perform Multiplication and Division opeartions"),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main(){\n     int x, y, mul;\n     float div;\n     printf(\"Enter Two Integers : \");\n     scanf(\"%d %d\", &x, &y);\n     mul=x*y;\n     div=x/y;\n     printf(\"\\nMultiplication = %d\\nDivision = %f\", mul, div);\n}"),
        getHeading("Output :"),
        getOutput(
            "Enter Two Integers : 100\n10\n\nMultiplication = 1000\nDivision = 10.000000"),
      ]),
      getColumn([
        getQuestion("Calculate square from user input integer."),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main(){\n     int x, sq;\n     printf(\"Enter a Integer : \");\n     scanf(\"%d\", &x);\n     sq=x*x;\n     printf(\"\\nSquare = %d\", sq);\n}"),
        getHeading("Output :"),
        getOutput("Enter a Integer : 25\n\nSquare = 625"),
      ]),
      getColumn([
        getQuestion("To calculate area and perimeter of circle from user input radius"),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main(){\n     printf(\"Hello World\");\n}"),
        getHeading("Output :"),
        getOutput(""),
      ]),
      getColumn([
        getQuestion(""),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main(){\n     printf(\"Hello World\");\n}"),
        getHeading("Output :"),
        getOutput(""),
      ]),
      getColumn([
        getQuestion(""),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main(){\n     printf(\"Hello World\");\n}"),
        getHeading("Output :"),
        getOutput(""),
      ]),
      getColumn([
        getQuestion(""),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main(){\n     printf(\"Hello World\");\n}"),
        getHeading("Output :"),
        getOutput(""),
      ]),
    ],
  ),
  Program(id: 'pi3', title: "3-A. Decision Control[if]", subIndex: [
    "Determine Number entered is positive or negative",
    "Find Greatest Number",
    "Print Appropriate Message",
  ]),
  Program(id: 'pi4', title: "3-B. Decision Control [if-else]", subIndex: [
    "Determine even odd integer",
    "Check Divisibility",
    "Check character is vowel or not",
    "Print Message according to age",
    "Read Marks and print Grade",
    "Determine Largest number among integers",
  ]),
  Program(id: 'pi5', title: "3-C. Decision Control [switch]", subIndex: [
    "Determine character is Vowel or not",
    "Print appropriate Message",
  ]),
  Program(
      id: 'pi6',
      title: "3-D. Decision Control (Conditional Operator)",
      subIndex: [
        "Program using Conditional Operator",
      ]),
  Program(id: 'pi7', title: "3-D. 4-A. Loop Control [for]", subIndex: [
    "Print 'Hello World' Ten Times",
    "Print Integers from 1 to 10",
    "Print Integers from 10 to 1",
    "Print Multiplication Table",
    "Calculate sum of first 10 numbers",
    "Calculate Factorial",
    "Calculate Power (x^y)",
    "Check if number entered is prime number or not",
    "Print Fibonacci Series",
  ]),
  Program(id: 'pi8', title: "4-B. Loop Control [while]", subIndex: [
    "Print Entered String",
    "Count Characters in a String",
    "Print Reverse",
    "Count Occurrences of Character",
    "Convert Case of String",
    "Copy Strings",
  ]),
  Program(id: 'pi9', title: "4-C. Loop Control [do-while]", subIndex: [
    "Print Table of given number",
    "Calculate addition until addition becomes 100",
  ]),
  Program(id: 'pi10', title: "4-D. Loop Control [goto]", subIndex: [
    "Program using 'goto' keyword",
  ]),
  Program(id: 'pi11', title: "4-E. Nesting Of Loop", subIndex: [
    "Print Symbolic Pattern",
    "Print Alphabet Pattern",
    "Print Number Pattern",
    "Using Keyword 'continue'",
    "Using Keyword 'break'",
  ]),
  Program(
      id: 'pi12',
      title: "5. Character Data Type Program (ASCII)",
      subIndex: [
        "Print ASCII Table",
        "Print Uppercase Alphabets",
        "Print Lowercase Alphabets",
        "Determine Case of Alphabet",
      ]),
  Program(id: 'pi13', title: "6. Array", subIndex: [
    "Read 10 Integers and Print",
    "Calculate Square in array",
    "Calculate Sum and Average",
    "Count Occurrences",
    "Find Largest among 10 integers",
    "Count Positive and negative integers",
    "To Sort Elements in Array",
    "[2D-array] Print data in tabular form",
    "[2D-array] Addition of 3X3 Matrices",
  ]),
  Program(id: 'pi14', title: "7. String", subIndex: [
    "Print Entered String",
    "Count Characters in a String",
    "Print Reverse",
    "Count Occurrences of Character",
    "Convert Case of String",
    "Copy Strings",
  ]),
  Program(id: 'pi15', title: "8-A. User Defined Functions", subIndex: [
    "Calculate Addition",
    "Calculate Division",
    "Calculate Area of Circle"
  ]),
  Program(id: 'pi16', title: "8-B. Standard Library Functions", subIndex: [
    "Math- Calculate Square Root",
    "Math- Calculate Power",
    "Calculate Length of String",
    "To Copy String",
    "Concatenation of String",
    "Reverse of String",
    "String Comparison",
    "To Swap Strings",
    "Check if entered string is palindrome",
  ]),
  Program(id: 'pi17', title: "8-C. Recursive Function", subIndex: [
    "To Calculate Factorial",
    "To Print Fibonacci Series",
  ]),
  Program(id: 'pi18', title: "9. Storage Classes", subIndex: [
    "Automatic",
    "Static",
    "External",
    "Register",
  ]),
  Program(id: 'pi19', title: "10. Preprocessors", subIndex: [
    "To Calculate Area of Circle",
    "Solve Equation",
  ]),
  Program(id: 'pi20', title: "11. Pointers", subIndex: [
    "Accessing data through pointer",
    "Calculate Product of a Number",
    "Pointer Arithmetic",
    "Pointer 'Call-by-Reference'",
    "Array Of Pointer",
    "Runtime Memory Allocation",
  ]),
  Program(id: 'pi21', title: "12. Structure", subIndex: [
    "Structure of Student",
    "Array of Structure",
    "Structure With Pointer",
  ]),
  Program(
    id: 'pi22',
    title: "13. Union",
    subIndex: ["Union"],
  ),
  Program(id: 'pi23', title: "14. Command Line Arguments", subIndex: [
    "Calculate Addition",
    "Calculate Average",
    "Print Reverse of String",
  ]),
];
