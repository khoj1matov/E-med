import 'package:emed/views/profile/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  bool malee = false;
  bool famalee = false;
  bool transs = false;
  bool switchh = false;

  visible(bool male, bool famale, bool trans) {
    malee = male;
    famalee = famale;
    transs = trans;

    emit(ProfileComplete(male: malee, famale: famalee, trans: transs));
  }

  switchVisible(bool isSwitch) {
    switchh = isSwitch;

    emit(ProfileComplete(switchh: switchh));
  }
}
