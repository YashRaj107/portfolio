import 'package:flutter/material.dart';
import 'formnew.dart';

import 'card.dart';

List<BusinessCardHolder> businessCardHolderList = [
  BusinessCardHolder(
    name: 'Saral Jain',
    position: 'CEO',
    company: 'Rachail Tech labs',
    icon: IconButton(
      onPressed: () {},
      icon: Icon(Icons.people),
    ),
    page: card(
      name: 'Saral Jain',
      position: 'CEO',
      company: 'Rachail Tech labs',
      contact: '8319548598',
      email: 'rachialtech@gmail.com',
      location: 'Indore ,india ',
      image: 'saral.jpeg',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      linkedin:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      instagram:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    ),
  ),
  BusinessCardHolder(
    name: 'Yash Kumar Raj',
    position: 'Director',
    company: 'Yash Tech',
    icon: IconButton(onPressed: () {}, icon: Icon(Icons.people)),
    page: card(
      name: 'yash',
      position: 'CEO',
      company: 'Yash labs',
      contact: '8319114450',
      email: 'yashkraj381@gamil,com',
      location: 'Indore,India',
      image: 'yash.jpg',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      linkedin:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      instagram:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    ),
  ),
  BusinessCardHolder(
    name: 'Mike Tyson',
    position: 'Senior Boxer',
    company: 'WWF',
    icon: IconButton(onPressed: () {}, icon: Icon(Icons.people)),
    page: card(
      name: 'Mike Tyson',
      position: 'Senior Boxer',
      company: 'WWF',
      contact: '8319114450',
      email: 'Boxer@gamil,com',
      location: 'Mt.Abu,India',
      image: 'mike.jpg',
      linkedin:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      instagram:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    ),
  ),
  BusinessCardHolder(
    name: 'Vision',
    position: 'Mhabali Avenger',
    company: 'Avengers',
    icon: IconButton(onPressed: () {}, icon: Icon(Icons.people)),
    page: card(
      name: 'Vision',
      position: 'Mahabali Avenger',
      company: 'Avengers',
      contact: '831919898',
      email: 'vision@stark.com',
      location: 'Titan,Jupiters moon',
      image: 'vision.jpg',
      instagram:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      linkedin:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    ),
  ),
  BusinessCardHolder(
    name: 'Apna Bhidu',
    position: 'Senior Actor',
    company: 'Bollywood',
    icon: IconButton(onPressed: () {}, icon: Icon(Icons.people)),
    page: card(
      name: 'Apna Bhidu',
      position: 'Senior Actor',
      company: 'Bollywood',
      contact: '831919898',
      email: 'bhidu@apna.com',
      location: 'Mt.Fuji,India',
      image: 'bhidu.jpg',
      linkedin:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      instagram:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    ),
  ),
];

class BusinessCardHolder extends StatefulWidget {
  BusinessCardHolder(
      {Key? key,
      required this.name,
      required this.position,
      required this.company,
      required this.icon,
      required this.page})
      : super(key: key);
  final String name;
  final String position;
  final String company;
  final IconButton icon;
  final Widget page;

  @override
  State<BusinessCardHolder> createState() => _BusinessCardHolderState();
}

class _BusinessCardHolderState extends State<BusinessCardHolder> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => widget.page));
      },
      leading: IconButton(
        onPressed: () {},
        icon: widget.icon,
        iconSize: 40,
      ),
      title: Text(
        widget.name,
        style: TextStyle(fontSize: 25),
      ),
      subtitle: Text(
        '$widget.position,$widget.company',
        style: TextStyle(fontSize: 18),
      ),
      trailing: IconButton(
          onPressed: () {
            businessCardHolderList.remove(BusinessCardHolder);
          },
          icon: Icon(Icons.delete)),
    );
  }
}
