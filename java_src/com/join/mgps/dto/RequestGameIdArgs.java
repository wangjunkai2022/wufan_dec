package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class RequestGameIdArgs {
    private List<Long> downloadedGameIdList;
    private String gameId;
    private String game_id;
    private long lastEnterTime;
    private int page;
    private int pc;
    private int pn;
    private String tagId;
    private String tagName;
    private String tagType;
    private int tag_id;
    private String token;
    private int type;
    private int uid;

    public RequestGameIdArgs() {
        this.pc = 10;
        this.tag_id = 0;
        this.uid = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
    }

    public List<Long> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public long getLastEnterTime() {
        return this.lastEnterTime;
    }

    public int getPage() {
        return this.page;
    }

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public String getTagId() {
        return this.tagId;
    }

    public String getTagName() {
        return this.tagName;
    }

    public String getTagType() {
        return this.tagType;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public String getToken() {
        return this.token;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDownloadedGameIdList(List<Long> list) {
        this.downloadedGameIdList = list;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setLastEnterTime(long j4) {
        this.lastEnterTime = j4;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setTagId(String str) {
        this.tagId = str;
    }

    public void setTagName(String str) {
        this.tagName = str;
    }

    public void setTagType(String str) {
        this.tagType = str;
    }

    public void setTag_id(int i2) {
        this.tag_id = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public RequestGameIdArgs(int i2, String str, String str2, String str3) {
        this.pc = 10;
        this.tag_id = 0;
        this.uid = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.page = i2;
        this.tagId = str;
        this.tagName = str2;
        this.tagType = str3;
    }

    public RequestGameIdArgs(String str, int i2, int i4, int i5) {
        this.pc = 10;
        this.tag_id = 0;
        this.uid = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.game_id = str;
        this.pn = i2;
        this.tag_id = i4;
        this.uid = i5;
    }

    public RequestGameIdArgs(String str, int i2, int i4) {
        this.pc = 10;
        this.tag_id = 0;
        this.uid = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.game_id = str;
        this.gameId = str;
        this.pn = i2;
        this.page = i2;
        this.uid = i4;
    }

    public RequestGameIdArgs(String str, String str2, int i2) {
        this.pc = 10;
        this.tag_id = 0;
        this.uid = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.game_id = str;
        this.token = str2;
        this.uid = i2;
    }

    public RequestGameIdArgs(String str, int i2, int i4, long j4, String str2, int i5) {
        this.pc = 10;
        this.tag_id = 0;
        this.uid = 0;
        this.lastEnterTime = 0L;
        this.type = 0;
        this.gameId = str;
        this.page = i2;
        this.uid = i4;
        this.lastEnterTime = j4;
        this.tagId = str2;
        this.type = i5;
    }
}
