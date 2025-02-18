/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2019  Dino PH Leung
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

part of '../model.dart';

/// Contains information about documents or other Telegram Passport elements shared with the bot by the user.
///
/// https://core.telegram.org/bots/api#encryptedpassportelement
@JsonSerializable()
class EncryptedPassportElement {
  static const PERSONAL_DETAILS = 'personal_details';
  static const PASSPORT = 'passport';
  static const DRIVER_LICENSE = 'driver_license';
  static const IDENTITY_CARD = 'identity_card';
  static const INTERNAL_PASSPORT = 'internal_passport';
  static const ADDRESS = 'address';
  static const UTILITY_BILL = 'utility_bill';
  static const BANK_STATEMENT = 'bank_statement';
  static const RENTAL_AGREEMENT = 'rental_agreement';
  static const PASSPORT_REGISTRATION = 'passport_registration';
  static const TEMPORARY_REGISTRATION = 'temporary_registration';
  static const PHONE_NUMBER = 'phone_number';
  static const EMAIL = 'email';

  String type;
  String? data;
  String? phone_number;
  String? email;
  List<PassportFile>? files;
  PassportFile? front_side;
  PassportFile? reverse_side;
  PassportFile? selfie;
  List<PassportFile>? translation;
  String hash;
  EncryptedPassportElement({
    required this.type,
    this.data,
    this.phone_number,
    this.email,
    this.files,
    this.front_side,
    this.reverse_side,
    this.selfie,
    this.translation,
    required this.hash,
  });
  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) =>
      _$EncryptedPassportElementFromJson(json);
  Map<String, dynamic> toJson() => _$EncryptedPassportElementToJson(this);
}
