import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

//https://www.jianshu.com/p/68596599750d
//使用步骤：
//1.新建一个数据共享类，也可以是基本数据类型，里面申明需要共享的数据
//2.新建一个枚举用于消息发送与区分
//3.申明一个方法用于处理数据更新逻辑与新的数据返回
//4.申明Store类，将步骤4的方法放进去
//5.在需要共享数据的地方申明StoreProvider跟布局，绑定Store类
//6.使用StoreConnector类或StoreBuilder处理数据逻辑与Widget交互逻辑

enum Action { Increment }

//步骤1的数据共享类是count,一个基本数据类型
//步骤3，处理数据的更新逻辑，此处是做加一操作，注意需要把新的类型返回
int reducer(int count, action) {
  if (action == Action.Increment) {
    return count + 1;
  }
  return count;
}

class ReduxWidget extends StatefulWidget {
  @override
  _ReduxWidgetState createState() => _ReduxWidgetState();
}

class _ReduxWidgetState extends State<ReduxWidget> {
  final store = Store<int>(reducer, initialState: 0);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store, //绑定store
      child: Scaffold(
        appBar: AppBar(
          title: Text("flutterRedux"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You have pushed the button this many times:"),
              //当需要使用到共享数据的时候使用StoreConnector来获取数据
              StoreConnector<int, String>(builder: (context, value) {
                return Text(value, style: Theme.of(context).textTheme.displayLarge);
              }, converter: (Store store) {
                return store.state.toString();
              })
            ],
          ),
        ),
        floatingActionButton: StoreConnector<int, VoidCallback>(
          converter: (Store store) {
            return () => store.dispatch(Action.Increment); //发送数据
          },
          builder: (BuildContext context, VoidCallback callback) {
            return FloatingActionButton(
                onPressed: callback, child: Icon(Icons.add));
          },
        ),
      ),
    );
  }
}
