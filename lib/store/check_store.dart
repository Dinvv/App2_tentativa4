import 'package:mobx/mobx.dart';

import 'package:web2_project/enums/select.dart';

part 'check_store.g.dart';

class CheckStore = CheckStoreBase with _$CheckStore;

abstract class CheckStoreBase with Store {
 @observable
 select _selected = select.important;

 select get selected{
  return _selected;
 }

 @action
 void changeselectMethod(select value) {
  _selected = value;
 }
}