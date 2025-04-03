import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

import 'Shayari.dart';
import 'editPage.dart';


class full extends StatefulWidget {
  int index;
  full(this.index, {super.key});
  static int isEditbackground=0;
  static int isEditTc=0;

  @override
  State<full> createState() => _fullState();
}

class _fullState extends State<full> {
  var result;
  PageController pc=PageController();

  @override

  Widget build(BuildContext context) {
    if(Sayari.cnt==0 || Sayari.cnt==1 ||Sayari.cnt==2 || Sayari.cnt==3 ||Sayari.cnt==4 || Sayari.cnt==5 ||Sayari.cnt==6 || Sayari.cnt==7 ||Sayari.cnt==8 || Sayari.cnt==9 ||Sayari.cnt==10 || Sayari.cnt==11 || Sayari.cnt==12 || Sayari.cnt==13 || Sayari.cnt==14 || Sayari.cnt==15 ){
      Sayari.cnt==0?Sayari.total=Sayari.li2.length:Sayari.cnt==1?Sayari.total=Sayari.li3.length:Sayari.cnt==2?Sayari.total=Sayari.li4.length:Sayari.cnt==3?Sayari.total=Sayari.li5.length:Sayari.cnt==4?Sayari.total=Sayari.li6.length:Sayari.cnt==5?Sayari.total=Sayari.li7.length:Sayari.cnt==6?Sayari.total=Sayari.li8.length:Sayari.cnt==7?Sayari.total=Sayari.li9.length:Sayari.cnt==8?Sayari.total=Sayari.li10.length:Sayari.cnt==9?Sayari.total=Sayari.li11.length:Sayari.cnt==10?Sayari.total=Sayari.li12.length:Sayari.cnt==11?Sayari.total=Sayari.li13.length:Sayari.cnt==12?Sayari.total=Sayari.li14.length:Sayari.cnt==13?Sayari.total=Sayari.li15.length:Sayari.cnt==14?Sayari.total=Sayari.li16.length:Sayari.cnt==15?Sayari.total=Sayari.li17.length:0;
      return Scaffold(
        appBar: AppBar(
          title: Text("Love Shayari",),
          backgroundColor: Colors.green,
        ),
        body:
        Column(
          children: [
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      color: Colors.white,
                      child: Image.asset('images/expand.png',height: 50,width: 50,),
                    ),
                    onTapUp: (details) {
                      Sayari.lir=[];
                      Sayari.rndm();
                    },
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled:true,
                        useSafeArea:true,
                        context: context,
                        builder: (context) {
                          return GridView.builder(
                            itemCount:20,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  Sayari.indexofcolor=index;
                                  index=Sayari.index;
                                  setState(() {
                                  });
                                },
                                child: Container(
                                  child: Center(child: Text("${Sayari.cnt==0?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==1?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==2?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==3?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==4?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==5?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==6?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==7?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==8?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==9?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==10?Sayari.emoj[Sayari.cnt2]:0}${Sayari.cnt==0?Sayari.li2p[Sayari.cnt2]:Sayari.cnt==1?Sayari.li3p[Sayari.cnt2]:Sayari.cnt==2?Sayari.li4p[Sayari.cnt2]:Sayari.cnt==3?Sayari.li5p[Sayari.cnt2]:Sayari.cnt==4?Sayari.li6p[Sayari.cnt2]:Sayari.cnt==5?Sayari.li7p[Sayari.cnt2]:Sayari.cnt==6?Sayari.li8p[Sayari.cnt2]:Sayari.cnt==7?Sayari.li9p[Sayari.cnt2]:Sayari.cnt==8?Sayari.li10p[Sayari.cnt2]:Sayari.cnt==9?Sayari.li11p[Sayari.cnt2]:Sayari.cnt==10?Sayari.li12p[Sayari.cnt2]:Sayari.cnt==11?Sayari.li13p[Sayari.cnt2]:Sayari.cnt==12?Sayari.li14p[Sayari.cnt2]:Sayari.cnt==13?Sayari.li15p[Sayari.cnt2]:Sayari.cnt==14?Sayari.li16p[Sayari.cnt2]:Sayari.cnt==15?Sayari.li17p[Sayari.cnt2]:0}\n${Sayari.emoj[Sayari.e]}",style: TextStyle(fontSize: 16),),),
                                  decoration: BoxDecoration(gradient: index==Sayari.index1?Sayari.licolor1[0]:index==Sayari.index2?Sayari.licolor1[1]:index==Sayari.index3?Sayari.licolor1[1]:index==Sayari.index4?Sayari.licolor1[3]:index==Sayari.index5?Sayari.licolor1[4]:index==Sayari.index6?Sayari.licolor1[5]:index==Sayari.index7?Sayari.licolor1[6]:index==Sayari.index8?Sayari.licolor1[7]:index==Sayari.index9?Sayari.licolor1[8]:index==Sayari.index10?Sayari.licolor1[9]:index==Sayari.index11?Sayari.licolor1[10]:index==Sayari.index12?Sayari.licolor1[11]:index==Sayari.index13?Sayari.licolor1[12]:index==Sayari.index14?Sayari.licolor1[13]:index==Sayari.index15?Sayari.licolor1[14]:index==Sayari.index16?Sayari.licolor1[15]:index==Sayari.index17?Sayari.licolor1[16]:index==Sayari.index18?Sayari.licolor1[17]:index==Sayari.index19?Sayari.licolor1[18]:index==Sayari.index20?Sayari.licolor1[19]:Sayari.licolor1[index]),
                                ),
                              );
                            },);
                        },);
                    },
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    color: Colors.white,
                    child: Text("${Sayari.cnt2+1}/${Sayari.total}",style: TextStyle(fontSize: 30),),
                    alignment: Alignment.center,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        print("category index=${Sayari.cnt}");
                        print("Shayari index=${Sayari.cnt2}");
                        Sayari.index=Sayari.random.nextInt(20);
                        Sayari.indexofcolor=Sayari.index;
                      });
                      Expanded(
                        child: Container(
                          child: Center(child: Text("${Sayari.cnt==0?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==1?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==2?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==3?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==4?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==5?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==6?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==7?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==8?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==9?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==10?Sayari.emoj[Sayari.cnt2]:0}${Sayari.emoj[Sayari.e]}${Sayari.cnt==0?Sayari.li2p[Sayari.cnt2]:Sayari.cnt==1?Sayari.li3p[Sayari.cnt2]:Sayari.cnt==2?Sayari.li4p[Sayari.cnt2]:Sayari.cnt==3?Sayari.li5p[Sayari.cnt2]:Sayari.cnt==4?Sayari.li6p[Sayari.cnt2]:Sayari.cnt==5?Sayari.li7p[Sayari.cnt2]:Sayari.cnt==6?Sayari.li8p[Sayari.cnt2]:Sayari.cnt==7?Sayari.li9p[Sayari.cnt2]:Sayari.cnt==8?Sayari.li10p[Sayari.cnt2]:Sayari.cnt==9?Sayari.li11p[Sayari.cnt2]:Sayari.cnt==10?Sayari.li12p[Sayari.cnt2]:Sayari.cnt==11?Sayari.li13p[Sayari.cnt2]:Sayari.cnt==12?Sayari.li14p[Sayari.cnt2]:Sayari.cnt==13?Sayari.li15p[Sayari.cnt2]:Sayari.cnt==14?Sayari.li16p[Sayari.cnt2]:Sayari.cnt==15?Sayari.li17p[Sayari.cnt2]:0}\n${Sayari.emoj[Sayari.e]}",style: TextStyle(fontSize: 16),),),
                          decoration: BoxDecoration(gradient: Sayari.index==Sayari.index1?Sayari.licolor1[0]:Sayari.index==Sayari.index2?Sayari.licolor1[1]:Sayari.index==Sayari.index3?Sayari.licolor1[1]:Sayari.index==Sayari.index4?Sayari.licolor1[3]:Sayari.index==Sayari.index5?Sayari.licolor1[4]:Sayari.index==Sayari.index6?Sayari.licolor1[5]:Sayari.index==Sayari.index7?Sayari.licolor1[6]:Sayari.index==Sayari.index8?Sayari.licolor1[7]:Sayari.index==Sayari.index9?Sayari.licolor1[8]:Sayari.index==Sayari.index10?Sayari.licolor1[9]:Sayari.index==Sayari.index11?Sayari.licolor1[10]:Sayari.index==Sayari.index12?Sayari.licolor1[11]:Sayari.index==Sayari.index13?Sayari.licolor1[12]:Sayari.index==Sayari.index14?Sayari.licolor1[13]:Sayari.index==Sayari.index15?Sayari.licolor1[14]:Sayari.index==Sayari.index16?Sayari.licolor1[15]:Sayari.index==Sayari.index17?Sayari.licolor1[16]:Sayari.index==Sayari.index18?Sayari.licolor1[17]:Sayari.index==Sayari.index19?Sayari.licolor1[18]:Sayari.index==Sayari.index20?Sayari.licolor1[19]:Sayari.licolor1[Sayari.index]),
                        ),
                      );
                    },
                    child: Container(
                      height: 40,
                      color: Colors.white,
                      child: Image.asset('images/reload.png',height: 60,width: 60,),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 4,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                controller: pc ,
                onPageChanged: (value) {
                  Sayari.cnt2=value;
                  print("pg_no=$value");
                  print("pgn=${Sayari.cnt2}");
                  setState(() {
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(40,20,20,60),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(gradient: Sayari.indexofcolor==Sayari.index1?Sayari.licolor1[0]:Sayari.indexofcolor==Sayari.index2?Sayari.licolor1[1]:Sayari.indexofcolor==Sayari.index3?Sayari.licolor1[1]:Sayari.indexofcolor==Sayari.index4?Sayari.licolor1[3]:Sayari.indexofcolor==Sayari.index5?Sayari.licolor1[4]:Sayari.indexofcolor==Sayari.index6?Sayari.licolor1[5]:Sayari.indexofcolor==Sayari.index7?Sayari.licolor1[6]:Sayari.indexofcolor==Sayari.index8?Sayari.licolor1[7]:Sayari.indexofcolor==Sayari.index9?Sayari.licolor1[8]:Sayari.indexofcolor==Sayari.index10?Sayari.licolor1[9]:Sayari.indexofcolor==Sayari.index11?Sayari.licolor1[10]:Sayari.indexofcolor==Sayari.index12?Sayari.licolor1[11]:Sayari.indexofcolor==Sayari.index13?Sayari.licolor1[12]:Sayari.indexofcolor==Sayari.index14?Sayari.licolor1[13]:Sayari.indexofcolor==Sayari.index15?Sayari.licolor1[14]:Sayari.indexofcolor==Sayari.index16?Sayari.licolor1[15]:Sayari.indexofcolor==Sayari.index17?Sayari.licolor1[16]:Sayari.indexofcolor==Sayari.index18?Sayari.licolor1[17]:Sayari.indexofcolor==Sayari.index19?Sayari.licolor1[18]:Sayari.indexofcolor==Sayari.index20?Sayari.licolor1[19]:Sayari.licolor1[Sayari.indexofcolor]),
                        child: Text("${Sayari.cnt==0?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==1?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==2?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==3?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==4?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==5?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==6?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==7?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==8?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==9?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==10?Sayari.emoj[Sayari.cnt2]:0}${Sayari.cnt==0?Sayari.li2p[Sayari.cnt2]:Sayari.cnt==1?Sayari.li3p[Sayari.cnt2]:Sayari.cnt==2?Sayari.li4p[Sayari.cnt2]:Sayari.cnt==3?Sayari.li5p[Sayari.cnt2]:Sayari.cnt==4?Sayari.li6p[Sayari.cnt2]:Sayari.cnt==5?Sayari.li7p[Sayari.cnt2]:Sayari.cnt==6?Sayari.li8p[Sayari.cnt2]:Sayari.cnt==7?Sayari.li9p[Sayari.cnt2]:Sayari.cnt==8?Sayari.li10p[Sayari.cnt2]:Sayari.cnt==9?Sayari.li11p[Sayari.cnt2]:Sayari.cnt==10?Sayari.li12p[Sayari.cnt2]:Sayari.cnt==11?Sayari.li13p[Sayari.cnt2]:Sayari.cnt==12?Sayari.li14p[Sayari.cnt2]:Sayari.cnt==13?Sayari.li15p[Sayari.cnt2]:Sayari.cnt==14?Sayari.li16p[Sayari.cnt2]:Sayari.cnt==15?Sayari.li17p[Sayari.cnt2]:0}\n${Sayari.cnt==0?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==1?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==2?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==3?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==4?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==5?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==6?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==7?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==8?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==9?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==10?Sayari.emoj[Sayari.cnt2]:0}",style: TextStyle(fontSize: 30),),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        FlutterClipboard.copy(Sayari.cnt==0?Sayari.li2p[Sayari.cnt2]:Sayari.cnt==1?Sayari.li3p[Sayari.cnt2]:Sayari.cnt==2?Sayari.li4p[Sayari.cnt2]:Sayari.cnt==3?Sayari.li5p[Sayari.cnt2]:Sayari.cnt==4?Sayari.li6p[Sayari.cnt2]:Sayari.cnt==5?Sayari.li7p[Sayari.cnt2]:Sayari.cnt==6?Sayari.li8p[Sayari.cnt2]:Sayari.cnt==7?Sayari.li9p[Sayari.cnt2]:Sayari.cnt==8?Sayari.li10p[Sayari.cnt2]:Sayari.cnt==9?Sayari.li11p[Sayari.cnt2]:Sayari.cnt==10?Sayari.li12p[Sayari.cnt2]:Sayari.cnt==11?Sayari.li13p[Sayari.cnt2]:Sayari.cnt==12?Sayari.li14p[Sayari.cnt2]:Sayari.cnt==13?Sayari.li15p[Sayari.cnt2]:Sayari.cnt==14?Sayari.li16p[Sayari.cnt2]:Sayari.cnt==15?Sayari.li17p[Sayari.cnt2]:0).then((value) => print('Copied'));//msg copy karva mate
                        Fluttertoast.showToast(
                          msg:"Text coppied",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black54,
                          textColor: Colors.white,
                          fontSize: 20.0,
                        );
                      },
                      child: Container(
                        height: 50,
                        color: Colors.green,
                        child: Image.asset('images/copy1.png',height: 50,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if(Sayari.cnt2!=0){
                          Sayari.cnt2=Sayari.cnt2-1;
                          pc.jumpToPage(Sayari.cnt2);
                          setState(() {
                          });
                        }
                      },
                      child: Container(
                        height: 50,
                        color: Colors.green,
                        child: Image.asset('images/ic_action_previous.png',height: 50,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          full.isEditbackground=1;
                          full.isEditTc=1;
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            return edit();
                          },));
                        });
                      },
                      child: Container(
                        height: 50,
                        color: Colors.green,
                        child: Image.asset('images/pencil2.png',height: 50,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if(Sayari.cnt2!=9){
                          Sayari.cnt2=Sayari.cnt2+1;
                          pc.jumpToPage(Sayari.cnt2);
                          setState(() {
                          });
                        }
                      },
                      child: Container(
                        height: 50,
                        color: Colors.green,
                        child: Image.asset('images/ic_action_next_item.png',height: 50,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () async{
                        result=(await Share.share('${Sayari.cnt==0?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==1?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==2?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==3?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==4?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==5?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==6?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==7?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==8?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==9?Sayari.emoj[Sayari.cnt2]:Sayari.cnt==10?Sayari.emoj[Sayari.cnt2]:Sayari.emoj[Sayari.cnt2]}${Sayari.cnt==0?Sayari.li2p[Sayari.cnt2]:Sayari.cnt==1?Sayari.li3p[Sayari.cnt2]:Sayari.cnt==2?Sayari.li4p[Sayari.cnt2]:Sayari.cnt==3?Sayari.li5p[Sayari.cnt2]:Sayari.cnt==4?Sayari.li6p[Sayari.cnt2]:Sayari.cnt==5?Sayari.li7p[Sayari.cnt2]:Sayari.cnt==6?Sayari.li8p[Sayari.cnt2]:Sayari.cnt==7?Sayari.li9p[Sayari.cnt2]:Sayari.cnt==8?Sayari.li10p[Sayari.cnt2]:Sayari.cnt==9?Sayari.li11p[Sayari.cnt2]:Sayari.cnt==10?Sayari.li12p[Sayari.cnt2]:Sayari.cnt==11?Sayari.li13p[Sayari.cnt2]:Sayari.cnt==12?Sayari.li14p[Sayari.cnt2]:Sayari.cnt==13?Sayari.li15p[Sayari.cnt2]:Sayari.cnt==14?Sayari.li16p[Sayari.cnt2]:Sayari.cnt==15?Sayari.li17p[Sayari.cnt2]:0}\n${Sayari.cnt==0?Sayari.emoj[Sayari.e]:Sayari.cnt==1?Sayari.emoj[Sayari.e]:Sayari.cnt==2?Sayari.emoj[Sayari.e]:Sayari.cnt==3?Sayari.emoj[Sayari.e]:Sayari.cnt==4?Sayari.emoj[Sayari.e]:Sayari.cnt==5?Sayari.emoj[Sayari.e]:Sayari.cnt==6?Sayari.emoj[Sayari.e]:Sayari.cnt==7?Sayari.emoj[Sayari.e]:Sayari.cnt==8?Sayari.emoj[Sayari.e]:Sayari.cnt==9?Sayari.emoj[Sayari.e]:Sayari.cnt==10?Sayari.emoj[Sayari.e]:Sayari.emoj[Sayari.cnt2]}')) as int;
                        Share.share(result);
                      },
                      child: Container(
                        height: 50,
                        color: Colors.green,
                        child: Image.asset('images/ic_action_share.png',height: 50,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    else{
      return Scaffold();
    }
  }

  @override
  void initState() {
    super.initState();
    pc=PageController(initialPage: Sayari.cnt2);
  }
}
