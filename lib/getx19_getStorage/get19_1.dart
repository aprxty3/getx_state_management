import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx19_getStorage/%20controller/auth.dart';
import 'package:getx_state_management/getx19_getStorage/%20controller/login_controller.dart';

class Get19_1 extends StatelessWidget {
  final c = Get.find<LoginC>();
  final auth = Get.find<AuthC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: c.emailC,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => TextField(
                  controller: c.passwordC,
                  autocorrect: false,
                  obscureText: c.hidden.value,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => c.hidden.toggle(),
                      icon: c.hidden.isTrue
                          ? Icon(
                              Icons.remove_red_eye,
                            )
                          : Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(() => CheckboxListTile(
                    value: c.rememberMe.value,
                    onChanged: (value) => c.rememberMe.toggle(),
                    title: Text('Remember Me'),
                    controlAffinity: ListTileControlAffinity.leading,
                  )),
              ElevatedButton(
                onPressed: () => auth.login(
                  c.emailC.text,
                  c.passwordC.text,
                  c.rememberMe.value,
                ),
                child: Text('LOGIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
