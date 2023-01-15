import 'dart:io';
class Calculator
{
    double? _result;

    
    void add(double num1,double num2)
    {
        _result=num1 + num2;
        print("Add result=$_result");

    }
    void subtract(double num1,double num2)
    {
      _result=num1 - num2;
      print("Subtraction Result=$_result");
      

    }
    void multiply(double num1,double num2)
    {
         _result=num1 * num2;
         print("Multiply result=$_result");

    }
    void divide(double num1,double num2)
    {  _result=num1 /num2;
    print("Divide is $_result");

    }
    void setinitial(double _result)
    {
        this._result=_result;
        print("Initial Result=$_result");

    }
}
void main()
{
    var calc=Calculator();
    calc.setinitial(0);
    print("Enter first number you want to perform=");
    double num1=double.parse(stdin.readLineSync()!);
    print("Enter second number you want to perform=");
    double num2=double.parse(stdin.readLineSync()!);
    calc.add(num1,num2);
    calc.subtract(num1,num2);
    calc.multiply(num1,num2);
    calc.divide(num1,num2);
    print("Thanks a lot for using this programme!");

}