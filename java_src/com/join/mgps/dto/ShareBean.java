package com.join.mgps.dto;

import com.join.mgps.rpc.g;
/* loaded from: classes4.dex */
public class ShareBean {
    private String articleId;
    private int from;
    private String gameId;
    private String imageUrl;
    private BannerBean intentData;
    private String qZoneShareUrl;
    private String qqUrl;
    private int target;
    private String text;
    private String title;
    private String wechatFriendUrl;
    private String wechatShareUrl;
    private String weiboShareUrl;

    public ShareBean() {
        this.imageUrl = g.L + "/upload/images/wf_ico.png?ver=2.2";
        this.gameId = "0";
    }

    public String getArticleId() {
        return this.articleId;
    }

    public int getFrom() {
        return this.from;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public BannerBean getIntentData() {
        return this.intentData;
    }

    public String getQqUrl() {
        return this.qqUrl;
    }

    public int getTarget() {
        return this.target;
    }

    public String getText() {
        return this.text;
    }

    public String getTitle() {
        return this.title;
    }

    public String getWechatFriendUrl() {
        return this.wechatFriendUrl;
    }

    public String getWechatShareUrl() {
        return this.wechatShareUrl;
    }

    public String getWeiboShareUrl() {
        return this.weiboShareUrl;
    }

    public String getqZoneShareUrl() {
        return this.qZoneShareUrl;
    }

    public void setArticleId(String str) {
        this.articleId = str;
    }

    public void setFrom(int i2) {
        this.from = i2;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setIntentData(BannerBean bannerBean) {
        this.intentData = bannerBean;
    }

    public void setQqUrl(String str) {
        this.qqUrl = str;
    }

    public void setTarget(int i2) {
        this.target = i2;
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setWechatFriendUrl(String str) {
        this.wechatFriendUrl = str;
    }

    public void setWechatShareUrl(String str) {
        this.wechatShareUrl = str;
    }

    public void setWeiboShareUrl(String str) {
        this.weiboShareUrl = str;
    }

    public void setqZoneShareUrl(String str) {
        this.qZoneShareUrl = str;
    }

    public String toString() {
        return "ShareBean{imageUrl='" + this.imageUrl + "', title='" + this.title + "', text='" + this.text + "', weiboShareUrl='" + this.weiboShareUrl + "', qZoneShareUrl='" + this.qZoneShareUrl + "', wechatShareUrl='" + this.wechatShareUrl + "', wechatFriendUrl='" + this.wechatFriendUrl + "', qqUrl='" + this.qqUrl + "'}";
    }

    public ShareBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.imageUrl = g.L + "/upload/images/wf_ico.png?ver=2.2";
        this.gameId = "0";
        this.imageUrl = str;
        this.title = str2;
        this.text = str3;
        this.weiboShareUrl = str4;
        this.qZoneShareUrl = str5;
        this.wechatShareUrl = str6;
        this.wechatFriendUrl = str7;
        this.qqUrl = str8;
    }
}
