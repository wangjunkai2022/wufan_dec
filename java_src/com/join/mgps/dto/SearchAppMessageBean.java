package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class SearchAppMessageBean implements Serializable {
    private SearchResultData data;
    private String modeltype;

    public SearchResultData getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(SearchResultData searchResultData) {
        this.data = searchResultData;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }
}
