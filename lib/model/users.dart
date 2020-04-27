class User{
  final String _emailId;
  final String _name;
  final int _collegeId;

  User(this._emailId, this._name, this._collegeId);

  int get collegeId => _collegeId;

  String get name => _name;

  String get emailId => _emailId;


}