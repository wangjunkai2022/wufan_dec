package com.netease.nis.quicklogin;

import android.content.Context;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.helper.b;
import com.netease.nis.quicklogin.helper.c;
import com.netease.nis.quicklogin.helper.d;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: QuickLoginHelper.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f54110a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f54111b;

    /* renamed from: c  reason: collision with root package name */
    private final String f54112c;

    /* renamed from: d  reason: collision with root package name */
    private final String f54113d;

    /* renamed from: e  reason: collision with root package name */
    private final String f54114e;

    /* renamed from: f  reason: collision with root package name */
    private final int f54115f;

    /* renamed from: g  reason: collision with root package name */
    private com.netease.nis.quicklogin.helper.a f54116g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QuickLoginHelper.java */
    /* renamed from: com.netease.nis.quicklogin.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0253a {

        /* renamed from: a  reason: collision with root package name */
        private String f54117a;

        /* renamed from: b  reason: collision with root package name */
        private String f54118b;

        /* renamed from: c  reason: collision with root package name */
        private String f54119c;

        /* renamed from: d  reason: collision with root package name */
        private int f54120d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f54121e;

        public C0253a a(String str) {
            this.f54118b = str;
            return this;
        }

        public C0253a b(String str) {
            this.f54117a = str;
            return this;
        }

        public C0253a c(String str) {
            this.f54119c = str;
            return this;
        }

        public C0253a a(int i2) {
            this.f54120d = i2;
            return this;
        }

        public C0253a a(boolean z3) {
            this.f54121e = z3;
            return this;
        }

        public a a(Context context) {
            return new a(context, this);
        }
    }

    public a(Context context, C0253a c0253a) {
        this.f54110a = context;
        this.f54111b = c0253a.f54121e;
        this.f54112c = c0253a.f54119c;
        this.f54113d = c0253a.f54117a;
        this.f54114e = c0253a.f54118b;
        this.f54115f = c0253a.f54120d;
    }

    public void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener) {
        try {
            a().a(str, quickLoginPreMobileListener);
        } catch (Exception e4) {
            e4.printStackTrace();
            quickLoginPreMobileListener.onGetMobileNumberError(str, e4.toString());
        }
    }

    public void a(QuickLoginTokenListener quickLoginTokenListener) {
        try {
            Logger.d("onePass [timeStart]" + System.currentTimeMillis());
            a().a(this.f54112c, quickLoginTokenListener);
        } catch (Exception e4) {
            e4.printStackTrace();
            quickLoginTokenListener.onGetTokenError(this.f54112c, e4.toString());
        }
    }

    public void a(String str, QuickLoginTokenListener quickLoginTokenListener) {
        try {
            a().a(this.f54110a, str, this.f54112c, quickLoginTokenListener);
        } catch (Exception e4) {
            e4.printStackTrace();
            quickLoginTokenListener.onGetTokenError(this.f54112c, e4.toString());
        }
    }

    private com.netease.nis.quicklogin.helper.a a() {
        com.netease.nis.quicklogin.helper.a aVar = this.f54116g;
        if (aVar != null) {
            return aVar;
        }
        int i2 = this.f54115f;
        if (i2 == 2) {
            this.f54116g = new b(this.f54110a, this.f54113d, this.f54114e);
        } else if (i2 == 1) {
            this.f54116g = new c(this.f54110a, this.f54114e, this.f54113d, this.f54111b);
        } else if (i2 == 3) {
            this.f54116g = new d(this.f54110a, this.f54113d, this.f54114e);
        }
        return this.f54116g;
    }
}
