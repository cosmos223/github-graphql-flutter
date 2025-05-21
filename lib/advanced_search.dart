import 'package:flutter/material.dart';
import 'package:github_graphql/advanced_search_result.dart';

class AdvancedSearchPage extends StatefulWidget {
  const AdvancedSearchPage({super.key});

  @override
  State<AdvancedSearchPage> createState() => _AdvancedSearchPageState();
}

class _AdvancedSearchPageState extends State<AdvancedSearchPage> {

  List<String> query = [];

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final _starController = TextEditingController();
    final _forkController = TextEditingController();
    final Map<String, String> numSelect = {"より大きい": ">", "以上": ">=", "と同じ": "", "以下": "<=", "未満": "<"};
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
        title: Text("Advanced Search"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: _formKey,
          child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Star'),
                  keyboardType: TextInputType.number,
                  controller: _starController,
                ),),
                Flexible(child: DropdownButtonFormField<String>(
                  items: numSelect.entries.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(value: e.value, child: Text(e.key));
                  }).toList(),
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null && _starController.text.isNotEmpty) {
                      return "選択してください";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    if (_starController.text.isNotEmpty) {
                      query.add("stars:${value!}${_starController.text}");
                    }
                  },
                ),),
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Language'),
              keyboardType: TextInputType.text,
              onSaved: (value) {
                if (value != null && value.isNotEmpty) {
                  query.add("language:$value");
                }
              },
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Fork'),
                  keyboardType: TextInputType.number,
                  controller: _forkController,
                ),),
                Flexible(child: DropdownButtonFormField<String>(
                  items: numSelect.entries.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(value: e.value, child: Text(e.key));
                  }).toList(),
                  onChanged: (value) {},
                  isDense: true,
                  validator: (value) {
                    if (value == null && _forkController.text.isNotEmpty) {
                      return "選択してください";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    if (_forkController.text.isNotEmpty) {
                      query.add("forks:${value!}${_forkController.text}");
                    }
                  },
                ),),
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'User'),
              keyboardType: TextInputType.text,
                onSaved: (value) {
                  if (value != null && value.isNotEmpty) {
                    query.add("user:$value");
                  }
                }
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Organization'),
              keyboardType: TextInputType.text,
                onSaved: (value) {
                  if (value != null && value.isNotEmpty) {
                    query.add("org:$value");
                  }
                }
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Name'),
              keyboardType: TextInputType.text,
                onSaved: (value) {
                  if (value != null && value.isNotEmpty) {
                    query.add("in:name $value");
                  }
                }
            ),
            ElevatedButton(
                onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    query.clear();
                    _formKey.currentState?.save();
                    if (query.isEmpty) {
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: const Text('Error'),
                          content: Text('Please enter at least one.'),
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
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AdvancedSearchResultPage(query: query),
                        ),
                      );
                    }
                  }
                },
                child: Text("Search")
            )
          ],
        ),
        ),
      ),
    );
  }
}