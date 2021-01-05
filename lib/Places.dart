import 'package:flutter/material.dart';

class Places extends StatefulWidget {
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {

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
          makePages(image:'https://www.holidify.com/images/compressed/3029.jpg',
            page: 1,
            title: 'Bhulla Lake',
            description: 'One of the most favorite picnic spots among locals and tourists, Bhulla lake is a well maintained serene lake made and maintained by Indian Army.',
          ),
          makePages(image: 'https://www.holidify.com/images/compressed/4672.jpg',
            page: 2,
            title: 'Tip N Top',
            description: 'Tip N Top, also known as tiffin top, is a small hilltop viewpoint located 1.5 km from the main city of Garhwal. This is the best place to watch complete skyline, Shivalik range, panoramic Garhwal hills with majestic Himalayan range.',
          ),
          makePages(image: 'https://www.holidify.com/images/compressed/4670.jpg',
            page: 3,
            title: 'St.John Church',
            description: 'Located at the Mall Road this Catholic Church was built in 1936. The beautiful interiors and green surroundings of the church attract tourists and make it a must visit destination.',
          ),
          makePages(image: 'https://www.holidify.com/images/compressed/4668.jpg',
            page: 4,
            title: 'Regimental Museum',
            description: 'Named after Victoria Cross holder Darwan Singh Negi, it is a historical defense museum located near the parade ground in Lansdowne. This beautifully decorated two storey building has a collection of arms, uniforms, rarest photographs of army generals, certificates and details about the origin and achievements of Garhwal Rifles.',
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
                  Colors.red.withOpacity(.9),
                  Colors.red.withOpacity(0.3),
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
