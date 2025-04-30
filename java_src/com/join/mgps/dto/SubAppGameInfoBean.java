package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SubAppGameInfoBean {
    private String appSize;
    private String crc_sign_id;
    private String down_count;
    private String down_count_manual;
    private String down_url_local;
    private String down_url_remote;
    private String game_name;
    private String ico_local;
    private String ico_remote;
    private String info;
    private String packageName;
    private String score_count;
    private String score_count_manual;
    private String sign_id;
    private List<TipBean> tag_info;

    public SubAppGameInfoBean() {
    }

    public String getAppSize() {
        return this.appSize;
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public String getDown_count() {
        return this.down_count;
    }

    public String getDown_count_manual() {
        return this.down_count_manual;
    }

    public String getDown_url_local() {
        return this.down_url_local;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getIco_local() {
        return this.ico_local;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getInfo() {
        return this.info;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getScore_count() {
        return this.score_count;
    }

    public String getScore_count_manual() {
        return this.score_count_manual;
    }

    public String getSign_id() {
        return this.sign_id;
    }

    public List<TipBean> getTag_info() {
        return this.tag_info;
    }

    public void setAppSize(String str) {
        this.appSize = str;
    }

    public void setCrc_sign_id(String str) {
        this.crc_sign_id = str;
    }

    public void setDown_count(String str) {
        this.down_count = str;
    }

    public void setDown_count_manual(String str) {
        this.down_count_manual = str;
    }

    public void setDown_url_local(String str) {
        this.down_url_local = str;
    }

    public void setDown_url_remote(String str) {
        this.down_url_remote = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setIco_local(String str) {
        this.ico_local = str;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setScore_count(String str) {
        this.score_count = str;
    }

    public void setScore_count_manual(String str) {
        this.score_count_manual = str;
    }

    public void setSign_id(String str) {
        this.sign_id = str;
    }

    public void setTag_info(List<TipBean> list) {
        this.tag_info = list;
    }

    public SubAppGameInfoBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, List<TipBean> list, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
        this.crc_sign_id = str;
        this.sign_id = str2;
        this.game_name = str3;
        this.ico_local = str4;
        this.ico_remote = str5;
        this.packageName = str6;
        this.appSize = str7;
        this.tag_info = list;
        this.down_count = str8;
        this.down_count_manual = str9;
        this.down_url_local = str10;
        this.down_url_remote = str11;
        this.info = str12;
        this.score_count_manual = str13;
        this.score_count = str14;
    }
}
