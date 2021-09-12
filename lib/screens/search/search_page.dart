import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/data/car_list.dart';
import 'package:rent_car/models/transport_model.dart';

class SearchPage extends StatefulWidget {
  String? searchingItem;

  SearchPage({Key? key, this.searchingItem}) : super(key: key);
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Transport>? _transportList;
  String? _searchingItem;
  Size? _size;

  @override
  Widget build(BuildContext context) {
    _searchingItem = widget.searchingItem.toString();
    _transportList = _getTransports();
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(_searchingItem.toString()),
      ),
      body: _getBody(),
    );
  }

  _getBody() =>
      Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _searchItem(),
              _getResultList(),
            ],
          ),
        ),
      );

  _searchItem() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: TextFormField(
      initialValue: _searchingItem.toString(),
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none),
        fillColor: Colors.grey[300],
        filled: true,
        hintText: "What transport do you need?",
        prefixIcon:
        const Icon(CupertinoIcons.search, color: Colors.grey),
        contentPadding: EdgeInsets.zero,
      ),
      onFieldSubmitted: (value) {
        setState(() {
          _searchingItem = value;
          print('_SearchPageState._searchItem $value');
            });
      },

    ),
  );

  _getEmpty() => Container(

  );

  _getResultList() =>
      Container(
        height: _size!.height * 0.8,
        child: ListView.builder(
            itemCount: _transportList!.length,
            itemBuilder: (context, index) {
              Transport transport = _transportList![index];
              print('_SearchPageState._getResultList ${transport.name}');
              return _setTransportInfoLayout(transport);
            }),
      );

  _setTransportInfoLayout(Transport transport) =>
      Card(
        child: ListTile(
          leading: Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(transport.imageUrl))
            ),

          ),
          title: Text(transport.name, style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("\$${transport.pricePerDay} per day"),
        ),
      );

  List<Transport> _getTransports() {
    List<Transport> transports = [];

    for (Transport transport in carList) {
      if (transport.name.toLowerCase().contains(
          widget.searchingItem.toString().toLowerCase())) {
        transports.add(transport);
      }
    }
    return transports;
  }
}
