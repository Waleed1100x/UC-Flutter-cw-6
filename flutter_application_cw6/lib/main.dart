import 'package:flutter/material.dart';
import 'package:flutter_application_cw6/Buildings/BuildingScreen.dart';
import 'Building.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var buildings = [
    Building(
        name: 'أبراج الكويت',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
        description:
            'أبراج الكويت هي ثلاثة أبراج على ساحل الخليج العربي في مدينة الكويت في منطقة تسمى رأس عجوزة، تقع على شاطئ الخليج العربي مقابل قصر دسمان في منطقة شرق بمدينة الكويت.'),
    Building(
        name: 'برج التحرير',
        imgURL:
         'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
        description:
            'برج التحرير هو برج للاتصالات يقع في مدينة الكويت بارتفاع 372 متر كثاني أعلى مبنى في الكويت بعد برج الحمراء، ويحتل المركز الثالث عشر بين أطول أبراج العالم، ويشغل مساحة تبلغ 21 ألف متر مربع، ويعد أهم المعالم في دولة الكويت، ويستخدم البرج كبرج للاتصالات حيث يعتبر من أهم المرافق التابعة لوزارة المواصلات في الكويت . أنتهي من بناءه عام 1993 وافتتح في 10 مارس 1996، حيث توقف بناؤه أثناء الاحتلال العراقي للكويت'),
    Building(
        name: 'المسجد الكبير',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
        description:
            'مسجد الدولة الكبير هو مسجد يقع في مدينة الكويت قرب شاطئ الخليج العربي أفتتح عام 1986م بناء على توجيهات من الشيخ جابر الأحمد الصباح. بدأ العمل في بنائه عام 1979 واكتمل عام 1986 وبلغت كلفة إنجازه 14 مليون دينار كويتي وساهم في بنائه خمسون مهندسا وأربعمائة وخمسون عاملا. صمم المسجد المهندس المعماري محمد صالح مكية واختار تصميمه على الطراز الأندلسي الفاخر وتبلغ مساحة المسجد 45 ألف مترا مربعا، منها 25 ألف مترا مربعا مبنية، و20 ألف مترا مربعا مكشوفة تشكل حدائق وممرات المسجد الخارجية.'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: ListView.builder(
          itemCount: buildings.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 6,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Buildingscreen(
                          building: buildings[index],
                        ),
                      ));
                },
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      buildings[index].imgURL,
                      width: 150,
                      height: 150,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        buildings[index].name,
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Buildingscreen(
                                building: buildings[index],
                              ),
                            ));
                      },
                      icon: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
