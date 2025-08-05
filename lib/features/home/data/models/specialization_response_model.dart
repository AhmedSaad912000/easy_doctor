import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationsResponseModel {
  @JsonKey(name: "data")
  List <SpecializationsData?>? specializationsDataList;

  SpecializationsResponseModel({this.specializationsDataList});

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int?id;
  String?name;
  @JsonKey(name: "doctors")
  List<Doctors?>? doctorsList;

  SpecializationsData({this.id, this.name, this.doctorsList});

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);

}

@JsonSerializable()
class Doctors {
  int?id;
  String?name;
  String?phone;
  String?photo;
  String?email;
  String?gender;
  @JsonKey(name: "appoint_price")
  int?price;
  String degree;
  Doctors(
      {this.id,
        this.name,
        this.email,
        this.gender,
        this.price,
        required this.degree,
        this.phone, this.photo,});

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
