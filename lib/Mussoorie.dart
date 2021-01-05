import 'package:flutter/material.dart';
class Mussoorie extends StatefulWidget {
  @override
  _MussoorieState createState() => _MussoorieState();
}

class _MussoorieState extends State<Mussoorie> {
  PageController _pageController;
  int totalpages = 4;
  void _onScroll()
  {

  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children:<Widget> [
          makePages(image:'https://www.holidify.com/images/cmsuploads/compressed/3803_20200707162308.jpg',
            page: 1,
            title: 'Lal Tibba',
            description: 'Lal Tibba is a popular viewpoint, located on the top of Depot Hill in Landour, approximately 6 kilometres from Mussoorie. Being the highest point in the area, Lal Tibba is one of the most stunning viewpoints in the region. Rising to a height of 2,275 meters (7,164 feet), Lal Tibba affords breathtaking views of Nilkantha peak (6,596 meters) in Badrinath, Kedarnath peak (6,940 meters)',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/K1_20170923162007.PNG',
            page: 2,
            title: 'Kempty Falls',
            description: 'Located on the way between Dehradun-Mussoorie roads, in the Ram Gaon area of Tehri Garhwal, Kempty Falls is one the most popular tourist attraction and picnic spot in Mussoorie. Surrounded by high mountain cliffs, Kempty Falls is nestled at an altitude of around 4500 ft above the sea level. The pond formed at the bottom of the falls makes an excellent spot for swimming and bathing.',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/Gun-Hill_20171207134206.jpg',
            page: 3,
            title: 'Gun Hill',
            description: 'Said to be an extinct volcano, the Gun Hill is the second-highest point in Mussoorie, situated at an altitude of 2024 meters. The scene from the top of this hill is a panoramic view of the snow-clad Himalayan ranges right beside the widespread Doon Valley and a full view of the hill station of Mussoorie. The Gun Hill, located 400 ft above the Mall Road, is a popular attraction, especially amongst the photographers and nature lovers.',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/3805_20190511143323.jpg',
            page: 4,
            title: 'Lake Mist',
            description: 'The pristine Lake Mist is among the most beautiful destinations in the Queen of Hills i.e. Mussoorie. The emerald waters are covered by green forest terrains from sides giving the whole scenario a resplendent image making it an ideal for spending the moments of repose with your family and friends.',
          )

        ],
      ),

    );
  }

  Widget makePages({image,title,description,page})
  {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover
          )
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.3,0.9],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(0.3),
                ]

            )
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children:<Widget>[
                  Text(page.toString(),style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text('/'+ totalpages.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Text(title,style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children:<Widget> [
                        Container(
                          margin:EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 3),
                          child: Icon(Icons.star,color: Colors.grey,size: 15,),
                        ),
                        Text('4.0',style: TextStyle(color: Colors.white70),),
                        Text('(2300)',style: TextStyle(color: Colors.white38,fontSize: 12),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Text(description,style: TextStyle(color: Colors.white.withOpacity(.9,),height: 1.9,fontSize: 15),)),
                    SizedBox(
                      height: 10,
                    ),


                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

}

