import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final int likes;
  final int comments;
  final int shares;
  final String imageUrl;
  final String name;

  Detail({this.imageUrl, this.likes, this.comments, this.shares, this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(context),
      body: _Card(),
    );
  }

  Widget _Card() {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(imageUrl),
          GeneralSizedBox(height: 12),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 5),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Positioned(
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("assets/heart.png"),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("assets/like.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "${likes}K",
                    style: TextStyle(fontSize: 22),
                  ),
                ]),
                Row(children: [
                  Text(
                    "${comments} Comments . ${shares} Shares",
                    style: TextStyle(fontSize: 22),
                  ),
                ]),
              ],
            ),
          ),
          GeneralSizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _AppBar(context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
      ),
      backgroundColor: Colors.white,
      title: Text(
        "${name} Details",
        style: TextStyle(color: Colors.blueAccent, fontSize: 20),
      ),
      actions: [
        CustomCircleAvatar(icon: Icons.search),
        GeneralSizedBox(width: 10.0),
        CustomCircleAvatar(icon: Icons.message),
        GeneralSizedBox(width: 5.0),
      ],
    );
  }

  CircleAvatar CustomCircleAvatar({IconData icon}) {
    return CircleAvatar(
      backgroundColor: Color(0xffECECEC),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }

  Widget GeneralSizedBox({double width, double height}) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
