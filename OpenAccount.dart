import 'dart:io';
// Here Opening the account is done through  Single Inheritance.
class OpenAccount
{
    String? _name;
    int? _age;
    String? _address;
    String? _job;
    void openAccount(String name,int age,String address,String job)
    {
        this._name=name;
        this._age=age;
        this._address=address;
        this._job=job;
        print("Account holder Name is $_name");
        print("Your Age-$_age");
        print("Your address Name is $_address");
        print("Your Job- $_job");
       
    }
}
class AccountType extends OpenAccount
{
    double  _balance=0;
    void getbalance(double balance)
    {
        
        this._balance=this._balance+balance;
        print("Your current balance is $_balance");
        print("Your account has been opened");

    }


}

void main()
{
    print("Do You want to open bank Account?");
    print("Type 1 for Yes and 0 for NO");
    int decision=int.parse(stdin.readLineSync()!);
    if(decision==1)
    {
    print("Congratulation your bank account will be opened soon");
    print("Enter your name=");
    String name=stdin.readLineSync()!;
    print("Enter your age");
    int age=int.parse(stdin.readLineSync()!);
    print("Enter your address=");
    String address=stdin.readLineSync()!;
    print("Enter your Job=");
    String job=stdin.readLineSync()!;
   
    print("Which account you want to open=");
    print("Type 1 for Saving Account and 0 for Fixed Deposit account=");
    int accountdecision=int.parse(stdin.readLineSync()!);
    if(accountdecision==1)
    {
        print("For Saving account Deposit Minimum Rs 100 to open it");
        print("Enter the amount you want to deposit");
        double depositamt=double.parse(stdin.readLineSync()!);
        if(depositamt<100)
        {
            print("To Open Saving account you must pay at least Rs 100");
        }
        else
        {
             var a=OpenAccount();
        a.openAccount(name,age,address,job);
        var b=AccountType();
        b.getbalance(depositamt);

        }
       
        
    }
    else{
        print("Fixed Deposit account will be start from Next Sunday.");
        print("Thankyou");
    }

}
    
    else
    {
        print("Thanks for Visiting Us");
    }
  
}