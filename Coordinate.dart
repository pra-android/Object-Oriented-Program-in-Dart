import 'dart:io';
class Point
{   double? _x;
    double? _y;
    double? _z;

    Point(double x,double y,double z)
    {
        this._x=x;
        this._y=y;
        this._z=z;
        print("The given coordinates are ${this._x} , ${this._y}  and ${this._z}");


    }
    //Member function move that will translate the given points
    void move(double tx,double ty,double tz)
    {
        print("Translation point are ${tx} and ${ty} and ${tz}");
        this._x=this._x!+tx;
        this._y=this._y!+ty;
        this._z=this._z!+tz;
      

    }
    //Members functions display the new points
    void display()
    {
        print("After Translation  Triangle points reached to ${this._x} and ${this._y} and ${this._z}");
    

    }
}
void main()
{
  
    print("Enter three coordinates of triangle=");
    double xcoordinate=double.parse(stdin.readLineSync()!);
    double ycoordinate=double.parse(stdin.readLineSync()!);
    double zcoordinate=double.parse(stdin.readLineSync()!);

    print("Enter the translation point of a triangle=");
    double txcoordinate=double.parse(stdin.readLineSync()!);
    double tycoordinate=double.parse(stdin.readLineSync()!);
    double tzcoordinate=double.parse(stdin.readLineSync()!);
    
    var points=Point(xcoordinate,ycoordinate,zcoordinate);
    points.move(txcoordinate,tycoordinate,tzcoordinate);
   points.display();
}