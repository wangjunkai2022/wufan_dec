package com.join.mgps.Util;

import android.content.Context;
import org.androidannotations.api.a;
/* compiled from: StartGame_.java */
/* loaded from: classes3.dex */
public final class x1 extends w1 {

    /* renamed from: d  reason: collision with root package name */
    private static x1 f27880d;

    /* renamed from: b  reason: collision with root package name */
    private Context f27881b;

    /* renamed from: c  reason: collision with root package name */
    private Object f27882c;

    /* compiled from: StartGame_.java */
    /* loaded from: classes3.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27883a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27884b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, Context context, String str3) {
            super(str, j4, str2);
            this.f27883a = context;
            this.f27884b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x1.super.c(this.f27883a, this.f27884b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: StartGame_.java */
    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27886a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27887b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, Context context, String str3) {
            super(str, j4, str2);
            this.f27886a = context;
            this.f27887b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x1.super.d(this.f27886a, this.f27887b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private x1(Context context) {
        this.f27881b = context;
    }

    public static x1 g(Context context) {
        if (f27880d == null) {
            i3.c c4 = i3.c.c(null);
            x1 x1Var = new x1(context.getApplicationContext());
            f27880d = x1Var;
            x1Var.h();
            i3.c.c(c4);
        }
        return f27880d;
    }

    private void h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.Util.w1
    public void c(Context context, String str) {
        org.androidannotations.api.a.l(new a("", 0L, "", context, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.Util.w1
    public void d(Context context, String str) {
        org.androidannotations.api.a.l(new b("", 0L, "", context, str));
    }

    private x1(Context context, Object obj) {
        this.f27881b = context;
        this.f27882c = obj;
    }
}
