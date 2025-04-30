package com.join.mgps.dto;

import com.join.mgps.dto.ForumBean;
/* loaded from: classes4.dex */
public class ForumProfileMessageBean {
    public static final String TYPE_BEST = "best";
    public static final String TYPE_BESTANSWER = "bestanswer";
    public static final String TYPE_COMMENT = "comment";
    public static final String TYPE_PRAISE = "praise";
    public static final String TYPE_REPLY = "reply";
    private long add_time;
    private int comment_id;
    private String from_avatar_src;
    private String from_nickname;
    private boolean from_officialAccount;
    private String from_type;
    private int from_uid;
    private String message;
    private int pid;
    private ForumBean.ForumPostsBean posts;
    private ForumBean.ForumCommentReplyBean reply;
    private int rid;
    private int svip_level;
    private int vip_level;

    public long getAdd_time() {
        return this.add_time;
    }

    public int getComment_id() {
        return this.comment_id;
    }

    public String getFrom_avatar_src() {
        return this.from_avatar_src;
    }

    public String getFrom_nickname() {
        return this.from_nickname;
    }

    public String getFrom_type() {
        return this.from_type;
    }

    public int getFrom_uid() {
        return this.from_uid;
    }

    public String getMessage() {
        return this.message;
    }

    public int getPid() {
        return this.pid;
    }

    public ForumBean.ForumPostsBean getPosts() {
        return this.posts;
    }

    public ForumBean.ForumCommentReplyBean getReply() {
        return this.reply;
    }

    public int getRid() {
        return this.rid;
    }

    public int getSvip_level() {
        return this.svip_level;
    }

    public int getVip_level() {
        return this.vip_level;
    }

    public boolean isFrom_officialAccount() {
        return this.from_officialAccount;
    }

    public void setAdd_time(long j4) {
        this.add_time = j4;
    }

    public void setComment_id(int i2) {
        this.comment_id = i2;
    }

    public void setComment_pid(int i2) {
        this.comment_id = i2;
    }

    public void setFrom_avatar_src(String str) {
        this.from_avatar_src = str;
    }

    public void setFrom_nickname(String str) {
        this.from_nickname = str;
    }

    public void setFrom_officialAccount(boolean z3) {
        this.from_officialAccount = z3;
    }

    public void setFrom_type(String str) {
        this.from_type = str;
    }

    public void setFrom_uid(int i2) {
        this.from_uid = i2;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setPid(int i2) {
        this.pid = i2;
    }

    public void setPosts(ForumBean.ForumPostsBean forumPostsBean) {
        this.posts = forumPostsBean;
    }

    public void setReply(ForumBean.ForumCommentReplyBean forumCommentReplyBean) {
        this.reply = forumCommentReplyBean;
    }

    public void setRid(int i2) {
        this.rid = i2;
    }

    public void setSvip_level(int i2) {
        this.svip_level = i2;
    }

    public void setVip_level(int i2) {
        this.vip_level = i2;
    }
}
