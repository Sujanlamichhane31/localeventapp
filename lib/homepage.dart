import 'package:flutter/material.dart';
import 'package:local_events/app_state.dart';
import 'package:local_events/event_details.dart';
import 'package:local_events/styleguide.dart';
import 'package:provider/provider.dart';
import 'category.dart';
import 'category_widget.dart';
import 'event_widget.dart';
import 'homepagebackground.dart';
import 'event.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ChangeNotifierProvider<AppState>(
        create: (_)=> AppState(),
        child: Stack(
          children: <Widget>[
            HomePageBackGround(screenHeight: MediaQuery.of(context).size.height,),

            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                              "Local Events",
                          style: fadedTextStyle,),
                          Spacer(),
                          Icon(Icons.person_outline, color: Color(0x99FFFFFF),
                          size: 30,)
                        ],
                      ),

                      Text(
                        "What's Up",style: whiteHeadingTextStyle,
                      ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.0),
                    child: Consumer<AppState>(
                      builder: (context, appstate, _)=> SingleChildScrollView(
                        scrollDirection: Axis.horizontal,

                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            for(final category in categories) CategoryWidget(category: category)
                          ],
                        ),
                      ),
                      ),
                    ),
                  ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Consumer<AppState>(
                          builder: (context, appState, _)=> Column(
                            children: <Widget>[
                              for(final event in events.where((e)=> e.categoryIds.contains(appState.selectedCategoryId)))
                                GestureDetector(
                                    onTap:(){
                                      Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context)=> EventDetailsPage(event: event),
                                      ),
                                      );
                                    },child: EventWidget(event: event,)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
