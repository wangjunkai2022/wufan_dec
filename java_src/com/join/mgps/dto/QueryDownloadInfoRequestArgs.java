package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class QueryDownloadInfoRequestArgs {
    private String dataType;
    private String gameId;
    private List<String> gameIdList;
    private String isRecommend;
    private String token;
    private String uid;

    public String getDataType() {
        return this.dataType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public List<String> getGameIdList() {
        return this.gameIdList;
    }

    public String getIsRecommend() {
        return this.isRecommend;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setDataType(String str) {
        this.dataType = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGameIdList(List<String> list) {
        this.gameIdList = list;
    }

    public void setIsRecommend(String str) {
        this.isRecommend = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
