import 'package:flutter/widgets.dart';

main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      color: Color(0xFFFFFFFF),
      child: Counter(),
    ),
  ),
);


class Counter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CounterSate();

}

class _CounterSate extends State<Counter> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector( // используется как обычный виджет
        onTap: () { // одно из свойств GestureDetector
          // Этот метод будет вызван, когда дочерний элемент будет нажат
          setState(() {
            ++counter;
          });
        },
        child: Container( // нашей кнопкой будет контейнер
          decoration: BoxDecoration( // стилизуем контейнер
            shape: BoxShape.circle, // зададим ему круглую форму
            color: Color(0xFF17A2B8), // и покрасим его в синий
          ),
          width: 80.0,
          height: 80.0,
          child: Center(
            child: Text('$counter',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }

}