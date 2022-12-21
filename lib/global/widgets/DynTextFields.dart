import 'package:flutter/material.dart';



class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  static List<String> friendsList = [];

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text('Dynamic TextFormFields'),),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // name textfield
              Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your name'
                  ),
                  validator: (v){
                    if(v!.trim().isEmpty) return 'Please enter something';
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20,),
              const Text('Add Friends', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
              ..._getFriends(),
              const SizedBox(height: 40,),
              MaterialButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                  }
                },
                // ignore: sort_child_properties_last
                child: const Text('Submit'),
                color: Colors.green,
              ),

            ],
          ),
        ),
      ),
      
    );
  }

  /// get firends text-fields
  List<Widget> _getFriends(){
    List<Widget> friendsTextFields = [];
    for(int i=1; i<friendsList.length; i++){
      friendsTextFields.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Expanded(child: FriendTextFields(i)),
              const SizedBox(width: 16,),
              // we need add button at last friends row
              _addRemoveButton(i == friendsList.length-1, i),
            ],
          ),
        )
      );
    }
    return friendsTextFields;
  }

  /// add / remove button
  Widget _addRemoveButton(bool add, int index){
    print(friendsList);
    
    return InkWell(
      onTap: (){
        
        if(add){
          // add new text-fields at the top of all friends textfields
          friendsList.insert(0, " ");
        }
        else {
          friendsList.removeAt(index);
        }
        setState((){});
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: (add) ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon((add) ? Icons.add : Icons.remove, color: Colors.white,),
      ),
    );
  }


}

class FriendTextFields extends StatefulWidget {
  final int index;
  const FriendTextFields(this.index, {super.key});
  @override
  // ignore: library_private_types_in_public_api
  _FriendTextFieldsState createState() => _FriendTextFieldsState();
}

class _FriendTextFieldsState extends State<FriendTextFields> {
  TextEditingController _nameController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _nameController.text = _MyFormState.friendsList[widget.index];
    });

    return TextFormField(
      controller: _nameController,
      onChanged: (v) => _MyFormState.friendsList[widget.index] = v,
      decoration: const InputDecoration(
        hintText: 'Enter your friend\'s name'
      ),
      validator: (v){
        if(v!.trim().isEmpty) return 'Please enter something';
        return null;
      },
    );
  }
}