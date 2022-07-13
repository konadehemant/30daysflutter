import 'package:flutter/cupertino.dart';

class Mobile{
  
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Mobile({this.id = 0, this.name = "Name", this.desc = "Description", this.price = 0, this.image = "image",this.color = "color"});


}


final products = [
  Mobile(
    id: 1,
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th generation",
    price: 999,
    color: "#3999,3505a",
    image:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"
    
    
  )



];