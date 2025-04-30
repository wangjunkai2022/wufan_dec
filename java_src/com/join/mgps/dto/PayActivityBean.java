package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class PayActivityBean {
    private String desc;
    private String icon;
    private List<PayActivityRebate> rebate_list;
    private String start_time;
    private String stop_time;
    private String title;

    public PayActivityBean() {
    }

    public String getDesc() {
        return this.desc;
    }

    public String getIcon() {
        return this.icon;
    }

    public List<PayActivityRebate> getRebate_list() {
        return this.rebate_list;
    }

    public String getStart_time() {
        return this.start_time;
    }

    public String getStop_time() {
        return this.stop_time;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setRebate_List(List<PayActivityRebate> list) {
        this.rebate_list = list;
    }

    public void setRebate_list(List<PayActivityRebate> list) {
        this.rebate_list = list;
    }

    public void setStart_time(String str) {
        this.start_time = str;
    }

    public void setStop_time(String str) {
        this.stop_time = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PayActivityBean{icon='" + this.icon + "', title='" + this.title + "', desc='" + this.desc + "', start_time='" + this.start_time + "', stop_time='" + this.stop_time + "', rebate_List=" + this.rebate_list + '}';
    }

    public PayActivityBean(String str, String str2, String str3, String str4, String str5, List<PayActivityRebate> list) {
        this.icon = str;
        this.title = str2;
        this.desc = str3;
        this.start_time = str4;
        this.stop_time = str5;
        this.rebate_list = list;
    }
}
