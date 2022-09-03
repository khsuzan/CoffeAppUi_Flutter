import 'package:coffeapp/views/models/coffe_tile_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeTile extends StatelessWidget {
  final CoffeInfo coffeInfo;
  final double leftPadd;
  final double rightPadd;

  const CoffeTile(this.coffeInfo,
      {Key? key, this.leftPadd = 10, this.rightPadd = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadd, right: rightPadd),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    coffeInfo.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(coffeInfo.name,
                        style: GoogleFonts.poppins(fontSize: 18)),
                    Text(coffeInfo.flavour,
                        style: GoogleFonts.poppins(fontSize: 10)),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$${coffeInfo.price}",
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange),
                            child: Icon(
                              Icons.add,
                              size: 18,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
