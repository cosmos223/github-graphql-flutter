import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_graphql/GraphQL/CreateIssue.graphql.dart';

class CreateIssuePage extends HookWidget {
  CreateIssuePage(this.id, {super.key});
  String id;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    String title = "";
    String? body;

    final mutation = useMutation$CreateIssue(); // ← useMutationはここで呼び出す必要あり
    final runMutation = mutation.runMutation;

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Create New Issue"),
        actions: <Widget>[
          IconButton(
            icon: const Text('Create'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Process data.
                _formKey.currentState?.save();

                print(title);
                print(body);

                runMutation(
                    Variables$Mutation$CreateIssue(
                      repositoryId: id,
                      title: title,
                      body: body,
                    )
                );

                final result = mutation.result;
                if (!result.hasException) {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: const Text('Success'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: const Text('OK'))
                      ],
                    );
                  });
                } else {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: const Text('Error'),
                      content: Text(result.exception.toString()),
                      actions: [
                        TextButton(
                            onPressed: () {
                              //Navigator.of(context).pop();
                              Navigator.pop(context);
                            },
                            child: const Text('OK'))
                      ],
                    );
                  });
                }
              }
            },
          ),
        ],
        actionsPadding: EdgeInsets.all(8),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextFormField(
                    onSaved: (value) => title = value!,
                    decoration: const InputDecoration(labelText: 'Title', floatingLabelBehavior: FloatingLabelBehavior.always),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter title';
                      }
                      return null;
                      },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextFormField(
                    onSaved: (value) => body = value,
                    decoration: const InputDecoration(labelText: 'Body', border: OutlineInputBorder(), floatingLabelBehavior: FloatingLabelBehavior.always,),
                    keyboardType: TextInputType.multiline,
                    minLines: 6,
                    maxLines: null,
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}