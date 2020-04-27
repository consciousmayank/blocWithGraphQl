import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttergrocery/model/user_data.dart';
import 'package:fluttergrocery/screens/home_screen/bloc/bloc.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Demo'),
        ),
        body: buildBody()
    );
  }

  Widget buildBody() {
    return BlocBuilder<HomepageBloc, HomepageState>(
      bloc: BlocProvider.of<HomepageBloc>(context),
      builder: (BuildContext context, HomepageState state) {

        if(state is HomePageLoadingState){
          return Container(
            child: Center(
              child: CircularProgressIndicator(
                semanticsLabel: "Loading ...",
              ),
            ),
          );
        }

        if(state is HomePageDataLoadSuccess){
          return ListView.builder(
            itemCount: state.results.length,
            itemBuilder: (BuildContext context, int index) =>
                ListTile(
                  leading: Text(state.results[index].emailId),
                  title: Text(state.results[index].name),
                  onTap: () {
                    print("Single User data ${state.results[index]}");
                  },
                ),
          );
        }


        if(state is HomePageDataLoadFail){
          return Text("${state.errors}");
        }


        return Container(
          child: Center(
            child: RaisedButton(
              child: Text('Get HomePage Data'),
              onPressed: (){
                BlocProvider.of<HomepageBloc>(context).add(FetchHomePageData());
              },
            ),
          ),
        );
      },
    );
  }
}
