class CustomElement{
  String? name;
  String? type;

  CustomElement(this.name, this.type);
}

class CustomDictionary{

  List<CustomElement> ? items;

  CustomDictionary(this.items);
}
var apple = CustomElement('Apple', 'A fruit');
var dog = CustomElement('Dog', 'A animal');
var dictionary = CustomDictionary([apple, dog]);
