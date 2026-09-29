import 'package:flutter/material.dart';
import '../models/car.dart';

class DetailPage extends StatelessWidget {
 
final int carsIndex; 
  const DetailPage({super.key, required this.carsIndex});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${cars[carsIndex].brand} ${cars[carsIndex].name}")),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(cars[carsIndex].imageUrl),
              Text("${cars[carsIndex].brand} ${cars[carsIndex].name}"),
              Text("${cars[carsIndex].year}"),
              Text("Rp. ${cars[carsIndex].price}"),
              Text(cars[carsIndex].description),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                }, 
                child: Text("Kembali")
              )
            ],
          ),
        ),
      ),
    );
  }
}

