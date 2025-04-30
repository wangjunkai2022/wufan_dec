package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class InformationCommentBean implements Serializable {
    private boolean bolHaveCommit = true;
    private String collection_id;
    private String comment_id;
    private String content;
    private boolean hasPraised;
    private String head_portrait;
    private String information_id;
    private boolean isTitle;
    private int is_hot;
    private String mobile_phone_model;
    private String praise_count;
    private String reply_comment_id;
    private String reply_user_id;
    private List<Sub> sub;
    private String times;
    private String user_id;
    private int user_level;
    private String user_name;
    private int user_svip_level;
    private int user_vip_level;

    /* loaded from: classes4.dex */
    public static class Sub implements Serializable {
        private String comment_id;
        private String content;
        private String game_id;
        private boolean hasPraised;
        private String head_portrait;
        private int is_hot;
        private String mapping;
        private String mobile_phone_model;
        private String pid;
        private int praise_count;
        private String reply_comment_id;
        private String reply_user_id;
        private String times;
        private String uid;
        private String user_id;
        private int user_level;
        private String user_name;
        private int user_svip_level;
        private int user_vip_level;

        public String getComment_id() {
            return this.comment_id;
        }

        public String getContent() {
            return this.content;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public String getHead_portrait() {
            return this.head_portrait;
        }

        public int getIs_hot() {
            return this.is_hot;
        }

        public String getMapping() {
            return this.mapping;
        }

        public String getMobile_phone_model() {
            return this.mobile_phone_model;
        }

        public String getPid() {
            return this.pid;
        }

        public int getPraise_count() {
            return this.praise_count;
        }

        public String getReply_comment_id() {
            return this.reply_comment_id;
        }

        public String getReply_user_id() {
            return this.reply_user_id;
        }

        public String getTimes() {
            return this.times;
        }

        public String getUid() {
            return this.uid;
        }

        public String getUser_id() {
            return this.user_id;
        }

        public int getUser_level() {
            return this.user_level;
        }

        public String getUser_name() {
            return this.user_name;
        }

        public int getUser_svip_level() {
            return this.user_svip_level;
        }

        public int getUser_vip_level() {
            return this.user_vip_level;
        }

        public boolean isHasPraised() {
            return this.hasPraised;
        }

        public void setComment_id(String str) {
            this.comment_id = str;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setGame_id(String str) {
            this.game_id = str;
        }

        public void setHasPraised(boolean z3) {
            this.hasPraised = z3;
        }

        public void setHead_portrait(String str) {
            this.head_portrait = str;
        }

        public void setIs_hot(int i2) {
            this.is_hot = i2;
        }

        public void setMapping(String str) {
            this.mapping = str;
        }

        public void setMobile_phone_model(String str) {
            this.mobile_phone_model = str;
        }

        public void setPid(String str) {
            this.pid = str;
        }

        public void setPraise_count(int i2) {
            this.praise_count = i2;
        }

        public void setReply_comment_id(String str) {
            this.reply_comment_id = str;
        }

        public void setReply_user_id(String str) {
            this.reply_user_id = str;
        }

        public void setTimes(String str) {
            this.times = str;
        }

        public void setUid(String str) {
            this.uid = str;
        }

        public void setUser_id(String str) {
            this.user_id = str;
        }

        public void setUser_level(int i2) {
            this.user_level = i2;
        }

        public void setUser_name(String str) {
            this.user_name = str;
        }

        public void setUser_svip_level(int i2) {
            this.user_svip_level = i2;
        }

        public void setUser_vip_level(int i2) {
            this.user_vip_level = i2;
        }
    }

    public InformationCommentBean() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getComment_id() {
        return this.comment_id;
    }

    public String getContent() {
        return this.content;
    }

    public String getHead_portrait() {
        return this.head_portrait;
    }

    public String getInformation_id() {
        return this.information_id;
    }

    public int getIs_hot() {
        return this.is_hot;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public String getPraise_count() {
        return this.praise_count;
    }

    public String getReply_comment_id() {
        return this.reply_comment_id;
    }

    public String getReply_user_id() {
        return this.reply_user_id;
    }

    public List<Sub> getSub() {
        return this.sub;
    }

    public String getTimes() {
        return this.times;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public int getUser_level() {
        return this.user_level;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public int getUser_svip_level() {
        return this.user_svip_level;
    }

    public int getUser_vip_level() {
        return this.user_vip_level;
    }

    public boolean isBolHaveCommit() {
        return this.bolHaveCommit;
    }

    public boolean isHasPraised() {
        return this.hasPraised;
    }

    public boolean isTitle() {
        return this.isTitle;
    }

    public void setBolHaveCommit(boolean z3) {
        this.bolHaveCommit = z3;
    }

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setComment_id(String str) {
        this.comment_id = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setHasPraised(boolean z3) {
        this.hasPraised = z3;
    }

    public void setHead_portrait(String str) {
        this.head_portrait = str;
    }

    public void setInformation_id(String str) {
        this.information_id = str;
    }

    public void setIs_hot(int i2) {
        this.is_hot = i2;
    }

    public void setMobile_phone_model(String str) {
        this.mobile_phone_model = str;
    }

    public void setPraise_count(String str) {
        this.praise_count = str;
    }

    public void setReply_comment_id(String str) {
        this.reply_comment_id = str;
    }

    public void setReply_user_id(String str) {
        this.reply_user_id = str;
    }

    public void setSub(List<Sub> list) {
        this.sub = list;
    }

    public void setTimes(String str) {
        this.times = str;
    }

    public void setTitle(boolean z3) {
        this.isTitle = z3;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public void setUser_level(int i2) {
        this.user_level = i2;
    }

    public void setUser_name(String str) {
        this.user_name = str;
    }

    public void setUser_svip_level(int i2) {
        this.user_svip_level = i2;
    }

    public void setUser_vip_level(int i2) {
        this.user_vip_level = i2;
    }

    public InformationCommentBean(InformationCommentBean informationCommentBean) {
        this.information_id = informationCommentBean.getInformation_id();
        this.collection_id = informationCommentBean.getCollection_id();
        this.comment_id = informationCommentBean.getComment_id();
        this.user_id = informationCommentBean.getUser_id();
        this.user_name = informationCommentBean.getUser_name();
        this.head_portrait = informationCommentBean.getHead_portrait();
        this.content = informationCommentBean.getContent();
        this.mobile_phone_model = informationCommentBean.getMobile_phone_model();
        this.times = informationCommentBean.getTimes();
        this.praise_count = informationCommentBean.getPraise_count();
        this.reply_comment_id = informationCommentBean.getReply_comment_id();
        this.reply_user_id = informationCommentBean.getReply_user_id();
        this.is_hot = informationCommentBean.getIs_hot();
        this.hasPraised = informationCommentBean.isHasPraised();
        this.user_level = informationCommentBean.getUser_level();
        this.isTitle = informationCommentBean.isTitle();
        this.user_vip_level = informationCommentBean.getUser_vip_level();
        this.user_svip_level = informationCommentBean.getUser_svip_level();
        if (this.sub == null) {
            this.sub = new ArrayList();
        }
        this.sub.addAll(informationCommentBean.getSub());
    }
}
