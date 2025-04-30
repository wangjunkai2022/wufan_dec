package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class InformationCommentBack {
    private List<InformationCommentBean> all;
    private List<InformationCommentBean> hot;

    public InformationCommentBack() {
    }

    public List<InformationCommentBean> getAll() {
        return this.all;
    }

    public List<InformationCommentBean> getHot() {
        return this.hot;
    }

    public void setAll(List<InformationCommentBean> list) {
        this.all = list;
    }

    public void setHot(List<InformationCommentBean> list) {
        this.hot = list;
    }

    public InformationCommentBack(List<InformationCommentBean> list, List<InformationCommentBean> list2) {
        this.hot = list;
        this.all = list2;
    }
}
