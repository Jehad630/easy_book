import 'package:easy_book/core/utilts/styles.dart';
import 'package:easy_book/features/home/presenation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Book_Details_ViewBody extends StatelessWidget {
  const Book_Details_ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            // 🔹 Top section with blue background + floating card
            CustomAppBar(
              title: "Book Detalis",
              backgroundColor: Color(0xff171B36),
              style: Styles.textStyle20.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Blue section
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  height: 230,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff171B36), // navy blue
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/Mask group.png",
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "The Psychology of Money",
                              style: Styles.textStyle14.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
                              style: Styles.textStyle14.copyWith(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.start,
                              maxLines: 4,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 22),
                                Icon(Icons.star, color: Colors.amber, size: 22),
                                Icon(Icons.star, color: Colors.amber, size: 22),
                                Icon(Icons.star, color: Colors.amber, size: 22),
                                Icon(Icons.star, color: Colors.amber, size: 22),
                                Text(
                                  "  (5.0)",
                                  style: Styles.textStyle14.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // 🔸 Floating author card
                Positioned(
                  bottom: -60,
                  left: 50,
                  right: 50,
                  child: Container(
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Author image
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(
                              "assets/images/Group.png",
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Author",
                                style: Styles.textStyle14.copyWith(
                                  color: Colors.blueGrey,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "Morgan Housel",
                                style: Styles.textStyle18.copyWith(
                                  color: Color(0xff171B36),
                                ),
                              ),
                              Text(
                                "Best Seller of New York Times",
                                style: Styles.textStyle14.copyWith(
                                  color: Colors.blueGrey,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Icon(Icons.star, color: Colors.amber, size: 22),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 100), // spacing for author card overlap
            // 🔹 About the book section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "About The Book",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "'The Psychology of Money' is an essential read for anyone interested in being better with money. Fast-paced and engaging, this book will help you refine your thoughts towards money. You can finish this book in a week, unlike other books that are too lengthy.",
                    style: TextStyle(color: Colors.black87, height: 1.5),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "The most important emotions in relation to money are fear, guilt, shame and envy. It's worth spending some effort to become aware of the emotions that are especially tied to money for you because, without awareness, they will tend to override rational thinking and drive your actions.",
                    style: TextStyle(color: Colors.black87, height: 1.5),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            /*
            // 🔹 News section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "News",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          /*  child: Image.network(
                            "https://www.iwillteachyoutoberich.com/wp-content/uploads/2021/07/5-takeaways-from-the-psychology-of-money.jpg",
                            height: 120,
                            fit: BoxFit.cover,
                          ),*/
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          /*  child: Image.network(
                            "https://m.media-amazon.com/images/I/81Lb75rUhLL.jpg",
                            height: 120,
                            fit: BoxFit.cover,
                          ),*/
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
*/
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
