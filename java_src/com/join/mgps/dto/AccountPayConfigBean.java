package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AccountPayConfigBean {
    private String desc;
    private String icon;
    private int min_money;
    private int rebate_money;
    private long start_time;
    private long stop_time;
    private String title;

    public AccountPayConfigBean() {
    }

    public String getDesc() {
        return this.desc;
    }

    public String getIcon() {
        return this.icon;
    }

    public int getMin_money() {
        return this.min_money;
    }

    public int getRebate_money() {
        return this.rebate_money;
    }

    public long getStart_time() {
        return this.start_time;
    }

    public long getStop_time() {
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

    public void setMin_money(int i2) {
        this.min_money = i2;
    }

    public void setRebate_money(int i2) {
        this.rebate_money = i2;
    }

    public void setStart_time(long j4) {
        this.start_time = j4;
    }

    public void setStop_time(long j4) {
        this.stop_time = j4;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "AccountPayConfigBean{title='" + this.title + "', desc='" + this.desc + "', start_time=" + this.start_time + ", stop_time=" + this.stop_time + ", icon='" + this.icon + "', min_money=" + this.min_money + ", rebate_money=" + this.rebate_money + '}';
    }

    public AccountPayConfigBean(String str, String str2, long j4, long j5, String str3, int i2, int i4) {
        this.title = str;
        this.desc = str2;
        this.start_time = j4;
        this.stop_time = j5;
        this.icon = str3;
        this.min_money = i2;
        this.rebate_money = i4;
    }
}
