class Deaths {
  String date;
  int data;

  Deaths({this.date, this.data});

  Deaths.fromJson(Map<String, dynamic> json) {
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