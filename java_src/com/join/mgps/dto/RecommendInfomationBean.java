package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class RecommendInfomationBean implements Serializable {
    private int commit;
    private String ico_remote;
    private String[] pic_list;
    private int post_id;
    private int praise;
    private long times;
    private String title;
    private String type;
    private String type_color;
    private int view;

    public int getCommit() {
        return this.commit;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String[] getPic_list() {
        return this.pic_list;
    }

    public int getPost_id() {
        return this.post_id;
    }

    public int getPraise() {
        return this.praise;
    }

    public long getTimes() {
        return this.times * 1000;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public String getType_color() {
        return this.type_color;
    }

    public int getView() {
        return this.view;
    }

    public void setCommit(int i2) {
        this.commit = i2;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setPic_list(String[] strArr) {
        this.pic_list = strArr;
    }

    public void setPost_id(int i2) {
        this.post_id = i2;
    }

    public void setPraise(int i2) {
        this.praise = i2;
    }

    public void setTimes(long j4) {
        this.times = j4;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setType_color(String str) {
        this.type_color = str;
    }

    public void setView(int i2) {
        this.view = i2;
    }
}
