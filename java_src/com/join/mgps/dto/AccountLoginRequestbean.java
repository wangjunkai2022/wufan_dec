package com.join.mgps.dto;

import com.join.mgps.activity.arena.GameRoomActivity_;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountLoginRequestbean {
    private String account;
    private String device_id;
    private String password;
    private String sign;

    public String getAccount() {
        return this.account;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f64042f, this.account);
        linkedMultiValueMap.add(GameRoomActivity_.f36433y2, this.password);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSign() {
        return this.sign;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }
}
