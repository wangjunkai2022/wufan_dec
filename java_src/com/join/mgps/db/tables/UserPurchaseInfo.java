package com.join.mgps.db.tables;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
@DatabaseTable(tableName = "user_purchase_info_table")
/* loaded from: classes.dex */
public class UserPurchaseInfo {
    @DatabaseField(columnName = "cheat_expire_time")
    @JsonProperty("cheat_expire_time")
    private String cheatExpireTime;
    @DatabaseField(columnName = "game_id")
    @JsonProperty("game_id")
    private String gameId;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField(columnName = "is_open_cheat")
    @JsonProperty("is_open_cheat")
    private String isOpenCheat;
    @DatabaseField(columnName = "is_open_sp")
    @JsonProperty("is_open_sp")
    private String isOpenSp;
    @DatabaseField(columnName = "sp_expire_time")
    @JsonProperty("sp_expire_time")
    private String spExpireTime;
    @DatabaseField(columnName = "uid")
    private String uid;

    public String getCheatExpireTime() {
        return this.cheatExpireTime;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.id;
    }

    public String getIsOpenCheat() {
        return this.isOpenCheat;
    }

    public String getIsOpenSp() {
        return this.isOpenSp;
    }

    public String getSpExpireTime() {
        return this.spExpireTime;
    }

    public String getUid() {
        return this.uid;
    }

    public void setCheatExpireTime(String str) {
        this.cheatExpireTime = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setIsOpenCheat(String str) {
        this.isOpenCheat = str;
    }

    public void setIsOpenSp(String str) {
        this.isOpenSp = str;
    }

    public void setSpExpireTime(String str) {
        this.spExpireTime = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
