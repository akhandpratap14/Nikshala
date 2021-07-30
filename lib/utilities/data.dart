import 'Networking.dart';

const ApiUrl = 'https://jsonplaceholder.typicode.com/users';

class UserModel {
  Future<dynamic> getUserData() async {
    Network network = Network('$ApiUrl');
    var userData = await network.getData();
    return userData;
  }
}
