package com.wufan.friend.chat.protocol;

import com.google.protobuf.Internal;
/* loaded from: classes2.dex */
public enum NotificationType implements Internal.EnumLite {
    UNKNOWN_NT(0),
    INVITE_BATTLE(1),
    FRIEND_CHANGE_STATE(2),
    FRIEND_CHANGE_PLAY_STATE(3),
    SYS_KICK(4),
    FRIEND_ONLINE_FRIENDS(5),
    CHAT_MESSAGE(6),
    FRIEND_ADD_REQUEST(7),
    LEAVE_ROOM(8),
    FRIEND_ADD_SUCCESS(9),
    REJECT_BATTLE_INVITE(10),
    FRIEND_ALL_FRIENDS(11),
    RECOMMEND_PLAYER_STATE_CHANGE(12),
    FRIEND_DELETE_SUCCESS(13),
    PLAYER_BANNED(14),
    UNRECOGNIZED(-1);
    
    public static final int CHAT_MESSAGE_VALUE = 6;
    public static final int FRIEND_ADD_REQUEST_VALUE = 7;
    public static final int FRIEND_ADD_SUCCESS_VALUE = 9;
    public static final int FRIEND_ALL_FRIENDS_VALUE = 11;
    public static final int FRIEND_CHANGE_PLAY_STATE_VALUE = 3;
    public static final int FRIEND_CHANGE_STATE_VALUE = 2;
    public static final int FRIEND_DELETE_SUCCESS_VALUE = 13;
    public static final int FRIEND_ONLINE_FRIENDS_VALUE = 5;
    public static final int INVITE_BATTLE_VALUE = 1;
    public static final int LEAVE_ROOM_VALUE = 8;
    public static final int PLAYER_BANNED_VALUE = 14;
    public static final int RECOMMEND_PLAYER_STATE_CHANGE_VALUE = 12;
    public static final int REJECT_BATTLE_INVITE_VALUE = 10;
    public static final int SYS_KICK_VALUE = 4;
    public static final int UNKNOWN_NT_VALUE = 0;
    private static final Internal.EnumLiteMap<NotificationType> internalValueMap = new Internal.EnumLiteMap<NotificationType>() { // from class: com.wufan.friend.chat.protocol.NotificationType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: a */
        public NotificationType findValueByNumber(int i2) {
            return NotificationType.forNumber(i2);
        }
    };
    private final int value;

    NotificationType(int i2) {
        this.value = i2;
    }

    public static NotificationType forNumber(int i2) {
        switch (i2) {
            case 0:
                return UNKNOWN_NT;
            case 1:
                return INVITE_BATTLE;
            case 2:
                return FRIEND_CHANGE_STATE;
            case 3:
                return FRIEND_CHANGE_PLAY_STATE;
            case 4:
                return SYS_KICK;
            case 5:
                return FRIEND_ONLINE_FRIENDS;
            case 6:
                return CHAT_MESSAGE;
            case 7:
                return FRIEND_ADD_REQUEST;
            case 8:
                return LEAVE_ROOM;
            case 9:
                return FRIEND_ADD_SUCCESS;
            case 10:
                return REJECT_BATTLE_INVITE;
            case 11:
                return FRIEND_ALL_FRIENDS;
            case 12:
                return RECOMMEND_PLAYER_STATE_CHANGE;
            case 13:
                return FRIEND_DELETE_SUCCESS;
            case 14:
                return PLAYER_BANNED;
            default:
                return null;
        }
    }

    public static Internal.EnumLiteMap<NotificationType> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static NotificationType valueOf(int i2) {
        return forNumber(i2);
    }
}
