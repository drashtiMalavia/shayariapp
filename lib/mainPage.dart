
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:shayariapp/singleLineshayari.dart';

import 'Shayari.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List TapList=List.filled(Sayari.li.length, '');
  int cnt=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Love Shayari",),
        backgroundColor: Colors.green,
        //centerTitle: true,//title center ma aave
        // toolbarHeight: 20,//appbar ni height set thay
        //toolbarOpacity: 1,//1 karo to letter dekhay ne 0 kro to hide thay jay

      ),
      body: SafeArea(child:
      ListView.builder(
        itemCount: Sayari.li.length,
        itemBuilder:(context, index) {
          return Card(
            elevation: 5,
            shape: Border.all(color: Colors.white),
            child: InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)
                {
                  Sayari.cnt=index;
                  if(index==0 || index==1 || index==2 || index==3 || index==4 || index==5 || index==6 || index==7 || index==8 || index==9 || index==10 || index==11 || index==12 || index==13 || index==14 || index==15){
                    return single(Sayari.cnt);
                  }
                  else {
                    return mainPage();
                  }
                },));
                setState(() {
                  TapList[index]='tap';
                });
              },
              onTapDown: (details) {
                TapList[index]='down';
                setState(() {});
              },
              onTapCancel: () {
                TapList[index]='cancel';
                setState(() {});
              },

              child: ListTile(
                title: Text("${Sayari.li[index]}"),
                leading: Image.asset('${index==0?'images/bestwishesh.png':index==1?'images/husband.png':index==2?'images/child.png':index==3?'images/god.png':index==4?'images/motivational.png':index==5?'images/kanjoos.png':index==6?'images/married.png':index==7?'images/officework.png':index==8?'images/santabanta.png':index==9?'images/politics.png':index==10?'images/love.png':index==11?'images/sad.png':index==12?'images/bearbar.png':index==13?'images/bewfa.png':index==14?'images/birthday.png':index==15?'images/holiimg.jpg':0}',height: 50,width: 50,),
                trailing: Image.asset('images/ic_action_next_item.png',height: 50,width: 50,alignment: Alignment.centerRight,),
                tileColor: TapList[index]=='down'?Colors.pink:Colors.white,
              ),
            ),
          );
        },)
      ),
    );
  }
  Future<void> askPermission() async{
    var status=await Permission.photos.status;
    if(status.isDenied){
      Map<Permission,PermissionStatus> statuses=await[
        Permission.photos,
        Permission.storage,
      ].request();
      Fluttertoast.showToast(
        msg: "Storage permission grantes",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 32,
      );
    }
  }
}
