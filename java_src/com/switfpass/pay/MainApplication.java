package com.switfpass.pay;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.switfpass.pay.utils.e;
/* loaded from: classes.dex */
public class MainApplication extends Application {

    /* renamed from: i  reason: collision with root package name */
    protected static MainApplication f58607i;

    /* renamed from: b  reason: collision with root package name */
    public static String f58600b = String.valueOf("https://pay.swiftpass.cn/") + "pay/unifiedsdkpay";

    /* renamed from: c  reason: collision with root package name */
    public static String f58601c = "https://statecheck.swiftpass.cn";

    /* renamed from: a  reason: collision with root package name */
    private static String f58599a = "https://pay.swiftpass.cn/";

    /* renamed from: d  reason: collision with root package name */
    public static String f58602d = String.valueOf(f58599a) + "pay/gateway";

    /* renamed from: e  reason: collision with root package name */
    public static String f58603e = String.valueOf(f58599a) + "pay/unifiedsdkpay";

    /* renamed from: f  reason: collision with root package name */
    public static String f58604f = String.valueOf(f58599a) + "pay/unifiedCheck";

    /* renamed from: g  reason: collision with root package name */
    public static String f58605g = String.valueOf(f58599a) + "pay/qqpay?token_id=";

    /* renamed from: h  reason: collision with root package name */
    public static String f58606h = "http://huangjun.dev.swiftpass.cn/";

    /* renamed from: j  reason: collision with root package name */
    public static String f58608j = "pay.tenpay.native";

    /* renamed from: k  reason: collision with root package name */
    public static String f58609k = "pay.weixin.native";

    /* renamed from: l  reason: collision with root package name */
    public static String f58610l = "pay.weixin.app";

    /* renamed from: m  reason: collision with root package name */
    public static String f58611m = "pay.alipay.native";

    /* renamed from: n  reason: collision with root package name */
    public static String f58612n = "pay.alipay.nativev2";

    /* renamed from: o  reason: collision with root package name */
    public static String f58613o = "pay.alipay.app";

    /* renamed from: p  reason: collision with root package name */
    public static String f58614p = "pay.qq.proxy.micropay";

    /* renamed from: q  reason: collision with root package name */
    public static String f58615q = "pay.qq.micropay";

    /* renamed from: r  reason: collision with root package name */
    public static String f58616r = "pay.weixin.micropay";

    /* renamed from: s  reason: collision with root package name */
    public static String f58617s = "pay.alipay.micropay";

    /* renamed from: t  reason: collision with root package name */
    public static String f58618t = "pay.tenpay.wappay";

    /* renamed from: u  reason: collision with root package name */
    public static String f58619u = "pay.weixin.wappay";

    /* renamed from: v  reason: collision with root package name */
    public static String f58620v = "pay.alipay.wappay";

    /* renamed from: w  reason: collision with root package name */
    public static String f58621w = "pay.alipay.native.towap";

    /* renamed from: x  reason: collision with root package name */
    public static String f58622x = e.f58985p;

    /* renamed from: y  reason: collision with root package name */
    public static String f58623y = "";

    /* renamed from: z  reason: collision with root package name */
    public static String f58624z = "";
    public static String A = "";
    public static String B = "";

    public MainApplication() {
        f58607i = this;
    }

    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && activeNetworkInfo.isConnected();
    }

    public static MainApplication getContext() {
        return f58607i;
    }
}
