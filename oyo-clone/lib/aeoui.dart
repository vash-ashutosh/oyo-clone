import 'package:flutter/material.dart';
import 'package:oyoui_app/constant/constant.dart';
import 'package:oyoui_app/model/arealocationlist.dart';
import 'package:oyoui_app/model/exploreaeohotelslist.dart';
import 'package:oyoui_app/model/latestaeo.dart';
import 'package:oyoui_app/model/limitedperiodofferlist.dart';
import 'package:oyoui_app/model/aeospecials.dart';
import 'package:oyoui_app/model/aeowordlist.dart';
import 'package:oyoui_app/model/readyforsummerlist.dart';
import 'package:oyoui_app/model/weekendgetawayslist.dart';
import 'package:oyoui_app/model/yourwalletslist.dart';
import 'package:oyoui_app/widgets/customshape.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class AeoUI extends StatefulWidget {
  @override
  _AeoUIState createState() => _AeoUIState();
}

double oyoMoney=0.0;
double oyoRupee=0.0;

class _AeoUIState extends State<AeoUI> {

  double _width;
  double _height;

  List<AreaLocationList> areaLocationList;
  List<ReadyForSummerList> readyForSummer;
  List<LimitedPeriodOfferList> limitedPeriodOffer;
  List<ExploreOyoHotelsList> exploreOyoHotels;
  List<WeekendGetawaysList> weekendGetaways;
  List<OyoWordList> oyoWord;
  List<OyoSpecialsList> oyoSpecials;
  List<LatestOyoList> latestOyo;
  List<YourWalletList> yourWallets;

