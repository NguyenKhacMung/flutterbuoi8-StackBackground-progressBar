class itemProgress {
  final String text;
  final double percent;

  itemProgress({
    required this.text,
    required this.percent,
  });
}

List<itemProgress> itemprogress = [
  itemProgress(text: "MON", percent: 25),
  itemProgress(text: "TUE", percent: 30),
  itemProgress(text: "WED", percent: 10),
  itemProgress(text: "THU", percent: 0),
  itemProgress(text: "FRI", percent: 5),
  itemProgress(text: "SAT", percent: 30),
  itemProgress(text: "SUN", percent: 80),
];
