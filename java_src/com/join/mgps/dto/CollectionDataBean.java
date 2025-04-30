package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class CollectionDataBean implements Serializable {
    private int comment_count;
    private int comment_switch;
    private String game_count;
    private List<CollectionDataBeanInfo> info;
    private String tpl_type;

    public CollectionDataBean() {
    }

    public int getComment_count() {
        return this.comment_count;
    }

    public int getComment_switch() {
        return this.comment_switch;
    }

    public String getGame_count() {
        return this.game_count;
    }

    public List<CollectionDataBeanInfo> getInfo() {
        return this.info;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setComment_count(int i2) {
        this.comment_count = i2;
    }

    public void setComment_switch(int i2) {
        this.comment_switch = i2;
    }

    public void setGame_count(String str) {
        this.game_count = str;
    }

    public void setInfo(List<CollectionDataBeanInfo> list) {
        this.info = list;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public CollectionDataBean(String str, String str2, List<CollectionDataBeanInfo> list) {
        this.tpl_type = str;
        this.game_count = str2;
        this.info = list;
    }
}
