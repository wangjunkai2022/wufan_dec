package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class BbsCommentListBean {
    private String avatar;
    private Integer commentId;
    private String createTime;
    private Integer id;
    private boolean isReplay = true;
    private Integer like;
    private String msg;
    private String nickname;
    private Integer pid;
    private Boolean praise;
    private String ravatar;
    private int replies;
    private Integer reply;
    private List<BbsCommentListBean> replyList;
    private String rnickname;
    private Integer ruid;
    private Integer status;
    private Integer uid;

    public String getAvatar() {
        return this.avatar;
    }

    public Integer getCommentId() {
        return this.commentId;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public Integer getId() {
        return this.id;
    }

    public Integer getLike() {
        return this.like;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getNickname() {
        return this.nickname;
    }

    public Integer getPid() {
        return this.pid;
    }

    public Boolean getPraise() {
        return this.praise;
    }

    public String getRavatar() {
        return this.ravatar;
    }

    public int getReplies() {
        return this.replies;
    }

    public Integer getReply() {
        return this.reply;
    }

    public List<BbsCommentListBean> getReplyList() {
        return this.replyList;
    }

    public String getRnickname() {
        return this.rnickname;
    }

    public Integer getRuid() {
        return this.ruid;
    }

    public Integer getStatus() {
        return this.status;
    }

    public Integer getUid() {
        return this.uid;
    }

    public boolean isReplay() {
        return this.isReplay;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCommentId(Integer num) {
        this.commentId = num;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public void setLike(Integer num) {
        this.like = num;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPid(Integer num) {
        this.pid = num;
    }

    public void setPraise(Boolean bool) {
        this.praise = bool;
    }

    public void setRavatar(String str) {
        this.ravatar = str;
    }

    public void setReplay(boolean z3) {
        this.isReplay = z3;
    }

    public void setReplies(int i2) {
        this.replies = i2;
    }

    public void setReply(Integer num) {
        this.reply = num;
    }

    public void setReplyList(List<BbsCommentListBean> list) {
        this.replyList = list;
    }

    public void setRnickname(String str) {
        this.rnickname = str;
    }

    public void setRuid(Integer num) {
        this.ruid = num;
    }

    public void setStatus(Integer num) {
        this.status = num;
    }

    public void setUid(Integer num) {
        this.uid = num;
    }
}
