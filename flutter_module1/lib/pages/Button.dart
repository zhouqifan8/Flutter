import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: MyButton(),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("普通按钮"),
                onPressed: () {},
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("有颜色按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("有阴影按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                //阴影
                elevation: 10,
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("圆角按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 10),
              RaisedButton.icon(
                  icon: Icon(Icons.search),
                  label: Text("图标按钮"),
                  onPressed: () {}),
              SizedBox(width: 10),
              FlatButton(
                child: Text("扁平按钮"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: 300,
            height: 40,
            child: RaisedButton(
              child: Text("设置宽高"),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 10,
              onPressed: () {},
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text("自适应充满"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 40,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text("自适应"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {},
                ),
              )),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80,
                child: RaisedButton(
                  child: Text("圆形按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  //长按颜色
                  splashColor: Colors.red,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          OutlineButton(
              child: Text("边框按钮"),
//              color: Colors.red,//没有效果
              onPressed: () {}),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text("登录"),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                  RaisedButton(
                    child: Text("注册"),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                  MyButton1(
                      text: '自定义按钮', width: 100, height: 30, pressed: () {})
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

//自定义按钮组件
class MyButton1 extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;

  const MyButton1(
      {this.text = '', this.pressed = null, this.width = 80, this.height = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(
          child: Text(this.text),
          color: Colors.blue,
          textColor: Colors.red,
          onPressed: this.pressed),
    );
  }
}
