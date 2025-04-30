package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import java.io.Serializable;
/* loaded from: classes.dex */
public class GamePaiWeiUpTaskTable implements Serializable {
    @DatabaseField
    private int cost_coin;
    @DatabaseField
    private String filePath;
    @DatabaseField
    private String gameId;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private boolean isUped;
    @DatabaseField
    private int numPlayers;
    @DatabaseField
    private String playId;
    @DatabaseField
    private long playTime;
    @DatabaseField
    private int rank_auto_upload;
    @DatabaseField
    private long rank_play_time;
    @DatabaseField
    private int role_id;
    @DatabaseField
    private String userId;

    public GamePaiWeiUpTaskTable() {
    }

    public int getCost_coin() {
        return this.cost_coin;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.id;
    }

    public int getNumPlayers() {
        return this.numPlayers;
    }

    public String getPlayId() {
        return this.playId;
    }

    public long getPlayTime() {
        return this.playTime;
    }

    public int getRank_auto_upload() {
        return this.rank_auto_upload;
    }

    public long getRank_play_time() {
        return this.rank_play_time;
    }

    public int getRole_id() {
        return this.role_id;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isUped() {
        return this.isUped;
    }

    public void setCost_coin(int i2) {
        this.cost_coin = i2;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setNumPlayers(int i2) {
        this.numPlayers = i2;
    }

    public void setPlayId(String str) {
        this.playId = str;
    }

    public void setPlayTime(long j4) {
        this.playTime = j4;
    }

    public void setRank_auto_upload(int i2) {
        this.rank_auto_upload = i2;
    }

    public void setRank_play_time(long j4) {
        this.rank_play_time = j4;
    }

    public void setRole_id(int i2) {
        this.role_id = i2;
    }

    public void setUped(boolean z3) {
        this.isUped = z3;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public GamePaiWeiUpTaskTable(String str, String str2, String str3, int i2, String str4, boolean z3, long j4) {
        setUserId(str);
        setPlayId(str2);
        setGameId(str3);
        setNumPlayers(i2);
        setFilePath(str4);
        setUped(z3);
        setPlayTime(j4);
    }

    public GamePaiWeiUpTaskTable(String str, String str2, String str3, int i2, String str4, boolean z3, long j4, int i4, int i5, int i6, int i7) {
        setUserId(str);
        setPlayId(str2);
        setGameId(str3);
        setNumPlayers(i2);
        setFilePath(str4);
        setUped(z3);
        setPlayTime(j4);
        setCost_coin(i4);
        setRole_id(i5);
        setRank_auto_upload(i6);
        setRank_play_time(i7);
    }
}
