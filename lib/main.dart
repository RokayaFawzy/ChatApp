import 'package:chatapp/screens/chat_page.dart';
import 'package:chatapp/screens/cubits/cubit/register_cubit/cubit/chat_cubit.dart';
import 'package:chatapp/screens/cubits/cubit/register_cubit/register_cubit.dart';
import 'package:chatapp/screens/cubits/login_cubit/login_cubit.dart';
import 'package:chatapp/screens/login_page.dart';
import 'package:chatapp/screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> LoginCubit()),
         BlocProvider(create: (context)=> RegisterCubit()),
         BlocProvider(create: (context)=> ChatCubit()),

      ],
      child: MaterialApp(
        routes: {
          LoginPage.id: (context) => LoginPage(),
          RegisterPage.id: (context) => RegisterPage(),
          ChatPage.id: (context) => ChatPage(),
        },
        initialRoute: LoginPage.id,
      ),
    );
  }
}
