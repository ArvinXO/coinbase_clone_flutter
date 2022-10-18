import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

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
                  height: MediaQuery.of(context).size.height * 0.30,
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
                  'Transactions',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              // Empty avatar with number placeholder and name
              // 3 list tile rows with avatar name and balance to be stripped into its own widget
              Positioned(
                top: MediaQuery.of(context).size.height * 0.098,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width / 2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.08),
                          child: Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.069,
                                height:
                                    MediaQuery.of(context).size.width * 0.09,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.person,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: const [
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '0xF2494322',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '\$1000',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

              Positioned(
                right: MediaQuery.of(context).size.width * .1,
                top: MediaQuery.of(context).size.height * .04,
                child: ClipPath(
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    child: Row(
                      children: const [
                        Text(
                          'View All',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 12)
                      ],
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
