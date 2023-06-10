 class Course with TiCourse,Adm{
  String? idCurso;
  String? nomeCurso;

  Course({
    this.idCurso,
    this.nomeCurso,
  });

  @override
  String toString() => '$idCurso $nomeCurso ';
}

mixin TiCourse {
  String? disciplina1 = 'Boas vindas - Informática para internet';
  String? disciplina2 = 'Desenvolvimento de aplicativos I';
  String? disciplina3 = 'Desenvolvimento de aplicativos II';
  String? disciplina4 = 'Desenvolvimento de sistemas web I';
  String? disciplina5 = 'Desenvolvimento de sistemas web II';
  String? disciplina6 = 'Desenvolvimento de sistemas web III';
  String? disciplina7 = 'Sistemas operacionais e redes';
  String? disciplina8 = 'Internet das Coisas';
  String? disciplina9 = 'Análise e qualidade de software';
}
mixin Adm {
  String? adm1 = 'Boas vindas - Informática para internet';
  String? adm2 = 'Desenvolvimento de aplicativos I';
  String? adm3 = 'Desenvolvimento de aplicativos II';
  String? adm4 = 'Desenvolvimento de sistemas web I';
  String? adm5 = 'Desenvolvimento de sistemas web II';
  String? adm6 = 'Desenvolvimento de sistemas web III';
  String? adm7 = 'Sistemas operacionais e redes';
  String? adm8 = 'Internet das Coisas';
  String? adm9 = 'Análise e qualidade de software';
}

