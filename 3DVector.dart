class Vector3D
{
    double? _x,_y,_z;
    double? _x1,_y1,_z1;

    Vector3D(this._x,this._y,this._z)
    {
        print("1st Vector component includes");
        print("X- Component =$_x");
         print("Y- Component =$_y");
          print("Z- Component =$_z");

    }
    Vector3D.namedconstructor(this._x1,this._y1,this._z1)
    {
        print("2nd Vector component includes");
         print("X- Component =$_x1");
         print("Y- Component =$_y1");
        print("Z- Component =$_z1");

    }
}
    
void main()
{
    var a=Vector3D(5,5,8);
    var b=Vector3D.namedconstructor(5,5,8);
     if (a._x==b._x1 && a._y==b._y1 && a._z==b._z1)
        {
            print("Two Vector have same components");

        }
        else
        {
            print("Two Vector have different components");
        }
    }
    
   



