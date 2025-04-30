package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CollectionModuleDataBean {
    private String game_count;
    private List<List<CollectionDataBeanInfo>> info;
    private String tpl_type;

    public CollectionModuleDataBean() {
    }

    public List<List<CollectionDataBeanInfo>> getInfo() {
        return this.info;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setInfo(List<List<CollectionDataBeanInfo>> list) {
        this.info = list;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public CollectionModuleDataBean(String str, String str2, List<List<CollectionDataBeanInfo>> list) {
        this.tpl_type = str;
        this.game_count = str2;
        this.info = list;
    }
}
