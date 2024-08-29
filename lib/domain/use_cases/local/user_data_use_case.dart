import 'package:starter_app/domain/repositories/user_data_repository.dart';

abstract class UserDataUseCase {}

class UserDataUseCaseImpl implements UserDataUseCase {
  UserDataUseCaseImpl({required UserDataRepository userDataRepository})
      : _userDataRepository = userDataRepository;
  final UserDataRepository _userDataRepository;
}
