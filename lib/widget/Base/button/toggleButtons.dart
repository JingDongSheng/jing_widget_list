import 'package:flutter/material.dart';

class ToggleButtonsWidget extends StatefulWidget {
  @override
  _ToggleButtonsWidgetState createState() => _ToggleButtonsWidgetState();
}

class _ToggleButtonsWidgetState extends State<ToggleButtonsWidget> {
  List<bool> allCanSelected = List.generate(3, (index) => false);
  List<bool> leastOneCanSelected = List.generate(3, (index) => false);
  List<bool> onlyOneCanSelected = List.generate(3, (index) => false);
  List<bool> leastOneMoreCanSelected = List.generate(3, (index) => false);
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//              this.constraints,           // 宽高最大最小限制
//              this.color,                 // 未选中颜色
//              this.selectedColor,         // 选中颜色
//              this.disabledColor,         // 不可选中颜色
//              this.fillColor,             // 填充颜色
//              this.focusColor,            // 有输入焦点时颜色
//              this.highlightColor,        // 选中时高亮颜色
//              this.hoverColor,            // 初始水波纹颜色
//              this.splashColor,           // 选中时水波纹颜色
//              this.focusNodes,            // 接受对应于每个切换按钮焦点列表
//              this.renderBorder = true,   // 是否绘制边框
//              this.borderColor,           // 未选中边框颜色
//              this.selectedBorderColor,   // 选中边框颜色
//              this.disabledBorderColor,   // 不可选中边框颜色
//              this.borderRadius,          // 边框圆角弧度
//              this.borderWidth,           // 边框宽度
              ToggleButtons(
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  setState(() {
                    allCanSelected[index] = !allCanSelected[index];
                  });
                },
                isSelected: allCanSelected,
              ),
              Text('可以同时选择多个按钮，也可以一个不选'),
              SizedBox(
                height: 40,
              ),
              ToggleButtons(
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < leastOneCanSelected.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        leastOneCanSelected[buttonIndex] = true;
                      } else {
                        leastOneCanSelected[buttonIndex] = false;
                      }
                    }
                  });
                },
                isSelected: leastOneCanSelected,
              ),
              Text('单选,选中不可取消'),
              SizedBox(
                height: 40,
              ),
              ToggleButtons(
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < onlyOneCanSelected.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        onlyOneCanSelected[buttonIndex] =
                            !onlyOneCanSelected[buttonIndex];
                      } else {
                        onlyOneCanSelected[buttonIndex] = false;
                      }
                    }
                  });
                },
                isSelected: onlyOneCanSelected,
              ),
              Text('单选,选中可取消'),
              SizedBox(
                height: 40,
              ),
              ToggleButtons(
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  leastOneMoreCanSelected.forEach((bool val) {
                    if (val) {
                      count++;
                    } else {
                      count--;
                    }
                  });

                  if (leastOneMoreCanSelected[index] && count < 2) return;

                  setState(() {
                    leastOneMoreCanSelected[index] =
                        !leastOneMoreCanSelected[index];
                  });
                },
                isSelected: leastOneMoreCanSelected,
              ),
              Text('可多选，至少选择一个不可以取消选中状态'),
            ],
          ),
        ),
      ),
    );
  }
}
