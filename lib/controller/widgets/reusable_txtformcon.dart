

import '../linker/linker.dart';

class MyTextFormCon extends StatelessWidget {
  double h;
  double w;
  double sprad;
  double blrad;
  String hinttxt;

   MyTextFormCon({super.key,required this.h,required this.w,
  required this.sprad,required this.blrad,required this.hinttxt});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: sprad,
            blurRadius: blrad,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(6.0),
      child: Row(

        children: [

          Expanded(

            child: TextFormField(
              decoration: InputDecoration(
                hintText:hinttxt,
              ),
            ),

          ),


          SizedBox(width: 8.0),
          IconButton(
            icon: Icon(Icons.sim_card_alert_outlined),
            onPressed: () {
              // Add your onPressed code here!
            }
          ),
          IconButton(
            icon: Icon(Icons.emoji_emotions_outlined),
            onPressed: () {
            }
          ),
          IconButton(
            icon: Icon(Icons.signal_cellular_alt_rounded),
            onPressed:() {
            }
          ),
          SizedBox(height: 200,)
        ],
      ),
    ).paddingOnly(left: 0);
  }
}
