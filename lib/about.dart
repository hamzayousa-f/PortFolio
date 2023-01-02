import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 65),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/hamza.png',
                    height: 525, fit: BoxFit.contain),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hello i am ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hamza Yousaf',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    child: Link(
                      target: LinkTarget.self,
                      uri: Uri.parse('https://www.facebook.com/Hamzaa.yousaf'),
                      builder: (context, followLink) => TextButton(
                        onPressed: followLink,
                        child: Text('Hire Me'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Link(
                        target: LinkTarget.blank,
                        uri:
                            Uri.parse('https://www.instagram.com/hamzayousa_f'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(
                            'https://www.linkedin.com/in/hamza-yousaf-506b30184/'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://msng.link/o/?hamzayousa_f=tg'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.telegram,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://twitter.com/_hamzayousaf'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://github.com/hamzayousa-f/'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
