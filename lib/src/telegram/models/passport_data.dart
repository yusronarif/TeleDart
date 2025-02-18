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

/// Contains information about Telegram Passport data shared with the bot by the user.
///
/// https://core.telegram.org/bots/api#passportdata
@JsonSerializable()
class PassportData {
  List<EncryptedPassportElement> data;
  EncryptedCredentials credentials;
  PassportData({
    required this.data,
    required this.credentials,
  });
  factory PassportData.fromJson(Map<String, dynamic> json) =>
      _$PassportDataFromJson(json);
  Map<String, dynamic> toJson() => _$PassportDataToJson(this);
}
