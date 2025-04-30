package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorSubDataBean {
    private String ico_local;
    private String ico_remote;
    private String id;
    private String info;
    private List<JumpInfoBean> jump_info;
    private String label;
    private String pic_local;
    private String pic_remote;
    private String show_index;
    private String title;

    public SimulatorSubDataBean() {
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

    public List<JumpInfoBean> getJump_info() {
        return this.jump_info;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPic_local() {
        return this.pic_local;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getShow_index() {
        return this.show_index;
    }

    public String getTitle() {
        return this.title;
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

    public void setJump_info(List<JumpInfoBean> list) {
        this.jump_info = list;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setPic_local(String str) {
        this.pic_local = str;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setShow_index(String str) {
        this.show_index = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public SimulatorSubDataBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, List<JumpInfoBean> list) {
        this.id = str;
        this.title = str2;
        this.label = str3;
        this.pic_local = str4;
        this.pic_remote = str5;
        this.ico_local = str6;
        this.ico_remote = str7;
        this.show_index = str8;
        this.info = str9;
        this.jump_info = list;
    }
}
