package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class LargeModuleDataBean {
    private CommonMainDataBean main;
    private List<LargeModuleMoreDataBean> more;
    private String position;
    private List<Object> sub;

    public LargeModuleDataBean() {
    }

    public CommonMainDataBean getMain() {
        return this.main;
    }

    public List<LargeModuleMoreDataBean> getMore() {
        return this.more;
    }

    public String getPosition() {
        return this.position;
    }

    public List<Object> getSub() {
        return this.sub;
    }

    public void setMain(CommonMainDataBean commonMainDataBean) {
        this.main = commonMainDataBean;
    }

    public void setMore(List<LargeModuleMoreDataBean> list) {
        this.more = list;
    }

    public void setPosition(String str) {
        this.position = str;
    }

    public void setSub(List<Object> list) {
        this.sub = list;
    }

    public LargeModuleDataBean(CommonMainDataBean commonMainDataBean, List<Object> list, List<LargeModuleMoreDataBean> list2, String str) {
        this.main = commonMainDataBean;
        this.sub = list;
        this.more = list2;
        this.position = str;
    }
}
