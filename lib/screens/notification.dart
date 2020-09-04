import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sampleproject/widgets/bottomNavigation.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  List notificationList;

  @override
  void initState() {
    notificationList = [
      {
        "image": "lib/assets/download.jpeg",
        "desc":
            "Your order Containing Super dinner from KFC Salmia will be delivered on 26 August 2020",
        "orderedOn": "22/08/2020",
        "date": "22/08/2020",
        "read": true,
        "type": true
      },
      {
        "image": "lib/assets/thunder.png",
        "desc": "Flash  sale  is available for product Shoes just purchase it",
        "orderedOn": "",
        "date": "21/08/2020",
        "read": false,
        "type": false
      },
      {
        "image": "lib/assets/new.png",
        "desc": 'New Freedom sale offers are available for 2 days ! Hurry now',
        "orderedOn": "",
        "date": "22/02/2020",
        "read": true,
        "type": false
      },
      {
        "image": "lib/assets/shopping.png",
        "desc":
            "Your order containing Walkaro Sneakers is shipped from the Bangalore Facility on 4 July 2020",
        "orderedOn": "01/07/2020",
        "date": "04/07/2020",
        "read": true,
         "type": true
      },
      {
        "image": "lib/assets/shopping.png",
        "desc":
            "Your order containing Walkaro Sneakers from ShowMart Bazar was delivered on 6 July 2020",
        "orderedOn": "01/07/2020",
        "date": "06/07/2020",
        "read": true,
         "type": true
      },
      {
        "image": "lib/assets/shopping.png",
        "desc":
            "Your order containing Walkaro Sneakers from ShowMart Bazar was delivered on 6 July 2020",
        "orderedOn": "01/07/2020",
        "date": "06/07/2020",
        "read": true,
         "type": true
      }
    ];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return WillPopScope(
          child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                  color: Color(0xff388E8E),
                  fontSize: ScreenUtil().setHeight(63),
                  fontWeight: FontWeight.bold,
                ),
              )),
          body: displayBody(),
          bottomNavigationBar: BottomBar(),
        ),
      ), onWillPop: () {
        showDialog(
          context: context,
          builder: (context) {
            return exitApp();
          },
        );
      },
    );
  }

  // Display the body of the notification page
  displayBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: ScreenUtil().setHeight(30),
            top: ScreenUtil().setHeight(30),
          ),
          child: Container(
            child: Text("Unread ( 2 )",
                style: TextStyle(
                    color: Color(0xff388E8E),
                    fontSize: ScreenUtil().setSp(55),
                    fontWeight: FontWeight.bold)),
            height: ScreenUtil().setHeight(100),
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(
                  left: ScreenUtil().setHeight(10),
                  right: ScreenUtil().setHeight(10)),
              itemCount: notificationList.length,
              itemBuilder: (context, index) {
                return showItems(index);
              }),
        ),
      ],
    );
  }

 //Function to load the list view of notification
  showItems(int index) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setHeight(30),
                        // top: ScreenUtil().setHeight(30)
                      ),
                      child: notificationList[index]['type']==true?
                      Container(
                          height: ScreenUtil().setHeight(180),
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "${notificationList[index]['image']}"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(5),
                            // color: Colors.green,
                          )):
                           Container(

                          // height: ScreenUtil().setHeight(180),
                          width: 90,
                          decoration: BoxDecoration(
                            // image: DecorationImage(
                            //     image: AssetImage(
                            //         "${notificationList[index]['image']}"),
                            //     fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(5),
                            // color: Colors.green,
                          ),
                          child:Image(
                            height: ScreenUtil().setHeight(100) ,
                            width: 40,
                            image: AssetImage(
                                    "${notificationList[index]['image']}"),
                                )
                          )
                          ),
                  SizedBox(width: ScreenUtil().setHeight(15)),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 3.0),
                              child: Text(
                                '${notificationList[index]['desc']}',
                                style: TextStyle(
                                    color: Color(0xff388E8E),
                                    fontSize: ScreenUtil().setSp(35)),
                              )),
                          SizedBox(height: ScreenUtil().setHeight(20)),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    notificationList[index]['orderedOn'] == ""
                                        ? Container()
                                        : Text(
                                            'Ordered on   ',
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize:
                                                    ScreenUtil().setSp(27),
                                                color: Color(0xff388E8E),
                                                fontWeight: FontWeight.normal),
                                          ),
                                    notificationList[index]['orderedOn'] == ""
                                        ? Container()
                                        : Text(
                                            '${notificationList[index]['orderedOn']}',
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize:
                                                    ScreenUtil().setSp(27),
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal),
                                          ),
                                  ],
                                ),
                                Text(
                                  '${notificationList[index]['date']}',
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: ScreenUtil().setSp(27),
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(25)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          notificationList[index]['read'] == false
              ? Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                )
              : Container()
        ],
      ),
    );
  }
  // Function for exit app
  Widget exitApp() {
    return AlertDialog(
      title: Text(
        'Exit Alert',
        style: TextStyle(fontSize: ScreenUtil().setSp(50)),
      ),
      content: Container(
        height: ScreenUtil().setHeight(80),
        // width: MediaQuery.of(context).size.width - 40,
        child: Text(
          'Are you sure you want to exit',
          style: TextStyle(fontSize: ScreenUtil().setSp(40)),
        ),
      ),
      actions: <Widget>[
        Row(
          children: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        )
      ],
    );
  }
}
