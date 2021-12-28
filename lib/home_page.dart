import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


List<ImageDetails> _images = [
  ImageDetails(imagePath: 'images/1.jpg', price: '\$50', photographer: "akashi", title: 'cool', details: 'pixelArt'),
  ImageDetails(imagePath: 'images/1.jpg', price: '\$50', photographer: "akashi", title: 'cool', details: 'pixelArt'),
  ImageDetails(imagePath: 'images/1.jpg', price: '\$50', photographer: "akashi", title: 'cool', details: 'pixelArt'),
  ImageDetails(imagePath: 'images/1.jpg', price: '\$50', photographer: "akashi", title: 'cool', details: 'pixelArt'),
];
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50,),
            Text('Gallery',style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white
            ),
              textAlign:
              TextAlign.center,),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                padding:EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                  
                ),
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 10,
                  mainAxisSpacing: 10,
                ), itemBuilder: (context, index) {
                  return RawMaterialButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(_images[index].imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                } ,itemCount: _images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDetails{
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  final String details;
  ImageDetails({
    @required this.imagePath = '',
    @required this.price = '',
    @required this.photographer = '',
    @required this.title = '',
    @required this.details = '',
  });

}