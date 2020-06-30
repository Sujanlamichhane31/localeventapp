
class Event {
  final String imagepath, title, description, location, duration, punchline1,
      punchline2;
  final List categoryIds, galleryImages;

  Event({
    this.imagepath,
    this.title,
    this.description,
    this.location,
    this.duration,
    this.punchline1,
    this.punchline2,
    this.categoryIds,
    this.galleryImages,
  });
}

final holiEvent=Event(
  imagepath: "assets/holi.JPG",
  title: "Holi",
  description: "Special Nepalese festival",
  location: "Fun Park",
  duration: "5h",
  punchline1: "Colors",
  punchline2: "Waters",
  categoryIds: [0,2],
    galleryImages: ["assets/meetup.PNG","assets/dance1.JPG","assets/holi.JPG"]

);

final musicConcert=Event(
  imagepath: "assets/concert.JPG",
  title: "Rock and Roll",
  description: "Music Heals",
  location: "Purple Haze",
  duration: "6h",
  punchline1: "Rock",
  punchline2: "Roll",
  categoryIds: [0,1],
  galleryImages: ["assets/meetup.PNG","assets/dance1.JPG","assets/holi.JPG"]
);


  final danceCompetition=Event(
      imagepath: "assets/dance1.JPG",
      title: "Dance",
      description: "AnyBody Can Dance",
      location: "NACH GHAR",
      duration: "3h",
      punchline1: "Dance",
      punchline2: "Heals",
      categoryIds: [0,2],
      galleryImages: ["assets/meetup.PNG","assets/dance1.JPG","assets/holi.JPG"]

  );

  final golfCompetition=Event(
      imagepath: "assets/golf.JPG",
      title: "Golf",
      description: "Sports",
      location: "TU Ground",
      duration: "4h",
      punchline1: "Hit",
      punchline2: "Hard",
      categoryIds: [0,3],
      galleryImages: ["assets/meetup.PNG","assets/dance1.JPG","assets/holi.JPG"]

  );

  final events=[
    holiEvent,
    musicConcert,
    danceCompetition,
    golfCompetition,
  ];
