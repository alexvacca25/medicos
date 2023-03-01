void main() {
  informe();
}

Map<String, dynamic> medicos() {
  Map<String, dynamic> med = {
    "codigo": "M001",
    "nombre": "Alex Vacca",
    "pacientes": [12, 0, 54,0,45,0,0],
    "dosis": [10, 0, 40,0,67,0,0]
  };

  return med;
}

String semana(int op) {
  switch (op) {
    case 0:
      return "Lunes";
      break;
    case 1:
      return "Martes";
      break;
    case 2:
      return "Miercoles";
      break;
    case 3:
      return "Jueves";
      break;
    case 4:
      return "Viernes";
      break;
    case 5:
      return "Sabado";
      break;
    case 6:
      return "Domingo";
      break;

    default:
      return "NA";
  }
}

void informe() {
  List<Map<String, dynamic>> listadoMedicos = [];
  for (int i = 0; i < 2; i++) {
    listadoMedicos.add(medicos());
  }

  print(
      '************************Informe Medico********************************');
  for (int j = 0; j < listadoMedicos.length; j++) {
    print(
        "${j + 1} -> Medico: ${listadoMedicos[j]["nombre"]}-Codigo: ${listadoMedicos[j]["codigo"]}");
    print(
        '************************Analisis de Vacunacion********************************');
    var pacientes = 0;
    var dosis = 0;
    for (int k = 0; k < listadoMedicos[j]['pacientes'].length; k++) {
      pacientes=listadoMedicos[j]['pacientes'][k];
      dosis=listadoMedicos[j]['dosis'][k];
      if(pacientes>0)      print("${semana(k)}  -> Pacientes: $pacientes - Dosis: $dosis Dif: ${pacientes-dosis}");
    }
  }
}
