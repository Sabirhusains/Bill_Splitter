import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/result_data.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.resultData});

  final ResultData resultData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              // child = 1 [Title]
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Result',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              // child = 2 [ Result information Card Widget]
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffbfadcc),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Equally Divided',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                '${resultData.equalDivided} ₹',
                                style: const TextStyle(
                                  color: Colors.white,
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Friends',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'Tax',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'Tip',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    resultData.friends,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '${resultData.tax} %',
                                    style: const TextStyle(
                                      color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '${resultData.tip} ₹',
                                    style: const TextStyle(
                                      color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // child = 3 [pay information ]
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.visible,
                        'Everybody should pay  =  ${resultData.equalDivided} ₹',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color(0xff896790),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // child = 4 [ Calculate Again Button ]
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffbfadcc)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 10)),
                ),
                child: const Text(
                  'Calculate Again ?',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),

            ],
          ),
        ),
      )),
    );
  }
}
