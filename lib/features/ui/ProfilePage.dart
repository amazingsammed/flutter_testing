import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   body: Profile_v2(),
    );
  }
}

class Profile_v2 extends StatelessWidget {
  const Profile_v2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListView(
        children: [
          ListTile(
            title: Text('Profile'),
            subtitle: Text('Update your profile and personal details here'),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(12),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.green),
                  child: Icon(Icons.image),
                ),
                SizedBox(width: 15,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Text("Sammed Twumasi 2"),
                   Text("Manager" ,style: TextStyle(color: Colors.black54),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          const Wrap(
            children: [
              _InfoTiles(
                title: "Sammed@gmail.com",
                subtitle: 'Email',
                icon: Icons.email,
              ),
              _InfoTiles(
                title: "Sammed@gmail.com",
                subtitle: 'phone',
                icon: Icons.phone,
              ),
              _InfoTiles(
                title: "Asafo",
                subtitle: 'Location',
                icon: Icons.location_on,
              ),
              _InfoTiles(
                title: "ABCD",
                subtitle: 'Current Store',
                icon: Icons.store,
              ),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ConstrainedBox(constraints: BoxConstraints(maxWidth: 300),

                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ))
                      ),
                      onPressed: (){}, child: Text('Update'))),
            ],
          )

        ],
      ),
    );

  }
}

class _InfoTiles extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const _InfoTiles({
    super.key, required this.title, required this.subtitle, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 350,
      ),
      child: Card(

        child: ListTile(
          leading: Icon(icon),
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}

