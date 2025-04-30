package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.join.mgps.dto.ForumBean;
/* loaded from: classes4.dex */
public class CommentSelfListBean {
    private ForumBean.GameInfo game_info;
    private SelfComment self_comment;

    /* loaded from: classes.dex */
    public static class SelfComment {
        private long add_times;
        private double approval_rate;
        private String content;
        private int despise_count;
        private String game_id;
        private String head_portrait;
        private int id;
        @JsonProperty("is_despise")
        private int is_despise;
        @JsonProperty("is_old")
        private int is_old;
        @JsonProperty("is_praise")
        private int is_praise;
        private String mobile_phone_model;
        private int praise_count;
        private String rank;
        private int reply_count;
        private int stars_score;
        private int start_game_count;
        private int uid;
        private String user_name;

        public long getAdd_times() {
            return this.add_times;
        }

        public double getApproval_rate() {
            return this.approval_rate;
        }

        public String getContent() {
            return this.content;
        }

        public int getDespise_count() {
            return this.despise_count;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public String getHead_portrait() {
            return this.head_portrait;
        }

        public int getId() {
            return this.id;
        }

        public int getIs_despise() {
            return this.is_despise;
        }

        public int getIs_old() {
            return this.is_old;
        }

        public int getIs_praise() {
            return this.is_praise;
        }

        public String getMobile_phone_model() {
            return this.mobile_phone_model;
        }

        public int getPraise_count() {
            return this.praise_count;
        }

        public String getRank() {
            return this.rank;
        }

        public int getReply_count() {
            return this.reply_count;
        }

        public int getStars_score() {
            return this.stars_score;
        }

        public int getStart_game_count() {
            return this.start_game_count;
        }

        public int getUid() {
            return this.uid;
        }

        public String getUser_name() {
            return this.user_name;
        }

        public void setAdd_times(long j4) {
            this.add_times = j4;
        }

        public void setApproval_rate(double d4) {
            this.approval_rate = d4;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setDespise_count(int i2) {
            this.despise_count = i2;
        }

        public void setGame_id(String str) {
            this.game_id = str;
        }

        public void setHead_portrait(String str) {
            this.head_portrait = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setIs_despise(int i2) {
            this.is_despise = i2;
        }

        public void setIs_old(int i2) {
            this.is_old = i2;
        }

        public void setIs_praise(int i2) {
            this.is_praise = i2;
        }

        public void setMobile_phone_model(String str) {
            this.mobile_phone_model = str;
        }

        public void setPraise_count(int i2) {
            this.praise_count = i2;
        }

        public void setRank(String str) {
            this.rank = str;
        }

        public void setReply_count(int i2) {
            this.reply_count = i2;
        }

        public void setStars_score(int i2) {
            this.stars_score = i2;
        }

        public void setStart_game_count(int i2) {
            this.start_game_count = i2;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public void setUser_name(String str) {
            this.user_name = str;
        }
    }

    public ForumBean.GameInfo getGame_info() {
        return this.game_info;
    }

    public SelfComment getSelf_comment() {
        return this.self_comment;
    }

    public void setGame_info(ForumBean.GameInfo gameInfo) {
        this.game_info = gameInfo;
    }

    public void setSelf_comment(SelfComment selfComment) {
        this.self_comment = selfComment;
    }
}
