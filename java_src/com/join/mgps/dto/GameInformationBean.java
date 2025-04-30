package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameInformationBean {
    private String author;
    private int comment_count;
    private int comment_switch;
    private String content;
    private List<DetailResultBean> game_info;
    private String info_id;
    private String other_app_addr;
    private String praise;
    private String release_time;
    private String share_url;
    private String show_pic;
    private String title;
    private String weixin_app_addr;

    public GameInformationBean() {
    }

    public String getAuthor() {
        return this.author;
    }

    public int getComment_count() {
        return this.comment_count;
    }

    public int getComment_switch() {
        return this.comment_switch;
    }

    public String getContent() {
        return this.content;
    }

    public List<DetailResultBean> getGame_info() {
        return this.game_info;
    }

    public String getInfo_id() {
        return this.info_id;
    }

    public String getOther_app_addr() {
        return this.other_app_addr;
    }

    public String getPraise() {
        return this.praise;
    }

    public String getRelease_time() {
        return this.release_time;
    }

    public String getShare_url() {
        return this.share_url;
    }

    public String getShow_pic() {
        return this.show_pic;
    }

    public String getTitle() {
        return this.title;
    }

    public String getWeixin_app_addr() {
        return this.weixin_app_addr;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setComment_count(int i2) {
        this.comment_count = i2;
    }

    public void setComment_switch(int i2) {
        this.comment_switch = i2;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setGame_info(List<DetailResultBean> list) {
        this.game_info = list;
    }

    public void setInfo_id(String str) {
        this.info_id = str;
    }

    public void setOther_app_addr(String str) {
        this.other_app_addr = str;
    }

    public void setPraise(String str) {
        this.praise = str;
    }

    public void setRelease_time(String str) {
        this.release_time = str;
    }

    public void setShare_url(String str) {
        this.share_url = str;
    }

    public void setShow_pic(String str) {
        this.show_pic = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setWeixin_app_addr(String str) {
        this.weixin_app_addr = str;
    }

    public GameInformationBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, List<DetailResultBean> list) {
        this.author = str;
        this.info_id = str2;
        this.title = str3;
        this.weixin_app_addr = str4;
        this.other_app_addr = str5;
        this.show_pic = str6;
        this.content = str7;
        this.share_url = str8;
        this.release_time = str9;
        this.praise = str10;
        this.game_info = list;
    }
}
