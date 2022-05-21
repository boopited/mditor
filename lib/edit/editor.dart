import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class Editor extends StatefulWidget {
  const Editor({Key? key}) : super(key: key);

  static const routeName = '/edit';

  GenerateAppTitle get onGenerateTitle => (context) => S.of(context).add;

  @override
  State<StatefulWidget> createState() {
    return _EditorState();
  }
}

class _EditorState extends State<Editor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.onGenerateTitle(context)),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.preview,
                  size: 26.0,
                ),
              ),
            )
          ],
        ),
        body: TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter notes',
          ),
          maxLines: 99999,
          scrollPadding: const EdgeInsets.all(20.0),
          keyboardType: TextInputType.multiline,
          autofocus: true,
          onChanged: (text) {},
        ));
  }
}
