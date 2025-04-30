package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.ThreadMode;
/* compiled from: SubscriberMethodInfo.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    final String f73295a;

    /* renamed from: b  reason: collision with root package name */
    final ThreadMode f73296b;

    /* renamed from: c  reason: collision with root package name */
    final Class<?> f73297c;

    /* renamed from: d  reason: collision with root package name */
    final int f73298d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f73299e;

    public e(String str, Class<?> cls, ThreadMode threadMode, int i2, boolean z3) {
        this.f73295a = str;
        this.f73296b = threadMode;
        this.f73297c = cls;
        this.f73298d = i2;
        this.f73299e = z3;
    }

    public e(String str, Class<?> cls) {
        this(str, cls, ThreadMode.POSTING, 0, false);
    }

    public e(String str, Class<?> cls, ThreadMode threadMode) {
        this(str, cls, threadMode, 0, false);
    }
}
