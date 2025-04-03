

import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayariapp/fullLineShayari.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
import 'Shayari.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  double size=30;
  var result;
  int f=0,e=0;
  WidgetsToImageController ic=WidgetsToImageController();
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
      body: Stack(
        children: [
          Container(
            // alignment: Alignment.center,
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: WidgetsToImage(
              controller: ic,
              child: Container(
                color: full.isEditbackground==1?Colors.white:Sayari.licolor2[Sayari.edit],
                padding: EdgeInsets.fromLTRB(70,50,70,50),
                child: Text("${Sayari.cnt==0?Sayari.emoj[Sayari.e]:Sayari.cnt==1?Sayari.emoj[Sayari.e]:Sayari.cnt==2?Sayari.emoj[Sayari.e]:Sayari.cnt==3?Sayari.emoj[Sayari.e]:Sayari.cnt==4?Sayari.emoj[Sayari.e]:Sayari.cnt==5?Sayari.emoj[Sayari.e]:Sayari.cnt==6?Sayari.emoj[Sayari.e]:Sayari.cnt==7?Sayari.emoj[Sayari.e]:Sayari.cnt==8?Sayari.emoj[Sayari.e]:Sayari.cnt==9?Sayari.emoj[Sayari.e]:Sayari.cnt==10?Sayari.emoj[Sayari.e]:Sayari.emoj[Sayari.cnt2]}${Sayari.cnt==0?Sayari.li2p[Sayari.cnt2]:Sayari.cnt==1?Sayari.li3p[Sayari.cnt2]:Sayari.cnt==2?Sayari.li4p[Sayari.cnt2]:Sayari.cnt==3?Sayari.li5p[Sayari.cnt2]:Sayari.cnt==4?Sayari.li6p[Sayari.cnt2]:Sayari.cnt==5?Sayari.li7p[Sayari.cnt2]:Sayari.cnt==6?Sayari.li8p[Sayari.cnt2]:Sayari.cnt==7?Sayari.li9p[Sayari.cnt2]:Sayari.cnt==8?Sayari.li10p[Sayari.cnt2]:Sayari.cnt==9?Sayari.li11p[Sayari.cnt2]:Sayari.cnt==10?Sayari.li12p[Sayari.cnt2]:Sayari.cnt==11?Sayari.li13p[Sayari.cnt2]:Sayari.cnt==12?Sayari.li14p[Sayari.cnt2]:Sayari.cnt==13?Sayari.li15p[Sayari.cnt2]:Sayari.cnt==14?Sayari.li16p[Sayari.cnt2]:Sayari.cnt==15?Sayari.li17p[Sayari.cnt2]:0}\n${Sayari.cnt==0?Sayari.emoj[Sayari.e]:Sayari.cnt==1?Sayari.emoj[Sayari.e]:Sayari.cnt==2?Sayari.emoj[Sayari.e]:Sayari.cnt==3?Sayari.emoj[Sayari.e]:Sayari.cnt==4?Sayari.emoj[Sayari.e]:Sayari.cnt==5?Sayari.emoj[Sayari.e]:Sayari.cnt==6?Sayari.emoj[Sayari.e]:Sayari.cnt==7?Sayari.emoj[Sayari.e]:Sayari.cnt==8?Sayari.emoj[Sayari.e]:Sayari.cnt==9?Sayari.emoj[Sayari.e]:Sayari.cnt==10?Sayari.emoj[Sayari.e]:0}",style: TextStyle(fontSize: size,color: full.isEditTc==1?Colors.black:Sayari.licolor2[Sayari.edit1],fontFamily: Sayari.fontar[f]),),
              ),
            ),
          ),

          Container(
            height: 130,
            margin: EdgeInsets.only(top: 700),
            color: Colors.black,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          constraints: BoxConstraints(maxHeight: 190,maxWidth: 500),
                          context: context,
                          builder: (context) {
                            return GridView.builder(
                              itemCount: 32,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 7,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                              ), itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  Sayari.edit=index;
                                  full.isEditbackground=0;
                                  setState(() {
                                  });
                                },
                                child: Container(
                                  color: Sayari.licolor2[index],
                                ),
                              );
                            },);
                          },);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0,3,0,0),
                        child: Text("Background",style: TextStyle(fontSize: 17,color: Colors.white),),
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          constraints: BoxConstraints(maxHeight: 190,maxWidth: 500),
                          context: context,
                          builder: (context) {
                            return GridView.builder(
                              itemCount: 32,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 7,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                              ), itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  Sayari.edit1=index;
                                  full.isEditTc=0;
                                  setState(() {
                                  });
                                },
                                child: Container(
                                  color: Sayari.licolor2[index],
                                ),
                              );
                            },);
                          },);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0,3,0,0),
                        child: Text("Text Color",style: TextStyle(fontSize: 17,color: Colors.white),),
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                    InkWell(
                      // onTap: () async {
                      //   final bytes=await ic.capture();
                      //   var path= await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_DOWNLOAD);
                      //   path=path+"/imgs";
                      //   Directory dir=Directory(path);
                      //   if(!await dir.exists()){
                      //     dir.create();
                      //   }
                      //
                      //   int r=Random().nextInt(100000);
                      //
                      //   String imgName=r.toString()+".png";
                      //
                      //   File file=File("${dir.path}/${imgName}");
                      //   await file.writeAsBytes(bytes!);
                      //
                      //   XFile xFile=XFile(file.path);
                      //   var shareFiles=Share.shareXFiles([xFile],text: "Great Picture");
                      //   setState(() {
                      //   });
                      // },
                      onTap: () async {
                        Fluttertoast.showToast(
                            msg: "Share as Image",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                        final bytes=await ic.capture();
                        print("img=$bytes");
                        Directory? directory = await getExternalStorageDirectory();
                        if (directory != null) {
                          print(directory.path);
                        }
                        var path;
                        path=(directory!.path+"/imgs");
                        print("Path=$path");
                        Directory dir=Directory(path);
                        if(!await dir.exists()){
                          dir.create();
                        }
                        int r=Random().nextInt(100000);
                        String imgName=r.toString()+".png";
                        File file=File("${dir.path}/${imgName}");
                        await file.writeAsBytes(bytes!);
                        XFile xFile=XFile(file.path);
                        var shareFiles=Share.shareXFiles([xFile]);
                        setState(() {
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0,3,0,0),
                        child: Text("Share",style: TextStyle(fontSize: 17,color: Colors.white),),
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap:() {
                        showModalBottomSheet(context: context, builder: (context) {
                          return GridView.builder(
                            itemCount: 6,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 5,
                            ), itemBuilder: (BuildContext context, index) {
                            return InkWell(
                              onTap: () {
                                f=index;
                                Navigator.pop(context);
                                setState(() {
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.yellow,
                                margin: EdgeInsets.all(10),
                                child: Text("Shayari",style: TextStyle(fontFamily: Sayari.fontar[index])),

                              ),
                            );
                          },);
                        },);
                        setState(() {
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0,10,0,0),
                        child: Text("Font",style: TextStyle(fontSize: 17,color: Colors.white),),
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(context: context, builder: (context) {
                          return GridView.builder(itemCount: 8,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 5), itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Sayari.e=index;
                                Navigator.pop(context);
                                setState(() {
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text('${Sayari.emoj[index]}'),
                              ),
                            );
                          },);
                        },);
                        setState(() {
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0,10,0,0),
                        child: Text("Emoji",style: TextStyle(fontSize: 17,color: Colors.white),),
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        showModalBottomSheet(context: context, builder: (context) {
                          return StatefulBuilder(builder: (context, setState1) {
                            return Slider(
                              value: size,
                              max: 100,
                              min: 20,
                              onChanged: (value) {
                                size=value;
                                setState1(() {
                                });
                                setState(() {
                                });
                              },);
                          },);
                        },);
                        setState(() {

                        });
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0,10,0,0),
                        child: Text("Text Size",style: TextStyle(fontSize: 17,color: Colors.white),),
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
