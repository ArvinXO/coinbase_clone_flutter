import 'package:flutter/material.dart';

class GiftTile extends StatelessWidget {
  const GiftTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //Tile
        Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                //Border of tile
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    // border:
                    //     Border.all(color: Colors.green.withOpacity(.35), width: 2),
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.width * 0.11,
                child: const Text(
                  'Crypto Gifts',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.width * 0.18,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: const Text(
                    softWrap: true,
                    'Give cryto gifts to friends and family',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.width * 0.28,
                // Send a gift button with text
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    color: Colors.blue,
                    child: Row(
                      children: const [
                        Text(
                          'Send a gift',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 12)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * .1,
                top: MediaQuery.of(context).size.height * .04,
                child: ClipPath(
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),

              //Icon in tile
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  margin: const EdgeInsets.only(right: 30, top: 6),
                  child: const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
