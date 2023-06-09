import 'package:flutter/material.dart';
import 'package:flutterexamples/screens/pdf_creation/report_pdf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PDFCreator(),
    );
  }
}

class PDFCreator extends StatefulWidget {
  @override
  _PDFCreatorState createState() => _PDFCreatorState();
}

class _PDFCreatorState extends State<PDFCreator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          height: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              elevation: 5,
              padding: const EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Text(
              'Get Report',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              reportView(context);
            },
          ),
        ),
      ),
    );
  }
}
