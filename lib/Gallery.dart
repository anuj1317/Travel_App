import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_ui/Webview.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Gallery",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/564x/6f/d6/8c/6fd68ced202b643053e9f281de52a016.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.4),
                          Colors.black.withOpacity(.3)
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Uttarakhand',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Land of Gods',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/AULI.jpg',
                        text: 'Auli',
                        tag: '1',
                        link1: 'https://www.holidify.com/places/auli'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/VALLEY-OF-FLOWERS.jpg',
                        text: 'Valley of Flowers',
                        tag: '2',
                        link1:
                            'https://www.holidify.com/places/valley-of-flowers'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/ALMORA.jpg',
                        text: 'Almora',
                        tag: '3',
                        link1: 'https://www.holidify.com/places/almora'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/CORBETT-NATIONAL-PARK.jpg',
                        text: 'Jim Corbett National Park',
                        tag: '4',
                        link1:
                            'https://www.holidify.com/places/corbett-national-park'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/BADRINATH.jpg',
                        text: 'Badrinath',
                        tag: '5',
                        link1: 'https://www.holidify.com/places/badrinath'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/HARIDWAR.jpg',
                        text: 'Haridwar',
                        tag: '6',
                        link1: 'https://www.holidify.com/places/haridwar'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/GANGOTRI.jpg',
                        text: 'Gangotri',
                        tag: '7',
                        link1: 'https://www.holidify.com/places/gangotri'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/YAMUNOTRI.jpg',
                        text: 'Yamunotri',
                        tag: '8',
                        link1: 'https://www.holidify.com/places/yamunotri'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/cmsuploads/compressed/bb3ee214_original_20191120170213.jpg',
                        text: 'Mukteshwar',
                        tag: '9',
                        link1: 'https://www.holidify.com/places/mukteshwar'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/compressed/164.jpg',
                        text: 'Tungnath and Chandrashila Trek',
                        tag: '10',
                        link1:
                            'https://www.holidify.com/places/chopta/tungnath-and-chandrashila-trek-sightseeing-4421.html'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/RANIKHET.jpg',
                        text: 'Ranikhet',
                        tag: '11',
                        link1: 'https://www.holidify.com/places/ranikhet'),
                    SizedBox(
                      height: 12,
                    ),
                    listmaker(
                        image:
                            'https://www.holidify.com/images/bgImages/DHANAULTI.jpg',
                        text: 'Dhanaulti',
                        tag: '12',
                        link1: 'https://www.holidify.com/places/dhanaulti')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listmaker({image, text, tag, link1}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Webview(link1: link1)));
        },
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.3,
                0.9
              ], colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(0.3),
              ]),
            ),
            child: Container(
                margin: EdgeInsets.only(
                  top: 130,
                  left: 10,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
          ),
        ),
      ),
    );
  }
}
