import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCCCCC),
      body: _Body(context),
    );
  }

  Widget _Body(context) {
    return ListView(
      children: [
        GeneralSizedBox(height: 150),
        _Card(
          userIcon: "assets/facebook.png",
          name: "Facebook App",
          date: "Dec 23",
          caption:
              "Be the first to know about our new products, get discounts, win freebies and fill your feed with the cutest dogs around!",
          hashTag: "thebarkstoreonline",
          imagePost:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRAkSQfrZ8HfMXgNXuNJg7cQQ6RzLVfmEalg&usqp=CAU",
          likes: "5.3k",
          comments: "200",
          shares: "55",
        ),
        GeneralSizedBox(height: 5),
      ],
    );
  }

  Widget _Card({
    String userIcon,
    String name,
    String date,
    String caption,
    String hashTag,
    String imagePost,
    String likes,
    String comments,
    String shares,
  }) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    backgroundImage: AssetImage(userIcon),
                  ),
                  GeneralSizedBox(width: 5.0),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1, left: 3, right: 3),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 17,
                    ),
                  ),
                  GeneralSizedBox(
                    width: 5,
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
              Row(
                children: [
                  GeneralSizedBox(width: 300),
                  Text(date),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    child: Text("."),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: caption,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                        text: "# $hashTag",
                        style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              Image.network(imagePost),
              GeneralSizedBox(height: 50),
              Row(
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
                              radius: 10,
                              backgroundImage: AssetImage("assets/heart.png"),
                            ),
                          ),
                          Positioned(
                            right: 15,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage("assets/like.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("${likes}K"),
                  ]),
                  Row(children: [
                    Text("${comments} Comments . ${shares} Shares"),
                  ]),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _LikeComment(icon: Icons.thumb_up_outlined, text: "Like"),
                  _LikeComment(
                      icon: Icons.mode_comment_outlined, text: "Comment"),
                  _LikeComment(icon: Icons.reply_outlined, text: "Share"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _LikeComment({IconData icon, String text}) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        GeneralSizedBox(width: 4),
        Text(
          text,
          style: TextStyle(color: Colors.black),
        )
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
