import 'package:andvance_exam_1/provider/provider.dart';
import 'package:andvance_exam_1/utils/routes/routes_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

late HomeProvider providerR;
late HomeProvider providerW;

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // providerR.getNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListView.builder(
                        itemCount: providerW.company.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              providerR.getNewsData();
                              Navigator.pushNamed(context, Routes.detail,
                                  arguments: index);
                            },
                            child: Text(
                              providerW.company[index]['name'],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://assets.upstox.com/content/assets/images/cms/202444/Tesla.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://akm-img-a-in.tosshub.com/businesstoday/images/story/202311/bv-acharya-3-768x520-sixteen_nine.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(height: 20),
                    Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://assets.mspimages.in/gear/wp-content/uploads/2022/07/Jio-HP-Laptop-Offer-1.jpg"),
                              fit: BoxFit.cover,
                            ))),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFw-k0cBhaLaChRqETpGqsRaEypCr6Zq27kItkEXgAEqKveJ1OxvOQwJUeIAdiYzcOTpk&usqp=CAU"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://spn-sta.spinny.com/blog/20220228141859/Honda-Logo.jpg?compress=true&quality=80&w=576&dpr=2.6"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://economictimes.indiatimes.com/thumb/msid-113275768,width-600,resizemode-4/bajaj-auto-share-price-live-updates-12-sep-2024.jpg?from=mdr"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
