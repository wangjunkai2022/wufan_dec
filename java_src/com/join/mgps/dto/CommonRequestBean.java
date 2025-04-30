package com.join.mgps.dto;

import com.join.android.app.mgsim.wufun.b;
/* loaded from: classes4.dex */
public class CommonRequestBean<E> {
    private String androidId;
    private String channel_num;
    private String deviceid;
    private CommonRequestMessage<E> messages;
    private String package_name;
    private String package_type;
    private String platform;
    private String requesttype;
    private String sign;
    private int target_version;
    private String version;

    public CommonRequestBean() {
        this.target_version = b.f17920n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
    }

    public String getAndroidId() {
        return this.androidId;
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public CommonRequestMessage getMessages() {
        return this.messages;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getPackage_type() {
        return this.package_type;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getSign() {
        return this.sign;
    }

    public int getTarget_version() {
        return this.target_version;
    }

    public String getVersion() {
        return this.version;
    }

    public void setAndroidId(String str) {
        this.androidId = str;
    }

    public void setChannel_num(String str) {
        this.channel_num = str;
    }

    public void setDeviceid(String str) {
        this.deviceid = str;
    }

    public void setMessages(CommonRequestMessage commonRequestMessage) {
        this.messages = commonRequestMessage;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setPackage_type(String str) {
        this.package_type = str;
    }

    public void setPlatform(String str) {
        this.platform = str;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setTarget_version(int i2) {
        this.target_version = i2;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public CommonRequestBean(String str, String str2, String str3, String str4, String str5, String str6, CommonRequestMessage<E> commonRequestMessage) {
        this.target_version = b.f17920n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
        this.version = str;
        this.deviceid = str2;
        this.requesttype = str4;
        this.channel_num = str5;
        this.sign = str6;
        this.messages = commonRequestMessage;
        this.androidId = str3;
    }

    public CommonRequestBean(String str, String str2, String str3, String str4, String str5, String str6, CommonRequestMessage<E> commonRequestMessage, int i2) {
        this.target_version = b.f17920n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
        this.version = str;
        this.deviceid = str2;
        this.requesttype = str4;
        this.channel_num = str5;
        this.sign = str6;
        this.messages = commonRequestMessage;
        this.target_version = i2;
        this.androidId = str3;
    }

    public CommonRequestBean(String str, String str2, String str3, String str4, String str5, CommonRequestMessage<E> commonRequestMessage) {
        this.target_version = b.f17920n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
        this.version = str;
        this.deviceid = str2;
        this.sign = str5;
        this.messages = commonRequestMessage;
        this.channel_num = str4;
        this.androidId = str3;
    }

    public CommonRequestBean(String str, String str2, String str3, String str4, CommonRequestMessage<E> commonRequestMessage) {
        this.target_version = b.f17920n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
        this.version = str;
        this.deviceid = str2;
        this.sign = str4;
        this.messages = commonRequestMessage;
        this.androidId = str3;
    }
}
