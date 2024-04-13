import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled4/coure/utils/app_assets.dart';

class BoardBody extends StatelessWidget {
   BoardBody
({super.key});
PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 2,
        itemBuilder: (context,index){
          return Column(
            children: [
           ClipRRect(
            
           borderRadius: BorderRadius.circular(50),child: Image.asset(Assets.Board,),),
              SizedBox(height: 30,),
              SmoothPageIndicator(controller: _controller, count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.blueAccent,
                dotWidth: 10,dotHeight: 7,
              ),
              ),
              
            ],
          );
        }),
    );
  }
}