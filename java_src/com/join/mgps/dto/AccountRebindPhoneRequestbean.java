package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountRebindPhoneRequestbean {
    private String new_code;
    private String new_mobile;
    private String old_code;
    private String token;
    private int uid;

    public String getNew_code() {
        return this.new_code;
    }

    public String getNew_mobile() {
        return this.new_mobile;
    }

    public String getOld_code() {
        return this.old_code;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("new_mobile", this.new_mobile);
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("old_code", this.old_code);
        linkedMultiValueMap.add("new_code", this.new_code);
        return linkedMultiValueMap;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setNew_code(String str) {
        this.new_code = str;
    }

    public void setNew_mobile(String str) {
        this.new_mobile = str;
    }

    public void setOld_code(String str) {
        this.old_code = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
