package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ChartMainDataBean {
    private String ico_local;
    private String ico_remote;
    private String id;
    private String index_number;
    private String info;
    private String label;
    private String pic_local;
    private String pic_remote;
    private String setup_count;
    private String show_index;
    private String show_type;
    private String title;
    private String title_type;

    public ChartMainDataBean() {
    }

    public String getIco_local() {
        return this.ico_local;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getId() {
        return this.id;
    }

    public String getInfo() {
        return this.info;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTitle_type() {
        return this.title_type;
    }

    public void setIco_local(String str) {
        this.ico_local = str;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTitle_type(String str) {
        this.title_type = str;
    }

    public ChartMainDataBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        this.id = str;
        this.title = str2;
        this.label = str3;
        this.pic_local = str4;
        this.pic_remote = str5;
        this.ico_local = str6;
        this.ico_remote = str7;
        this.show_index = str8;
        this.info = str9;
        this.setup_count = str10;
        this.show_type = str11;
        this.index_number = str12;
        this.title_type = str13;
    }
}
