package app.mgsim.arena;
/* loaded from: classes2.dex */
public class ArenaConstants {
    public static final String ACTION_CANCEL_SUBSCRIBE = "com.join.mgps.socket.fight.arena.cancel_subscribe";
    public static final String ACTION_LEAVE_ROOM = "com.join.mgps.socket.fight.arena.leave_room";
    public static final int MAX_PING_TIME = 120;
    public static final int MAX_RETRY_COUNT = 3;
    public static final String NDS_SERVER_1 = "http://113.107.57.112/?ws_domain=fastbattle.5fun.com&ws_ret_type=json";
    public static final String NDS_SERVER_2 = "http://203.130.43.40/?ws_domain=fastbattle.5fun.com&ws_ret_type=json";
    public static final String REGISTER_TYPE_ARENAMAIN = "register_type_NewArenaMainFragment";
    public static final String REGISTER_TYPE_GAMELIST = "register_type_GameRoomListActivity";
    public static final String REGISTER_TYPE_GAMEMAIN = "register_type_GameMainActivity";
    public static final String REGISTER_TYPE_GAMEROOM = "register_type_GameRoomActivity";
    public static final String REGISTER_TYPE_NONE = "register_type_none";
    public static final String REGISTER_TYPE_PUBLIC = "register_type_public";
    public static final String REGISTER_TYPE_SHARE_JOIN_ROOM = "register_type_share_join_room";
    public static final int ROOM_TYPE_ELITE = 2;
    public static final int ROOM_TYPE_NORMAL = 1;
    public static final int SOCKET_HEADER_LENGTH = 4;
    public static final int TYPE_NDS_SERVER_1 = 1;
    public static final int TYPE_NDS_SERVER_2 = 2;

    /* loaded from: classes2.dex */
    public interface ArenaCommand {
        public static final String CMD_CANCEL_SUBSCRIBE_GAME_ROOM = "cmd_cancel_subscribe_game_room";
        public static final String CMD_CREATE_GAME_ROOM = "cmd_create_game_room";
        @Deprecated
        public static final String CMD_GET_FRAMEFORWARD_SERVER = "cmd_get_frameforward_server";
        public static final String CMD_GET_KICK_OUT_ROOM_POSITION_INFO = "cmd_get_kick_out_room_position_info";
        public static final String CMD_JOIN_BATTLE_AREA = "cmd_join_battle_area";
        public static final String CMD_JOIN_ROOM = "cmd_join_room";
        public static final String CMD_KICK_OUT_ROOM_POSITION = "cmd_kick_out_room_position";
        public static final String CMD_LEAVE_ROOM = "cmd_leave_room";
        public static final String CMD_LOBBY_START_GAME = "cmd_lobby_start_game";
        public static final String CMD_LOGIN = "cmd_login";
        public static final String CMD_PING = "cmd_ping";
        public static final String CMD_PLAYER_READY_GAME = "cmd_player_ready_game";
        public static final String CMD_QUICK_JOIN_ROOM = "cmd_quick_join_room";
        public static final String CMD_SEARCH_ROOM_BY_ID = "cmd_search_room_by_id";
        public static final String CMD_SET_ROOM_CHALLENGE_COINS_ATTR = "cmd_set_room_challenge_coins_altr";
        public static final String CMD_SET_ROOM_CLOSE_P1_POSITION = "cmd_set_room_close_p1_position";
        public static final String CMD_SET_ROOM_CLOSE_P2_POSITION = "cmd_set_room_close_p2_position";
        public static final String CMD_SET_ROOM_CLOSE_P3_POSITION = "cmd_set_room_close_p3_position";
        public static final String CMD_SET_ROOM_CLOSE_P4_POSITION = "cmd_set_room_close_p4_position";
        public static final String CMD_SET_ROOM_PASSWORD_ATTR = "cmd_set_room_password_altr";
        public static final String CMD_SET_ROOM_PC_JOIN_ALTR = "cmd_set_room_pc_join_altr";
        public static final String CMD_SET_ROOM_PERIPHERAL_JOIN_ATTR = "cmd_set_room_peripheral_join_altr";
        public static final String CMD_SET_ROOM_SERVER_PLAY_MODE = "cmd_set_room_server_play_mode";
        public static final String CMD_SET_ROOM_SPECTATOR_JOIN_ATTR = "cmd_set_room_spectator_join_altr";
        public static final String CMD_SHARE_JOIN_ROOM = "cmd_share_join_room";
        public static final String CMD_SPECTATOR_SIT = "cmd_spectator_sit";
        public static final String CMD_SUBSCRIBE_GAME_ROOMLIST = "cmd_subscribe_game_roomlist";
        public static final String PUSH_DISSOLVE_ROOM = "push_dissolve_room";
        public static final String PUSH_FULL_PUSH_ROOM_LIST_FINISH = "push_room_list_finish";
        public static final String PUSH_FULL_PUSH_ROOM_LIST_ING = "push_room_list_ing";
        public static final String PUSH_GLOBAL_BROADCAST_ALL = "push_global_broadcast_all";
        public static final String PUSH_KICK_ROOM_BROADCAST = "push_kick_room";
        public static final String PUSH_REFRESH_ROOM_LIST_DISSOLVE = "push_refresh_room_list_dissolve";
        public static final String PUSH_REFRESH_ROOM_LIST_UPDATE = "push_refresh_room_list_update";
        public static final String PUSH_ROOM_READY_TIMEOUT_KICKOUT = "push_room_ready_timeout_kickout";
        public static final String PUSH_ROOM_START_TIMEOUT_KICKOUT = "push_room_start_timeout_kickout";
        public static final String PUSH_START_GAME_ROOM_BROADCAST = "push_start_game_room_broadcast";
        public static final String PUSH_UPDATE_AREA_ONLINE_PEOPLE_BROADCAST = "push_update_area_online_people_broadcast";
        public static final String PUSH_UPDATE_ROOM = "push_update_room";
    }
}
