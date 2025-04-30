package com.ss.android.socialbase.appdownloader.a;

import android.content.Context;
/* compiled from: AbsDevicePlan.java */
/* loaded from: classes4.dex */
public abstract class a implements e {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f57560a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.ss.android.socialbase.downloader.g.a f57561b;

    /* renamed from: c  reason: collision with root package name */
    protected final String f57562c;

    public a(Context context, com.ss.android.socialbase.downloader.g.a aVar, String str) {
        this.f57560a = context;
        this.f57561b = aVar;
        this.f57562c = str;
    }

    public boolean a() {
        if (this.f57560a == null) {
            return false;
        }
        try {
        } catch (Throwable unused) {
            com.ss.android.socialbase.downloader.c.a.a();
        }
        return b().resolveActivity(this.f57560a.getPackageManager()) != null;
    }
}
