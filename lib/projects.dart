import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myPro(lang, title, desc, star) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 10, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                desc,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Row(children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  star,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text(
          'My Projects',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff252525),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              myPro('Flutter', 'Social Finder App', 'Social Media App', '10'),
              SizedBox(height: 10),
              myPro(
                  'Flutter', 'Portfolio App', 'Digital Mobile Portfolio', '7'),
              SizedBox(height: 10),
              myPro('Flutter', 'Digital ID card', 'An Digital ID', '5'),
              SizedBox(height: 10),
              myPro(
                  'WordPress', 'Web Portfolio Site', 'SWebsite Portfolio', '9'),
              SizedBox(height: 10),
              myPro('Flutter', 'BMI Calculator', 'Body to Index ratio', '9'),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
