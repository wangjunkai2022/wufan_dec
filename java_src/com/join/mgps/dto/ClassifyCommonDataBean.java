package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ClassifyCommonDataBean {
    private List<CollectionDataBean> first;
    private CommonMainDataBean main;
    private List<Object> more;
    private String position;
    private List<SubAppDataBean> sub;

    public ClassifyCommonDataBean() {
    }

    public List<CollectionDataBean> getFirst() {
        return this.first;
    }

    public CommonMainDataBean getMain() {
        return this.main;
    }

    public List<Object> getMore() {
        return this.more;
    }

    public String getPosition() {
        return this.position;
    }

    public List<SubAppDataBean> getSub() {
        return this.sub;
    }

    public void setFirst(List<CollectionDataBean> list) {
        this.first = list;
    }

    public void setMain(CommonMainDataBean commonMainDataBean) {
        this.main = commonMainDataBean;
    }

    public void setMore(List<Object> list) {
        this.more = list;
    }

    public void setPosition(String str) {
        this.position = str;
    }

    public void setSub(List<SubAppDataBean> list) {
        this.sub = list;
    }

    public ClassifyCommonDataBean(CommonMainDataBean commonMainDataBean, List<Object> list, String str, List<SubAppDataBean> list2, List<CollectionDataBean> list3) {
        this.main = commonMainDataBean;
        this.more = list;
        this.position = str;
        this.sub = list2;
        this.first = list3;
    }
}
