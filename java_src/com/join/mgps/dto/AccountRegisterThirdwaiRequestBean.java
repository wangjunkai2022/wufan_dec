package com.join.mgps.dto;

import com.MApplication;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.io.Serializable;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountRegisterThirdwaiRequestBean implements Serializable {
    private int gender;
    private String sign;
    private int source;
    private int type;
    private String unique_id = "";
    private String mac = "";
    private String device_id = "";
    private String account = "";
    private String avatar_src = "";
    private String mobile = "";
    private String password = "";
    private String nickname = "";
    private String code = "";
    private String share_code = MApplication.f9236w0;

    public String getAccount() {
        return this.account;
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public String getCode() {
        return this.code;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public int getGender() {
        return this.gender;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMobile() {
        return this.mobile;
    }

    public String getNickname() {
        return this.nickname;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("unique_id", this.unique_id);
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add("source", this.source + "");
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f64042f, this.account + "");
        linkedMultiValueMap.add("gender", this.gender + "");
        linkedMultiValueMap.add("avatar_src", this.avatar_src + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add(GameRoomActivity_.f36433y2, this.password + "");
        linkedMultiValueMap.add("nickname", this.nickname + "");
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add("share_code", MApplication.f9236w0 + "");
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getShare_code() {
        return this.share_code;
    }

    public String getSign() {
        return this.sign;
    }

    public int getSource() {
        return this.source;
    }

    public int getType() {
        return this.type;
    }

    public String getUnique_id() {
        return this.unique_id;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAvatar_src(String str) {
        this.avatar_src = str;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setGender(int i2) {
        this.gender = i2;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setShare_code(String str) {
        this.share_code = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setSource(int i2) {
        this.source = i2;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUnique_id(String str) {
        this.unique_id = str;
    }
}
