package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommitIdBean {
    private int id;
    private String pic;
    private String title;

    public CommitIdBean() {
    }

    public int getId() {
        return this.id;
    }

    public String getPic() {
        return this.pic;
    }

    public String getTitle() {
        return this.title;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setPic(String str) {
        this.pic = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "CommitIdBean{id=" + this.id + ", title='" + this.title + "', pic='" + this.pic + "'}";
    }

    public CommitIdBean(int i2, String str, String str2) {
        this.id = i2;
        this.title = str;
        this.pic = str2;
    }
}
