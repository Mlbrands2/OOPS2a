
abstract class Shape {
  double get area; 
  void printDetails(); 
}
class Rectangle implements Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);
  @override
  double get area => width * height;
  @override
  void printDetails() {
    print("Rectangle: Width - $width, Height - $height, Area - $area");
  }
}
class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double get area => pi * radius * radius;

  @override
  void printDetails() {
    print("Circle: Radius - $radius, Area - $area");
  }
}
List<double> readDataFromFile(String filePath) {
  return [5.0, 3.0, 2.0]; 
}

void main() {LL
  List<double> data = readDataFromFile("data.txt");
  List<Shape> shapes = [];
  for (double value in data) {
    if (value > 0) {
      shapes.add(Circle(value));
    } else {
      shapes.add(Rectangle(value.abs(), 2.0)); 
    }
  }
  for (Shape shape in shapes) {
    shape.printDetails();
  }
}
