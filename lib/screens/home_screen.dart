import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ISU Starter'), 
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              child: Icon(Iconsax.setting_2),
              onTap: () => GoRouter.of(context).push('/settings'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              child: Icon(Iconsax.user),
              onTap: () => GoRouter.of(context).push('/profile'),
            ),
          ),
        ],
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FadeIn(
                // duration: Duration(milliseconds: 500),
                child: Container(
                  margin: EdgeInsets.all(8),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: FadeInLeft(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FadeInDown(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FadeInRight(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: ElasticIn(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: BounceInDown(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: BounceInRight(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: SlideInLeft(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SlideInDown(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SlideInRight(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: FlipInX(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlipInY(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ZoomIn(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: JelloIn(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Bounce(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SpinPerfect(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: JelloIn(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Dance(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Roulette(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
