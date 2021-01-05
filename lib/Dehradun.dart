import 'package:flutter/material.dart';
class Dehradun extends StatefulWidget {
  @override
  _DehradunState createState() => _DehradunState();
}

class _DehradunState extends State<Dehradun> {
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
          makePages(image:'https://www.holidify.com/images/cmsuploads/compressed/Sahastradhara-Dehradun-925752519-4250723-1_20171121221603.jpg',
            page: 1,
            title: 'Sahastradhara',
            description: 'Sahastradhara literally means thousand-fold spring. It is a popular attraction, famous for its medicinal & therapeutic value as its water contains sulphur. Sahastradhara is one of the most popular tourist destinations in Uttarakhand and is situated about 14 km from the city of Dehradun,near Robbers Cave.',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/mindrolling-panorama_20180328133703.jpg',
            page: 2,
            title: 'Mindrolling Monastery',
            description: 'The Mindrolling Monastery, also known as the Buddha Temple Complex, was established in Clement Town, Dehradun, Uttarakhand by Khochhen Rinpoche in 1965. Situated in the middle of the serene foothills of the Himalayas, the Mindrolling Monastery is one of the largest Buddhist centres in India which attracts thousands of visitors from all over the country as well as abroad. ',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/Har_ki_Dun_20180905110947_20180905111038.jpg',
            page: 3,
            title: 'Har Ki Dun',
            description: 'Nestled away from the hustle bustle of the city, Har Ki dun is a beautiful cradle shaped valley with untouched panoramic beauty. Perched at an elevation of 3,566 mts above the sea level, this place is one of the remotest areas of Uttarakhand offering a plethora of trekking excursions.',
          ),
          makePages(image: 'https://www.holidify.com/images/cmsuploads/compressed/1992_20191226111254.jpg',
            page: 4,
            title: 'Tapovan Temple',
            description: 'Situated on the banks of the river Ganga, Tapovan is a holy place which is located at a distance of 5 km from the Dehradun city. Due to the history of the Ashram, devotees flock to the place frequently in the quest to find inner peace. All sorts of holy Hindu rituals are performed at the ashram. The ashram also conducts yoga courses for those interested ones.',
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
                    Text(title,style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
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