  @override
  void initState() {
    super.initState();
    areaLocationList = Constants.getLocationList();
    readyForSummer = Constants.getSummerList();
    limitedPeriodOffer = Constants.getLimitedPeriodOfferList();
    exploreOyoHotels = Constants.getExploreOyoHotelsList();
    weekendGetaways = Constants.getWeekendsList();
    oyoSpecials = Constants.getOyoSpecials();
    latestOyo = Constants.getLatestOyo();
    yourWallets = Constants.getYourWallet();
  }
  bool checkboxstate=false;
  void whatsApp(){
    if(checkboxstate){
      print('Checked');
      setState(() {
        checkboxstate=!checkboxstate;
      });
    }
    else{
      print('Not Checked');
      setState(() {
        checkboxstate=!checkboxstate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      oyoMoney=0.0;
      oyoRupee=0.0;
    });
    return Scaffold(
      drawer: Drawer(
        child: ListView(
         children: <Widget>[
           GestureDetector(
             onTap: (){},
             child: Container(
               color: Colors.red,
               height: 70.0,
               width: 5.0,
               child: Row(
                 children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      size: 40.0,),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Hi username',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        Text('phone number'),
                      ],
                    ),
                    SizedBox(
                      width: 80.0,
                    ),
                    Icon(Icons.arrow_forward),
                 ],
               ),
             ),
           ),
           SizedBox(
             height: 20.0,
           ),
           Text('Wallets',
            style: TextStyle(
              color: Colors.grey,
            ),
            ),
           SizedBox(
             height: 40.0,
           ),
           Row(
             children: <Widget>[
               GestureDetector(
                 onTap: (){
                   print('money');
                 },
                  child: Text('ABC money',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                  ),),
               ),
                SizedBox(width: 160,),
                Text('$oyoMoney'),
             ],
           ),
           SizedBox(
             height: 40.0,
           ),
           Row(
             children: <Widget>[
               GestureDetector(
                 onTap: (){
                   print('rupee');
                 },
                  child: Text('ABC ruppee',
                  style: TextStyle(
                   fontSize: 15.0,
                   fontWeight: FontWeight.bold,
                 ),),
               ),
               SizedBox(width: 158,),
               Text('$oyoRupee'),
             ],
           ),
           SizedBox(
             height: 40.0,
           ),
           GestureDetector(
             onTap: (){
               print('All Wallets');
             },
              child: Text('All Wallets',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
              ),),
           ),
           Divider(
             height: 50.0,
           ),
           GestureDetector(
             onTap:(){},
             child: Text('Invite and Earn',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),)
           ),
           Divider(
             height: 50.0,
           ),
           GestureDetector(
             onTap: (){},
             child: Text('ABC ping',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),),
           ),
           SizedBox(
             height: 40.0,
           ),
           GestureDetector(
             onTap:(){},
             child: Text('Need help?',
             style: TextStyle(
               fontSize: 15.0,
               fontWeight: FontWeight.bold,
             ),),
           ),
           Divider(
             height: 50.0,
           ),
           GestureDetector(
             onTap: (){},
             child: Text('List your property',
             style: TextStyle(
               fontSize: 15.0,
               fontWeight: FontWeight.bold,
             ),),
           ),
           Divider(
             height: 50.0,
           ),
           GestureDetector(
             onTap: (){},
             child: Text('Change language',
             style: TextStyle(
               fontSize: 15.0,
               fontWeight:FontWeight.bold,
             ),)
           ),
           SizedBox(
             height: 40.0,
           ),
           Row(
             children: <Widget>[
               Text('Get booking updates on WhatsApp',
               style: TextStyle(
                 fontSize: 15.0,
                 fontWeight: FontWeight.bold,
               ),),
               Checkbox(
                 onChanged: (bool e)=> whatsApp(),
                 value: checkboxstate,
               ),
             ],
           ),
           SizedBox(
             height: 40.0,
           ),
           GestureDetector(
             onTap: (){},
             child: Text('Privacy',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),),
           ),
                  ],
                ),
              ),
      backgroundColor: Colors.grey[100],
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: _height/5,
              floating: false,
              leading: Icon(Icons.menu),
              actions: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 15),
                  child:GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectCity()));
                    },
                    child: Icon(Icons.notifications_active)),
              ),
              ],
              backgroundColor: Color.fromARGB(255, 196, 26, 61),
              // #f02730
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                titlePadding: EdgeInsets.only(top: 25.0),
                title: Center(
                  child: Text(
                    "ABC",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),
              bottom: PreferredSize(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, left: 20, right: 20,),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    width: _width,
                    height: _height/14,
                    alignment: Alignment.topCenter,
                    child: TextFormField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(2),
                        prefixIcon: Icon(Icons.search, size: 30,color: Colors.grey,),
                        hintText:"Search for Hotel, City or Location",
                        hintStyle: TextStyle(fontWeight: FontWeight.w300,fontSize: 13.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  ),
                  preferredSize: Size(_width,_height/20)),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: _height/6,
                child: ListView.builder(
                    itemCount: areaLocationList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildLocationList(areaLocationList[index]);
                    }),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Grand Getaway Sale',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: (){
                        print('u clicked Grand Getaway');
                      },
                      child: Container(
                        //color: Colors.blue,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 0.2,
                            offset: Offset(0.1, 3),
                          ),
                        ]),
                        height: _height/8,
                        width: _width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/getaway.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Innings break !',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        print('u clicked');
                      },
                      child: Container(
                        //color: Colors.blue,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 0.2,
                            offset: Offset(0.1, 3),
                          ),
                        ]),
                        height: _height/4,
                        width:_width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/inningsBreak.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Refered win',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        print('u clicked');
                      },
                      child: Container(
                        //color: Colors.blue,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 0.2,
                            offset: Offset(0.1, 3),
                          ),
                        ]),
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/referwin.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Daily Super Sale',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        print('Clicked');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 0.2,
                            offset: Offset(0.1, 3),
                          ),
                        ]),
                        height: _height/4.5,
                        width: _width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/dailySale.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Get Ready for Summer !',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 90,
                      //height: MediaQuery.of(context).size.height,
                      width: _width,
                      child: ListView.builder(
                          itemCount: readyForSummer.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildSummerList(readyForSummer[index]);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Limited period offers',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: _height/4,
                      child: ListView.builder(
                          itemCount: limitedPeriodOffer.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildLimitedPeriodList(
                                limitedPeriodOffer[index]);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Wizard',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      //color: Colors.blue,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.2,
                          offset: Offset(0.1, 3),
                        ),
                      ]),
                      height: _height/3.7,
                      width: _width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/wizard.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Explore Hotels and Homes',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: _width,
                      height: _height/2.3,
                      child: ListView.builder(
                          itemCount: exploreOyoHotels.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildExploreAeoHotelsList(
                                exploreOyoHotels[index]);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Weekend Getaways',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width,
                      height: _height/2.8,
                      child: ListView.builder(
                          itemCount: weekendGetaways.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildWeekendGetawaysList(
                                weekendGetaways[index]);
                          }),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'App Specials',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: _width,
                      height: _height/2.4,
                      child: ListView.builder(
                          itemCount: oyoSpecials.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildAeoSpecialsList(oyoSpecials[index]);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Latest at App',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: _width,
                      height: _height/2.4,
                      child: ListView.builder(
                          itemCount: latestOyo.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildLatestAeoList(latestOyo[index]);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Shake & Win',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: _height/4.2,
                      width:_width,
                      child: Card(
                        elevation: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          child: Image.asset(
                            'assets/images/shake_win.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        //color: Colors.orange,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Play and win',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: _height/4.5,
                      width: _width,
                      child: Card(
                        elevation: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          child: Image.asset(
                            'assets/images/playwin.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        //color: Colors.orange,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Your wallets',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: _width,
                      height: _height/4.2,
                      child: ListView.builder(
                          itemCount: yourWallets.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildYourWalletsList(yourWallets[index]);
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.only(top: 10.0),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home, color: Color.fromARGB(255, 196, 26, 61),),
                  Text('Home', style: TextStyle(color: Color.fromARGB(255, 196, 26, 61),) ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.favorite_border),
                  Text('Saved'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.card_travel),
                  Text('Booking'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.group_add),
                  Text('Invite & Earn'),
                ],
              ),
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      print('help');
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Help()));
                    },
                    child: Icon(Icons.help_outline)),
                    Text('help'),
                ],)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationList(AreaLocationList item) {
    return Container(
      color: Colors.white,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(70.0),
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              item.name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11,color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildYourWalletsList(YourWalletList item) {

    return Container(
        width: _width/1.5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Card(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
          color: Colors.orange[100],
          child: Stack(
              children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Opacity(
                opacity: 0.75,
                child: ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: _height/8,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange[200], Colors.pinkAccent],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child:  Column(
              children: <Widget>[
                Opacity(
                  opacity: 0.5,
                  child: ClipPath(
                    clipper: CustomShapeClipper2(),
                    child: Container(
                      //height: _height / 3.5,
                      height:_height/7.8,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue[500], Colors.pinkAccent],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child:Text(
                          item.title,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w900),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child:Text(
                            item.subTitleRupee,style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset(
                            item.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 150,),
                    child:Container(
                      alignment: Alignment.topLeft,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                      ),
                      child:Center(
                        child: Text(
                          item.totalRupee,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]
          ),
        )
    );
  }

  Widget _buildLatestAeoList(LatestOyoList item) {
    return Container(
      width: _width/2.1,
      child: Card(
        elevation: 0,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  item.name,
                  style: TextStyle(fontSize: 13,
                      letterSpacing: 0.1,
                      height: 1.5,fontWeight: FontWeight.w600),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAeoSpecialsList(OyoSpecialsList item) {
    return Container(
      width: _width/2.20,
      child: Card(
        elevation: 2,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Container(
                  child: Image.asset(
                    item.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Text(
                      item.subTitle,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                          letterSpacing: 0.1,
                          height: 1.5),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeekendGetawaysList(WeekendGetawaysList item) {
    return Container(
      width: _width/2.4,
      child: Card(
        elevation: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5)),
          child: Image.asset(
            item.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildExploreAeoHotelsList(ExploreOyoHotelsList item) {
    return Container(
      width: _width/2.20,
      child: Card(
        elevation: 2,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  item.imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              height: _height/30,
              width: _width/5,
              child: Text(
                item.title,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  item.subTitle,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      letterSpacing: 0.1,
                      height: 1.5),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLimitedPeriodList(LimitedPeriodOfferList item) {
    return Container(
      width: _width/2.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Card(
          elevation: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            child: Image.asset(
              item.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSummerList(ReadyForSummerList item) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: _width,
        child: Card(
          elevation: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              item.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class Notification extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 196, 26, 61),
      ),
      body: ListView(
        children: <Widget>[
          Text('Grand Getaway Sale',
                style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: (){
                      print('u clicked Grand Getaway');
                    },
                    child: Container(
                      //color: Colors.blue,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.2,
                          offset: Offset(0.1, 3),
                          ),
                        ]),
                      height: ((MediaQuery.of(context).size.height)/8),
                      width: (MediaQuery.of(context).size.width),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/getaway.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
          Container(
            margin: EdgeInsets.only(top: 20),
              child: Text(
                'Wizard',
                  style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ),
                  Container(
                    //color: Colors.blue,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 0.2,
                        offset: Offset(0.1, 3),
                      ),
                    ]),
                    height: MediaQuery.of(context).size.height/3.7,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/wizard.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
          Container(
            margin: EdgeInsets.only(top: 20),
              child: Text(
                'Refered win',
                  style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      print('u clicked');
                    },
                    child: Container(
                      //color: Colors.blue,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.2,
                          offset: Offset(0.1, 3),
                        ),
                      ]),
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/referwin.jpg',
                        fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
        ],
      ),
    );
  }
}

class SelectCity extends StatefulWidget {
  @override
  _SelectCityState createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {

  List<String> cities=["Nanital","Delhi","Agra","Goa","Musoorie","Banglore","Ansh","Ujvl","Nepal","Hydreabad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_left,
                        size: 50.0,
                        color: Colors.red,
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search for hotel or city",
          ),
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(50.0, 50.0),
          child: Container(
            child: Row(
              children: <Widget>[
                SizedBox(width: 20.0,),
                Column(
                  children: <Widget>[
                    Text('Today',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                      ),),
                    Text('Time')
                  ],
                ),
                SizedBox(width: 100.0,),
                Column(
                  children: <Widget>[
                    Text('Today',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                      ),),
                    Text('Time')
                  ],
                ),
                SizedBox(width: 100.0,),
                Column(
                  children: <Widget>[
                    Text('Rooms',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                      ),),
                    Text('Guest')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
                        SizedBox(height: 30.0,),
                        Row(children: <Widget>[
                        SizedBox(width: 10.0),
                        Text('Search Nearby',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(
                              width: MediaQuery.of(context).size.width-140.0, 
                            ),
                            Icon(Icons.gps_fixed),
                          ],),
                          Row(
                                  children: <Widget>[
                                    SizedBox(width: 10.0),
                                    Text('All Cities',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                          Container(
                            height: MediaQuery.of(context).size.height-150.0,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: cities.length,
                              itemBuilder: (BuildContext context ,int index){
                                return Column(
                                  children: <Widget>[
                                      Divider(
                                        indent: 20.0,
                                        endIndent: 20.0,
                                        height: 50.0,
                                      ),
                                      Row(
                                      children: <Widget>[
                                        SizedBox(width: 15.0),
                                        Text('${cities[index]}',
                                          style: TextStyle(
                                          fontSize: 15.0,
                                        ),),
                                        // SizedBox(width: MediaQuery.of(context).size.width-105.0,),
                                        Icon(Icons.arrow_right),
                                              ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  }

class Help extends StatefulWidget {
  Help({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Help and Support",
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'images/1.PNG',
                    height: 300.0,
                    width: 300.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      child: Column(
                        children: [
                          DataTable(columns: <DataColumn>[
                            DataColumn(
                                label: Text(
                              "Information",
                              style:
                                  GoogleFonts.balooBhaina(color: Colors.black),
                            )),
                            DataColumn(
                                label: Text("Details",
                                    style: GoogleFonts.balooBhaina(
                                        color: Colors.black)))
                          ], rows: <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  "Name",
                                  style: GoogleFonts.balooBhaina(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )),
                                DataCell(Text(
                                  "Smith jane",
                                  style: GoogleFonts.balooBhaina(
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black),
                                ))
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  "Phone Number",
                                  style: GoogleFonts.balooBhaina(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )),
                                DataCell(Text(
                                  "987654321",
                                  style: GoogleFonts.balooBhaina(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ))
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  "Gender",
                                  style: GoogleFonts.balooBhaina(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )),
                                DataCell(Text(
                                  "Female",
                                  style: GoogleFonts.balooBhaina(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ))
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  "Email",
                                  style: GoogleFonts.balooBhaina(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )),
                                DataCell(Text(
                                  "samithjane@gmail.com",
                                  style: GoogleFonts.balooBhaina(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ))
                              ],
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Describe your issue here",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: new InputDecoration(
                      labelText: "Type here",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                    controller: _controller,
                    onSubmitted: (text) => print(_controller.text),
                  ),
                  FlatButton(
                    color: Color.fromRGBO(253, 11, 23, 1),
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: "Review Submitted",
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                      );
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.balooBhaina(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromRGBO(253, 11, 23, 1),
                            width: 3,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ],
              ),
            ),
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}


// ListView.builder(
                  