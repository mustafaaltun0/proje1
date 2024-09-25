import 'package:flutter/material.dart';
import 'package:flutter_application_2/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}
 
 //left - start - leading
 //right - end - traiLing

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği : $ekranYuksekligi");
    print("Ekran Genişliği  : $ekranYuksekligi");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
         title: Text("Pizza",style: TextStyle(color: yazRenk1,fontFamily:"Pacifico",fontSize:34),),
         backgroundColor: anaRenk,
         centerTitle: true,
         ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(d!.pizzaBaslik, style: TextStyle(fontSize: 36,color: anaRenk,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset(
  "resimler/pizza2.png",
  fit: BoxFit.cover, // veya BoxFit.contain
),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik:d.peynirYazi),
                Chip(icerik:d.sucukYazi),
                Chip(icerik:d.zeytinYazi),
                Chip(icerik:d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
             children: [
               Text(d.teslimatSure, style: TextStyle(fontSize: 22,color: yazRenk2,fontWeight: FontWeight.bold),),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(d.teslimatBaslik, style: TextStyle(fontSize: 22,color: anaRenk,fontWeight: FontWeight.bold),),
               ),
               Text(d.pizzaAciklama, 
                style: TextStyle(fontSize: 22,color: yazRenk2),textAlign: TextAlign.center,),
             ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(d.fiyat,style: TextStyle(fontSize: 44,color: anaRenk,fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: 200,height:50,
                  child: TextButton(onPressed: (){},
                    child: Text(d.butonYazi,style: TextStyle(color: yazRenk1,fontSize: 18),),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))//butonda köşe kıvrımı 5 olsun
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
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: yazRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}