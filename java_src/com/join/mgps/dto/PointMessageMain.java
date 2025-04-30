package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PointMessageMain {
    public PointMessageData data;
    public String event = "gameDownload";
    public String gameId;

    public PointMessageData getData() {
        return this.data;
    }

    public String getEvent() {
        return this.event;
    }

    public String getGameId() {
        return this.gameId;
    }

    public void setData(PointMessageData pointMessageData) {
        this.data = pointMessageData;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }
}
