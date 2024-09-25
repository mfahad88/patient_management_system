class Patient{

  String? _name;
  String? _dob;
  String? _contactNo;
  String? _selectedGender;

  String? get name => _name;

  set name(String? value) {
    _name = value;
  }

  String? get dob => _dob;

  String? get selectedGender => _selectedGender;

  set selectedGender(String? value) {
    _selectedGender = value;
  }

  String? get contactNo => _contactNo;

  set contactNo(String? value) {
    _contactNo = value;
  }

  set dob(String? value) {
    _dob = value;
  }

  @override
  String toString() {
    return 'Patient{_name: $_name, _dob: $_dob, _contactNo: $_contactNo, _selectedGender: $_selectedGender}';
  }
}