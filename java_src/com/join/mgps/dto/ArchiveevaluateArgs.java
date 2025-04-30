package com.join.mgps.dto;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class ArchiveevaluateArgs {
    int commentType;
    String id;
    String token;
    String uid;

    public ArchiveevaluateArgs(String str, String str2, String str3, int i2) {
        this.uid = str;
        this.token = str2;
        this.id = str3;
        this.commentType = i2;
    }

    public Map<String, String> getArgs() {
        HashMap hashMap = new HashMap();
        hashMap.put("uid", this.uid);
        hashMap.put("token", this.token);
        hashMap.put("id", this.id);
        hashMap.put("commentType", this.commentType + "");
        return hashMap;
    }

    public int getCommentType() {
        return this.commentType;
    }

    public String getId() {
        return this.id;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setCommentType(int i2) {
        this.commentType = i2;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
