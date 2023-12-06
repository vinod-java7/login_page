

class LoginResponse{

  int status = -1;
  String token ="";
  
  String message ="";
 

  @override
  String toString() {
    return 'LoginResponse{status: $status, token: $token, message: $message}';
  }

  LoginResponse(this.status, this.message, this.token);

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse (
      json['status'] as int,
      (json['message'] ?? "" )as String,
      (json['token']??"") as String,

    );
  }
}