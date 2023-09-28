import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basicapp2/presenter/controller/login_list_controller.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Login'),
        ),
        body: SingleChildScrollView(
        child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(16),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        'Login',
                        style:TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        validator: controller.emailvalidator,
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (value) {
                          controller.email = value! as RxString;
                        },
                      ),
                        // EL OTRO
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        validator: controller.passwordValidator,
                        obscureText: true,
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (value){
                          controller.password = value! as RxString;
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: MaterialButton(
                          color: Colors.cyanAccent,
                          onPressed: (){} ,
                          child: Text('Login'),
                        )
                      ),
                    ],
                  ),
                ),
                )
              ],
            )
          ),
        ),
    );
        //Center(child: Text(Get.find<LoginPageController>().title.value)));

  }
}