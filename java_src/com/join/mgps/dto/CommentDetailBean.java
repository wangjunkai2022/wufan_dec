package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class CommentDetailBean implements Serializable {
    private GameInfoBean game_info;
    private List<MainCommentBean> main_comment;

    /* loaded from: classes4.dex */
    public static class GameInfoBean implements Serializable {
        private String game_ico;
        private String game_id;
        private int game_info_tpl_type;
        private String game_name;
        private int sp_tpl_two_position;

        public String getGame_ico() {
            return this.game_ico;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public int getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getGame_name() {
            return this.game_name;
        }

        public int getSp_tpl_two_position() {
            return this.sp_tpl_two_position;
        }

        public void setGame_ico(String str) {
            this.game_ico = str;
        }

        public void setGame_id(String str) {
            this.game_id = str;
        }

        public void setGame_info_tpl_type(int i2) {
            this.game_info_tpl_type = i2;
        }

        public void setGame_name(String str) {
            this.game_name = str;
        }

        public void setSp_tpl_two_position(int i2) {
            this.sp_tpl_two_position = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class MainCommentBean implements Serializable {
        private String add_times;
        private String approval_rate;
        private String content;
        private String despise_count;
        private String game_id;
        private String head_portrait;
        private String id;
        private int is_belong_to;
        private int is_despise;
        private String is_old;
        private int is_praise;
        private String mapping;
        private String mobile_phone_model;
        private int pn;
        private String praise_count;
        private String rank;
        private String reply_count;
        private String stars_score;
        private String start_game_count;
        private List<SubCommentBean> sub_comment;
        private int svip_level;
        private String uid;
        private String user_name;
        private int vip_level;

        /* loaded from: classes4.dex */
        public static class SubCommentBean implements Serializable {
            private String add_times;
            private String approval_rate;
            private String content;
            private long despise_count;
            private String game_id;
            private String head_portrait;
            private String id;
            private int is_despise;
            private String is_old;
            private int is_praise;
            private String mapping;
            private String mobile_phone_model;
            private long praise_count;
            private String rank;
            private String reply_count;
            private int reply_svip_level;
            private int reply_vip_level;
            private String stars_score;
            private String start_game_count;
            private int svip_level;
            private String uid;
            private String user_name;
            private int vip_level;

            public String getAdd_times() {
                return this.add_times;
            }

            public String getApproval_rate() {
                return this.approval_rate;
            }

            public String getContent() {
                return this.content;
            }

            public long getDespise_count() {
                return this.despise_count;
            }

            public String getGame_id() {
                return this.game_id;
            }

            public String getHead_portrait() {
                return this.head_portrait;
            }

            public String getId() {
                return this.id;
            }

            public int getIs_despise() {
                return this.is_despise;
            }

            public String getIs_old() {
                return this.is_old;
            }

            public int getIs_praise() {
                return this.is_praise;
            }

            public String getMapping() {
                return this.mapping;
            }

            public String getMobile_phone_model() {
                return this.mobile_phone_model;
            }

            public long getPraise_count() {
                return this.praise_count;
            }

            public String getRank() {
                return this.rank;
            }

            public String getReply_count() {
                return this.reply_count;
            }

            public int getReply_svip_level() {
                return this.reply_svip_level;
            }

            public int getReply_vip_level() {
                return this.reply_vip_level;
            }

            public String getStars_score() {
                return this.stars_score;
            }

            public String getStart_game_count() {
                return this.start_game_count;
            }

            public int getSvip_level() {
                return this.svip_level;
            }

            public String getUid() {
                return this.uid;
            }

            public String getUser_name() {
                return this.user_name;
            }

            public int getVip_level() {
                return this.vip_level;
            }

            public void setAdd_times(String str) {
                this.add_times = str;
            }

            public void setApproval_rate(String str) {
                this.approval_rate = str;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public void setDespise_count(long j4) {
                this.despise_count = j4;
            }

            public void setGame_id(String str) {
                this.game_id = str;
            }

            public void setHead_portrait(String str) {
                this.head_portrait = str;
            }

            public void setId(String str) {
                this.id = str;
            }

            public void setIs_despise(int i2) {
                this.is_despise = i2;
            }

            public void setIs_old(String str) {
                this.is_old = str;
            }

            public void setIs_praise(int i2) {
                this.is_praise = i2;
            }

            public void setMapping(String str) {
                this.mapping = str;
            }

            public void setMobile_phone_model(String str) {
                this.mobile_phone_model = str;
            }

            public void setPraise_count(long j4) {
                this.praise_count = j4;
            }

            public void setRank(String str) {
                this.rank = str;
            }

            public void setReply_count(String str) {
                this.reply_count = str;
            }

            public void setReply_svip_level(int i2) {
                this.reply_svip_level = i2;
            }

            public void setReply_vip_level(int i2) {
                this.reply_vip_level = i2;
            }

            public void setStars_score(String str) {
                this.stars_score = str;
            }

            public void setStart_game_count(String str) {
                this.start_game_count = str;
            }

            public void setSvip_level(int i2) {
                this.svip_level = i2;
            }

            public void setUid(String str) {
                this.uid = str;
            }

            public void setUser_name(String str) {
                this.user_name = str;
            }

            public void setVip_level(int i2) {
                this.vip_level = i2;
            }
        }

        public MainCommentBean() {
        }

        public String getAdd_times() {
            return this.add_times;
        }

        public String getApproval_rate() {
            return this.approval_rate;
        }

        public String getContent() {
            return this.content;
        }

        public String getDespise_count() {
            return this.despise_count;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public String getHead_portrait() {
            return this.head_portrait;
        }

        public String getId() {
            return this.id;
        }

        public int getIs_belong_to() {
            return this.is_belong_to;
        }

        public int getIs_despise() {
            return this.is_despise;
        }

        public String getIs_old() {
            return this.is_old;
        }

        public int getIs_praise() {
            return this.is_praise;
        }

        public String getMapping() {
            return this.mapping;
        }

        public String getMobile_phone_model() {
            return this.mobile_phone_model;
        }

        public int getPn() {
            return this.pn;
        }

        public String getPraise_count() {
            return this.praise_count;
        }

        public String getRank() {
            return this.rank;
        }

        public String getReply_count() {
            return this.reply_count;
        }

        public String getStars_score() {
            return this.stars_score;
        }

        public String getStart_game_count() {
            return this.start_game_count;
        }

        public List<SubCommentBean> getSub_comment() {
            return this.sub_comment;
        }

        public int getSvip_level() {
            return this.svip_level;
        }

        public String getUid() {
            return this.uid;
        }

        public String getUser_name() {
            return this.user_name;
        }

        public int getVip_level() {
            return this.vip_level;
        }

        public void setAdd_times(String str) {
            this.add_times = str;
        }

        public void setApproval_rate(String str) {
            this.approval_rate = str;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setDespise_count(String str) {
            this.despise_count = str;
        }

        public void setGame_id(String str) {
            this.game_id = str;
        }

        public void setHead_portrait(String str) {
            this.head_portrait = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setIs_belong_to(int i2) {
            this.is_belong_to = i2;
        }

        public void setIs_despise(int i2) {
            this.is_despise = i2;
        }

        public void setIs_old(String str) {
            this.is_old = str;
        }

        public void setIs_praise(int i2) {
            this.is_praise = i2;
        }

        public void setMapping(String str) {
            this.mapping = str;
        }

        public void setMobile_phone_model(String str) {
            this.mobile_phone_model = str;
        }

        public void setPn(int i2) {
            this.pn = i2;
        }

        public void setPraise_count(String str) {
            this.praise_count = str;
        }

        public void setRank(String str) {
            this.rank = str;
        }

        public void setReply_count(String str) {
            this.reply_count = str;
        }

        public void setStars_score(String str) {
            this.stars_score = str;
        }

        public void setStart_game_count(String str) {
            this.start_game_count = str;
        }

        public void setSub_comment(List<SubCommentBean> list) {
            this.sub_comment = list;
        }

        public void setSvip_level(int i2) {
            this.svip_level = i2;
        }

        public void setUid(String str) {
            this.uid = str;
        }

        public void setUser_name(String str) {
            this.user_name = str;
        }

        public void setVip_level(int i2) {
            this.vip_level = i2;
        }

        public MainCommentBean(MainCommentBean mainCommentBean) {
            this.id = mainCommentBean.getId();
            this.uid = mainCommentBean.getUid();
            this.user_name = mainCommentBean.getUser_name();
            this.rank = mainCommentBean.getRank();
            this.head_portrait = mainCommentBean.getHead_portrait();
            this.game_id = mainCommentBean.getGame_id();
            this.content = mainCommentBean.getContent();
            this.mobile_phone_model = mainCommentBean.getMobile_phone_model();
            this.praise_count = mainCommentBean.getPraise_count();
            this.stars_score = mainCommentBean.getStars_score();
            this.despise_count = mainCommentBean.getDespise_count();
            this.start_game_count = mainCommentBean.getStart_game_count();
            this.approval_rate = mainCommentBean.getApproval_rate();
            this.add_times = mainCommentBean.getAdd_times();
            this.is_belong_to = mainCommentBean.getIs_belong_to();
            this.reply_count = mainCommentBean.getReply_count();
            this.mapping = mainCommentBean.getMapping();
            this.is_old = mainCommentBean.getIs_old();
            this.is_praise = mainCommentBean.getIs_praise();
            this.is_despise = mainCommentBean.getIs_despise();
            this.pn = mainCommentBean.getPn();
            if (this.sub_comment == null) {
                this.sub_comment = new ArrayList();
            }
            this.sub_comment.addAll(mainCommentBean.getSub_comment());
        }
    }

    public GameInfoBean getGame_info() {
        return this.game_info;
    }

    public List<MainCommentBean> getMain_comment() {
        return this.main_comment;
    }

    public void setGame_info(GameInfoBean gameInfoBean) {
        this.game_info = gameInfoBean;
    }

    public void setMain_comment(List<MainCommentBean> list) {
        this.main_comment = list;
    }
}
