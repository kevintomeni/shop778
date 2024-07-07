import 'package:flutter/material.dart';

class OffreLimite extends StatelessWidget {
  final String _newprice; // name of the
  final String _oldprice; // name of the
  final String _reduction; // description of thel Strin
  final String _image; // image of the
  final String _vendu;
  final String _note;
  const OffreLimite({
    required image,
    required newprice,
    required oldprice,
    required vendu,
    required reduction,
    required note,
  })  : _image = image,
        _vendu = vendu,
        _newprice = newprice,
        _oldprice = oldprice,
        _note = note,
        _reduction = reduction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.3),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(_image)),
            ),
            child: SafeArea(
              top: false,
              minimum: EdgeInsets.only(bottom: 130, right: 100),
              child: Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.red),
                child: Text(
                  _reduction,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'XAF ${_newprice}',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    _oldprice,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(_vendu),
                  SizedBox(
                    width: 20,
                  ),
                  Text(_note)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
