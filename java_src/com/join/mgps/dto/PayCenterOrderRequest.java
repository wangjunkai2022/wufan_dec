package com.join.mgps.dto;

import com.alipay.sdk.cons.b;
import com.join.mgps.rpc.a;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.umeng.analytics.pro.ai;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class PayCenterOrderRequest {
    public static final String ACTION_ALI_PAY = "alipaymobilesign";
    public static final String ACTION_CREDIT_PAY = "upmpmobilekongjian1";
    public static final String ACTION_PABI = "papawallet";
    public static final String ACTION_UNION_PAY = "upmpmobilekongjian";
    public static final String ACTION_WECHAT = "weixinmobilenew";
    public static final String ACTION_WECHAT_OFFICIAL = "wechatofficialpapa";
    public static final String ACTION_WECHAT_SWIFT = "swiftpasspapa";
    public static final String ACTION_ZIWEI_WECHAT = "ziweixingh5";
    public static final String PAY_TYPE_ALIPAY = "1";
    public static final String PAY_TYPE_COUPON = "coupon";
    public static final String PAY_TYPE_COUPON_RED = "coupon_red_envelope";
    public static final String PAY_TYPE_COUPON_WALLET = "coupon_wallet";
    public static final String PAY_TYPE_RECHARGE = "2";
    public static final String PAY_TYPE_RED_ENVELOPE = "red_envelope";
    public static final String PAY_TYPE_WALLET = "wallet";
    private String action;
    private int sid;
    private String sign;
    private String uid;
    private String app_callback_url = "";
    private String app_extra1 = "";
    private String app_extra2 = "";
    private String app_key = "";
    private String app_name = "";
    private String app_order_id = "";
    private String app_user_name = "";
    private String card_id = "";
    private String card_pass = "";
    private String imei = "";
    private String kingnet_order_id = "";
    private int openuid = 0;
    private String pay_rmb = "";
    private String pay_type = "";
    private String product_name = "";
    private String product_id = "";
    private String resource_id = a.f51499f;
    private String token = "";
    private String wallet_type = "";
    private String device_type = q.a.f73954a;
    private String package_name = "";

    public String getAction() {
        return this.action;
    }

    public String getApp_callback_url() {
        return this.app_callback_url;
    }

    public String getApp_extra1() {
        return this.app_extra1;
    }

    public String getApp_extra2() {
        return this.app_extra2;
    }

    public String getApp_key() {
        return this.app_key;
    }

    public String getApp_name() {
        return this.app_name;
    }

    public String getApp_order_id() {
        return this.app_order_id;
    }

    public String getApp_user_name() {
        return this.app_user_name;
    }

    public Map<String, String> getArgs() {
        HashMap hashMap = new HashMap(0);
        hashMap.put("app_extra1", this.app_extra1);
        hashMap.put("app_extra2", this.app_extra2);
        hashMap.put(b.f9723h, this.app_key);
        hashMap.put(NativeUnifiedADAppInfoImpl.Keys.APP_NAME, this.app_name);
        hashMap.put("app_order_id", this.app_order_id);
        hashMap.put("app_user_name", this.app_user_name);
        hashMap.put("card_id", this.card_id);
        hashMap.put("card_pass", this.card_pass);
        hashMap.put("imei", this.imei);
        hashMap.put("kingnet_order_id", this.kingnet_order_id);
        hashMap.put("openuid", this.openuid + "");
        hashMap.put("pay_rmb", this.pay_rmb);
        hashMap.put(Constant.PAY_TYPE, this.pay_type);
        hashMap.put("product_name", this.product_name);
        hashMap.put("app_callback_url", this.app_callback_url);
        hashMap.put("sid", this.sid + "");
        hashMap.put("uid", this.uid);
        hashMap.put("product_id", this.product_id);
        hashMap.put("resource_id", this.resource_id);
        hashMap.put("token", this.token + "");
        hashMap.put("wallet_type", this.wallet_type + "");
        hashMap.put(ai.ai, this.device_type + "");
        hashMap.put(ai.f60415o, this.package_name);
        return hashMap;
    }

    public Map<String, String> getArgsURLEncoder() {
        HashMap hashMap = new HashMap(0);
        try {
            hashMap.put("app_extra1", URLEncoder.encode(this.app_extra1, "utf8"));
            hashMap.put("app_extra2", URLEncoder.encode(this.app_extra2, "utf8"));
            hashMap.put(b.f9723h, this.app_key);
            hashMap.put(NativeUnifiedADAppInfoImpl.Keys.APP_NAME, URLEncoder.encode(this.app_name, "utf8"));
            hashMap.put("app_order_id", this.app_order_id);
            hashMap.put("app_user_name", URLEncoder.encode(this.app_user_name, "utf8"));
            hashMap.put("card_id", this.card_id);
            hashMap.put("card_pass", this.card_pass);
            hashMap.put("imei", this.imei);
            hashMap.put("kingnet_order_id", this.kingnet_order_id);
            hashMap.put("openuid", this.openuid + "");
            hashMap.put("pay_rmb", this.pay_rmb);
            hashMap.put(Constant.PAY_TYPE, this.pay_type);
            hashMap.put("product_name", URLEncoder.encode(this.product_name, "utf8"));
            hashMap.put("app_callback_url", URLEncoder.encode(this.app_callback_url, "utf8"));
            hashMap.put("sid", this.sid + "");
            hashMap.put("uid", this.uid);
            hashMap.put("product_id", this.product_id);
            hashMap.put("resource_id", this.resource_id);
            hashMap.put("token", this.token + "");
            hashMap.put("wallet_type", this.wallet_type + "");
            hashMap.put(ai.ai, this.device_type + "");
            hashMap.put(ai.f60415o, this.package_name);
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
        return hashMap;
    }

    public String getCard_id() {
        return this.card_id;
    }

    public String getCard_pass() {
        return this.card_pass;
    }

    public String getDevice_type() {
        return this.device_type;
    }

    public String getImei() {
        return this.imei;
    }

    public String getKingnet_order_id() {
        return this.kingnet_order_id;
    }

    public int getOpenuid() {
        return this.openuid;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getPay_rmb() {
        return this.pay_rmb;
    }

    public String getPay_type() {
        return this.pay_type;
    }

    public String getProduct_id() {
        return this.product_id;
    }

    public String getProduct_name() {
        return this.product_name;
    }

    public String getResource_id() {
        return this.resource_id;
    }

    public int getSid() {
        return this.sid;
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

    public String getWallet_type() {
        return this.wallet_type;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setApp_callback_url(String str) {
        this.app_callback_url = str;
    }

    public void setApp_extra1(String str) {
        this.app_extra1 = str;
    }

    public void setApp_extra2(String str) {
        this.app_extra2 = str;
    }

    public void setApp_key(String str) {
        this.app_key = str;
    }

    public void setApp_name(String str) {
        this.app_name = str;
    }

    public void setApp_order_id(String str) {
        this.app_order_id = str;
    }

    public void setApp_user_name(String str) {
        this.app_user_name = str;
    }

    public void setCard_id(String str) {
        this.card_id = str;
    }

    public void setCard_pass(String str) {
        this.card_pass = str;
    }

    public void setDevice_type(String str) {
        this.device_type = str;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public void setKingnet_order_id(String str) {
        this.kingnet_order_id = str;
    }

    public void setOpenuid(int i2) {
        this.openuid = i2;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setPay_rmb(String str) {
        this.pay_rmb = str;
    }

    public void setPay_type(String str) {
        this.pay_type = str;
    }

    public void setProduct_id(String str) {
        this.product_id = str;
    }

    public void setProduct_name(String str) {
        this.product_name = str;
    }

    public void setResource_id(String str) {
        this.resource_id = str;
    }

    public void setSid(int i2) {
        this.sid = i2;
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

    public void setWallet_type(String str) {
        this.wallet_type = str;
    }
}
