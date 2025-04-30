package com.join.mgps.task;

import com.join.mgps.Util.g0;
/* compiled from: FileDeletRunable.java */
/* loaded from: classes4.dex */
public class b implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    private static final String f52272b = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    String f52273a;

    public b(String str) {
        this.f52273a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        g0.i(this.f52273a);
    }
}
