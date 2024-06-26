


import '../../../controller/linker/linker.dart';

class ScreenTwo extends StatefulWidget {
  String title;
  String subtitle;
   ScreenTwo({super.key,required this.title,required this.subtitle});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}
class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {

    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(widget.title,style: TextStyle(fontSize: 18,
        ),),
                SizedBox(width: 15,)
              ],
            ),
          SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 30,),
              Icon(Icons.add_circle_outline),
              SizedBox(width: 20,),
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 20,),

              MyTextFormCon(h: 50, w: w*0.76,
                  sprad: 5, blrad: 7,
                  hinttxt: 'Enter text here')


            ],
          )
        ],
      ),
    );
  }
}
