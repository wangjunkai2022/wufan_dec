package com.bytedance.pangle.b;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    public static String f10076b = "request_finish";

    /* renamed from: c  reason: collision with root package name */
    public static String f10077c = "download_start";

    /* renamed from: d  reason: collision with root package name */
    public static String f10078d = "download_finish";

    /* renamed from: e  reason: collision with root package name */
    public static String f10079e = "install_start";

    /* renamed from: f  reason: collision with root package name */
    public static String f10080f = "install_finish";

    /* renamed from: g  reason: collision with root package name */
    public static String f10081g = "load_start";

    /* renamed from: h  reason: collision with root package name */
    public static String f10082h = "load_finish";

    /* renamed from: i  reason: collision with root package name */
    private static volatile b f10083i;

    /* renamed from: a  reason: collision with root package name */
    public final List<com.bytedance.pangle.b.a> f10084a = new ArrayList();

    /* loaded from: classes2.dex */
    public static class a {
        public static int A = 41000;
        public static int B = 42000;

        /* renamed from: a  reason: collision with root package name */
        public static int f10085a = 12000;

        /* renamed from: b  reason: collision with root package name */
        public static int f10086b = 12001;

        /* renamed from: c  reason: collision with root package name */
        public static int f10087c = 12002;

        /* renamed from: d  reason: collision with root package name */
        public static int f10088d = 12003;

        /* renamed from: e  reason: collision with root package name */
        public static int f10089e = 12004;

        /* renamed from: f  reason: collision with root package name */
        public static int f10090f = 20000;

        /* renamed from: g  reason: collision with root package name */
        public static int f10091g = 21000;

        /* renamed from: h  reason: collision with root package name */
        public static int f10092h = 21001;

        /* renamed from: i  reason: collision with root package name */
        public static int f10093i = 21002;

        /* renamed from: j  reason: collision with root package name */
        public static int f10094j = 22000;

        /* renamed from: k  reason: collision with root package name */
        public static int f10095k = 22001;

        /* renamed from: l  reason: collision with root package name */
        public static int f10096l = 22002;

        /* renamed from: m  reason: collision with root package name */
        public static int f10097m = 22999;

        /* renamed from: n  reason: collision with root package name */
        public static int f10098n = 30000;

        /* renamed from: o  reason: collision with root package name */
        public static int f10099o = 31000;

        /* renamed from: p  reason: collision with root package name */
        public static int f10100p = 32000;

        /* renamed from: q  reason: collision with root package name */
        public static int f10101q = 32001;

        /* renamed from: r  reason: collision with root package name */
        public static int f10102r = 32002;

        /* renamed from: s  reason: collision with root package name */
        public static int f10103s = 32003;

        /* renamed from: t  reason: collision with root package name */
        public static int f10104t = 32004;

        /* renamed from: u  reason: collision with root package name */
        public static int f10105u = 32005;

        /* renamed from: v  reason: collision with root package name */
        public static int f10106v = 32006;

        /* renamed from: w  reason: collision with root package name */
        public static int f10107w = 32007;

        /* renamed from: x  reason: collision with root package name */
        public static int f10108x = 32008;

        /* renamed from: y  reason: collision with root package name */
        public static int f10109y = 32999;

        /* renamed from: z  reason: collision with root package name */
        public static int f10110z = 40000;
    }

    private b() {
    }

    public static b a() {
        if (f10083i == null) {
            synchronized (b.class) {
                f10083i = new b();
            }
        }
        return f10083i;
    }

    public final void a(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        synchronized (this.f10084a) {
            for (com.bytedance.pangle.b.a aVar : this.f10084a) {
                aVar.a(str, jSONObject, jSONObject2, jSONObject3);
            }
        }
    }
}
