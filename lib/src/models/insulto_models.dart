

class InsultoModel{
  int ? number;
  String ? language;
  String ? insult;
  int ? shown;
  int ? created;

  InsultoModel({
    required 
    this.insult,
    this.language,
    this.number,
    this.shown,
    this.created
  });

  factory InsultoModel.instancia(Map<String,dynamic> insulto){
    return InsultoModel(insult: insulto ['insult'],
    number: insulto['number'],
    language: insulto['language'],
    shown: insulto['shown'],
    created: insulto['created']

    );
  }

}