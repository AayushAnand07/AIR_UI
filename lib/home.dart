import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/listTileWidget.dart';
import 'Users.dart';
import 'Widgets/DialogueBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        //appBar: AppBar(backgroundColor: Colors.white, title: const Text('App Bar'), leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 20, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Material(
                        elevation: 5,
                        child: CupertinoTextField(
                          prefix: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.search),
                          ),
                          suffix: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                showCustomDialog(context, users[0].avatar!, users[0].name!, users[0].email!);
                              },
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(users[0].avatar!),
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          placeholder: 'Flash',
                        ),
                      )),
                ),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return ListTileWidget(
                        name: user.name!,
                        url: user.avatar!,
                        email: user.email!,
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
