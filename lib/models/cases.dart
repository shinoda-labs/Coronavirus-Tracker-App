class Cases {
  String date;
  int cases;

  Cases({this.date, this.cases});

  Cases.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    cases = json['cases'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['cases'] = this.cases;
    return data;
  }
}