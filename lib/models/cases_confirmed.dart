class CasesConfirmed {
  String date;
  int data;

  CasesConfirmed({this.date, this.data});

  CasesConfirmed.fromJson(Map<String, dynamic> json) {
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