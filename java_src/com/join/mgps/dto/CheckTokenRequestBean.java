package com.join.mgps.dto;

import com.join.mgps.Util.u1;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class CheckTokenRequestBean {
    private String sign;
    private String token;
    private String uid;

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid);
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add(Constant.MD5, u1.f(this));
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
