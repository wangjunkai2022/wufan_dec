package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GamesurFaceDataBean {
    private List<RecomDatabean> adinfo;
    private List<CommitIdBean> postid;
    private String practice;

    public GamesurFaceDataBean() {
    }

    public List<RecomDatabean> getAdinfo() {
        return this.adinfo;
    }

    public List<CommitIdBean> getPostid() {
        return this.postid;
    }

    public String getPractice() {
        return this.practice;
    }

    public void setAdinfo(List<RecomDatabean> list) {
        this.adinfo = list;
    }

    public void setPostid(List<CommitIdBean> list) {
        this.postid = list;
    }

    public void setPractice(String str) {
        this.practice = str;
    }

    public String toString() {
        return "GamesurFaceDataBean{postid=" + this.postid + ", adinfo=" + this.adinfo + ", practice='" + this.practice + "'}";
    }

    public GamesurFaceDataBean(List<CommitIdBean> list) {
        this.postid = list;
    }
}
