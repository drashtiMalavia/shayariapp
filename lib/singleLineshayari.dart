

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Shayari.dart';
import 'fullLineShayari.dart';

class single extends StatefulWidget {
  int index;
  single(this.index,{super.key});

  @override
  State<single> createState() => _singleState();
}

class _singleState extends State<single> {
  List TapList=List.filled(Sayari.cnt==0?Sayari.li2.length:Sayari.cnt==1?Sayari.li3.length:Sayari.cnt==2?Sayari.li4.length:Sayari.cnt==3?Sayari.li5.length:Sayari.cnt==4?Sayari.li6.length:Sayari.cnt==5?Sayari.li7.length:Sayari.cnt==6?Sayari.li8.length:Sayari.cnt==7?Sayari.li9.length:Sayari.cnt==8?Sayari.li10.length:Sayari.cnt==9?Sayari.li11.length:Sayari.cnt==10?Sayari.li12.length:Sayari.cnt==11?Sayari.li13.length:Sayari.cnt==12?Sayari.li14.length:Sayari.cnt==13?Sayari.li15.length:Sayari.cnt==14?Sayari.li16.length:Sayari.cnt==15?Sayari.li17.length:0,'');
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
        itemCount: Sayari.cnt==0?Sayari.li2.length:Sayari.cnt==1?Sayari.li3.length:Sayari.cnt==2?Sayari.li4.length:Sayari.cnt==3?Sayari.li5.length:Sayari.cnt==4?Sayari.li6.length:Sayari.cnt==5?Sayari.li7.length:Sayari.cnt==6?Sayari.li8.length:Sayari.cnt==7?Sayari.li9.length:Sayari.cnt==8?Sayari.li10.length:Sayari.cnt==9?Sayari.li11.length:Sayari.cnt==10?Sayari.li12.length:Sayari.cnt==11?Sayari.li13.length:Sayari.cnt==12?Sayari.li14.length:Sayari.cnt==13?Sayari.li15.length:Sayari.cnt==14?Sayari.li16.length:Sayari.cnt==15?Sayari.li17.length:0,
        itemBuilder:(context, index) {
          return Card(
            elevation: 5,
            shape: Border.all(color: Colors.white),
            child: InkWell(
              onTap: () {
                setState(() {
                  TapList[index]='tap';
                  Navigator.push(context,MaterialPageRoute(builder:(context)
                  {
                    Sayari.cnt2=index;
                    if(index==0 || index==1 || index==2 || index==3 || index==4 || index==5 || index==6 || index==7 || index==8 ||index==9 || index==10 || index==11){
                      Sayari.counter=Sayari.cnt2+1;
                      return full(Sayari.cnt2);
                    }
                    else {
                      return single(Sayari.cnt2);
                    }
                  },));
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
                title: Text("${index==0?Sayari.emoj[0]:index==1?Sayari.emoj[1]:index==2?Sayari.emoj[2]:index==3?Sayari.emoj[3]:index==4?Sayari.emoj[4]:index==5?Sayari.emoj[5]:index==6?Sayari.emoj[6]:index==7?Sayari.emoj[7]:index==8?Sayari.emoj[8]:index==9?Sayari.emoj[9]:index==10?Sayari.emoj[10]:0}${Sayari.cnt==0?Sayari.li2[index]:Sayari.cnt==1?Sayari.li3[index]:Sayari.cnt==2?Sayari.li4[index]:Sayari.cnt==3?Sayari.li5[index]:Sayari.cnt==4?Sayari.li6[index]:Sayari.cnt==5?Sayari.li7[index]:Sayari.cnt==6?Sayari.li8[index]:Sayari.cnt==7?Sayari.li9[index]:Sayari.cnt==8?Sayari.li10[index]:Sayari.cnt==9?Sayari.li11[index]:Sayari.cnt==10?Sayari.li12[index]:Sayari.cnt==11?Sayari.li13[index]:Sayari.cnt==12?Sayari.li14[index]:Sayari.cnt==13?Sayari.li15[index]:Sayari.cnt==14?Sayari.li16[index]:Sayari.cnt==15?Sayari.li17[index]:0}"),
                leading: Image.asset('${Sayari.cnt==0?'images/bestwishesh.png':Sayari.cnt==1?'images/husband.png':Sayari.cnt==2?'images/child.png':Sayari.cnt==3?'images/god.png':Sayari.cnt==4?'images/motivational.png':Sayari.cnt==5?'images/kanjoos.png':Sayari.cnt==6?'images/married.png':Sayari.cnt==7?'images/officework.png':Sayari.cnt==8?'images/santabanta.png':Sayari.cnt==9?'images/politics.png':Sayari.cnt==10?'images/love.png':Sayari.cnt==11?'images/sad.png':Sayari.cnt==12?'images/bearbar.png':Sayari.cnt==13?'images/bewfa.png':Sayari.cnt==14?'images/birthday.png':Sayari.cnt==15?'images/holiimg.jpg':0}',height: 40,width: 40,), trailing: Image.asset('images/ic_action_next_item.png',height: 50,width: 50,alignment: Alignment.centerRight,),
                tileColor: TapList[index]=='down'?Colors.red:Colors.pink,
              ),
            ),
          );
        },)
      ),
    );
  }
}
