package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class DownloadGameArgsBean implements Serializable {
    String ext;
    int from;
    boolean fromRecommend;
    int fromType;
    String gameId;
    String keyWord;
    String nodeId;
    String recPosition;
    String remarks;
    String volcanoOther;

    public String getExt() {
        return this.ext;
    }

    public int getFrom() {
        return this.from;
    }

    public int getFromType() {
        return this.fromType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getKeyWord() {
        return this.keyWord;
    }

    public String getNodeId() {
        return this.nodeId;
    }

    public String getRecPosition() {
        return this.recPosition;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public String getVolcanoOther() {
        return this.volcanoOther;
    }

    public boolean isFromRecommend() {
        return this.fromRecommend;
    }

    public void setExt(String str) {
        this.ext = str;
    }

    public void setFrom(int i2) {
        this.from = i2;
    }

    public void setFromRecommend(boolean z3) {
        this.fromRecommend = z3;
    }

    public void setFromType(int i2) {
        this.fromType = i2;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setKeyWord(String str) {
        this.keyWord = str;
    }

    public void setNodeId(String str) {
        this.nodeId = str;
    }

    public void setRecPosition(String str) {
        this.recPosition = str;
    }

    public void setRemarks(String str) {
        this.remarks = str;
    }

    public void setVolcanoOther(String str) {
        this.volcanoOther = str;
    }
}
