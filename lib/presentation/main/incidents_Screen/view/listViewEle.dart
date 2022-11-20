

import 'package:flutter/material.dart';
class Cards extends StatelessWidget {
  String   imageP,priority,discrabtion,Location,classification ,statues;
  Color? _color ;
  int ? incidentNumber ;

  Cards(this.imageP,this._color,this.discrabtion,this.Location,this.priority,this.classification,this.incidentNumber,this.statues);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints().tighten(height: 130.0,width: 130.0),
      //height: 130.0,
      //width: 300.0,
      decoration: BoxDecoration(

          color: _color,
        borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
      BoxShadow(
      color: Colors.grey.withOpacity(0.7),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 7), // changes position of shadow
    ),
    ]),
      
      child: Row(
          children:[
         Expanded(
           flex: 4,
      child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [

            Expanded(flex:5,child: Image.asset(imageP)),
             Expanded(child: Divider(thickness: 3.0,)),
               Expanded(flex:3,child: Padding(
                 padding: const EdgeInsets.only(left: 12.0),
                 child: Text("Sun",style: TextStyle(color: Colors.red,fontSize: 18.0),),
               )),
               Expanded(flex:2,child: Padding(
                 padding: const EdgeInsets.only(left: 12.0),
                 child: Text("19-jul",style: TextStyle(color: Colors.red,fontSize: 13.0),),
               )),
           ],
           ),
         ),
            Expanded(child:Padding(
              padding: const EdgeInsets.all(7.0),
              child: Divider(color:Colors.white,height:140.0,thickness: 100.0,),
            )),
        Expanded(
             flex: 15,
          child: Column(children:[
            Expanded(
              child: Row(children: [Expanded(flex:2,child: Align(alignment:Alignment.centerLeft, child: Text("$classification",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),
                //Expanded(child: SizedCustomBoxHorzantile(5.0)),
                Expanded(child: Align(alignment:Alignment.centerRight,child: Text("$incidentNumber",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)))]),
            ),
            Expanded(child: Row(children:[ Expanded(child: Text("$discrabtion",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))])),
            Expanded(child: Row(children:[ Expanded(child: Icon(Icons.location_on,color: Colors.red)),Expanded(flex:8,child: Text("$Location",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))])),
            Expanded(child: Row(children:[Expanded(child: Align(alignment:Alignment.centerLeft,child: Text("$priority",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),Expanded(child: Align(alignment:Alignment.centerRight, child:Text("$statues",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),])),
          ]),
        ),
     // Expanded(child: SizedCustomBoxVertical(2))
          ]
      ),
    );
  }
}
