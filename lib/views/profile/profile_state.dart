abstract class ProfileState {
  ProfileState();
}

class ProfileInitial extends ProfileState {
  ProfileInitial();
}

class ProfileLoading extends ProfileState {
  ProfileLoading();
}

class ProfileComplete extends ProfileState {
  bool? male;
  bool? famale;
  bool? trans;
  bool? switchh;

  ProfileComplete({this.male, this.famale, this.trans, this.switchh});
}

class ProfileError extends ProfileState {
  ProfileError();
}
