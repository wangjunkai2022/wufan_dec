package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CommitContextDataBean implements Serializable {
    InformationCommentBean comment_data;
    private boolean is_parent;
    RewardBean is_reward;
    private boolean val;

    public InformationCommentBean getComment_data() {
        return this.comment_data;
    }

    public RewardBean getIs_reward() {
        return this.is_reward;
    }

    public boolean isVal() {
        return this.val;
    }

    public boolean is_parent() {
        return this.is_parent;
    }

    public void setComment_data(InformationCommentBean informationCommentBean) {
        this.comment_data = informationCommentBean;
    }

    public void setIs_parent(boolean z3) {
        this.is_parent = z3;
    }

    public void setIs_reward(RewardBean rewardBean) {
        this.is_reward = rewardBean;
    }

    public void setVal(boolean z3) {
        this.val = z3;
    }
}
