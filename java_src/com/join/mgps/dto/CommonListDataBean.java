package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CommonListDataBean {
    private List<CollectionDataBean> first;
    private CommonMainDataBean main;
    private List<Object> more;
    private String position;
    private List<SubAppDataBean> sub;

    public CommonListDataBean() {
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

    public CommonListDataBean(CommonMainDataBean commonMainDataBean, List<SubAppDataBean> list, List<Object> list2, String str, List<CollectionDataBean> list3) {
        this.main = commonMainDataBean;
        this.sub = list;
        this.more = list2;
        this.position = str;
        this.first = list3;
    }
}
