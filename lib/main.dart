import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/Dehradun.dart';
import 'package:travel_ui/Details.dart';
import 'package:travel_ui/Mussoorie.dart';
import 'package:travel_ui/Places.dart';
import 'package:travel_ui/Rishikesh.dart';
import 'package:travel_ui/Gallery.dart';


void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    )
);

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Uttarakhand Tourism",style: TextStyle(color: Colors.black,fontSize: 25),),
        actions:<Widget> [
          IconButton(
            icon: Icon(Icons.collections,color: Colors.black,), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()));
            },
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children:<Widget> [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:<Widget> [
                    AspectRatio(
                      aspectRatio:2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text("All",style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Places()));
                      },
                      child: AspectRatio(
                        aspectRatio:2.5/1,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text("Lansdowne",style: TextStyle(fontSize: 17),),
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Rishikesh()));
                      },
                      child: AspectRatio(
                        aspectRatio:2.2/1,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text("Rishikesh",style: TextStyle(fontSize: 17),),
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Dehradun()));
                      },

                      child: AspectRatio(
                        aspectRatio:2.2/1,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(
                            child: Text("Dehradun",style: TextStyle(fontSize: 17),),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Mussoorie()));
                      },

                      child: AspectRatio(
                        aspectRatio:2.2/1,
                        child: Container(
                          child: Center(
                            child: Text("Mussoorie",style: TextStyle(fontSize: 17),),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(
                height:20 ,
              ),
              makeItem(image: 'https://www.holidify.com/images/bgImages/KEDARNATH.jpg',tag: 'red',context: context,text1: 'Kedarnath',text2: 'Temple'),
              makeItem(image: 'https://www.holidify.com/images/cmsuploads/compressed/16369885366_603a44b8c2_b_20190207131016jpg',tag: 'blue',context: context,text1: 'Nainital',text2: 'Hillstation'),
              makeItem(image: 'https://www.holidify.com/images/bgImages/RISHIKESH.jpg',tag: 'white',context: context,text1: 'Rishikesh',text2: 'Adventure'),
              makeItem(image: 'https://www.holidify.com/images/bgImages/MUSSOORIE.jpg',tag: 'orange',context: context,text1: 'Massoorie',text2: 'Hillstation'),
              makeItem(image: 'https://uttarakhandtourism.gov.in/wp-content/uploads/2018/12/lansdowne-banner2.jpg',tag: 'yellow',context: context,text1: 'Lansdowne',text2: 'Hillstation'),




            ],
          ),

        ),

      ),


    );
  }

  Widget makeItem({image,tag,context,text1,text2}){
    return Hero(
        tag: tag,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Details(image: image,text: text1,)));
          },
          child: Container(
            height: 250,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover

                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 10,
                      offset: Offset(0,10)
                  )
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                          Text(text1,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text(text2,style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: Center(
                        child: Icon(Icons.favorite_border,size:20,),
                      ),
                    )

                  ],
                ),
                Text("Uttarakhand",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),




              ],

            ),

          ),
        )

    );
  }



}
