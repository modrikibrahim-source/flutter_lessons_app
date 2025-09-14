
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> lessons = [
    "الإيمان والغيـب",
    "الإيمان والعلم",
    "الإيمان والفلسفة",
    "الإيمان وعمارة الأرض",
    "صلح الحديبية وفتح مكة",
    "الرسول ﷺ مفاوضا ومستشيرا",
    "نماذج للتأسي: عثمان بن عفان وقوة البذل والحياء",
    "فقه الأسرة: الزواج (الأحكام والمقاصد)",
    "فقه الأسرة: الطلاق (الأحكام والمقاصد)",
    "فقه الأسرة: رعاية الأطفال وحقوقهم",
    "حق الله: الوفاء بالأمانة والمسؤولية",
    "حق النفس: الصبر واليقين",
    "حق الغير: العفة والحياء",
    "الكفاءة والاستحقاق أساس التكليف",
    "العفو والتسامح",
    "وقاية المجتمع من تفشي الفواحش",
  ];

  final List<Color> colors = [
    Colors.green,
    Colors.orange,
    Colors.blue,
    Colors.red,
    Colors.teal,
    Colors.purple,
    Colors.brown,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.black87,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("الدروس"),
          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemCount: lessons.length,
          itemBuilder: (context, index) {
            return Card(
              color: colors[index % colors.length],
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  lessons[index],
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LessonPage(title: lessons[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class LessonPage extends StatelessWidget {
  final String title;

  LessonPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: Colors.teal),
      body: Center(
        child: Text(
          "محتوى الدرس: $title",
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
