package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.EventBusException;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;
/* compiled from: AbstractSubscriberInfo.java */
/* loaded from: classes5.dex */
public abstract class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Class f73291a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<? extends c> f73292b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f73293c;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Class cls, Class<? extends c> cls2, boolean z3) {
        this.f73291a = cls;
        this.f73292b = cls2;
        this.f73293c = z3;
    }

    @Override // org.greenrobot.eventbus.meta.c
    public Class b() {
        return this.f73291a;
    }

    @Override // org.greenrobot.eventbus.meta.c
    public c c() {
        Class<? extends c> cls = this.f73292b;
        if (cls == null) {
            return null;
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException | InstantiationException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // org.greenrobot.eventbus.meta.c
    public boolean d() {
        return this.f73293c;
    }

    protected j e(String str, Class<?> cls) {
        return g(str, cls, ThreadMode.POSTING, 0, false);
    }

    protected j f(String str, Class<?> cls, ThreadMode threadMode) {
        return g(str, cls, threadMode, 0, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j g(String str, Class<?> cls, ThreadMode threadMode, int i2, boolean z3) {
        try {
            return new j(this.f73291a.getDeclaredMethod(str, cls), cls, threadMode, i2, z3);
        } catch (NoSuchMethodException e4) {
            throw new EventBusException("Could not find subscriber method in " + this.f73291a + ". Maybe a missing ProGuard rule?", e4);
        }
    }
}
