import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UrlLauncher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CupertinoButton(
              color: Colors.lightGreen,
              child: Text('跳外链'),
              onPressed: (){
                _launcherUrl('http://www.baidu.com');
              },
            ),
            CupertinoButton(
              color: Colors.lightGreen,
              child: Text('打电话'),
              onPressed: (){
                _launcherUrl('tel:13900000000');
              },
            ),
            CupertinoButton(
              color: Colors.lightGreen,
              child: Text('发短信'),
              onPressed: (){
                _launcherUrl('sms:13900000000');
              },
            ),
            CupertinoButton(
              color: Colors.lightGreen,
              child: Text('发邮件'),
              onPressed: (){
                //协议格式：mailto:<email address>?subject=<subject>&body=<body>
                _launcherUrl('mailto:superluo666@gmail.com?subject=Test&body=测试');
              },
            ),
            CupertinoButton(
              color: Colors.lightGreen,
              child: Text('打开微信'),
              onPressed: (){
                //这里如果要跳转到其他app需要在Manifest配置Scheme，
                //url位置写，scheme://
                //host可选添加，如果添加，需要写成 scheme://host
                //scheme配置的位置在application下的activity中配置
                /**
                 *  <intent-filter>
                      <action android:name="android.intent.action.VIEW"/>
                      <category android:name="android.intent.category.DEFAULT"/>
                      <category android:name="android.intent.category.BROWSABLE"/>
                      <data android:scheme="weixin"/>
                    </intent-filter>
                 */
                // "dynamictheme://" 打开App(dynamictheme://)
                // "dynamictheme://detail" 打开App跳转到详情页面
                // "dynamictheme://detail?name=flutter" 打开App跳转到详情页面带上参数

                _launcherUrl('weixin://');
              },
            ),
          ],
        ),
      ),
    );
  }

  _launcherUrl(String url) async{
    if(await canLaunch(url) != null){
      await launch(url);
    }
  }
}
