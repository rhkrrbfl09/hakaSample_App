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
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'HorizontalAppbar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 3),
            Divider(color: Colors.grey[300]),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('선택됨', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Text('1'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '선택 안됨',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 10),
                      Text('2'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '선택 안됨',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 10),
                      Text('3'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '선택 안됨',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 10),
                      Text('4'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VerticalAppbar',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Divider(),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 85,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey[300]!),
                        ),
                      ),
                      child: Column(
                        children: [
                          _verticalItem('선택됨', '1', true),
                          _verticalItem('선택 안됨', '2', false),
                          _verticalItem('선택 안됨', '3', false),
                          _verticalItem('선택 안됨', '4', false),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Skeleton', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Divider(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _verticalItem(String label, String number, bool selected) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: selected ? Colors.black : Colors.grey[600],
            ),
          ),
          SizedBox(height: 10),
          Text(number, style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    );
  }
}
