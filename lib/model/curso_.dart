class Course {
  String? idCurso;
  String? nomeCurso;

  Map disciplinas = <int?, String?>{};
  Course({this.idCurso, this.nomeCurso, required this.disciplinas});

  @override
  String toString() => '$idCurso $nomeCurso ';
}
