
/// A estrutura da classe de dados utilizada no aplicativo para
/// armazenar/representar dados de uma UBS.
class Ubs{
  /// O identificador da ubs.
  final String id;

  /// O caminho da imagem da UBS (na pasta `assets`)
  final String image;

  /// O nome da UBS.
  final String name;

  /// A descrição da UBS.
  final String description;

  /// Endereço da UBS.
  final String endereco;

  /// Tipo de serviço que a UBS fornece.
  final String tipodeservico;

  Ubs(this.id, this.image, this.name, this.description, this.endereco, this.tipodeservico);

  /// Constrói uma instância da [Ubs].
  ///
  /// É fornecido como um método estático e o [json] informado como
  /// parâmetro contém um [Map] com as informações do planeta.
  Ubs.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'],
        name = json['name'],
        description = json['description'],
        endereco = json['endereco'],
        tipodeservico = json['tipodeservico'];
}

class UbsCatalog {
  List<Ubs> items = [];
  UbsCatalog(this.items);
}
