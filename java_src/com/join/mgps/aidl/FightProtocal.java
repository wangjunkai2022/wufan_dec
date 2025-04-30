package com.join.mgps.aidl;
/* loaded from: classes3.dex */
public class FightProtocal {
    public static byte TYPE_ACK = 0;
    public static byte TYPE_AckDISCONNECT = 2;
    public static byte TYPE_DISCONNECT = 1;
    public static byte TYPE_MISMATCH = 4;
    public static byte TYPE_STARTGAME = 3;
    public static byte TYPE_SYNC = 5;
    private String brand;
    private String gameId;
    private String gameName;
    private byte no;
    private String opponent;
    private byte type;

    public String getBrand() {
        return this.brand;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameName() {
        return this.gameName;
    }

    public byte getNo() {
        return this.no;
    }

    public String getOpponent() {
        return this.opponent;
    }

    public byte getType() {
        return this.type;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGameName(String str) {
        this.gameName = str;
    }

    public void setNo(byte b4) {
        this.no = b4;
    }

    public void setOpponent(String str) {
        this.opponent = str;
    }

    public void setType(byte b4) {
        this.type = b4;
    }
}
