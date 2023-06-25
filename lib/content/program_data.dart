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
        getQuestion(
            "To calculate area and perimeter of circle from user input radius"),
        getHeading("Program Code :"),
        getNotebook(
            "#include <stdio.h> \nvoid main()\n{\n      int r;\n      float area,perimeter;\n      printf(\"Enter The Radius of Circle : \");\n      scanf(\"%d\",&r);\n      area=3.14*r*r;\n      perimeter=2*3.14*r;\n      printf(\"\\nArea =%f Perimeter=%f\",area,perimeter);\n}"),
        getHeading("Output :"),
        getOutput(
            "Enter The Radius of Circle : 3\n Area =28.260000\n Perimeter=18.840000"),
      ]),
      getColumn([
        getQuestion(
            "To calculate sum and average by reading 3 integers from user input."),
        getHeading("Program Code :"),
        getNotebook(
            "#include <stdio.h> \n void main()\n{\n      int x,y,z,sum;\n      float avg;\n      printf(\"Enter Three Integers : \");\n      scanf(\"%d%d%d\",&x,&y,&z);\n      sum=x+y+z;\n      avg=sum/3.0; //3.0 to store float value\n      printf(\"\\nSum =%d Average =%f\",sum,avg);\n}"),
        getHeading("Output :"),
        getOutput(
            "Enter Three Integers : 10\n20\n30\nSum =60\nAverage =20.000000"),
      ]),
      getColumn([
        getQuestion(
            "To calculate simple interest from user input principle amount, periods in number of year and rate of interest."),
        getHeading("Program Code :"),
        getNotebook(
            "#include <stdio.h>\nvoid main()\n{\n      int years;\n      float amount,rate,interest;\n      printf(\"Enter Principle Amount : \");\n      scanf(\"%f\",&amount);\n      printf(\"Enter Rate Of Interest : \");\n      scanf(\"%f\",&rate);\n      printf(\"Enter Period in Years : \");\n      scanf(\"%d\",&years);\n      interest=(amount*rate*years)/100;\n      printf(\"\\nSimple Interest = %f\",interest);}"),
        getHeading("Output :"),
        getOutput(
            "Enter Principle Amount: 10000 Enter Rate Of Interest : 12\nEnter Period in Years : 2\nSimple Interest = 2400.000000"),
      ]),
      getColumn([
        getQuestion(
            "To read celsius from user input and convert it into fahrenheit."),
        getHeading("Program Code :"),
        getNotebook(
            "#include <stdio.h>\nvoid main()\n{\n      float c,f;\n      printf(\"Enter Temperature in Celcius : \");\n      scanf(\"%f\",&c);\n      f=c*9/5+32;\n      printf(\"\\nFahrenheit = %f\",f);\n}"),
        getHeading("Output :"),
        getOutput("Enter Temperature in Celcius: 40\nFahrenheit = 104.000000"),
      ]),
    ],
  ),
  Program(
    id: 'pi3',
    title: "3-A. Decision Control[if]",
    subIndex: [
      "Determine Number entered is positive or negative",
      "Find Greatest Number",
      "Print Appropriate Message",
    ],
    programContent: [
      getColumn([
        getQuestion("To check number entered by user is positive or negative"),
        getHeading("Program Code :"),
        getNotebook(
            "#include <stdio.h>\nvoid main()\n{\n      int x;\n      printf(\"Enter The Number : \");\n      scanf(\"%d\",&x);\n      if(x>0)\n      {\n          printf(\"\\n%d is Positive Integer \",x);\n      }\n      if(x<0)\n      {\n          printf(\"\\n%d is Negative Integer \",x);\n      }\n}"),
        getHeading("Output :"),
        getOutput("Enter The Number: 554 \n554 is Positive Integer"),
        getOutput("Enter The Number: -346 \n-346 is Negative Integer"),
      ]),
      getColumn([
        getQuestion("To find greatest number among entered 2 integer values"),
        getHeading("Program Code :"),
        getNotebook(
            "#include <stdio.h>\nvoid main()\n{\n      int x,y;\n      printf(\"Enter Two Number : \");\n      scanf(\"%d%d\",&x,&y);\n      if(x>y)\n      {\n          printf(\"\\n%d is Greatest Number \",x);\n      }\n      if(x<y)\n      {\n          printf(\"\\n%d is Greatest Number \",y);\n      }\n      }"),
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
  Program(id: 'pi4', title: "3-B. Decision Control [if-else]", subIndex: [
    "Determine even odd integer",
    "Check Divisibility",
    "Check character is vowel or not",
    "Print Message according to age",
    "Read Marks and print Grade",
    "Determine Largest number among integers",
  ], programContent: [
    getColumn([
      getQuestion("To determine even or odd integers by user input"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int n=2;\n      printf(\"Enter The Number : \");\n      scanf(\"%d\",&n);\n      if(n%2==0)\n      {\n          printf(\"\\n%d is Even Number\",n);\n      }\n      else\n      {\n          printf(\"\\n%d is odd number\",n);\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter The Number: 7\n7 is odd number"),
    ]),
    getColumn([
      getQuestion("To check complete divisibility of number enterd by user."),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int n,div;\n      printf(\"\\nEnter The Number : \");\n      scanf(\"%d\",&n);\n      printf(\"\\nEnter The Divisor : \");\n      scanf(\"%d\",&div);\n      if(n%div==0)\n      {\n          printf(\"\\n%d is completely divisible by %d\",n,div);\n      }\n      else\n      {\n          printf(\"\\n%d is not completely divisible by %d\",n,div);\n      }\n}"),
      getHeading("Output :"),
      getOutput(
          "Enter The Number: 345\nEnter The Divisor: 13\n345 is not completely divisible by 13"),
    ]),
    getColumn([
      getQuestion("To Determine the character entered is vowel or not."),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      char c;\n      printf(\"\\nEnter The Alphabet : \");\n      scanf(\"%c\",&c);\n      if(c==’A’ || c==’E’ || c==’I’ || c==’O’ || c==’U’) //Used Logical ‘OR’\n      {\n          printf(\"\\n%c is vowel\",c);\n      }\n      else\n      {\n          printf(\"\\n%c is not vowel\”,c);\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter The Alphabet : I\nI is vowel"),
    ]),
    getColumn([
      getQuestion("To read age from user input and print message."),
      getHeading("Program Code :"),
      getQuestion("Age :- less than 18 ,Message:- Children"),
      getQuestion("Age :- 18-60 ,Message:- Young"),
      getQuestion("Age :- Above 60 ,Message:- Old"),
      Divider(
        color: Color(0xff645CAA),
      ),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int age;\n      printf(\"\\nEnter The age : \");\n      scanf(\"%d\",&age);\n      if(age<18)\n      {\n          printf(\"\\nYou are children\");\n      }\n      else if(age>=18 && age<60)\n      {\n          printf(\"\\nYou are Young\”);\n      }\n      else if(age>=60 && age<=110)\n      {\n          printf(\"\\nYou are Old\");\n      }\n      else\n      {\n          printf(\"\\nInvalid Age\");\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter The age: 45\nYou are Young"),
    ]),
    getColumn([
      getQuestion("To print grade by user input marks"),
      getHeading("Program Code :"),
      getQuestion("Marks :- less than 40 ,Message:- Failed"),
      getQuestion("Marks :- 40-60 ,Message:- Pass"),
      getQuestion("Marks :- 60-80 ,Message:- First Class"),
      getQuestion("Marks :- 80-100 ,Message:- Distinction"),
      getQuestion("Marks :- Any Other ,Message:- Invalid Marks Input"),
      Divider(
        color: Color(0xff645CAA),
      ),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int m;\n      printf(\"\\nEnter The Marks : \");\n      scanf(\"%d\",&m);\n      if(m<40)\n      {\n          printf(\"\\nFailed\");\n      }\n      else if(m>=40 && m<60) //Used Logical ‘AND’\n      {\n          printf(\"\\nPass\”);\n      }\n      else if(m>=60 && m<=80)\n      {\n          printf(\"\\nFirst Class\");\n      }\n      else if(m>=80 && m<=100)\n      {\n          printf(\"\\nDistinction\");\n      }\n      else\n      {\n          printf(\"\\nInvalid Marks Input\");\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter The Marks: 75\nFirst Class"),
    ]),
    getColumn([
      getQuestion(
          "To read three integers and print largest among three integers."),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int x,y,z;\n      printf(\"\\nEnter Three Integers : \");\n      scanf(\"%d%d%d\",&x,&y,&z);\n      if(x>y && x>z)\n      {\n          printf(\"\\n%d is greatest number\",x);\n      }\n      else if(y>z)\n      {\n          printf(\"\\n%d is greatest number\”,y);\n      }\n      else\n      {\n      printf(\"\\n%d is greatest number\",z);\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter Three Integers : 45 \n12\n65\n65 is greatest number"),
    ]),
  ]),
  Program(id: 'pi5', title: "3-C. Decision Control [switch]", subIndex: [
    "Read digit and print in words",
    "Determine character is Vowel or not",
    "Print appropriate Message",
  ], programContent: [
    getColumn([
      getQuestion("To read Digit from user and print in words"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int n;\n      printf(\"\\nEnter The Number : \");\n      scanf(\"%d\",&n);\n      switch(n)\n      {\n          case 0:printf(\“\\nZERO\”);break;\n          case 1:printf(\“\\nONE\”);break;\n          case 2:printf(\“\\nTWO\”);break;\n          case 3:printf(\“\\nTHREE\”);break;\n          case 4:printf(\“\\nFOUR\”);break;\n          case 5:printf(\“\\nFIVE\”);break;\n          case 6:printf(\“\\nSIX\”);break;\n          case 7:printf(\“\\nSEVEN\”);break;\n          case 8:printf(\“\\nEIGHT\”);break;\n          case 9:printf(\“\\nNINE\”);break;\n          default :printf(\“\\nEnter No. between 0-9\”);\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter The Number: 4\nFOUR"),
      getOutput("Enter The Number : 23\nEnter No. between 0-9")
    ]),
    getColumn([
      getQuestion(
          "To read character from user and print if it is vowel or not"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      char c;\n      printf(\"\\nEnter The Character : \");\n      scanf(\"%c\",&c);\n      switch(c)\n      {\n          case ‘a’:\n          case ‘A’:printf(\“\\n%c is a vowel\”,c);break;\n          case ‘e’:\n          case ‘E’:printf(\“\\n%c is a vowel\”,c);break;\n          case ‘i’:\n          case ‘I’:printf(\“\\n%c is a vowel\”,c);break;\n          case ‘o’:\n          case ‘O’:printf(\“\\n%c is a vowel\”,c);break;\n          case ‘u’:\n          case ‘U’:printf(\“\\n%c is a vowel\”,c);break;\n          default :printf(\“\\n%c is not a vowel\”,c);\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter The Character: I\nI is a vowel"),
      getOutput("Enter The Character: Z\nZ is not a vowel"),
    ]),
    getColumn([
      getQuestion("To read character from user and print Appropriate message"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      char c;\n      printf(\"\\nEnter The Character : \");\n      scanf(\"%c\",&c);\n      switch(c)\n      {\n          case 'a':\n          case 'A':printf(\"\\nDistinction\");break;\n          case 'b':\n          case 'B':printf(\"\\nFirst Class\");break;\n          case 'c':\n          case 'C':printf(\"\\nPass\");break;\n          case 'd':\n          case 'D':printf(\"\\nFailed\");break;\n          default :printf(\"\\n%c is not valid grade\",c);\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter The Character: C\nPass"),
    ]),
  ]),
  Program(
      id: 'pi6',
      title: "3-D. Decision Control (Conditional Operator)",
      subIndex: [
        "Program using Conditional Operator",
      ],
      programContent: [
        getColumn([
          getQuestion(
              "To read integer from user and perform operation according to number."),
          getHeading("Program Code :"),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int n,x;\n      printf(\"\\nEnter 1 or 2 : \");\n      scanf(\"%d\",&n);\n      x=(n==1)?10:20;\n      printf(\"\\nX=%d\”,x);\n}"),
          getHeading("Output :"),
          getOutput("Enter 1 or 2 : 1\nX= 10"),
          getOutput("Enter 1 or 2 : 2\nX= 20"),
        ]),
      ]),
  Program(id: 'pi7', title: "4-A. Loop Control [for]", subIndex: [
    "Print 'Hello World' Ten Times",
    "Print Integers from 1 to 10",
    "Print Integers from 10 to 1",
    "Print Multiplication Table",
    "Calculate sum of first 10 numbers",
    "Calculate Factorial",
    "Calculate Power (x^y)",
    "Check if number entered is prime number or not",
    "Print Fibonacci Series",
  ], programContent: [
    getColumn([
      getQuestion("To print 'Hello World' ten times using 'for' loop."),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int i;\n      for(i=1;i<=10;i++)\n      {\n          printf(\"\\nHello World\");\n      }\n}"),
      getHeading("Output :"),
      getOutput(
          "Hello World\nHello World\nHello World\nHello World\nHello World\nHello World\nHello World\nHello World\nHello World\nHello World"),
    ]),
    getColumn([
      getQuestion("To print numbers 1 to 10 using 'for' loop"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main(){\n      int i;\n      for(i=1;i<=10;i++)\n      {\n          printf(\"\\n %d\",i);\n      }\n}"),
      getHeading("Output :"),
      getOutput("1\n2\n3\n4\n5\n6\n7\n8\n9\n10"),
    ]),
    getColumn([
      getQuestion("To print numbers 10 to 1 using 'for' loop"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main(){\n      int i;\n      for(i=10;i>=1;i--)\n      {\n          printf(\"\\n %d\",i);\n      }\n}"),
      getHeading("Output :"),
      getOutput("10\n9\n8\n7\n6\n5\n4\n3\n2\n1"),
    ]),
    getColumn([
      getQuestion("To print Multiplication table of given number"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int i,n,m;\n      printf(\“Enter The Number : \“);\n      scanf(\“%d\“,&n);\n      for(i=1;i<=10;i++)\n      {\n          m=i*n;\n          printf(\"\\n %d\",m);\n      }\n}"),
      getHeading("Output :"),
      getOutput(
          "Enter The Number : 25 \n25\n50\n75\n100\n125\n150\n175\n200\n225\n250"),
    ]),
    getColumn([
      getQuestion("To print Sum of first ten numbers using 'for' loop"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int i,sum=0; //sum contains garbage value\n      for(i=1;i<=10;i++)\n      {\n          sum=i+sum;\n      }\n          printf(\"\\n Sum of first Ten Digit numbers =%d\",sum);\n}"),
      getHeading("Output :"),
      getOutput("Sum of first Ten Digit numbers =55"),
    ]),
    getColumn([
      getQuestion(
          "To read integer from user then calculate and print its factorial using 'for' loop"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int i,n,fact=1; //’fact’ contains garbage value. to perform multiplication it is assigned to 1\n      printf(\“\\nEnter the number : \”);\n      scanf(\“%d\”,&n);\n      for(i=1;i<=n;i++)\n      {\n      fact=fact*i;\n      }\n          printf(\"\\n%d! =%d\",n,fact);\n}"),
      getHeading("Output :"),
      getOutput("Enter the number : 6\n6! = 720"),
    ]),
    getColumn([
      getQuestion(
          "To read integer from user then calculate and print its power using 'for' loop"),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int i,x,y,pow=1;\n      printf(\"\\n Enter the Base : \");\n      scanf(\"%d\",&x);\n      printf(\"\\n Enter the Index : \");\n      scanf(\"%d\",&y);\n      for(i=1;i<=y;i++)\n      {\n          pow=pow*x;\n      }\n      printf(\"\\n %d^%d = %d\",x,y,pow);\n}"),
      getHeading("Output :"),
      getOutput("Enter the Base : 2\nEnter the Index : 5\n2^5 = 32"),
    ]),
    getColumn([
      getQuestion(
          "To read integer from user and calculate if it is prime number or not."),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int n,i,c=0;\n      printf(\"\\n Enter the Number : \");\n      scanf(\"%d\",&n);\n      for(i=2;i<n;i++)\n      {\n          if(n%i==0)\n          {\n              c++;\n          }\n      }\n      if(c==0)\n      {\n          printf(\"\\n %d is Prime Number\",n);\n      }\n      else\n      {\n          printf(\"\\n %d is Not Prime Number\",n);\n      }\n}"),
      getHeading("Output :"),
      getOutput("Enter the Number : 4\n4 is Not Prime Number"),
      getOutput("Enter the Number: 2\n2 is Prime Number")
    ]),
    getColumn([
      getQuestion("To print Fibonacci series."),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int i,x=0,y=1,s;\n      printf(\"\\nFibonacci Series : \");\n      printf(\"\\n%d\\t%d\",x,y);\n      for(i=1;i<20;i++)\n      {\n          s=x+y;\n          printf(\"\\t%d\",s);\n          x=y;\n          y=s;\n      }\n}"),
      getHeading("Output :"),
      getOutput(
          "Fibonacci Series : \n0      1      1      2      3      5      8      13      21      34      55      89      144      233      377      610      987      1597      2584      4181      6765"),
    ]),
  ]),
  Program(id: 'pi8', title: "4-B. Loop Control [while]", subIndex: [
    "Calculate Sum of digit in number",
    "Calculate occurrences of given digit in number",
    "Calculate reverse of number",
  ], programContent: [
    getColumn([
      getQuestion(
          "To read number from user and then calculate sum of digits in it using 'while' loop."),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int n,r,sum=0;\n      printf(\"\\nEnter the Numbers : \");\n      scanf(\"%d\",&n);\n      while(n!=0)\n      {\n          r=n%10;\n          sum=sum+r;\n          n=n/10;\n      }\n      printf(\"\\nSum of Digits of Number = %d\",sum);  \n}"),
      getHeading("Output :"),
      getOutput("Enter the Numbers: 444\nSum of Digits of Number = 12"),
    ]),
    getColumn([
      getQuestion(
          "To read numbers from user and then calculate occurrences of digit using 'while' loop."),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main()\n{\n      int n,r,s,c=0;\n      printf(\"\\nEnter the Numbers : \");\n      scanf(\"%d\",&n);\n      printf(\"\\nEnter the Digit to Count : \");\n      scanf(\"%d\",&s);\n      while(n!=0)\n      {\n          r=n%10;\n          if(r==s)\n          {\n              c++;\n          }\n          n=n/10;\n      }\n      printf(\"\\n%d Occurs %d times\",s,c);\n}"),
      getHeading("Output :"),
      getOutput(
          "Enter the Numbers : 112311\nEnter the Digit to Count: 1\n1 Occurs 4 times"),
    ]),
    getColumn([
      getQuestion(""),
      getHeading("Program Code :"),
      getNotebook(
          "#include<stdio.h>\nvoid main(){\n     printf(\"Hello World\");\n}"),
      getHeading("Output :"),
      getOutput(""),
    ]),
  ]),
  Program(
    id: 'pi9',
    title: "4-C. Loop Control [do-while]",
    subIndex: [
      "Print Table of given number",
      "Calculate addition until addition becomes 100",
    ],
    programContent: [
      getColumn([
        getQuestion(
            "To read numbers from user and then print its multiplication table using 'do-while' loop."),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main()\n{\n      int n,i=1,m;\n      printf(\"\\nEnter the Number : \");\n      scanf(\"%d\",&n);\n      printf(\"\\nMultiplication Table of %d : \",n);\n      do\n      {\n          m=n*i;\n          printf(\“\\n%d\”,m);\n          i++;\n      }while(i<=10);\n}"),
        getHeading("Output :"),
        getOutput(
            "Enter the Number : 12\nMultiplication Table of 12:\n12\n24\n36\n48\n60\n72\n84\n96\n108\n120"),
      ]),
      getColumn([
        getQuestion(
            "To read numbers from user. Calculate it until addition becomes more than 100."),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main()\n{\n      int n,i=1,sum=0;\n      do\n      {\n          printf(\“\\nEnter The Number : \”);\n          scanf(\“%d\”,&n);\n          sum=sum+n;\n      }while(sum<100);\n      printf(\“\\nSum : %d \”,sum);\n}"),
        getHeading("Output :"),
        getOutput(
            "Enter the Number : 1\nEnter the Number : 1\nEnter the Number: 1\nEnter the Number: 1\nEnter the Number : 1\nEnter the Number : 10\nEnter the Number: 80\nEnter the Number : 1\nEnter the Number: 10\nSum: 106"),
      ]),
    ],
  ),
  Program(
    id: 'pi10',
    title: "4-D. Loop Control [goto]",
    subIndex: [
      "Program using 'goto' keyword",
    ],
    programContent: [
      getColumn([
        getQuestion(
            "To read numbers from user.If entered zero,restart the program."),
        getHeading("Program Code :"),
        getNotebook(
            "#include<stdio.h>\nvoid main()\n{\n      int n;\n      ZERO:\n          printf(\“\\nEnter The Number : \”);\n          scanf(\“%d\”,&n);\n          if(n==0)\n          {\n                goto ZERO;\n          }\n          printf(\“\\nYou Entered %d \”,n);\n}"),
        getHeading("Output :"),
        getOutput(
            "Enter the Number: 0\nEnter the Number: 0\nEnter the Number: 2\nYou entered 2"),
      ]),
    ],
  ),
  Program(
    id: 'pi11',
    title: "4-E. Nesting Of Loop",
    subIndex: [
      "Print Symbolic Pattern",
      "Print Alphabet Pattern",
      "Print Number Pattern",
      "Using Keyword 'continue'",
      "Using Keyword 'break'",
    ],
    programContent: [
      getColumn(
        [
          getQuestion("To Print symbolic pattern "),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int i,j;\n      printf(\“\\n Symbolic Pattern\\n\\n\”);\n      for(i=1;i<=5;i++)\n      {\n            for(j=1;j<=i;j++)\n            {\n                printf(\“ * \”);\n             }\n            printf(\“\\n\”);\n      }\n}"),
          getHeading('Output :'),
          getOutput("Symbolic Pattern\n\n*\n* *\n* * *\n* * * *\n* * * * * "),
        ],
      ),
      getColumn(
        [
          getQuestion("To Print Alphabetical Pattern"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int i,j;\n      printf(\“\\n Alphabetical Pattern\\n\\n\”);\n      for(i=’A’;i<=’F’;i++)\n      {\n            for(j=’A’;j<=i;j++)\n            {\n                printf(\“ %c \”,j);\n            }\n            printf(\“\\n”\);\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              "Alphabetical Pattern\n\nA\nA B\nA B C\nA B C D\nA B C D E\nA B C D E F"),
        ],
      ),
      getColumn(
        [
          getQuestion("To Print Numerical Pattern"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int i,j;\n      printf(\“\\n Numeric Pattern\\n\\n\”);\n      for(i=5;i>=1;i--)\n      {\n            for(j=5;j>=i;j--)\n            {\n                printf(\“ %d \”,j);\n            }\n            printf(\“\\n\”);\n      }\n}"),
          getHeading('Output :'),
          getOutput("Numeric Pattern\n\n5\n5 4\n5 4 3\n5 4 3 2\n5 4 3 2 1"),
        ],
      ),
      getColumn(
        [
          getQuestion("To Print pattern using keyword 'continue'"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int i,j;\n      for(i=1;i<=2;i++)\n      {\n            for(j=1;j<=2;j++)\n            {\n                if(i==j)\n                {\n                    continue;\n                }         \n                printf(\“\\n%d %d\”,i,j);\n            }\n      }\n}"),
          getHeading('Output :'),
          getOutput("1 2\n2 1"),
        ],
      ),
      getColumn(
        [
          getQuestion("To Print numbers using break keyword"),
          getHeading('Program Code :'),
          getNotebook(
              "#include <stdio.h>\nint main()\n{\nint i;\n      for (i = 0; i < 10; i++)\n      {\n      if (i == 4)\n      {\n            break;\n      }\n            printf(\"%d\\n\", i);\n      }\nreturn 0;\n}"),
          getHeading('Output :'),
          getOutput("0\n1\n2\n3"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi12',
    title: "5. Character Data Type Program (ASCII)",
    subIndex: [
      "Print Uppercase Alphabets",
      "Print Lowercase Alphabets",
      "Determine Case of Alphabet",
    ],
    programContent: [
      getColumn(
        [
          getQuestion("To Print Uppercase alphabates "),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      char i;\n      for(i='A';i<='Z';i++)\n      {\n            printf(\"%c\\t\",i);\n      }\n}"),
          getHeading('Output :'),
          getOutput("A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"),
        ],
      ),
      getColumn(
        [
          getQuestion("To Print Lowercase alphabates "),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      char i;\n      for(i='a';i<='z';i++)\n      {\n            printf(\"%c\\t\",i);\n      }\n}"),
          getHeading('Output :'),
          getOutput("a b c d e f g h i j k l m n o p q r s t u v w x y z"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read character from user and print whether it is uppercase or lowercase alphabet."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      char c;\n      printf(\“\\nEnter The Character : \”);\n      scanf(\“%d\”,&c);\n      if(c>='A' && c<='Z')\n      {\n            printf(\“\\n%c is Uppercase Alphabet\”,c);\n      }\n      else if(c>='a' && c<='z')\n      {\n            printf(\“\\n%c is Lowercase Alphabet\”,c);\n      }\n      else\n      {\n            printf(\“\\n%c is is not Alphabet\”,c);\n      }\n}"),
          getHeading('Output :'),
          getOutput("Enter The Character : g\ng is Lowercase Alphabet"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi13',
    title: "6. Array",
    subIndex: [
      "Read 10 Integers and Print",
      "Calculate Square in array",
      "Calculate Sum and Average",
      "Count Occurrences",
      "Find Largest among 10 integers",
      "Count Positive and negative integers",
      "To Sort Elements in Array",
      "[2D-array] Print data in tabular form",
    ],
    programContent: [
      getColumn(
        [
          getQuestion("To read 10 integers in array and print its value."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int a[10],i;\n      for(i=0;i<10;i++)\n      {\n            printf(\"Enter Number %d : \",i+1);\n            scanf(\"%d\",&a[i]);\n      }\n      printf(\"\\nEntered Numbers are :\");\n      for(i=0;i<10;i++)\n      {\n            printf(\" %d \",a[i]);\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter Number 1 : 34\n Enter Number 2: 564\n Enter Number 3: 234\n Enter Number 4 : 64\n Enter Number 5: 23\n Enter Number 6 : 6\n Enter Number 7 : 7\n Enter Number 8 : 43\n Enter Number 9 : 67\n Enter Number 10: 54\n Entered Numbers are: 34 564 234 64 23 6 7 43 67 54"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read 10 integers in array and print squares of integers in array."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int a[10],i;\n      for(i=0;i<10;i++)\n      {\n            printf(\"Enter Number %d : \",i+1);\n            scanf(\"%d\",&a[i]);\n      }\n      printf(\"\\nSquares are :\");\n      for(i=0;i<10;i++)\n      {\n            printf(\" %d \",a[i]*a[i]);\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter Number 1 : 1\n Enter Number 2:2\n Enter Number 3:3\n Enter Number 4:4\n Enter Number 5:5\n Enter Number 6:6\n Enter Number 7:7\n Enter Number 8:8 \n Enter Number 9:9\n Enter Number 10 :10\n Squares are : 1 4 9 16 25 36 49 64 81 100"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read 10 integers in array, calculate sum and average of numbers in array."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int a[10],i,sum=0;\n      float avg;\n      for(i=0;i<10;i++)\n      {\n            printf(\"Enter Number %d : \",i+1);\n            scanf(\"%d\",&a[i]);\n            sum=sum+a[i];\n      }\n      avg=sum/10.0;\n      printf(\"\\nSum =%d\\nAverage =%f\",sum,avg);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter Number 1: 1\n Enter Number 2: 2\n Enter Number 3: 3\n Enter Number 4: 4 \n Enter Number 5: 5\n Enter Number 6: 6\n Enter Number 7: 7\n Enter Number 8: 8\n Enter Number 9: 9 \n Enter Number 10: 10\n Sum -55\n Average -5.500000"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read 10 integers in an array and print occurrences of given digit in array."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int a[10],i,n,c=0;\n      for(i=0;i<10;i++)\n      {\n            printf(\"Enter Number %d : \",i+1);\n            scanf(\"%d\",&a[i]);\n      }\n      printf(\"\\nEnter The digit to find : \");\n      scanf(\"%d\",&n);\n      for(i=0;i<10;i++)\n      {\n            if(a[i]==n)\n            {\n                c++;\n            }\n      }\n      printf(\"%d occurs %d times\",n,c);\n}"),
          getHeading('Output :'),
          getOutput(
              " Enter Number 1: 1\n Enter Number 2: 2\n Enter Number 3: 3\n Enter Number 4: 4\n Enter Number 5: 5\n Enter Number 6: 3\n Enter Number 7: 2\n Enter Number 8: 4\n Enter Number 9: 3\n Enter Number 10: 4\n Enter The digit to find: 3\n 3 occurs 3 times"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read 10 integers in array then print largest integer from array"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int a[10],i,t;\n      for(i=0;i<10;i++)\n      {\n            printf(\"Enter Number %d : \",i+1);\n            scanf(\"%d\",&a[i]);\n      }\n      t=a[0];\n      for(i=0;i<10;i++)\n      {\n            if(t<a[i])\n            {\n                t=a[i];\n            }\n      }\n      printf(\"\\n\\n%d is greatest number \",t);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter Number 1: 1\n \n Enter Number 2: 2\n Enter Number 3: 3\n Enter Number 4: 44\n Enter Number 5: 44\n Enter Number 6: 4\n Enter Number 7: 54\n Enter Number 8: 7\n Enter Number 9: 45\n Enter Number 10: 7865\n 7865 is greatest number"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read 10 integers in array and print total number of positive and negative integers in array."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int a[10],i,n=0,p=0;\n      for(i=0;i<10;i++)\n      {\n            printf(\"Enter Number %d : \",i+1);\n             scanf(\"%d\",&a[i]);\n      }\n      for(i=0;i<10;i++)\n      {\n            if(a[i]>0)\n            {\n                p++;\n            }\n            if(a[i]<0)\n            {\n                n++;\n            }\n      }\n      printf(\"\\nPositive Numbers = %d\",p);\n      printf(\"\\nNegative Numbers = %d\",n);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter Number 1: 1\n Enter Number 2: 2\n Enter Number 3: 3\n Enter Number 4: 4\n Enter Number 5: -1\n Enter Number 6: -1\n Enter Number 7: -1\n Enter Number 8: 1\n Enter Number 9: 1 \n Enter Number 10: 7\n Positive Numbers = 7\n Negative Numbers = 3"),
        ],
      ),
      getColumn(
        [
          getQuestion("To sort numeric elements in array"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int a[10],i,j,temp;\n      for(i=0;i<10;i++)\n      {\n            printf(\"Enter A[%d] :\",i);\n            scanf(\"%d\",&a[i]);\n      }\n      //Sorting Starts\n      for(i=0;i<10;i++)\n      {\n            for(j=0;j<10;j++)\n            {\n                if(a[j] > a[j+1])\n                {\n                    temp=a[j];\n                    a[j]=a[j+1];\n                    a[j+1]=temp;\n                }\n            }\n      }\n      //Sorting Complete\n      printf(\"\\nSorted Array :\");\n      for(i=0;i<10;i++)\n      {\n            printf(\"\\t%d\",a[i]);\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter A[0] :34\n Enter A[1] :65\n Enter A[2] :221\n Enter A[3] :78\n Enter A[4] :56\n Enter A[5] :09\n Enter A[6] :75\n Enter A[7] :70\n Enter A[8] :32\n Enter A[9] :454\n Sorted Array:09 32 34 56 65 70 75 78 221 454"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read 9 integer in two dimensional array and print it in Tabular Form"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int a[3][3],i,j;\n      for(i=0;i<3;i++)\n      {\n            for(j=0;j<3;j++)\n            {\n                printf(\"Enter Number [%d][%d] : \",i+1,j+1);\n                scanf(\"%d\",&a[i][j]);\n            }\n      }\n      printf(\"\\nTabular form is \\n\");\n      for(i=0;i<3;i++)\n      {\n            printf(\"\\n\");\n            for(j=0;j<3;j++)\n            {\n                printf(\" %d\\t\",a[i][j]);\n            }\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              " Enter Number [1][1] : 1\n Enter Number [1][2] : 2\n Enter Number [1][3] : 3\n Enter Number [2][1] : 4\n Enter Number [2][2] : 5\n Enter Number [2][3] : 6\n Enter Number [3][1] : 7\n Enter Number [3][2] : 8\n Enter Number [3][3] : 9\n Tabular form is\n\n1   2   3\n4   5   6\n7   8   9"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi14',
    title: "7. String",
    subIndex: [
      "Print Entered String",
      "Count Characters in a String",
      "Print Reverse",
      "Count Occurrences of Character",
      "Convert Case of String",
    ],
    programContent: [
      getColumn(
        [
          getQuestion("To read string from user and then print it on monitor"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      char str[30];  //Allocates ‘str’ 30 bytes\n      printf(\"\\nEnter The String : \");\n      gets(str);\n      printf(\"\\nEntered String : %s\",str);\n}"),
          getHeading('Output :'),
          getOutput("Enter The String: SPDroid \nEntered String: SPDroid"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a string from user and print number of total characters in it."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      char str[30]; \n      int i=0,c=0;\n      printf(\"\\nEnter The String : \");\n      gets(str);\n      while(str[i]!='\0') //Executes upto ‘\0’null character\n      {\n            c++;\n            i++;\n      }\n      printf(\"\\nTotal characters in string : %d \",c);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String : SPDroid \nTotal characters in string : 7"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a string from user then print its reverse on monitor."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      char str[30]; \n      int i=0;\n      printf(\"\\nEnter The String : \");\n      gets(str);\n      while(str[i]!='\0')\n      {\n      i++;\n      }\n      i--;\n      printf(\"\\nReverse String : \");\n          while(i>=0)\n      {\n          printf(\"%c\",str[i]);\n            i--;\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String: Hello World \nReverse String: dlrow olleH"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a string from user, read a character and then calculate its occurrences in a string"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      char str[30],ch;\n      int i=0,c=0;\n      printf(\"\\nEnter The String : \");\n      gets(str);\n      printf(\"\\nEnter The Character : \");\n      scanf(\"%d\",&ch);\n      while(str[i]!='\0')\n      {\n            if(str[i]==ch)\n            {\n                c++;\n            }\n            i++;\n      }\n      printf(\"\\n%c Occurs %d time\",ch,c);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String: HELLO HELLO\nEnter The Character: H\nH Occurs 2 time"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a string from user then convert capital case into small case and small case into capital case."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      char str[30];\n      int i=0;\n      printf(\"\\nEnter The String : \");\n      gets(str);\n      while(str[i]!='\0')\n      {\n      if(str[i]>='A' && str[i]<='Z')\n            {\n            str[i]=str[i]+32;\n            }\n            if(str[i]>='a' && str[i]<='z')\n          {\n              str[i]=str[i]-32;\n            }\n            i++;\n      }\n      printf(\"\\nChanged String : %s\",str);\n}"),
          getHeading('Output :'),
          getOutput("Enter The String : SPDroid\nChanged String: spdROID"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi15',
    title: "8-A. User Defined Functions",
    subIndex: [
      "Calculate Addition",
      "Calculate Division",
      "Calculate Area of Circle"
    ],
    programContent: [
      getColumn(
        [
          getQuestion(
              "To declare a function 'add' and perform addition operation using function."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nint add(int,int);  //Declaration\nvoid main()\n{\n      int a,b,sum;\n      printf(\"\\nEnter The Two numbers : \");\n      scanf(\"%d%d\",&a,&b);\n      sum=add(a,b);\n      printf(\"\\nAddition : %d\",sum);\n}\nint add(int x,int y)\n{\n      int add=x+y;\n      return(add);\n}"),
          getHeading('Output :'),
          getOutput("Enter The Two numbers : 2345 35\nAddition : 2380"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To declare a function 'div' and perform division operation using function."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nfloat div(int,int);  //Declaration\nvoid main()\n{\n      int a,b;\n      float d;\n      printf(\"\\nEnter The Two numbers : \");\n      scanf(\"%d%d\",&a,&b);\n      d=div(a,b);\n      printf(\"\\nDivision : %f\",d);\n}\nfloat div(int x,int y)\n{\n      float dv;\n      dv=(float)x/y;\n      return(dv);\n}"),
          getHeading('Output :'),
          getOutput("Enter The Two numbers : 554 56\nDivision: 9.892858"),
        ],
      ),
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
    ],
  ),
  Program(
    id: 'pi16',
    title: "8-B. Standard Library Functions",
    subIndex: [
      "Math- Calculate Square Root",
      "Math- Calculate Power",
      "Calculate Length of String",
      "To Copy String",
      "Concatenation of String",
      "Reverse of String",
      "String Comparison",
      "Check if entered string is palindrome",
    ],
    programContent: [
      getColumn(
        [
          getQuestion(
              "To read a number from user, calculate square root uing 'sqrt()' function."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<math.h>\nvoid main()\n{\n      int x,sq;\n      printf(\"\\nEnter The Number : \");\n      scanf(\"%d\",&x);\n      sq=sqrt(x);\n      printf(\"\\nSquare Root of %d = %d\",x,sq);\n}"),
          getHeading('Output :'),
          getOutput("Enter The Number: 625\nSquare Root of 625 = 25"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a two integers from user, calculate power using 'pow()' function."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<math.h>\nvoid main()\n{\n      long int b,i,power; //long taken to store large values\n      printf(\"\\nEnter The Base : \");\n      scanf(\"%d\",&b);\n      printf(\"\\nEnter The Index : \");\n      scanf(\"%d\",&i);\n      power=pow(b,i);\n      printf(\"\\nPower %d^%d = %d \",b,i,power);\n}"),
          getHeading('Output :'),
          getOutput("Enter The Base : 3\nEnter The Index : 3\nPower 3^3 = 27"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "Print 'To read a string from user, calculate length of a string."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<string.h>\nvoid main()\n{\n      char s[30];\n      int x;\n      printf(\"\\nEnter The String : \");\n      gets(s);\n      x=strlen(s);\n      printf(\"\\nLength of The String : %d\",x);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String : Programming\nLength of The String : 11"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a string from user, copy string into another string variable."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h> #include<string.h>\nvoid main()\n{\n      char s1[30], s2 [30];\n      printf(\"\\nEnter The String (s1) : \");\n      gets (s1);\n      strcpy(s2, s1);\n      printf(\"\\nCopied String (s2) : % S\",s2);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String (s1) C Programming Course\nCopied String (s2): C Programming Course"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read two strings from user, concatenate first string with second"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<string.h>\nvoid main()\n{\n      char s1[30],s2[30];\n      printf(\"\\nEnter The String (s1) : \");\n      gets(s1);\n      printf(\"\\nEnter The String (s2) : \");\n      gets(s2);\n      strcat(s2,s1);\n      printf(\"\\nConcatenated String(s2) : %s\",s2);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String (s1): C Programming\nEnter The String (s2): SPDroid's\n Concatenated String(s2): SPDroid'sC Programming"),
        ],
      ),
      getColumn(
        [
          getQuestion("To read a string from user, reverse that string."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<string.h>\nvoid main()\n{\n      char s[30];\n      printf(\"\\nEnter The String (s) : \");\n      gets(s);\n      strrev(s);\n      printf(\"\\nReversed String(s) : %s\",s);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String (s): SPDroid\nReversed String(s): diorDPS"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a two strings from user, compare both string using function 'strcmp();'."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<string.h>\nvoid main()\n{\n      char s1[30],s2[30];\n      int cmp;\n      printf(\"\\nEnter The String (s1) : \");\n      gets(s1);\n      printf(\"\\nEnter The String (s2) : \");\n      gets(s2);\n      cmp=strcmp(s1,s2);\n      printf(\"\\nComparison Between s1 and s2 : %d\",cmp);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String (s1): Hello\nEnter The String (s2): Hello\nComparison Between s1 and s2 : 0"),
          getOutput(
              "Enter The String (s1): Ram\nEnter The String (s2):Bhargavi\nComparison Between s1 and s2 : 1"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a string from user, Print if entered string is palindrome or not."),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<string.h>\nvoid main()\n{\n      char s1[30],s2[30];\n      int x;\n      printf(\"\\nEnter The String (S1) : \");\n      gets(s1);\n      strcpy(s2,s1);\n      strrev(s2);\n      x=strcmp(s1,s2);\n      printf(\"\\nReverse String (S2) : %s\",s2);\n      if(x==0)\n      {\n            printf(\"\\nHence %s is palindrome string \",s1);\n      }\n      else\n      {\n            printf(\"\\nHence %s is not palindrome string\",s2);\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The String (S1): Android\nReverse String (S2): diordnA\nHence Android is not palindrome string"),
          getOutput(
              "Enter The String (S1): NITIN\nReverse String (S2): NITIN \nHence NITIN is palindrome string"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi17',
    title: "8-C. Recursive Function",
    subIndex: [
      "To Calculate Factorial",
      "To Print Fibonacci Series",
    ],
    programContent: [
      getColumn(
        [
          getQuestion(
              "To read a integer from user. Calculate and print its factorial on monitor"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nint factorial(int);\nvoid main()\n{\n      int x,t;\n      printf(\"\\nEnter The Number : \");\n      scanf(\"\%d\",&x);\n      t=factorial(x);\n      printf(\"\\n%d! = %d\",x,t);\n}\nint factorial(int n)\n{\n      int f;\n      if(n==1)\n      {\n            return 1;\n      }\n      else\n      {\n            f=n*factorial(n-1);\n      }\n      return f;\n }"),
          getHeading('Output :'),
          getOutput("Enter The Number: 5 \n5! = 120"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To read a integer from user and print fibonacci series up to entered integer terms on monitor"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nint fibo(int);\nvoid main()\n{\n      int x,i,c=0;\n      printf(\"\\nEnter The n Term of Fibonacci Series : \");\n      scanf(\"%d\",&x);\n      printf(\"\\nFibonacci Series : \");\n      for(i=1;i<=x;i++)\n      {\n            printf(\"\\n%d\\t\",fibo(c));\n             c++;\n      }\n}\nint fibo(int n)\n{\n      int f;\n      if(n==0)\n      {\n            return 0;\n      }\n      else if(n==1)\n      {\n            return 1;\n      }\n      else\n      {\n            f=fibo(n-1)+fibo(n-2);\n            return f;\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The n Term of Fibonacci \nSeries: 10 \nFibonacci Series: 0 1 1 2 3 5 8 13 21 34"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi18',
    title: "9. Storage Classes",
    subIndex: [
      "Automatic",
      "Static",
      "External",
      "Register",
    ],
    programContent: [
      getColumn(
        [
          getQuestion("To demonstrate automic storage class"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid demoauto();\nvoid main()\n{\n      int x=10;\n      printf(\"\\nX=%d\",x);\n      demoauto();\n}\nvoid demoauto()\n{\n      int x=20;\n      printf(\"\\nX=%d\",x);\n}"),
          getHeading('Output :'),
          getOutput("X=10 \nX=20"),
        ],
      ),
      getColumn(
        [
          getQuestion("To demonstrate Static storage class"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid demostatic();\nvoid main()\n{\n      demostatic();\n      demostatic();\n      demostatic();\n}\nvoid demostatic()\n{\n      static x=10;\n      x=x+2;\n      printf(\"\\nX=%d\",x);\n}"),
          getHeading('Output :'),
          getOutput("X=12 \nX=14 \nX=16"),
        ],
      ),
      getColumn(
        [
          getQuestion("To demonstrate External/Global storage class"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nint x=10;\nvoid demoglobal();\nvoid main()\n{\n      demoglobal();\n      x=x+1;\n      printf(\"\\nX=%d\",x);\n      demoglobal();\n}\nvoid demoglobal()\n{\n      x=x+1;\n      printf(\"\\nX=%d\",x);\n}"),
          getHeading('Output :'),
          getOutput("X=11 \nX=12 \nX=13"),
        ],
      ),
      getColumn(
        [
          getQuestion("To demonstrate Register storage class"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid demoreg();\nvoid main()\n{\n      register int x=10;\n      printf(\"\\nX=%d\",x);\n      demoreg();\n      demoreg();\n}\nvoid demoreg()\n{\n      register int x=10;\n      x=x+2;\n      printf(\"\\nX=%d\",x);\n}"),
          getHeading('Output :'),
          getOutput("X=10 \nX=12 \nX=12"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi19',
    title: "10. Preprocessors",
    subIndex: [
      "To Calculate Area of Circle",
      "Solve Equation",
    ],
    programContent: [
      getColumn(
        [
          getQuestion("To Calculate Area of Circle using macro directive"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#define PI 3.141593\nvoid main()\n{\n      float r,area;\n      printf(\"Enter The radius of Circle : \");\n      scanf(\"%f\",&r);\n      area=PI*r*r;\n      printf(\"\\nArea of Circle : %f\",area);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The radius of Circle : 3\nArea of Circle: 28.274338"),
        ],
      ),
      getColumn(
        [
          getQuestion("To solve equation using macro directive"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#define F(X) 4*X*X+9*X+X\nvoid main()\n{\n      int x,y;\n      printf(\"Enter The Value Of 'X' : \");\n      scanf(\"%d\",&x);\n      y=F(X);\n      printf(\"\\nSolution : %d\",y);\n}"),
          getHeading('Output :'),
          getOutput("Enter The Value Of 'X' : 12\nSolution : 696"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi20',
    title: "11. Pointers",
    subIndex: [
      "Accessing data through pointer",
      "Calculate Product of a Number",
      "Pointer Arithmetic",
      "Pointer 'Call-by-Reference'",
      "Runtime Memory Allocation",
    ],
    programContent: [
      getColumn(
        [
          getQuestion("To Access data through pointer"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int x;\n\n      int *p; //Pointer Variable\n      printf(\"\\nEnter The Number : \");\n      scanf(\"%d\",&x);\n      p=&x; //Assigning Memory Address\n      printf(\"\\nValues : %d \",*p);\n      printf(\"\\nMemory Address : %u \",p);\n// %u used because address is positive only\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The Number : 10\n\nValues : 10\nMemory Address : 2752264"),
        ],
      ),
      getColumn(
        [
          getQuestion("To Calculate Product of two integers using pointer"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int x,y,m;\n      int *p1,*p2; //Pointer Variable\n      printf(\"\\nEnter Two Number : \");\n      scanf(\"%d%d\",&x,&y);\n      p1=&x;\n      p2=&y;\n      m=(p1)(*p2);\n      printf(\"\\n%d X %d = %d\",*p1,*p2,m);\n}"),
          getHeading('Output :'),
          getOutput("Enter Two Numbers : 10 10\n10 X 10 = 100"),
        ],
      ),
      getColumn(
        [
          getQuestion("To perform arithmetic operations using pointer"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nvoid main()\n{\n      int x,y,t;\n      int *p1,*p2; //Pointer Variable\n      printf(\"\\nEnter Two Number : \");\n      scanf(\"%d%d\",&x,&y);\n      p1=&x;\n      p2=&y;\n      printf(\"\\n%d + %d = %d\",*p1,*p2,*p1+*p2);\n      printf(\"\\n%d - %d = %d\",*p1,*p2,*p1-*p2);\n      printf(\"\\n%d X %d = %d\",p1,*p2,(*p1)(*p2));\n      printf(\"\\n%d / %d = %d\",*p1,*p2,(*p1)/(*p2));\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter Two Number: 100 10\n100+ 10 = 110\n100 10 = 90\n100 X 10 = 1000\n100 / 10 = 10"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To swap values by passing memory addresses i.e. call by reference"),
          getHeading('Program Code :'),
          getNotebook(
              "// To swap value with call by reference\n#include<stdio.h>\nvoid swap(int *,int  *); //Declaration\nvoid main()\n{\n      int x,y;\n      printf(\"\\nEnter The Value Of X : \");\n      scanf(\"%d\",&x);\n      printf(\"\\nEnter The Value Of Y : \");\n      scanf(\"%d\",&y);\n      printf(\"\\nValues Before Calling Swap : \");\n      printf(\"\\nX=%d\tY=%d\",x,y);\n      swap(&x,&y); //Passing address of variable\n      printf(\"\\n********\");\n      printf(\"\\nValues After Calling Swap : \");\n      printf(\"\\nX=%d\tY=%d\",x,y);\n}\nvoid swap(int *a,int *b) //Collecting address\n{\n      int t;\n      t=*a;\n      *a=*b;\n      *b=t;\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The Value Of X : 100\n\nEnter The Value of Y : 200\n\nValues Before Calling Swap : X=100 Y=200\n********\nValues After Calling Swap:\nX=200 Y=100"),
        ],
      ),
      getColumn(
        [
          getQuestion("To allocate array according to user wanted array size"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<stdlib.h>\nvoid main()\n{\n      int i,s;\n      int *p;\n      printf(\"\\nEnter The Size of Array :\");\n      scanf(\"%d\",&s);\n      p=(int *)malloc(s*sizeof(int));\n      for(i=0;i<s;i++) //p++ to Increment pointer\n      {\n            printf(\"Enter Number %d :\",i+1);\n            scanf(\"%d\",&p[i]);\n      }\n      printf(\"\\nIndex \\tValue \\tAddress\");\n      for(i=0;i<10;i++,p++) //p++ to Increment pointer\n      {\n            printf(\"\\n%d \\t%d \\t%u \",i+1,*p,p);\n}\n      free(p);  //To Release the allocated memory\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The Size of Array :5\nEnter Number 1 :10\nEnter Number 2 :21\nEnter Number 3 :32\nEnter Number 4 :54\nEnter Number 5 :579\n\nIndex      Value       Address\n1            10             8270024\n2            21             8270028\n3            32             8270032\n4            54             8270036\n5            579           8270040"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi21',
    title: "12. Structure",
    subIndex: [
      "Structure of Student",
      "Array of Structure",
      "Structure With Pointer",
    ],
    programContent: [
      getColumn(
        [
          getQuestion(
              "To declare structure student and read or print data of students"),
          getHeading("Program Code :"),
          getNotebook(
              "#include <stdio.h>\n\nstruct student {\n    char name[50];\n    int age;\n    float gpa;\n};\n\nint main() {\n    int num_students;\n    printf(\"Enter the number of students: \");\n    scanf(\"%d\", &num_students);\n    struct student students[num_students];\n    for (int i = 0; i < num_students; i++) {\n        printf(\"\\nEnter data for student %d:\\n\", i+1);\n        printf(\"Name: \");\n        scanf(\"%s\", students[i].name);\n        printf(\"Age: \");\n        scanf(\"%d\", &students[i].age);\n        printf(\"GPA: \");\n        scanf(\"%f\", &students[i].gpa);\n    }\n    printf(\"\\n\\nStudent data:\\n\");\n    for (int i = 0; i < num_students; i++) {\n        printf(\"\\nStudent %d:\\n\", i+1);\n        printf(\"Name: %s\\n\", students[i].name);\n        printf(\"Age: %d\\n\", students[i].age);\n        printf(\"GPA: %.2f\\n\", students[i].gpa);\n    }\n    return 0;\n}"),
          getHeading("Output :"),
          getOutput(
              "Enter the number of students: 3\n\nEnter data for student 1:\nName: John\nAge: 20\nGPA: 3.5\n\nEnter data for student 2:\nName: Sarah\nAge: 21\nGPA: 3.8\n\nEnter data for student 3:\nName: Michael\nAge: 19\nGPA: 3.2\n\nStudent data:\n\nStudent 1:\nName: John\nAge: 20\nGPA: 3.50\n\nStudent 2:\nName: Sarah\nAge: 21\nGPA: 3.80\n\nStudent 3:\nName: Michael\nAge: 19\nGPA: 3.20\n"),
        ],
      ),
      getColumn(
        [
          getQuestion(
              "To create array of structure and read or print data of books"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\nstruct book\n{\n      int no;\n      char name[30];\n      float price;\n};\nvoid main()\n{\n      struct book s[5];\n      int i;\n      for(i=0;i<5;i++)\n      {\n            printf(\"Enter Number, Name and Price of Book:\");\n            scanf(\"%d%s%f\",&s[i].no,&s[i].name,&s[i].price);\n// & not used to store string value\n}\n      printf(\"\\nNo. \\tName \\tPrice\");\n      for(i=0;i<5;i++)\n      {\n            printf(\"\\n%d \\t%s \\tRs.%.2f\",s[i].no,s[i].name,s[i].price);\n      }\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter Number, Name and Price of Book:1 C 100\nEnter Number, Name and Price of Book: 2 C++ 150\nEnter Number, Name and Price of Book:3 Java 200\nEnter Number, Name and Price of Book:4 C# 250\nEnter Number, Name and Price of Book: 5 Swift 300\n\nNo.        Name        Price\n1          C               Rs.100.00\n2          C++           Rs.150.00\n3          Java           Rs.200.00\n4          C#             Rs.250.00\n5          Swift          Rs.300.00"),
        ],
      ),
      getColumn(
        [
          getQuestion("To demonstrate use of Pointer with struture"),
          getHeading('Program Code :'),
          getNotebook(
              "#include<stdio.h>\n#include<alloc.h>\nstruct student\n{\n      int roll_no;\n      char name[30];\n      float marks;\n};\nvoid main()\n{\n      int i,n;\n      struct student *s,*t;\n      printf(\"\\nEnter The No. of Students :\");\n      scanf(\"%d\",&n);\n      s=(struct student *)malloc(n*sizeof(struct student)); // Allocating Memory\n      t=s;\n      for(i=0;i<n;i++,t++)\n      {\n            printf(\"\\nEnter The Name, Marks : \");\n            t->roll_no=i;\n      scanf(\"%s\",&t->name);\n      scanf(\"%f\",&t->marks);\n      }\n      t=s;\n      // Displaying Information\n      printf(\"\\n\\nInformation :\");\n      printf(\"\\n\\nRoll No.\\tName \\tMarks\");\n      for(i=0;i<n;i++,t++)\n      {\n            printf(\"\\n\\t%d\\t%s\\t%f\",t->roll_no,t->name,t->marks);\n      }\n      free(s);\n}"),
          getHeading('Output :'),
          getOutput(
              "Enter The No. of Students :2\nEnter The Name, Marks: ABC 99.99\nEnter The Name, Marks: XYZ 68.97\n\nInformation :\n\nRoll No.          Name          Marks\n          0          ABC          99.989998\n          1          XYZ          68.970001"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi22',
    title: "13. Union",
    subIndex: ["Union"],
    programContent: [
      getColumn(
        [
          getQuestion("To demonstrate use of union"),
          getHeading("Program Code :"),
          getNotebook(
              "#include <stdio.h>\n#include <string.h>\n\nunion Data {\n    int i;\n    float f;\n    char str[20];\n};\n\nint main() {\n    union Data data;\n    printf(\"Memory size occupied by data: %d bytes\\n\", sizeof(data));\n    \n    data.i = 10;\n    printf(\"data.i: %d\\n\", data.i);\n    \n    data.f = 3.14;\n    printf(\"data.f: %.2f\\n\", data.f);\n    \n    strcpy(data.str, \"hello\");\n    printf(\"data.str: %s\\n\", data.str);\n    \n    return 0;\n}"),
          getHeading("Output :"),
          getOutput("Size of int: 4\nSize of float: 4\nSize of char: 1"),
        ],
      ),
    ],
  ),
  Program(
    id: 'pi23',
    title: "14. Command Line Arguments",
    subIndex: [
      "Calculate Addition",
      "Calculate Average",
      "Print Reverse of String",
    ],
    programContent: [
      getColumn([
        getQuestion("To perform addition using command line argument"),
        getHeading("Program Code :"),
        getNotebook(
            "#include <stdio.h>\n#include <stdlib.h>\n\nint main(int argc, char *argv[]) {\n    int sum = 0;\n\n    // Loop through all command line arguments\n    for (int i = 1; i < argc; i++) {\n        // Convert the argument to an integer\n        int num = atoi(argv[i]);\n        // Add the integer to the sum\n        sum += num;\n    }\n\n    printf(\"The sum is: %d\\n\", sum);\n\n    return 0;\n}"),
        getHeading("Output :"),
        getOutput("./sum 5 7\n\nThe sum is: 12"),
      ]),
      getColumn([
        getQuestion("To calculate average using command line argument"),
        getHeading("Program Code :"),
        getNotebook(
            "#include <stdio.h>\n#include <stdlib.h>\n\nint main(int argc, char *argv[]) {\n    int sum = 0;\n\n    for (int i = 1; i < argc; i++) {\n        int num = atoi(argv[i]);\n        sum += num;\n    }\n\n    printf(\"The average is: %f\\n\", (float)sum / (argc - 1));\n\n    return 0;\n}"),
        getHeading("Output :"),
        getOutput("./average 5 7\n\nThe average is: 6.000000"),
      ]),
      getColumn(
        [
          getQuestion("To perform reverse string using command line argument"),
          getHeading("Program Code :"),
          getNotebook(
              "#include <stdio.h>\n#include <string.h>\n\nint main(int argc, char *argv[]) {\n    if (argc < 2) {\n        printf(\"Please provide a string as argument.\\n\");\n        return 1;\n    }\n    char *str = argv[1];\n    int len = strlen(str);\n    for (int i = 0; i < len / 2; i++) {\n        char temp = str[i];\n        str[i] = str[len - i - 1];\n        str[len - i - 1] = temp;\n    }\n    printf(\"Reversed string: %s\\n\", str);\n    return 0;\n}"),
          getHeading("Output :"),
          getOutput("./reverse_string DBATU\n\nReversed string: UTABD"),
        ],
      ),
    ],
  ),
];