package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class NetBattleLoginRep implements Serializable {
    public static final int TYPE_AGAIN_START = 16;
    public static final int TYPE_BAK_NETWORK = 8;
    public static final int TYPE_CANCEL_INVITE_BEGIN = 21;
    public static final int TYPE_CANCEL_MATCH = 3;
    public static final int TYPE_CANCEL_READY = 15;
    public static final int TYPE_INVITE_BEGIN = 20;
    public static final int TYPE_INVITE_CREATE = 19;
    public static final int TYPE_LOGIN = 0;
    public static final int TYPE_MATCH = 2;
    public static final int TYPE_MATCHING = 9;
    public static final int TYPE_MATCH_DISCONNECT = 6;
    public static final int TYPE_MATCH_KICK_OFF = 5;
    public static final int TYPE_MATCH_NOT_LOGIN = 7;
    public static final int TYPE_MATCH_QUIT_MATCH = 10;
    public static final int TYPE_MATCH_SUCCESS = 4;
    public static final int TYPE_OTHER_ERROR = 11;
    public static final int TYPE_P1_REMATCH = 17;
    public static final int TYPE_PING = 1;
    public static final int TYPE_READY = 13;
    public static final int TYPE_REMATCH_KICK = 18;
    public static final int TYPE_ROOM_IPPORT = 14;
    public static final int TYPE_ROOM_USERSTATE = 12;
    private byte archive;
    private String errContent;
    private long fightid;
    private long gameId;
    private String ip;
    private long logid;
    private int ping;
    private int[] pingList;
    private int port;
    private long roomId;
    private byte rs;
    private int server_type;
    private byte tcptype;
    private long tuid;
    private int type;
    private int udpport;
    private long[] userlist;

    public byte getArchive() {
        return this.archive;
    }

    public String getErrContent() {
        return this.errContent;
    }

    public long getFightid() {
        return this.fightid;
    }

    public long getGameId() {
        return this.gameId;
    }

    public String getIp() {
        return this.ip;
    }

    public long getLogid() {
        return this.logid;
    }

    public int getPing() {
        return this.ping;
    }

    public int[] getPingList() {
        return this.pingList;
    }

    public int getPort() {
        return this.port;
    }

    public long getRoomId() {
        return this.roomId;
    }

    public byte getRs() {
        return this.rs;
    }

    public int getServer_type() {
        return this.server_type;
    }

    public byte getTcptype() {
        return this.tcptype;
    }

    public long getTuid() {
        return this.tuid;
    }

    public int getType() {
        return this.type;
    }

    public int getUdpport() {
        return this.udpport;
    }

    public long[] getUserlist() {
        return this.userlist;
    }

    public void setArchive(byte b4) {
        this.archive = b4;
    }

    public void setErrContent(String str) {
        this.errContent = str;
    }

    public void setFightid(long j4) {
        this.fightid = j4;
    }

    public void setGameId(long j4) {
        this.gameId = j4;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setLogid(long j4) {
        this.logid = j4;
    }

    public void setPing(int i2) {
        this.ping = i2;
    }

    public void setPingList(int[] iArr) {
        this.pingList = iArr;
    }

    public void setPort(int i2) {
        this.port = i2;
    }

    public void setRoomId(long j4) {
        this.roomId = j4;
    }

    public void setRs(byte b4) {
        this.rs = b4;
    }

    public void setServer_type(int i2) {
        this.server_type = i2;
    }

    public void setTcptype(byte b4) {
        this.tcptype = b4;
    }

    public void setTuid(long j4) {
        this.tuid = j4;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUdpport(int i2) {
        this.udpport = i2;
    }

    public void setUserlist(long[] jArr) {
        this.userlist = jArr;
    }
}
