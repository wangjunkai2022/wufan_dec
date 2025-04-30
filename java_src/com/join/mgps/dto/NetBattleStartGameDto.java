package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
/* loaded from: classes4.dex */
public class NetBattleStartGameDto {
    private int RoomMode;
    private String area;
    private String clientIp;
    private String gameID;
    private int gamePlayers;
    private int gameype;
    private int groupId;
    private int netPlayers;
    private int oldGame;
    private String p1Name;
    private String p2Name;
    private int porder;
    private String result_show_type;
    private String roomID;
    private String serverIP;
    private int serverPort;
    private int tcptype;
    private String udpIP;
    private int udpport;
    private String userID;
    private String userIcon;
    private String userName;
    private boolean allowPeripheralJoin = true;
    private boolean allowPCJoin = true;

    public String getArea() {
        return this.area;
    }

    public String getClientIp() {
        return this.clientIp;
    }

    public String getGameID() {
        return this.gameID;
    }

    public int getGamePlayers() {
        return this.gamePlayers;
    }

    public int getGameype() {
        return this.gameype;
    }

    public int getGroupId() {
        return this.groupId;
    }

    public int getNetPlayers() {
        return this.netPlayers;
    }

    public int getOldGame() {
        return this.oldGame;
    }

    public String getP1Name() {
        return this.p1Name;
    }

    public String getP2Name() {
        return this.p2Name;
    }

    public int getPorder() {
        return this.porder;
    }

    public String getResult_show_type() {
        return this.result_show_type;
    }

    public String getRoomID() {
        return this.roomID;
    }

    public int getRoomMode() {
        return this.RoomMode;
    }

    public String getServerIP() {
        return this.serverIP;
    }

    public int getServerPort() {
        return this.serverPort;
    }

    public int getTcptype() {
        return this.tcptype;
    }

    public String getUdpIP() {
        return this.udpIP;
    }

    public int getUdpport() {
        return this.udpport;
    }

    public String getUserID() {
        return this.userID;
    }

    public String getUserIcon() {
        return this.userIcon;
    }

    public String getUserName() {
        return this.userName;
    }

    public boolean isAllowPCJoin() {
        return this.allowPCJoin;
    }

    public boolean isAllowPeripheralJoin() {
        return this.allowPeripheralJoin;
    }

    public void setAllowPCJoin(boolean z3) {
        this.allowPCJoin = z3;
    }

    public void setAllowPeripheralJoin(boolean z3) {
        this.allowPeripheralJoin = z3;
    }

    public void setArea(String str) {
        this.area = str;
    }

    public void setClientIp(String str) {
        this.clientIp = str;
    }

    public void setGameID(String str) {
        this.gameID = str;
    }

    public void setGamePlayers(int i2) {
        this.gamePlayers = i2;
    }

    public void setGameype(int i2) {
        this.gameype = i2;
    }

    public void setGroupId(int i2) {
        this.groupId = i2;
    }

    public void setNetPlayers(int i2) {
        this.netPlayers = i2;
    }

    public void setOldGame(int i2) {
        this.oldGame = i2;
    }

    public void setP1Name(String str) {
        this.p1Name = str;
    }

    public void setP2Name(String str) {
        this.p2Name = str;
    }

    public void setPorder(int i2) {
        this.porder = i2;
    }

    public void setResult_show_type(String str) {
        this.result_show_type = str;
    }

    public void setRoomID(String str) {
        this.roomID = str;
    }

    public void setRoomMode(int i2) {
        this.RoomMode = i2;
    }

    public void setServerIP(String str) {
        this.serverIP = str;
    }

    public void setServerPort(int i2) {
        this.serverPort = i2;
    }

    public void setTcptype(int i2) {
        this.tcptype = i2;
    }

    public void setUdpIP(String str) {
        this.udpIP = str;
    }

    public void setUdpport(int i2) {
        this.udpport = i2;
    }

    public void setUserID(String str) {
        this.userID = str;
    }

    public void setUserIcon(String str) {
        this.userIcon = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String toString() {
        return JsonMapper.getInstance().toJson(this);
    }
}
