
class Home extends StatefulWidget{
  @override
  _HomeState createState() {   return _HomeState();  }
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0a0321),
        title: Text(' BMI CALCULATOR '),
      )
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

          ],
        ),
      ),
    );
  }
}
