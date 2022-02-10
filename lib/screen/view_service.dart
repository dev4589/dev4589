import 'package:flutter/material.dart';
import 'package:saloon/screen/homepage.dart';

class ViewService extends StatefulWidget {
  ViewService({Key? key}) : super(key: key);

  @override
  _ViewServiceState createState() => _ViewServiceState();
}

class _ViewServiceState extends State<ViewService> {
  TextEditingController address = TextEditingController();
  Card card_service(img, title) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
        child: InkWell(
          hoverColor: Colors.blue[50],
          splashColor: Colors.blue[100],
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: (MediaQuery.of(context).size.width <= 480)
                    ? 135
                    : (MediaQuery.of(context).size.width <= 800)
                        ? 150
                        : 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 25),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/images/Logo_dark.png",
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "SELECT YOUR SERVICE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                        letterSpacing: 5,
                        fontSize: 30),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                      "Add as many services as you like! Go ahead, treat yourself. You've earned it!",
                      style: TextStyle(
                        fontFamily: 'Arial',
                      )),
                ),
                Padding(
                  padding: size.width < 480
                      ? const EdgeInsets.only(left: 40, top: 20, right: 40)
                      : size.width < 600
                          ? const EdgeInsets.only(left: 80, top: 20, right: 80)
                          : const EdgeInsets.only(
                              left: 100, top: 20, right: 100),
                  child: GridView.count(
                    childAspectRatio: MediaQuery.of(context).size.width > 1024
                        ? (1 / 1.2)
                        : MediaQuery.of(context).size.width > 640
                            ? (1 / 1.2)
                            : (1 / 1.3),
                    crossAxisCount: (size.width) < 361
                        ? 2
                        : (size.width) < 650
                            ? 2
                            : (size.width) < 775
                                ? 2
                                : (size.width) < 950
                                    ? 3
                                    : (size.width) < 1200
                                        ? 3
                                        : 4,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    shrinkWrap: true,
                    children: [

                      card_service(
                          'assets/images/ear_piercing.jpg', 'Ear Piercing'),
                      card_service('assets/images/facial.jpg', 'Facial'),
                      card_service('assets/images/fitness.jpg', 'Fitness'),
                      card_service('assets/images/hair.jpg', 'Haie'),
                      card_service('assets/images/makeup.jpg', 'Makeup'),
                      card_service(
                          'assets/images/mangrooming.jpg', 'Mangrooming'),
                      card_service('assets/images/nail.jpg', 'Nail'),
                      card_service('assets/images/tan.jpg', 'Tan'),
                      card_service('assets/images/wedding.jpg', 'Wedding'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
