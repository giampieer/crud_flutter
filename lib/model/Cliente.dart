 class Cliente {
  int codigo;
  String nombres;
  int celular;

  Cliente({this.codigo, this.nombres, this.celular});
  factory Cliente.fromJson(Map<String, dynamic> json) {
    return Cliente(
      codigo: json['userId'],
      nombres: json['id'],
      celular: json['title'],
    );
  }
 }