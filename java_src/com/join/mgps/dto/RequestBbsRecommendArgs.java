package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestBbsRecommendArgs {
    private Boolean firstReqInCurPage;
    private String gameId;
    private Integer page;
    private Integer postId;
    private Integer uid;

    public Boolean getFirstReqInCurPage() {
        return this.firstReqInCurPage;
    }

    public String getGameId() {
        return this.gameId;
    }

    public Integer getPage() {
        return this.page;
    }

    public Integer getPostId() {
        return this.postId;
    }

    public Integer getUid() {
        return this.uid;
    }

    public void setFirstReqInCurPage(Boolean bool) {
        this.firstReqInCurPage = bool;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setPage(Integer num) {
        this.page = num;
    }

    public void setPostId(Integer num) {
        this.postId = num;
    }

    public void setUid(Integer num) {
        this.uid = num;
    }
}
