package com.switfpass.pay.thread;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: f  reason: collision with root package name */
    public static final int f58914f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static final int f58915g = -1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f58916h = -2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f58917i = -3;

    /* renamed from: j  reason: collision with root package name */
    public static final int f58918j = -4;

    /* renamed from: k  reason: collision with root package name */
    public static final int f58919k = -5;

    /* renamed from: l  reason: collision with root package name */
    public static final int f58920l = -6;

    /* renamed from: m  reason: collision with root package name */
    public static final int f58921m = 460;

    /* renamed from: n  reason: collision with root package name */
    public static final int f58922n = 461;

    /* renamed from: o  reason: collision with root package name */
    public static final int f58923o = 462;

    /* renamed from: p  reason: collision with root package name */
    public static final int f58924p = 460;

    /* renamed from: q  reason: collision with root package name */
    public static Map f58925q;

    /* renamed from: a  reason: collision with root package name */
    public JSONObject f58926a;

    /* renamed from: b  reason: collision with root package name */
    public JSONArray f58927b;

    /* renamed from: c  reason: collision with root package name */
    public int f58928c = 0;

    /* renamed from: d  reason: collision with root package name */
    private String f58929d;

    /* renamed from: e  reason: collision with root package name */
    public Object f58930e;

    static {
        HashMap hashMap = new HashMap();
        f58925q = hashMap;
        hashMap.put(-1, "网络不可用");
        f58925q.put(-2, "发生未知错误");
        f58925q.put(-3, "网络繁忙，请稍候再试！");
        f58925q.put(-4, "读取数据超时");
        f58925q.put(-5, "网络连接错误");
        f58925q.put(-6, "验证数据失败");
        f58925q.put(460, "用户名已经存在");
        f58925q.put(Integer.valueOf((int) f58922n), "推荐人不存在");
        f58925q.put(Integer.valueOf((int) f58923o), "推荐人不能推荐了");
        f58925q.put(460, "应用不存在");
    }

    public static String a(int i2) {
        return (String) f58925q.get(Integer.valueOf(i2));
    }

    public static boolean d(int i2) {
        return i2 != 0;
    }

    public String b() {
        return !TextUtils.isEmpty(this.f58929d) ? this.f58929d : (String) f58925q.get(Integer.valueOf(this.f58928c));
    }

    public boolean c() {
        return (this.f58928c == 0 && TextUtils.isEmpty(this.f58929d)) ? false : true;
    }

    public boolean e() {
        return this.f58928c < 0;
    }

    public void f(String str) {
        this.f58929d = str;
    }
}
