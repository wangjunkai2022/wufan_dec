package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class InformationListDataBean {
    private String game_id;
    private String game_name;
    private String info_id;
    private String material;
    private String praise;
    private String release_time;
    private float score_count;
    private String tag_id;
    private String title;

    public InformationListDataBean() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getInfo_id() {
        return this.info_id;
    }

    public String getMaterial() {
        return this.material;
    }

    public String getPraise() {
        return this.praise;
    }

    public String getRelease_time() {
        return this.release_time;
    }

    public float getScore_count() {
        return this.score_count;
    }

    public String getTag_id() {
        return this.tag_id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setInfo_id(String str) {
        this.info_id = str;
    }

    public void setMaterial(String str) {
        this.material = str;
    }

    public void setPraise(String str) {
        this.praise = str;
    }

    public void setRelease_time(String str) {
        this.release_time = str;
    }

    public void setScore_count(float f4) {
        this.score_count = f4;
    }

    public void setTag_id(String str) {
        this.tag_id = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public InformationListDataBean(String str, String str2, String str3, String str4, String str5) {
        this.tag_id = str;
        this.title = str2;
        this.release_time = str3;
        this.material = str4;
        this.praise = str5;
    }
}
