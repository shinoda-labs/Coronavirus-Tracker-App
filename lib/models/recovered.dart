class Recovered {
  String date;
  int data;

  Recovered({this.date, this.data});

  Recovered.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['data'] = this.data;
    return data;
  }
}