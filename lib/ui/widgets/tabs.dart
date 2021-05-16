import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_clone/bloc/authentication/authentication_bloc.dart';
import 'package:tinder_clone/ui/constants.dart';
import 'package:tinder_clone/ui/pages/matches.dart';
import 'package:tinder_clone/ui/pages/messages.dart';
import 'package:tinder_clone/ui/pages/search.dart';

class Tabs extends StatelessWidget {
  final userId;

  const Tabs({this.userId});
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Search(userId: userId),
      Matches(
        userId: userId,
      ),
      Messages(userId: userId),
    ];

    return Theme(
      data: ThemeData(
        primaryColor: backgroundColour,
        accentColor: Colors.white,
      ),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Chill',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () {
                    BlocProvider.of<AuthenticationBloc>(context)
                        .add(LoggedOut());
                  })
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabBar(tabs: [
                      Tab(icon: Icon(Icons.search)),
                      Tab(icon: Icon(Icons.people)),
                      Tab(icon: Icon(Icons.message))
                    ])
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: pages,
          ),
        ),
      ),
    );
  }
}
