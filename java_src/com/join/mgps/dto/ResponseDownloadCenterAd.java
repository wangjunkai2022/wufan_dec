package com.join.mgps.dto;

import com.join.mgps.business.CollectionBeanSubBusiness;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class ResponseDownloadCenterAd implements Serializable {
    private List<CollectionBeanSubBusiness> lists;
    private String title;

    public List<CollectionBeanSubBusiness> getLists() {
        return this.lists;
    }

    public String getTitle() {
        return this.title;
    }

    public void setLists(List<CollectionBeanSubBusiness> list) {
        this.lists = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
