import 'package:flutter/material.dart';
import 'package:islami/home/hadeth_tab.dart';
import 'package:islami/home/main_tab.dart';
import 'package:islami/home/quraan&sura/quraan_tab.dart';
import 'package:islami/home/radio_tab.dart';
import 'package:islami/home/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  static String routeName = 'main';
}

class _HomeScreenState extends State<HomeScreen> {
int selextedIndex=2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/default.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          
          appBar: AppBar(
            centerTitle: true,
            title:
                Text('Islami', style: Theme.of(context).textTheme.titleLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selextedIndex,
              onTap: (value) {
                selextedIndex=value;
                setState(() {
                  
                });
              },
              items: [
                BottomNavigationBarItem(
                    label: 'quraan',
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png'))),
                    
                BottomNavigationBarItem(
                    label: 'hadeth',
                    icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'))),
                    BottomNavigationBarItem(
                    label: 'Home',
                    icon:Icon(Icons.home)    ),
                BottomNavigationBarItem(
                    label: 'tasabeh',
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'))),
                BottomNavigationBarItem(
                  label: 'radio',
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')))
              ],
            ),
          ),
        body: screens[selextedIndex],
        )
      ],
    );
  }
  List<Widget> screens =[QuraanScreen(),HadethScreen(),MainTab(),TasabehScreen(),RadioScreen()];
}
