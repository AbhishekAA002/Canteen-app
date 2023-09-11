import 'package:flutter/material.dart';


class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  Widget categoriesContainer({required String image, required String name}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 18, color: Colors.white),
        )
      ],
    );
  }


Widget bottomContainer({required String image, required String price,required String name})
{
  return Container(
    height: 270,
    width: 220,
    decoration: BoxDecoration(
        color: Color(0xff3a3e3e),
        borderRadius: BorderRadius.circular(30)

    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius :60,
          backgroundImage: AssetImage(image),
        ),
        ListTile(leading: Text(name,style: TextStyle(fontSize: 20,color: Colors.white,),
        ),
          trailing: Text(price,style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
        Padding(
          padding : const EdgeInsets.only(left: 12),

          child : Row(
            children: [
              Icon(Icons.star,color: Colors.white,size: 20,),
              Icon(Icons.star,color: Colors.white,size: 20,),
              Icon(Icons.star,color: Colors.white,size: 20,),
              Icon(Icons.star,color: Colors.white,size: 20,),
            ],
          ),
        ),

      ],
    ),
  );
}


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading:  Icon(Icons.sort),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
           child : CircleAvatar(
            backgroundImage: AssetImage('assets/images/duler.jpg'),
          ),
          ),
        ],
      ),
      body:
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),

     child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.white),
              hintText: "Search Food..",
              hintStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Color(0xff3a3e3e),
              border: OutlineInputBorder(
              borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),


  SingleChildScrollView(
  scrollDirection : Axis.horizontal,

       child: Row(
          children: [
            categoriesContainer(
              image: 'assets/images/1.jpg',
              name: 'All',
            ),

            categoriesContainer(
              image: 'assets/images/burger.png',
              name: 'Burger',
            ),

            categoriesContainer(
              image: 'assets/images/drink.png',
              name: 'Drinks',
            ),

            categoriesContainer(
              image: 'assets/images/ice.png',
              name: 'Ice-cream',
            ),
            categoriesContainer(
              image: 'assets/images/chips.png',
              name: 'Chips',
            ),


          ],
        ),
    ),
    Container(
  height: 510,

   child: GridView.count(crossAxisCount: 2,
    shrinkWrap: false,
    primary: false,
    childAspectRatio: 0.8,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20,
    children: [
      bottomContainer(image: 'assets/images/1.jpg', price: '50', name: 'Panner'),
      bottomContainer(image: 'assets/images/2.jpg', price: '20', name: 'Samosa'),
      bottomContainer(image: 'assets/images/paratha.png', price: '20', name: 'Parotha'),
      bottomContainer(image: 'assets/images/pb.png', price: '80', name: 'Biryani  '),
      bottomContainer(image: 'assets/images/dosa.png', price: '40', name: 'dosa'),
      bottomContainer(image: 'assets/images/fish.png', price: '60', name: 'Fish'),
    ],
    ),
    )


        ],
      ),
          ),
    );
  }
}