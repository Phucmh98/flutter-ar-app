import 'package:ar_app/arview_for_3dobjects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> models3dList = [
    {
      'model3dUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/models3d//arm_chair__furniture.glb',
      'photoUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/images//Arm%20chair.png',
      'name': 'Arm Chair',
    },
    {
      'model3dUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/models3d//blossom_sofa_by_modenese.glb',
      'photoUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/images//Blossom%20sofa.png',
      'name': 'Blossom Sofa',
    },
    {
      'model3dUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/models3d//bookcase.glb',
      'photoUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/images//Bookcase.png',
      'name': 'Bookcase',
    },
    {
      'model3dUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/models3d//living_room_sofa__furniture.glb',
      'photoUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/images//Living%20room%20sofa.png',
      'name': 'Living Room Sofa',
    },
    {
      'model3dUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/models3d//modern_wooden_wardrobe.glb',
      'photoUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/images//Modern%20Wooden%20Wardrobe.png',
      'name': 'Modern Wooden Wardrobe',
    },
    {
      'model3dUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/models3d//realistic_bed_3d_model.glb',
      'photoUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/images//Realistic%20Bed%20.png',
      'name': 'Realistic Bed',
    },
    {
      'model3dUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/models3d//round_table_furniture_model.glb',
      'photoUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/images//Round%20Table%20Furniture%20Model.png',
      'name': '',
    },
    {
      'model3dUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/models3d//table___school_office_-_7_mb.glb',
      'photoUrl':
          'https://iztrvqjozapakcphgiyb.supabase.co/storage/v1/object/public/images//Table%20School%20office%20.png',
      'name': 'Table School Office',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AR Based Shopping App',
          style: TextStyle(letterSpacing: 3, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(21),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 253,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZnVybml0dXJlfGVufDB8fDB8fHww',
                    ),
                    fit: BoxFit.cover,
                  )),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "New Year's Sale",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 3),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 9,
              mainAxisSpacing: 9,
              children: models3dList.map((each3dItem) {
                return Card(
                  elevation: 0,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        image: DecorationImage(
                          image: NetworkImage(each3dItem['photoUrl']),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Transform.translate(
                        offset: const Offset(0, 60),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 33,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 33,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (c) => ArViewFor3dObjects(
                                                  name: each3dItem['name'],
                                                  model3dUrl: each3dItem['model3dUrl'],
                                                )));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.phone_android_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                );
              }).toList(),
            ))
          ],
        ),
      )),
    );
  }
}
