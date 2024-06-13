import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularios en Flutter', style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value){
                  print('valor: $value');
                },
                validator: (value) {
                  if(value == null) return 'Este campo es necesario';
                  return value.length < 3 ? 'Mínimo 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'NOMBRE',
                  helperText: 'Solo letras no números',
                  counterText: '3 Caracteres',
                  suffixIcon: Icon(Icons.group_add_outlined),
                  //prefixIcon: Icon(Icons.supervised_user_circle),
                  icon: Icon(Icons.add_home_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  )
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value){
                  print('valor: $value');
                },
                validator: (value) {
                  if(value == null) return 'Este campo es necesario';
                  return value.length < 3 ? 'Mínimo 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Apellido del usuario',
                  labelText: 'APELLIDO',
                  helperText: 'Solo letras no números',
                  counterText: '3 Caracteres',
                  suffixIcon: Icon(Icons.group_add_outlined),
                  //prefixIcon: Icon(Icons.supervised_user_circle),
                  icon: Icon(Icons.add_home_sharp)
                ),
              )              
            ],
          ),
        ),
      )
    );
  }
}