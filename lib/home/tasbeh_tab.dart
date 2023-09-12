import 'package:flutter/material.dart';

class TasabehScreen extends StatefulWidget {
  @override
  State<TasabehScreen> createState() => _TasabehScreenState();
}

class _TasabehScreenState extends State<TasabehScreen> {
  double turns = 0;
  int counter = 0;
  String word = 'سبحان الله';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AnimatedRotation(
              turns: turns,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  turns += 0.01;
                  counter++;
                  if (counter == 33) {
                    word = 'الحمدلله';
                  } else if (counter == 66) {
                    word = 'لا اله الا الله';
                  }else if(counter==99){
                    word='الله واكبر';
                  }
                  setState(() {});
                },
                child: Stack(
                  children: [
                    Positioned(
                        left: 60,
                        child: Image.asset(
                          'assets/images/head_sebha_logo.png',
                          width: 30,
                        )),
                    Padding(
                        padding: EdgeInsets.all(23),
                        child: Image.asset(
                          'assets/images/body_sebha_logo.png',
                          width: 150,
                        ))
                  ],
                ),
              )),
          Container(
            child: Text(
              'عدد التسبيحات ',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Container(
            width: 35,
            height: 40,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 202, 176, 139),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              '$counter',
              textAlign: TextAlign.center,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 130,
              height: 30,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                  child: Text('$word',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.w800))),
            ),
          )
        ],
      ),
    );
  }
}
