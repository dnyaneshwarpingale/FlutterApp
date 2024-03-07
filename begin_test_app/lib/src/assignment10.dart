import 'package:flutter/material.dart';

class Assignment10 extends StatefulWidget {
  const Assignment10({super.key});
  @override
  State<Assignment10> createState() => _Assignment10State();
}

class _Assignment10State extends State<Assignment10> {
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.amber,
                  child: Image.network(
                    "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
                    // width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _isPost1Liked = !_isPost1Liked;
                          },
                        );
                      },
                      icon: _isPost1Liked
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_outline_rounded,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.comment_outlined),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.amber,
                  child: Image.network(
                    "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
                    width: double.infinity,
                    // height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _isPost2Liked = !_isPost2Liked;
                          },
                        );
                      },
                      icon: Icon(
                        _isPost2Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost2Liked ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.amber,
                  child: Image.network(
                    "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
                    width: double.infinity,
                    // height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // setState((){
                        // _isPost1Liked=!_isPost1Liked;
                        // },);
                      },
                      icon: const Icon(
                        Icons.favorite_outline_rounded,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
