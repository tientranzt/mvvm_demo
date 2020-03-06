import 'package:flutter/material.dart';
import 'package:mvvm/src/app/pages/change_color/color_viewmodel.dart';
import 'package:mvvm/src/app/core/baseViewModel.dart';

class ColorUI extends StatefulWidget {
  @override
  _ColorUIState createState() => _ColorUIState();
}

class _ColorUIState extends State<ColorUI> {
  var viewModel = ColorViewModel();

  Widget colorContainer(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }

  Widget changeButton() {
    return FlatButton(
      color: Colors.green,
      onPressed: () {
        viewModel.changeColor();
      },
      child: Text("Change color"),
    );
  }

  @override
  Widget build(BuildContext context) {
    viewModel.context = context;
    return ViewModelProvider(
      viewmodel: viewModel,
      child: StreamBuilder<Object>(
        stream: viewModel.stream,
        builder: (context, _) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                colorContainer(viewModel.color),
                changeButton()
              ],
            ),
          );
        },
      ),
    );
  }


}
