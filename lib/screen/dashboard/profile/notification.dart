import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                    padding: const EdgeInsets.all(8).copyWith(left: 0),
                    child: const Icon(Icons.arrow_back_ios)),
              ),
              black34Text('Notification',),
              Expanded(
                child: FutureBuilder<List<NotificationData>>(
                  future: fetchData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(child: Text('No data available.'));
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          final notificationData = snapshot.data![index];
                          return Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  bottom: 20,
                                ),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                          notificationData.image,
                                        ),
                                      ),
          
                                    ),
                                    Expanded(
                                        flex: 6,
                                        child: Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: blackLight16Text(notificationData.msg,))
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Align(
                                            alignment: Alignment.topCenter,
                                            child: blackLight12Text(notificationData.time,))
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<List<NotificationData>> fetchData() async {
  await Future.delayed(const Duration(seconds: 0)); // delay

  return [
    NotificationData(msg: 'Apple stocks just increased Check it out now.', time: '15min ago',image: 'assets/images/notification.png'),
    NotificationData(msg: 'Check out today’s best inves-tor. You’ll learn from him', time: '3min ago',image: 'assets/images/notification.png'),
    NotificationData(msg: 'Where do you see yourself in the next ages.', time: '30secs ago',image: 'assets/images/notification.png'),
  ];
}

class NotificationData {
  final String msg;
  final String time;
  final String image;

  NotificationData({
    required this.msg,
    required this.time,
    required this.image
  });
}
