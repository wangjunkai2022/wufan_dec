package com.join.mgps.customview;
/* loaded from: classes3.dex */
public enum RewardType {
    REGISTER("完成注册"),
    DOWNLOAD("完成下载"),
    SUBMIT_POST("完成发帖"),
    COMMENT_POST("完成评论"),
    DAILY_LOGIN("每日积极玩家"),
    REPLY_POST("完成回复"),
    EVERDAYLOGIN("每日登录");
    
    private String val;

    RewardType(String str) {
        this.val = str;
    }

    public String getVal() {
        return this.val;
    }
}
