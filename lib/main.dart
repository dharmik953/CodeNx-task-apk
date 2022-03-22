import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'CodeNx task'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(children: [
          Flexible(
            child: listOfContent(),
          ),
          Container(
            // color: const Color(0x00ffffff), // Yellow
            height: 70.0,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Icon(Icons.sort),
                    SizedBox(width: 10.0),
                    Text(
                      'SORT',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.0),
                    )
                  ],
                ),
                SizedBox(width: 85.0),
                Row(
                  children: const [
                    Icon(Icons.filter_list_rounded ),
                    SizedBox(width: 10.0),
                    Text(
                      'FILTER',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.0),
                    )
                  ],
                ),
              ],
            ),
          )
        ]));
  }

  SingleChildScrollView listOfContent() {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
            // minHeight: viewportConstraints.maxHeight,
            ),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              productcolums(),
              const SizedBox(height: 25.0),
              productcolums(),
              const SizedBox(height: 25.0),
              productcolums(),
              const SizedBox(height: 25.0),
              productcolums(),
              const SizedBox(height: 25.0),
              productcolums(),
              const SizedBox(height: 25.0),
              productcolums(),
              const SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
    );
  }

  Row productcolums() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        productcard(),
        productcard(),
      ],
    );
  }

  Column productcard() {
    return Column(
      children: [
        Container(
            height: 190,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://cf.shopee.ph/file/6907c52b5698df501bf2fd83e803d6d2')))),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'U.S. Polo Asn.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            SizedBox(width: 40.0),
            Icon(Icons.favorite_border_outlined),
          ],
        ),
        const Text(
          'Men Colorblocked Sneakers',
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 13.0),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: const [
            // padding: EdgeInsets.all(20.0),
            Text(
              '₹ 1799',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            SizedBox(width: 5), // give it width
            Text(
              '₹ 1799',
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.lineThrough,
                  fontSize: 15.0),
            ),
            SizedBox(width: 5), // give it width
            Text(
              '(40% OFF)',
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
          ],
        )
      ],
    );
  }
}
