package com.sdk.v;

import android.content.Context;
import com.sdk.f.g;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static a f56700a;

    /* renamed from: b  reason: collision with root package name */
    public static String f56701b;

    /* renamed from: c  reason: collision with root package name */
    public static String f56702c;

    /* renamed from: d  reason: collision with root package name */
    public static int f56703d;

    /* renamed from: e  reason: collision with root package name */
    public static String f56704e;

    static {
        boolean z3 = g.f56647b;
    }

    public a(Context context) {
    }

    public static a a(Context context) {
        if (f56700a == null) {
            synchronized (a.class) {
                f56700a = new a(context);
            }
        }
        return f56700a;
    }

    public static String a() {
        return f56704e;
    }

    public void a(String str, String str2) {
        f56701b = str2;
        f56702c = str;
        f56703d = 0;
        f56704e = "B";
    }
}
