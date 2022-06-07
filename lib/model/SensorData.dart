import 'dart:convert';

List<SensorData> sensorDataFromJson(String str) =>
    List<SensorData>.from(json.decode(str).map((x) => SensorData.fromJson(x)));

String sensorDataToJson(List<SensorData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SensorData {
  SensorData({
    this.ambientTempC,
    this.ambientTempF,
    this.bodyTempC,
    this.bodyTempF,
    this.bpm,
    this.spo2,
  });

  double? ambientTempC;
  double? ambientTempF;
  double? bodyTempC;
  double? bodyTempF;
  double? bpm;
  int? spo2;

  factory SensorData.fromJson(Map<String, dynamic> json) => SensorData(
        ambientTempC: json["ambient_temp_c"].toDouble(),
        ambientTempF: json["ambient_temp_f"].toDouble(),
        bodyTempC: json["body_temp_c"].toDouble(),
        bodyTempF: json["body_temp_f"].toDouble(),
        bpm: json["bpm"],
        spo2: json["spo2"],
      );

  Map<String, dynamic> toJson() => {
        "ambient_temp_c": ambientTempC,
        "ambient_temp_f": ambientTempF,
        "body_temp_c": bodyTempC,
        "body_temp_f": bodyTempF,
        "bpm": bpm,
        "spo2": spo2,
      };
}
