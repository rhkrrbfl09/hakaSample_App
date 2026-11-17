import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text(
          'Haka Sample App',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HorizontalAppbar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              Divider(),
              SizedBox(height: 1.0),
              Divider(color: Colors.grey[300]),
              Row(
                children: [
                  TabItem(label: '선택됨', number: '1', selected: true),
                  TabItem(label: '선택 안됨', number: '2'),
                  TabItem(label: '선택 안됨', number: '3'),
                  TabItem(label: '선택 안됨', number: '4'),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'VerticalAppbar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              Divider(),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 350,
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(color: Color(0xFF5e615e)),
                      ),
                    ),
                    child: Column(
                      children: [
                        TabItem(label: '선택됨', number: '1', selected: true),
                        TabItem(label: '선택 안됨', number: '2'),
                        TabItem(label: '선택 안됨', number: '3'),
                        TabItem(label: '선택 안됨', number: '4'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skeleton',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Divider(),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0xFFd9d7d7),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFd9d7d7),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xFFd9d7d7),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xFFd9d7d7),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFFd9d7d7),
                      ),
                      SizedBox(width: 2),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Color(0xFFd9d7d7),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Dot',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Divider(),
                  Row(
                    children: [
                      CircleAvatar(radius: 4, backgroundColor: Colors.black),
                      SizedBox(width: 6),
                      CircleAvatar(radius: 5, backgroundColor: Colors.black),
                      SizedBox(width: 6),

                      CircleAvatar(radius: 7, backgroundColor: Colors.black),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Tag',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Divider(),

                  // Wrap: 개수나 길이가 정해지지 않은 것들을 가로로 나열하다가 자리가 모자라면 자동으로 다음 줄로 넘기고싶을때
                  Wrap(
                    spacing: 4,
                    runSpacing: 6,
                    children: [
                      // 점 태그 5개
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xFF606361),
                            ),
                            SizedBox(width: 4),
                            Text('Default', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xFF606361),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'DefaultSecondary',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFd8ffcf),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Color(0xFF08bd41)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xFF08bd41),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Brand',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF008f26),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFffdfde),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.red[300]!),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xFFed0800),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Error',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFd40802),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFf5ecda),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.orange[200]!),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Color(0xFFffa600),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Warning',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFd18800),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check, color: Colors.grey),
                            SizedBox(width: 4),
                            Text('Default', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check, color: Colors.grey),
                            SizedBox(width: 4),
                            Text(
                              'DefaultSecondary',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFd8ffcf),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Color(0xFF08bd41)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check, color: Color(0xFF008f26)),
                            SizedBox(width: 4),
                            Text(
                              'Brand',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF008f26),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFffdfde),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.red[300]!),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check, color: Color(0xFFd40802)),
                            SizedBox(width: 4),
                            Text(
                              'Error',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFd40802),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFf5ecda),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.orange[200]!),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check, color: Color(0xFFd18800)),
                            SizedBox(width: 4),
                            Text(
                              'Warning',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFd18800),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '일반'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: '특별'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: '아이콘'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: '색상'),
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String label;
  final String number;
  final bool selected;

  const TabItem({
    super.key,
    required this.label,
    required this.number,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected ? Colors.black : Colors.grey;
    return Expanded(
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 14.0),
          Text(number, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
