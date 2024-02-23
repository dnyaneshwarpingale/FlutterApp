import 'package:flutter/material.dart';

class ListViewSeparated extends StatefulWidget {
  const ListViewSeparated({super.key});
  @override
  State createState() => _ListViewSeparatedState();
}

class _ListViewSeparatedState extends State {
  List<Map> imglist = [
    {
      "title": "OneDay",
      "cricker": [
        "https://www.kreedon.com/wp-content/uploads/2019/04/17kohli1-324x235.jpg.webp",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
      ]
    },
    {
      "title": "T20",
      "cricker": [
        "https://www.kreedon.com/wp-content/uploads/2019/04/17kohli1-324x235.jpg.webp",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
      ]
    },
    {
      "title": "Test",
      "cricker": [
        "https://www.kreedon.com/wp-content/uploads/2019/04/17kohli1-324x235.jpg.webp",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List ViewSeparatedDemo"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
          itemCount: imglist.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text(imglist[index]["title"]),
                for (int i = 0; i < imglist.length; i++)
                  Container(
                    child: Image.network(
                      imglist[index]["cricker"][i],
                      height: 200,
                      width: 200,
                    ),
                  ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Center(
                child: const Text(
                    "------------------------------------------------"));
          },
        ));
  }
}
