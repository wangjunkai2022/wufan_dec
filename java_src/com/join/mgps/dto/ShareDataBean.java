package com.join.mgps.dto;

import java.util.HashMap;
/* loaded from: classes4.dex */
public class ShareDataBean {
    private HashMap<String, Object> res;
    private String type;
    private String userIcon;
    private String userId;
    private String userName;

    public ShareDataBean() {
    }

    public HashMap<String, Object> getRes() {
        return this.res;
    }

    public String getType() {
        return this.type;
    }

    public String getUserIcon() {
        return this.userIcon;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setRes(HashMap<String, Object> hashMap) {
        this.res = hashMap;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUserIcon(String str) {
        this.userIcon = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public ShareDataBean(String str, String str2, String str3, HashMap<String, Object> hashMap) {
        this.type = str;
        this.userId = str2;
        this.userName = str3;
        this.res = hashMap;
    }
}
