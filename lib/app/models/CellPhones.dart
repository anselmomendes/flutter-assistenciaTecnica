class CellPhones {
  int id;
  String marca;
  String modelo;

  CellPhones({this.id, this.marca, this.modelo});

  CellPhones.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    marca = json['Marca'];
    modelo = json['Modelo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Marca'] = this.marca;
    data['Modelo'] = this.modelo;
    return data;
  }
}
