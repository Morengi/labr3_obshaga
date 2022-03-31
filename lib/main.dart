import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
     

    return MaterialApp(
      title: 'Общага',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Общежитие КубГАУ'),
        ),
        body:  SingleChildScrollView(
          child: Column(
            //mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/flag.jpg', fit:BoxFit.cover),
              
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisSize: MainAxisSize.max,
                children:
                [
                  const Padding(padding: EdgeInsets.only(left: 10,top: 75,right: 45)),
                  Column(
                  //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisSize: MainAxisSize.max,
                      children: const [
                        Text(
                            'Общежитие №20',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 14,
                            )
                          ),
                        Padding(padding: EdgeInsets.all(3)),
                          Text(
                            'Краснодар, ул.Калинина, 13',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.4,
                              fontSize: 12,
                            )
                          )
                      ],
                    ),
                    
                  const Spacer(),
                  Row
                  (
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: 
                      const [
                        Icon(
                          Icons.favorite, color: Colors.red,
                        ),
                        Text('28', style: TextStyle(color: Colors.black, fontSize: 15)),
                        Padding(padding: EdgeInsets.only(top:10,right:30)),
                      
                      ],
                  ),
                ],
              ),
                
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisSize: MainAxisSize.min,
                children:  [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                      Icon(
                        Icons.call, color: Colors.green
                      ),
                      Text('Позвонить', style: TextStyle(color: Colors.green,)),
                      SizedBox(width: 100,),
                      ]
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        
                        Icon(Icons.near_me, color:Colors.green),
                        Text('Маршрут',style: TextStyle(color: Colors.green,)),
                        SizedBox(width: 100,),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                      Icon(Icons.share, color: Colors.green,),
                      Text('Поделиться', style: TextStyle(color: Colors.green,)),
                      SizedBox(width: 100,),
                      ]
                    ),
                ],
              ),
                
              Padding(padding: EdgeInsets.only(top: 20)),
              
              Row(
                    //  
                children: const[
                  Padding(padding: EdgeInsets.only(left: 40)),

                        Flexible(
                          child:
                          Text('Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            
                        ),
                        )
                      ),
                  Padding(padding: EdgeInsets.only(right: 40)),


                  //
                ],
              )
            ],
          ),
          


        
        ) 
      ),
       theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      
    );
  
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     


      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
