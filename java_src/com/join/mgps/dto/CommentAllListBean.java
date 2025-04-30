package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class CommentAllListBean implements Serializable {
    private String game_comment_count;
    private GameScore game_score;
    private List<GeneralCommentBean> general_comment;
    private List<HotCommentBean> hot_comment;
    private ScoringDetailsBean scoring_details;
    private SelfCommentBean self_comment;

    /* loaded from: classes4.dex */
    public static class GeneralCommentBean extends CommentBaseBean {
    }

    /* loaded from: classes4.dex */
    public static class HotCommentBean extends CommentBaseBean {
    }

    /* loaded from: classes4.dex */
    public static class ScoringDetailsBean implements Serializable {
        private String game_id;
        private String id;
        private int p_count;
        private String stars_score1;
        private String stars_score2;
        private String stars_score3;
        private String stars_score4;
        private String stars_score5;
        private String total_score;
        private double total_stars;
        private String update_times;

        public String getGame_id() {
            return this.game_id;
        }

        public String getId() {
            return this.id;
        }

        public int getP_count() {
            return this.p_count;
        }

        public String getStars_score1() {
            return this.stars_score1;
        }

        public String getStars_score2() {
            return this.stars_score2;
        }

        public String getStars_score3() {
            return this.stars_score3;
        }

        public String getStars_score4() {
            return this.stars_score4;
        }

        public String getStars_score5() {
            return this.stars_score5;
        }

        public String getTotal_score() {
            return this.total_score;
        }

        public double getTotal_stars() {
            return this.total_stars;
        }

        public String getUpdate_times() {
            return this.update_times;
        }

        public void setGame_id(String str) {
            this.game_id = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setP_count(int i2) {
            this.p_count = i2;
        }

        public void setStars_score1(String str) {
            this.stars_score1 = str;
        }

        public void setStars_score2(String str) {
            this.stars_score2 = str;
        }

        public void setStars_score3(String str) {
            this.stars_score3 = str;
        }

        public void setStars_score4(String str) {
            this.stars_score4 = str;
        }

        public void setStars_score5(String str) {
            this.stars_score5 = str;
        }

        public void setTotal_score(String str) {
            this.total_score = str;
        }

        public void setTotal_stars(double d4) {
            this.total_stars = d4;
        }

        public void setUpdate_times(String str) {
            this.update_times = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class SelfCommentBean extends CommentBaseBean {
    }

    public String getGame_comment_count() {
        return this.game_comment_count;
    }

    public GameScore getGame_score() {
        return this.game_score;
    }

    public List<GeneralCommentBean> getGeneral_comment() {
        return this.general_comment;
    }

    public List<HotCommentBean> getHot_comment() {
        return this.hot_comment;
    }

    public ScoringDetailsBean getScoring_details() {
        return this.scoring_details;
    }

    public SelfCommentBean getSelf_comment() {
        return this.self_comment;
    }

    public void setGame_comment_count(String str) {
        this.game_comment_count = str;
    }

    public void setGame_score(GameScore gameScore) {
        this.game_score = gameScore;
    }

    public void setGeneral_comment(List<GeneralCommentBean> list) {
        this.general_comment = list;
    }

    public void setHot_comment(List<HotCommentBean> list) {
        this.hot_comment = list;
    }

    public void setScoring_details(ScoringDetailsBean scoringDetailsBean) {
        this.scoring_details = scoringDetailsBean;
    }

    public void setSelf_comment(SelfCommentBean selfCommentBean) {
        this.self_comment = selfCommentBean;
    }
}
