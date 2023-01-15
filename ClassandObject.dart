//Create a simple program that defines a Person class with properties for a person’s name and age, and then creates a few instances of the Person class. This project will help you understand the basics of defining classes and creating objects in Dart
class Person
{
    int? age;
    String? name;

    void display()
    {
        print("Age=$age");
        print("Name=$name");
    }
}
void main()
{
    var c=Person();
    c.age=21;
    c.name="Swaikshya Limbu";
    c.display();

}