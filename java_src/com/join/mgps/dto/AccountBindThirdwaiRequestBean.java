package com.join.mgps.dto;

import java.io.Serializable;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountBindThirdwaiRequestBean implements Serializable {
    private String sign;
    private int type;
    private int uid;
    private String unique_id = "";
    private String token = "";

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("unique_id", this.unique_id);
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("token", this.token);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUnique_id() {
        return this.unique_id;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUnique_id(String str) {
        this.unique_id = str;
    }
}
