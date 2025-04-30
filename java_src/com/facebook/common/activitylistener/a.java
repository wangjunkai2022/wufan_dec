package com.facebook.common.activitylistener;

import android.app.Activity;
/* compiled from: ActivityListener.java */
/* loaded from: classes2.dex */
public interface a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f11665a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f11666b = 10;

    int a();

    void b(Activity activity);

    void onDestroy(Activity activity);

    void onPause(Activity activity);

    void onResume(Activity activity);

    void onStart(Activity activity);

    void onStop(Activity activity);
}
