package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AlbumBeanMain extends BaseDto {
    private String collection_id;
    private String collection_title;
    private String cover_pic_local;
    private String cover_pic_remote;
    private String crc_collection_id;
    private String game_count;
    private String ico_local;
    private String ico_remote;
    private String info;
    private String show_tag_range;
    private String tpl_count;
    private String tpl_id;
    private String tpl_pic;
    private String tpl_range;
    private String tpl_title;
    private String tpl_type;
    private String tpl_url;

    public AlbumBeanMain() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getCollection_title() {
        return this.collection_title;
    }

    public String getCrc_collection_id() {
        return this.crc_collection_id;
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

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setCollection_title(String str) {
        this.collection_title = str;
    }

    public void setCrc_collection_id(String str) {
        this.crc_collection_id = str;
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

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public AlbumBeanMain(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17) {
        this.collection_id = str;
        this.crc_collection_id = str2;
        this.collection_title = str3;
        this.ico_local = str4;
        this.ico_remote = str5;
        this.cover_pic_local = str6;
        this.cover_pic_remote = str7;
        this.info = str8;
        this.show_tag_range = str9;
        this.game_count = str10;
        this.tpl_id = str11;
        this.tpl_title = str12;
        this.tpl_pic = str13;
        this.tpl_url = str14;
        this.tpl_range = str15;
        this.tpl_count = str16;
        this.tpl_type = str17;
    }
}
