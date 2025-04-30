package app.mgsim.arena;

import com.papa91.battle.protocol.BattleArea;
/* loaded from: classes2.dex */
public class ArenaRequest {
    public boolean allowPCJoin;
    public boolean allowPeripheralJoin;
    public boolean allowSpectatorJoin;
    public BattleArea battleArea;
    public int coins;
    public int collectionId;
    public long fightId;
    public long gameId;
    public boolean isClosePosition;
    public boolean isElite = false;
    public boolean isFromLive = false;
    public boolean isRefreshing;
    public String password;
    public int playMode;
    public int position;
    public String register_type;
    public long requestId;
    public String request_type;
    public int roomId;
    public int roomType;
    public String token;
    public int uid;
    public boolean usePeripheral;

    public ArenaRequest(String str) {
        this.request_type = str;
    }

    public String toString() {
        return "ArenaRequest{request_type='" + this.request_type + "', isElite=" + this.isElite + ", isRefreshing=" + this.isRefreshing + ", requestId=" + this.requestId + ", register_type='" + this.register_type + "', roomType=" + this.roomType + ", uid=" + this.uid + ", token='" + this.token + "', gameId=" + this.gameId + ", roomId=" + this.roomId + ", coins=" + this.coins + ", password='" + this.password + "', allowSpectatorJoin=" + this.allowSpectatorJoin + ", allowPeripheralJoin=" + this.allowPeripheralJoin + ", position=" + this.position + ", isClosePosition=" + this.isClosePosition + ", usePeripheral=" + this.usePeripheral + ", fightId=" + this.fightId + ", battleArea=" + this.battleArea + ", collectionId=" + this.collectionId + ", playMode=" + this.playMode + ", isFromLive=" + this.isFromLive + '}';
    }

    public ArenaRequest(String str, String str2) {
        this.request_type = str;
        this.register_type = str2;
    }
}
