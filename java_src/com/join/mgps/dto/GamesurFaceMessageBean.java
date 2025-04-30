package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GamesurFaceMessageBean {
    GamesurFaceDataBean data;

    public GamesurFaceMessageBean() {
    }

    public GamesurFaceDataBean getData() {
        return this.data;
    }

    public void setData(GamesurFaceDataBean gamesurFaceDataBean) {
        this.data = gamesurFaceDataBean;
    }

    public String toString() {
        return "GamesurFaceMessageBean{data=" + this.data + '}';
    }

    public GamesurFaceMessageBean(GamesurFaceDataBean gamesurFaceDataBean) {
        this.data = gamesurFaceDataBean;
    }
}
