/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2021  Dino PH Leung
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

/// Represents the [scope] of bot commands, covering a specific member of a group or supergroup chat.
///
/// https://core.telegram.org/bots/api#botcommandscopechatmember
///
/// [scope]: https://core.telegram.org/bots/api#botcommandscope
@JsonSerializable()
class BotCommandScopeChatMember implements BotCommandScope {
  @override
  String type;
  dynamic chat_id;

  BotCommandScopeChatMember({
    this.type = BotCommandScope.CHAT_MEMBER,
    required this.chat_id,
  });

  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) =>
      _$BotCommandScopeChatMemberFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$BotCommandScopeChatMemberToJson(this);
}
