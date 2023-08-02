


//para cargar una lista array con maps adentro
List<MovimientoModel> movimientosFromJson(dynamic str)=> List<MovimientoModel>.from((str).map((x)=> MovimientoModel.fromJson(x) ));

class MovimientoModel{
    dynamic id;
    String? detalles;
    String? fecha;
    String? tipo;
    dynamic valor;

  MovimientoModel({
    this.id,
     this.detalles,  this.fecha,  this.tipo,  this.valor
  });

  MovimientoModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    detalles = json['attributes']["detalles"];
    fecha = json['attributes']["fecha"];
    valor= json['attributes']["valor"];
    tipo = json['attributes']["tipo"];
  }

Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['detalles'] = detalles;
    data['tipo'] = tipo;
    data['valor'] = valor;
    data['fecha'] = fecha;
    return data;
  }
  

}



