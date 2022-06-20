// To parse this JSON data, do
//
//     final itemModal = itemModalFromJson(jsonString);

import 'dart:convert';

ItemModal itemModalFromJson(String str) => ItemModal.fromJson(json.decode(str));

String itemModalToJson(ItemModal data) => json.encode(data.toJson());

class ItemModal {
    ItemModal({
        required this.letterkey,
        required this.img,
        required this.cap,
        required this.small,
        required this.description,
    });

    final String letterkey;
    final String img;
    final String cap;
    final String small;
    final String description;

    factory ItemModal.fromJson(Map<String, dynamic> json) => ItemModal(
        letterkey: json["letterkey"],
        img: json["img"],
        cap: json["cap"],
        small: json["small"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "letterkey": letterkey,
        "img": img,
        "cap": cap,
        "small": small,
        "description": description,
    };
}
