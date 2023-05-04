import 'package:delivery/pages/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _cubit = HomeCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        // actions: [

        // ],
      ),
      drawer:
          //  BlocBuilder<HomeCubit, HomeState>(
          //   bloc: _cubit,
          //   builder: (final _, final state) {
          //     return
          Drawer(
        child: SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                padding: EdgeInsets.symmetric(
                  horizontal: 150,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('data'),
                  ],
                ),
              ),
              ExpansionTile(
                title: Text('Teste'),
                leading: Icon(Icons.ac_unit_rounded),
                onExpansionChanged: (final value) {
                  Navigator.pushNamed(
                    context,
                    '/promocoes',
                  );
                },
              ),
            ],
          ),
        ),
        // );
        //   },
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
