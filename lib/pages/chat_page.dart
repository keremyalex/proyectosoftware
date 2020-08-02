import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  void response(query) async {
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: 'assets/credential/messenger-bot.json')
            .build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.spanish);
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    setState(() {
      messages.insert(0, {
        "data": 0,
        "message": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
      });
    });
  }

  final messageInsert = TextEditingController();
  List messages = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asistente Virtual'),
        backgroundColor: Colors.orange[700],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.all(10.0),
                  itemCount: messages.length,
                  itemBuilder: (context, index) => messages[index]['data'] == 0
                      ? Text(messages[index]["message"].toString())
                      : Text(
                          messages[index]["message"].toString(),
                          textAlign: TextAlign.right,
                        )),
            ),
            Divider(
              height: 3.0,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                      child: TextField(
                    controller: messageInsert,
                    decoration: InputDecoration(
                      hintText: 'Escribir tu mensaje',
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          if (messageInsert.text.isEmpty) {
                            print('Mensaje Vacio');
                          } else {
                            setState(() {
                              messages.insert(0,
                                  {"data": 1, "message": messageInsert.text});
                            });

                            response(messageInsert.text);
                            messageInsert.clear();
                          }
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
