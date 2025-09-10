import 'package:flutter/material.dart';

class ShowTripPage extends StatefulWidget {
  const ShowTripPage({super.key});

  @override
  State<ShowTripPage> createState() => _ShowTripPageState();
}

class _ShowTripPageState extends State<ShowTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('รายการทริป')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ปลายทาง'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 8,
                    children: [
                      FilledButton(onPressed: () {}, child: Text('ทั้งหมด')),
                      FilledButton(onPressed: () {}, child: Text('เอเชีย')),
                      FilledButton(onPressed: () {}, child: Text('ยุโรป')),
                      FilledButton(onPressed: () {}, child: Text('อาเซียน')),
                      FilledButton(onPressed: () {}, child: Text('แอฟฟริกา')),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Card(color: Colors.amber),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
