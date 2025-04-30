package com.join.android.app.component.video;

import android.graphics.Bitmap;
/* compiled from: VideoSwitchBackListUtil.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static StandardVideoView f17754a;

    /* renamed from: b  reason: collision with root package name */
    private static c2.a f17755b;

    /* renamed from: c  reason: collision with root package name */
    private static Bitmap f17756c;

    public static void a(StandardVideoView standardVideoView) {
        standardVideoView.f(f17754a);
    }

    public static Bitmap b() {
        return f17756c;
    }

    public static void c(StandardVideoView standardVideoView, String str, boolean z3, String str2) {
        standardVideoView.setSwitchUrl(str);
        standardVideoView.setSwitchCache(z3);
        standardVideoView.setSwitchTitle(str2);
    }

    public static void d() {
        f17754a = null;
        f17755b = null;
    }

    public static void e(Bitmap bitmap) {
        f17756c = bitmap;
    }

    public static void f(StandardVideoView standardVideoView) {
        f17754a = standardVideoView.h();
        f17755b = standardVideoView;
    }
}
