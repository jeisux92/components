import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<StatefulWidget> {
  List<int> _numberList = [];
  int _lastItem = 0;
  bool _isLoading = false;
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _addFive();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[_createLoading()],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _createList() {
    return RefreshIndicator(
        child: ListView.builder(
          itemCount: _numberList.length,
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index) {
            // if (index == (_numberList.length - 1)) {
            //   setState(() {
            //     _isLoading = true;
            //   });
            //   Duration(seconds: 1);
            //   setState(() {
            //     _isLoading = false;
            //   });
            //   _numberList.addAll(List.generate(10, (int i) => index + i));
            // }
            return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              height: 300,
              image: NetworkImage(
                  'https://i.picsum.photos/id/${_numberList[index]}/500/400.jpg'),
            );
          },
        ),
        onRefresh: _getPage);
  }

  Future _getPage() async {
    final duration = Duration(seconds: 1);
    Timer(duration, () {
      setState(() {
        _numberList.clear();
        _lastItem++;
      });
      _addFive();
    });

    return Future.delayed(duration);
  }

  _addFive() {
    for (var i = 1; i < 10; i++) {
      setState(() {
        _lastItem++;
        _numberList.add(_lastItem++);
      });
    }
  }

  Future _fetchData() async {
    setState(() {
      _isLoading = true;
    });
    final duration = Duration(seconds: 2);
    return new Timer(duration, httpResponse);
  }

  void httpResponse() {
    setState(() {
      _isLoading = false;
    });
    _addFive();
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
  }

  Widget _createLoading() =>
      _isLoading ? CircularProgressIndicator() : Container();
}
