import 'package:flutter/material.dart';

class Rishikesh extends StatefulWidget {
  @override
  _RishikeshState createState() => _RishikeshState();
}

class _RishikeshState extends State<Rishikesh> {
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
          makePages(image:'https://www.holidify.com/images/bgImages/RISHIKESH.jpg',
            page: 1,
            title: 'Lakshman Jhula',
            description: 'The Lakshman Jhula is a famous hanging bridge across the river Ganga that connects two villages, Tapovan in the Tehri Garhwal district and Jonk in the Pauri Garhwal district. Located 5 kilometres to the northeast of the town Rishikesh in the Indian state of Uttarakhand, the entire bridge is situated at the height of 70 feet from the river. ',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/ganga-aarti-triveni-ghat-rishikesh-head-603_20171208202125.jpeg',
            page: 2,
            title: 'Triveni Ghat',
            description: 'Situated on the banks of the holy river Ganges, Triveni Ghat is the biggest ghat in Rishikesh. Maha Aarti happens every evening at Triveni Ghat.Triveni Ghat plays an essential role in Hindu Mythology and is also mentioned in the epics Ramayan and Mahabharat.  The Triveni Ghat is also where the chattri of Lord Krishna was constructed.',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/Cliffjumping_20190130184400.jpg',
            page: 3,
            title: 'Cliff Jumping',
            description: 'Cliff Jumping is another one of the exciting activities in Rishikesh. The activity is mostly done when you are down in the river, swimming or rafting or just taking a dip. It is basically just jumping down in the river from a considerably a height i.e. from a high cliff. Considered one of the most thrilling water sports, this is one of the top things to do in Rishikesh.',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/river-rafting-960158_960_720_20171020111918.jpg',
            page: 4,
            title: 'Rafting',
            description: 'Rafting in Rishikesh particularly is hands down the best; one could endeavour in India. From the gifted natural circumstances to the top professional assistance, the place has just the best to offer. There are some certified operators, whose safety arrangements are well in place, and there are customised packages for camping and rafting at Rishikesh.',
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

