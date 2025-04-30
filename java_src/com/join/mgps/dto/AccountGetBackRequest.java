package com.join.mgps.dto;

import com.join.mgps.activity.arena.GameRoomActivity_;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountGetBackRequest {
    private String code;
    private String mobile;
    private String password;
    private String sign;

    public String getCode() {
        return this.code;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add(GameRoomActivity_.f36433y2, this.password);
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSign() {
        return this.sign;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }
}
