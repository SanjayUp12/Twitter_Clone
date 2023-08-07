import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class TweetsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
            SingleTweetBody(),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

class SingleTweetBody extends StatelessWidget {
  const SingleTweetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 20,
          child: Image(
            image: AssetImage('images/Profile1.jpeg'),
            fit: BoxFit.contain,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'ICC',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text('@iccofficial',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                ],
              ),
              Text(
                'Australian has appointed its new head coach as daniel vettori Australian has appointed its new head coach as ',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LikeButton(
                    likeBuilder: (isLiked) =>
                        Icon(Icons.chat_bubble_outline_rounded),
                    likeCount: 312,
                  ),
                  LikeButton(
                    likeBuilder: (isLiked) => Icon(Icons.autorenew),
                    likeCount: 6312,
                  ),
                  LikeButton(
                    likeCount: 412,
                  ),
                  LikeButton(
                    likeBuilder: (isLiked) => Icon(Icons.bar_chart),
                    likeCount: 32,
                  ),
                  LikeButton(
                    likeBuilder: (isLiked) => Icon(Icons.share),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
