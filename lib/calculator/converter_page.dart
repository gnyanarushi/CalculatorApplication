import 'package:caluculator/calculator/mian_page.dart';
import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.compress_sharp, color: Colors.white),
            GestureDetector(
              child: Text(
                "Calculator",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: const Color.fromARGB(119, 238, 226, 226),
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                   
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            Text(
              "Converter",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                 
              ),
            ),
            Icon(Icons.menu, color: Colors.white,),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.currency_exchange_rounded,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.calculate_rounded,
                      color: Colors.white,
                      size: 30,
                      
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.masks_sharp,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                 
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.area_chart_outlined,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.timelapse_rounded,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.currency_rupee_rounded,
                      color: Colors.white,
                       size: 30,
                       
                    ),  
                  ),
                  
                ),
                 
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.mobile_friendly_sharp,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.date_range_outlined,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.discount_outlined,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                 
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.volume_up_outlined,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.format_list_numbered_rtl_sharp,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.speed_rounded,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                 
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.ten_mp_rounded,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.bookmark_outline_sharp,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.black),
                  child: GestureDetector(
                    child: Icon(
                      Icons.g_translate_outlined,
                      color: Colors.white,
                       size: 30,
                    ),
                  ),
                ),
                 
              ],

            ),

            Container(
              height: 100,

            )
          ],
        ),
      ),
    );
  }
}
