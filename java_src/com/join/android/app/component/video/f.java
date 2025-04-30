package com.join.android.app.component.video;

import android.graphics.Bitmap;
/* compiled from: VideoSwitchUtil.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static StandardVideoView f17757a;

    /* renamed from: b  reason: collision with root package name */
    private static c2.a f17758b;

    /* renamed from: c  reason: collision with root package name */
    private static Bitmap f17759c;

    public static void a(StandardVideoView standardVideoView) {
        standardVideoView.f(f17757a);
    }

    public static Bitmap b() {
        return f17759c;
    }

    public static void c(StandardVideoView standardVideoView, String str, boolean z3, String str2) {
        standardVideoView.setSwitchUrl(str);
        standardVideoView.setSwitchCache(z3);
        standardVideoView.setSwitchTitle(str2);
    }

    public static void d() {
        f17757a = null;
        f17758b = null;
    }

    public static void e(Bitmap bitmap) {
        f17759c = bitmap;
    }

    public static void f(StandardVideoView standardVideoView) {
        f17757a = standardVideoView.h();
        f17758b = standardVideoView;
    }
}
