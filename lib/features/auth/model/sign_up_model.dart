import 'dart:convert';

class SignupModel {
    bool? status;
    String? message;
    int? code;

    SignupModel({
        this.status,
        this.message,
        this.code,
    });

    SignupModel copyWith({
        bool? status,
        String? message,
        int? code,
    }) => 
        SignupModel(
            status: status ?? this.status,
            message: message ?? this.message,
            code: code ?? this.code,
        );

    factory SignupModel.fromRawJson(String str) => SignupModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        status: json["status"],
        message: json["message"],
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "code": code,
    };
}
