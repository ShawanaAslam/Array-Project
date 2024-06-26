


import '../../../controller/linker/linker.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  //One Diemensional Array
  List name=[2,3,4,5];
  //Two Diemensional Array
  List <ModelClass> listname=[
    ModelClass(title: 'Asad Awan', subtitle: 'Hi',message:'3',time: '12 pm'),
    ModelClass(title: 'Rameen', subtitle: 'How are you?',message:'6',time: '12:30 pm'),
    ModelClass(title: 'Telenor', subtitle: '*572# offer milain or pain...',message:'1',time: '1 pm'),
    ModelClass(title: 'Nabia Rasheed', subtitle: 'right',message:'10',time: '2 pm'),
    ModelClass(title: 'Amara Asad', subtitle: 'hi naima',message:'9',time: '2 pm'),
    ModelClass(title: 'Ufone4G', subtitle: 'Ufone4G ki taraf se ap ko 1 GB 4G internet...,',message:'2',time: '4 pm'),
    ModelClass(title: 'Aiman', subtitle: 'ok',message:'1',time: '10 pm'),
    ModelClass(title: 'Rabia Munir', subtitle: 'yes',message:'7',time: '11 pm'),
    ModelClass(title: 'Leopards', subtitle: 'Your shipment from SAPPHIRE RETAIL LIMI is on...',message:'1',time: '11 pm'),
    ModelClass(title: 'All In One', subtitle: '6GB Internet, 1500 On-net mins aur 70 Off-net...',message:'3',time: '11:15 pm'),




  ];

  // List name1=[2];
  // List name2=[2];
  // List name3=[2];
  // List name4=[2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // One Diemensional Array
      // body: ListView.builder(
      //     itemCount: name.length,
      //     itemBuilder: (context,index){
      //
      //       return Card(
      //           color:Colors.greenAccent ,
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Center(child: Text(name[index].toString(),style:
      //           TextStyle(fontSize: 20),)),
      //         ),
      //--------------------------------------------------------------------

      // Two Diemensional aArray
appBar: AppBar(
  title: Text('Messages',style: TextStyle(fontSize: 18,
  fontWeight: FontWeight.w700),),
    centerTitle: false,
  leading:Icon(Icons.g_mobiledata),
         actions: [
           Icon(Icons.search),
           SizedBox(width: 15,),
           Icon(Icons.perm_contact_calendar_outlined),
           SizedBox(width: 15,)
         ],
),

    body: ListView.builder(
        itemCount: listname.length,
        itemBuilder :(context,index){
          String warda=listname[index].title.toString();
          String hi=listname[index].subtitle.toString();
        return  ListTile(
          onTap: (){
            Get.to(()=> ScreenTwo(title:hi, subtitle: warda));
             Get.snackbar(warda, hi);
          },

          title: Text(listname[index].title.toString()),
          subtitle: Text(listname[index].subtitle.toString()),
          leading: CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Icon(Icons.person,size: 35 ,color: index/4==0? Colors.black:Colors.white,)

          ),
           // backgroundImage: AssetImage(listname[index].path.toString(),),),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(listname[index].time.toString()),
              SizedBox(height: 5,),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.blue.shade900,
                child: Text(listname[index].message.toString(),
                style: TextStyle(color: Colors.white,fontSize: 10,),
              )
              )
            ],
          ),
        );
    }
    ),
             );
          }
  }

