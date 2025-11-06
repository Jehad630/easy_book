import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/utilts/styles.dart';
import 'package:easy_book/core/widget/Custom_Button.dart';
import 'package:flutter/material.dart';

class Popular_books_ListView_widget extends StatelessWidget {
  const Popular_books_ListView_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, top: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffFFFFFF),
        ),
        child: SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: CachedNetworkImage(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0wUdZyXhG2dwDhA2pPng6QSs5jpXVV8jHIz8Z64ZQ2zLqDrgMXSUFvwZ3aOZ9KQW0_mA&usqp=CAU",
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //book title
                    Text(
                      "The Steal Like An Artist",
                      style: Styles.BookTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    // book author
                    Text(
                      "Austin Kleon",
                      style: Styles.BookSubTitle.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "5.0 | Based on 23k Reviews",
                      style: Styles.BookSubTitle,
                    ),
                    SizedBox(height: 8),
                    //price
                    Text(
                      "Free",
                      style: Styles.BookSubTitle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8),

              // buttons
              Padding(
                padding: const EdgeInsets.only(top: 22.0, right: 12),
                //child: BookButtons(direction: Axis.vertical,width: 80,height: 35,),
                child: Column(
                  children: [
                    CustomButton(
                      onPressed: () {},
                      title: 'Grab Now',
                      textcolor: Colors.white,
                      /* height: 26,
                      width: 78,*/
                      borderRadius: 8,
                      backgroundColor: const Color(0xffDE7773),
                    ),
                    SizedBox(height: 8),
                    CustomButton(
                      onPressed: () {},
                      title: 'Learn More',
                      textcolor: Colors.black,
                      /*  height: 26,
                      width: 78,*/
                      borderRadius: 8,
                      backgroundColor: const Color(0xffFFFFFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
