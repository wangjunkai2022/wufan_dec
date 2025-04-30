package app.mgsim.arena;
/* loaded from: classes2.dex */
public class ArenaResponse {
    public static final int ERROR_TYPE_CREATE_ROOM_NO_CHALLENGE_COINS = 11;
    public static final int ERROR_TYPE_DISABLED = 1001;
    public static final int ERROR_TYPE_ERROR_MESSAGE = 15;
    public static final int ERROR_TYPE_INTERNAL_FAILURE = 3;
    public static final int ERROR_TYPE_JOIN_GAME_ROOM_ERROR_FULL = 9;
    public static final int ERROR_TYPE_JOIN_GAME_ROOM_ERROR_KICK = 16;
    public static final int ERROR_TYPE_JOIN_GAME_ROOM_ERROR_NEED_PASSWORD = 10;
    public static final int ERROR_TYPE_JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS = 13;
    public static final int ERROR_TYPE_JOIN_GAME_ROOM_ERROR_NO_WHITE = 17;
    public static final int ERROR_TYPE_JOIN_GAME_ROOM_ERROR_PASSWORD = 7;
    public static final int ERROR_TYPE_NOT_FOUND_ROOM = 8;
    public static final int ERROR_TYPE_OTHER = 1000;
    public static final int ERROR_TYPE_PARAMS_FAILURE = 2;
    public static final int ERROR_TYPE_ROOM_ERROR_DISSOLVE = 14;
    public static final int ERROR_TYPE_ROOM_ERROR_NO_CHALLENGE_COINS = 12;
    public static final int ERROR_TYPE_SERVICE_FAILURE = 1;
    public static final int ERROR_TYPE_UNDEFINED_CODE = 0;
    public static final int MESSAGE_TYPE_PUSH = 2;
    public static final int MESSAGE_TYPE_RESPONSE = 1;
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;
    public Object data;
    public String errorInfo;
    public int errorType = -1;
    public String joinSpectatorReason;
    public int messageType;
    public ArenaRequest request;
    public int responseCode;
    public String responseType;
}
