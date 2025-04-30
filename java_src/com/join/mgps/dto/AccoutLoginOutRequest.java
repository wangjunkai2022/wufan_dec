package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccoutLoginOutRequest {
    private String sign;
    private String uid;

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getUid() {
        return this.uid;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
