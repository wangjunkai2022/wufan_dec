package app.mgsim.arena;

import android.text.TextUtils;
import app.mgsim.arena.ArenaConstants;
import com.papa91.battle.protocol.BattleArea;
/* loaded from: classes2.dex */
public class ArenaRequestFactory {
    public static ArenaRequest cancelSubscribeGameRoom() {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_CANCEL_SUBSCRIBE_GAME_ROOM);
        arenaRequest.register_type = ArenaConstants.REGISTER_TYPE_NONE;
        return arenaRequest;
    }

    public static ArenaRequest changeBattleArea(String str, BattleArea battleArea) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_JOIN_BATTLE_AREA);
        arenaRequest.battleArea = battleArea;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest closeSit(String str, int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(getCmd(i4));
        arenaRequest.roomId = i2;
        arenaRequest.position = i4;
        arenaRequest.isClosePosition = true;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest createRoom(String str, String str2, int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM);
        arenaRequest.gameId = Long.parseLong(str2);
        arenaRequest.uid = i4;
        arenaRequest.coins = i2;
        arenaRequest.allowSpectatorJoin = true;
        arenaRequest.allowPeripheralJoin = true;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest fastJoinRoom(String str, long j4, int i2) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM);
        arenaRequest.collectionId = i2;
        arenaRequest.gameId = j4;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    private static String getCmd(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "" : ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P4_POSITION : ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P3_POSITION : ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P2_POSITION : ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P1_POSITION;
    }

    public static ArenaRequest getFrameForwardServer(String str, int i2) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_GET_FRAMEFORWARD_SERVER);
        arenaRequest.roomId = i2;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest getKickOutRoomPositionInfo(String str, int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_GET_KICK_OUT_ROOM_POSITION_INFO);
        arenaRequest.roomId = i2;
        arenaRequest.position = i4;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest joinRoom(String str, int i2, String str2, boolean z3) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM);
        arenaRequest.roomId = i2;
        arenaRequest.roomType = z3 ? 2 : 1;
        if (!TextUtils.isEmpty(str2)) {
            arenaRequest.password = str2;
        }
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest kickOutRoomPosition(String str, int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_KICK_OUT_ROOM_POSITION);
        arenaRequest.roomId = i2;
        arenaRequest.position = i4;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest leaveRoom(int i2) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_LEAVE_ROOM);
        arenaRequest.roomId = i2;
        arenaRequest.register_type = ArenaConstants.REGISTER_TYPE_NONE;
        return arenaRequest;
    }

    public static ArenaRequest login(String str) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_LOGIN);
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest openSit(String str, int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(getCmd(i4));
        arenaRequest.roomId = i2;
        arenaRequest.position = i4;
        arenaRequest.isClosePosition = false;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest ping() {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_PING);
        arenaRequest.register_type = ArenaConstants.REGISTER_TYPE_NONE;
        return arenaRequest;
    }

    public static ArenaRequest playerReadyGame(String str, int i2) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_PLAYER_READY_GAME);
        arenaRequest.roomId = i2;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest searchRoomById(String str, int i2) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID);
        arenaRequest.roomId = i2;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest setChallengeGolden(String str, int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CHALLENGE_COINS_ATTR);
        arenaRequest.roomId = i2;
        arenaRequest.coins = i4;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest setRoomPassword(String str, int i2, String str2) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PASSWORD_ATTR);
        arenaRequest.register_type = str;
        arenaRequest.roomId = i2;
        arenaRequest.password = str2;
        return arenaRequest;
    }

    public static ArenaRequest setRoomPcJoin(String str, int i2, boolean z3) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PC_JOIN_ALTR);
        if (z3) {
            arenaRequest.allowPCJoin = false;
        } else {
            arenaRequest.allowPCJoin = true;
        }
        arenaRequest.roomId = i2;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest setRoomPeripheralJoin(String str, int i2, boolean z3) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PERIPHERAL_JOIN_ATTR);
        if (z3) {
            arenaRequest.allowPeripheralJoin = false;
        } else {
            arenaRequest.allowPeripheralJoin = true;
        }
        arenaRequest.roomId = i2;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest setRoomServerPlayMode(int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SERVER_PLAY_MODE);
        arenaRequest.playMode = i2;
        arenaRequest.roomId = i4;
        return arenaRequest;
    }

    public static ArenaRequest setRoomSpectatorJoin(String str, int i2, boolean z3) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SPECTATOR_JOIN_ATTR);
        if (z3) {
            arenaRequest.allowSpectatorJoin = false;
        } else {
            arenaRequest.allowSpectatorJoin = true;
        }
        arenaRequest.roomId = i2;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest shareJoinRoom(String str, long j4, int i2, long j5, String str2) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SHARE_JOIN_ROOM);
        arenaRequest.register_type = str;
        arenaRequest.fightId = j4;
        arenaRequest.roomId = i2;
        arenaRequest.gameId = j5;
        if (!TextUtils.isEmpty(str2)) {
            arenaRequest.password = str2;
        }
        return arenaRequest;
    }

    public static ArenaRequest spectatorSit(String str, int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SPECTATOR_SIT);
        arenaRequest.roomId = i2;
        arenaRequest.position = i4;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest startLobbyGame(String str, int i2) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_LOBBY_START_GAME);
        arenaRequest.roomId = i2;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest subscribeRoomList(String str, int i2, int i4) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SUBSCRIBE_GAME_ROOMLIST);
        arenaRequest.collectionId = i2;
        arenaRequest.roomType = i4;
        arenaRequest.register_type = str;
        return arenaRequest;
    }

    public static ArenaRequest createRoom(String str, String str2, int i2, int i4, boolean z3) {
        ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM);
        arenaRequest.isFromLive = z3;
        arenaRequest.gameId = Long.parseLong(str2);
        arenaRequest.uid = i4;
        arenaRequest.coins = i2;
        arenaRequest.allowSpectatorJoin = true;
        arenaRequest.allowPeripheralJoin = true;
        arenaRequest.register_type = str;
        return arenaRequest;
    }
}
