package app.mgsim.arena;

import android.text.TextUtils;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.Params;
import com.papa91.battle.protocol.Request;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public class ByteBufferBuilderFactory {
    private static final int version = 2;

    public static ByteBuffer cancelSubscribeGameRoom(long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.CANCEL_SUBSCRIBE_GAME_COLLECTION);
        newBuilder.setParams(Params.newBuilder().build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer closeRoomPosition(int i2, int i4, boolean z3, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        if (i4 == 1) {
            newBuilder.setType(Request.ProtoType.SET_ROOM_CLOSE_P1_POSITION);
        } else if (i4 == 2) {
            newBuilder.setType(Request.ProtoType.SET_ROOM_CLOSE_P2_POSITION);
        } else if (i4 == 3) {
            newBuilder.setType(Request.ProtoType.SET_ROOM_CLOSE_P3_POSITION);
        } else if (i4 == 4) {
            newBuilder.setType(Request.ProtoType.SET_ROOM_CLOSE_P4_POSITION);
        }
        newBuilder.setParams(Params.newBuilder().setRoomId(i2).setClosePosition(z3).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    private static ByteBuffer createByteBufferByBattleRequest(Request request) {
        byte[] byteArray = request.toByteArray();
        int length = byteArray.length;
        ByteBuffer createBuffer = SocketUtils.createBuffer(length + 4);
        createBuffer.putInt(length);
        createBuffer.put(byteArray);
        return createBuffer;
    }

    public static ByteBuffer createRoom(int i2, long j4, long j5, int i4, int i5, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.CREATE_GAME_ROOM).setParams(Params.newBuilder().setPingVal(i4).setUsePeripheral(z6).setUid(i2).setChallengeCoins(i5).setAllowPeripheralJoin(z3).setAllowPCJoin(z4).setAllowSpectatorJoin(z5).setGameId(j4).setFromLive(z7).build()).setVersion(2).setRequestId(j5).build());
    }

    public static ByteBuffer fastJoinRoom(long j4, int i2, int i4, boolean z3, long j5) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.QUICK_JOIN_ROOM);
        newBuilder.setParams(Params.newBuilder().setGameId(j4).setUsePeripheral(z3).setPingVal(i4).setCollectionId(i2).build());
        newBuilder.setVersion(2).setRequestId(j5);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer getFrameForwardServer(int i2, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.GET_UDP_FRAME_SERVER);
        newBuilder.setParams(Params.newBuilder().setRoomId(i2).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer getKickPlayerInfo(int i2, int i4, int i5, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.GET_KICK_OUT_ROOM_POSITION_INFO);
        newBuilder.setParams(Params.newBuilder().setRoomPositionIndex(i4).setRoomId(i2).setPingVal(i5).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer joinBattleArea(BattleArea battleArea, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.JOIN_BATTLE_AREA);
        newBuilder.setParams(Params.newBuilder().setBattleArea(battleArea).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer joinRoom(int i2, String str, boolean z3, int i4, long j4) {
        Params build;
        if (TextUtils.isEmpty(str)) {
            build = Params.newBuilder().setPingVal(i4).setUsePeripheral(z3).setRoomId(i2).build();
        } else {
            build = Params.newBuilder().setPingVal(i4).setUsePeripheral(z3).setPassword(str).setRoomId(i2).build();
        }
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.JOIN_ROOM).setParams(build).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer kickOutRoomPosition(int i2, int i4, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.KICK_OUT_ROOM_POSITION);
        newBuilder.setParams(Params.newBuilder().setRoomId(i2).setRoomPositionIndex(i4).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer leaveRoom(int i2, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.LEAVE_ROOM).setParams(Params.newBuilder().setRoomId(i2).build()).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer lobbyStartGame(int i2, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.LOBBY_START_GAME);
        newBuilder.setParams(Params.newBuilder().setRoomId(i2).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer login(String str, int i2, String str2, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.LOGIN).setParams(Params.newBuilder().setChannelType(Params.ChannelType.ANDROID).setDeviceId(str2).setUid(i2).setToken(str).build()).setRequestId(j4).setVersion(2).build());
    }

    public static ByteBuffer ping(long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.PING).setParams(Params.newBuilder().setTimestamp(System.currentTimeMillis())).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer playerReadyGame(int i2, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.PLAYER_READY_GAME);
        newBuilder.setParams(Params.newBuilder().setRoomId(i2).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer searchRoomByID(int i2, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.SEARCH_ROOM_BY_ID);
        newBuilder.setParams(Params.newBuilder().setRoomId(i2).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer setAllowPcJoin(int i2, boolean z3, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_ALLOW_PC_JOIN).setParams(Params.newBuilder().setAllowPCJoin(z3).setRoomId(i2).build()).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer setAllowPeripheralJoin(int i2, boolean z3, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_PERIPHERAL_JOIN_ATTR).setParams(Params.newBuilder().setAllowPeripheralJoin(z3).setRoomId(i2).build()).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer setAllowSpectatorJoin(int i2, boolean z3, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_SPECTATOR_JOIN_ATTR).setParams(Params.newBuilder().setAllowSpectatorJoin(z3).setRoomId(i2).build()).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer setChallengeCoins(int i2, int i4, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_CHALLENGE_COINS_ATTR).setParams(Params.newBuilder().setChallengeCoins(i4).setRoomId(i2).build()).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer setRoomPassword(int i2, String str, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_PASSWORD_ATTR).setParams(Params.newBuilder().setPassword(str).setRoomId(i2).build()).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer setRoomServerPlayMode(int i2, int i4, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_SERVER_PLAY_MODE).setParams(Params.newBuilder().setPlayMode(i2 == 1 ? Params.ServerPlayMode.FAST : Params.ServerPlayMode.ZONE).setRoomId(i4).build()).setVersion(2).setRequestId(j4).build());
    }

    public static ByteBuffer shareJoinRoom(long j4, int i2, long j5, String str, int i4, boolean z3, long j6) {
        Params build;
        if (TextUtils.isEmpty(str)) {
            build = Params.newBuilder().setGameId(j4).setPingVal(i4).setFightId(j5).setUsePeripheral(z3).setRoomId(i2).build();
        } else {
            build = Params.newBuilder().setPassword(str).setPingVal(i4).setGameId(j4).setFightId(j5).setUsePeripheral(z3).setRoomId(i2).build();
        }
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.SHARE_JOIN_ROOM);
        newBuilder.setParams(build);
        newBuilder.setVersion(2).setRequestId(j6);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer spectatorSit(int i2, int i4, int i5, long j4) {
        Request.Builder newBuilder = Request.newBuilder();
        newBuilder.setType(Request.ProtoType.ROOM_SPECTATOR_SIT);
        newBuilder.setParams(Params.newBuilder().setRoomPositionIndex(i4).setRoomId(i2).setPingVal(i5).build());
        newBuilder.setVersion(2).setRequestId(j4);
        return createByteBufferByBattleRequest(newBuilder.build());
    }

    public static ByteBuffer subscribeGameRoom(int i2, Params.RoomType roomType, long j4) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SUBSCRIBE_GAME_COLLECTION).setParams(Params.newBuilder().setRoomType(roomType).setCollectionId(i2).build()).setVersion(2).setRequestId(j4).build());
    }
}
