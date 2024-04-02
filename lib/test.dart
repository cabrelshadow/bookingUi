import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Location: Labuan Bajo, INA'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search bar or "Look for homestay" section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Look for homestay',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
              ),
            ),
            // Nearby hotels section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Nearby Hotels',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotelData.length,
                itemBuilder: (context, index) {
                  final hotel = hotelData[index];
                  return Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            hotel['imageUrl'],
                            height: 120,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            hotel['name'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          '\$${hotel['price']}/night',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Explore places section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Explore Places',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: placeData.length,
                itemBuilder: (context, index) {
                  final place = placeData[index];
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 16.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            place['imageUrl'],
                            height: 80,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            place['name'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> hotelData = [
{
'name': 'Paradise Resort',
'imageUrl': 'https://picsum.photos/id/1015/367/267',
'price': 480,
},
{
'name': 'Buntago',
'imageUrl': 'https://picsum.photos/id/1016/367/267',[index];
return Container(
width: 100,
margin: EdgeInsets.only(right: 16.0),
child: Column(
children: [
ClipRRect(
borderRadius: BorderRadius.circular(8.0),
child: Image.network(
place['imageUrl'],
height: 100,
width[index];
return Container(
width: 100,
margin: EdgeInsets.only(right: 16.0),
child: Column(
children: [
Image.asset(
place['imagePath'],
height: 80,
width: 100,
fit: Box[index];
return Container(
width: 100,
margin: EdgeInsets.only(right: 16.0),
child: Column(
children: [
ClipRRect(
borderRadius: BorderRadius.circular(8.0),
child: Image.network(
    : 100,
fit: BoxFit.cover,
),
),
Padding(
padding: const EdgeInsets.only(top: 8.0),
child: Text(
place['name'],
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 16,
fontFit.cover,
),
Padding(
padding: const EdgeInsets.only(top place['imageUrl'],
height: 100,
width: 100,
fit: BoxF: 8.0),
child: Text(
place['name'],
textAlign: TextAlign.center,
),
),
],
),
);
},
),
),
],
),
),
);
}
}
it.cover,
),
),
Text(
place['name'],
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.bold,
),
),
],
),
);
},
),
),Weight: FontWeight.bold,
),
),
),
],
),
);
},
),
),
],
),
),
);
}
}

List<Map<String,
// Placeholder data
final hotelData = [
{
'name': 'Paradise Resort',
'price': 480,
'imageUrl': 'https://picsum.photos/id/1015/150/120',
},
{
'name': 'Buntago',
'price': 118,
'imageUrl': dynamic>> hotelData = [

],
),
),
);
}
}

// Replace these with your actual data or API calls
final hotelData = [
{
'name': 'Paradise Resort',
'imageUrl': 'https://via.placeholder.com/150',
'price': 480,
},
{
'name  {
'name': 'Paradise Resort',
'imageUrl': 'https://picsum.photos/id/1015/367/200',
'price 'https://picsum.photos/id/1016/150/120',
},
{
'name': 'Sult Labuan Bajo',
'price': 38,
'imageUrl': 'https://picsum.photos/id/1018/150/120',
},
];

final placeData = [
{
'name': 'Bali',
'imagePath': 'assets/images/bali.png',
},
{
'name': 'Lab': 'Buntago',
'imageUrl': 'https://via.placeholder.com/150',
'price': 118,
},
{
'name': 'Sult Labuan Bajo',
'imageUrl': 'https://via.placeholder.com/150',
'price': 38,
},
];

final placeData = [
{
'name': 'Bali',
'imageUrl': 'https://via.placeholder.com/100',
},': 480,
},
{
'name': 'Buntago',
'imageUrl': 'https://picsum.photos/id/1016/367/200',
'price': 118,
},
{
'name': 'Sult Labuan Bajo',
'imageUrl': 'https://picsum.photos
{
'name': 'Labuan Bajo',
'imageUrl': 'https://via.placeholder.com/100',
},
{
'name': 'Lombok',
'imageUrl': 'https://via.placeholder.com/100',
},
];