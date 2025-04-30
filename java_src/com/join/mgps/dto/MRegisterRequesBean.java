package com.join.mgps.dto;

import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class MRegisterRequesBean {
    private String account;
    private String mobile;
    private String sign;

    public MRegisterRequesBean() {
    }

    public String getAccount() {
        return this.account;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f64042f, this.account);
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public MRegisterRequesBean(String str, String str2, String str3) {
        this.account = str;
        this.mobile = str2;
        this.sign = str3;
    }
}
