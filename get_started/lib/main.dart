import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _numPage = 3;

  int _currentPage = 0;
  bool press=true;

  List<Widget> _pageIndecator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPage; i++) {
      list.add(i == _currentPage ? _indecator(true) : _indecator(false));
    }
    return list;
  }

  Widget _indecator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      height: 9.0,
      width: isActive ? 24.0 : 20.0,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }

  final PageController _pageController = PageController(initialPage: 0);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Color(0xFF3594DD),
            Color(0xFF4563DB),
            Color(0xFF5036D5),
            Color(0xFF5B16D0)
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 20.0),
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () => print('skip is pressed'),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  )),
              Container(
                height: 400.0,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'images/onboarding0.png',
                            width: 200.0,
                            height: 250.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Conect People\naround the World',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'make friends,watch the world,increase your kownledge,learn more ..',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'images/onboarding1.png',
                            width: 200.0,
                            height: 250.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Live your life\nsmarter with us',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'with us you kown new things and achieve your dreams keep touch..',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'images/onboarding2.png',
                            width: 200.0,
                            height: 250.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Get a new experience \nof imagination',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'you prefer unexpected events, you are welcome \nlet\'s get Started ',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _pageIndecator(),
              ),
              SizedBox(
                height: 50.0,
              ),
              _currentPage != _numPage - 1
                  ? /*Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: Color(0xFF5036D5),
                        child: Icon(Icons.navigate_next),
                      ),
                    )*/
                  Text('')
                  : InkWell(
                child: Container(
                margin: EdgeInsets.only(
                    top: 20.0, left: 20, right: 20, bottom: 15),
                width: double.infinity,
                height: 50.0,
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
                decoration:press?BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ):BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color:Color(0xFF5036D5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
              ),
                onTap: (){
                  setState(() {
                    press=false;
                  });
                  print('Get Started');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
