package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ExtBean implements Serializable {
    private int _from_type;
    private String from;
    private String from_id;
    private boolean isOnlineGame;
    private String location;
    private String modId;
    private String nodeId;
    private String position;
    private String reMarks;
    private String recPosition;
    private String volcanoOther;

    public ExtBean() {
    }

    public String getFrom() {
        return this.from;
    }

    public String getFrom_id() {
        return this.from_id;
    }

    public String getLocation() {
        return this.location;
    }

    public String getModId() {
        return this.modId;
    }

    public String getNodeId() {
        return this.nodeId;
    }

    public String getPosition() {
        return this.position;
    }

    public String getReMarks() {
        return this.reMarks;
    }

    public String getRecPosition() {
        return this.recPosition;
    }

    public String getVolcanoOther() {
        return this.volcanoOther;
    }

    public int get_from_type() {
        return this._from_type;
    }

    public boolean isOnlineGame() {
        return this.isOnlineGame;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setFrom_id(String str) {
        this.from_id = str;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setModId(String str) {
        this.modId = str;
    }

    public void setNodeId(String str) {
        this.nodeId = str;
    }

    public ExtBean setOnlineGame(boolean z3) {
        this.isOnlineGame = z3;
        return this;
    }

    public void setPosition(String str) {
        this.position = str;
    }

    public ExtBean setReMarks(String str) {
        this.reMarks = str;
        return this;
    }

    public ExtBean setRecPosition(String str) {
        this.recPosition = str;
        return this;
    }

    public ExtBean setVolcanoOther(String str) {
        this.volcanoOther = str;
        return this;
    }

    public ExtBean set_from_type(int i2) {
        this._from_type = i2;
        return this;
    }

    public ExtBean(int i2) {
        this._from_type = i2;
    }

    public ExtBean(String str, String str2) {
        this.from = str;
        this.position = str2;
    }

    public ExtBean(String str, String str2, String str3) {
        this.from = str;
        this.from_id = str2;
        this.position = str3;
    }
}
