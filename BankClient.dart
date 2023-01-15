import 'dart:io';
import 'dart:math';
class BankClient
{
    int? _id;
    String? _name;
    double? _balance=0;
    static int _count=000; // This gives us number of client that are connected to our bank
    static double _initialbalance=0; // Initial Balance of client 
    
     BankClient(String name1)
     {
        this._name=name1;
        _count=_count+1;
        
     print("Client Name-${this._name} with id $_count have  initialbalance ${_initialbalance}");
     print("-------------------------------------------------------------------------------------------");
     }


     BankClient.namedcons(double amount) //Using Named Constructor  for adding balance instead of method
     {
        this._balance=amount+this._balance!;
        print("After Deposition of amount Bank Balance of individaul customer becomes: ${this._balance}");
     }
    
   
    //Use of static method that gives number of client in our bank
     static int? numberofclient()
     {print("--------------------------------------------------------------------------------------------");
      print("Total Number  of clients in our bank is $_count");
      print("--------------------------------------------------------------------------------------------");
     }
     
     
}
void main()
{
  // Object created
   var accountholder1=BankClient("Shyam Nath Upadhya");
   var accountholder2=BankClient("Ram Gopal Verma");
   var accountholder3=BankClient("Bimal Bhatta");
   //Adding balance to the account using namedconstructor.
   var bankbalance1=BankClient.namedcons(800);
   var bankbalance2=BankClient.namedcons(200);
   var bankbalance3=BankClient.namedcons(3500);
   //Accessing of static method by using class name
   BankClient.numberofclient();

}