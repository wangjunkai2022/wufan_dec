package com.join.mgps.customview;

import android.content.Context;
import com.join.mgps.dto.ForumBean;
import org.androidannotations.api.a;
/* compiled from: ForumExtFuncPopWindow_.java */
/* loaded from: classes3.dex */
public final class f extends com.join.mgps.customview.e {

    /* renamed from: y  reason: collision with root package name */
    private Context f46837y;

    /* renamed from: z  reason: collision with root package name */
    private Object f46838z;

    /* compiled from: ForumExtFuncPopWindow_.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumPostsBean f46839a;

        a(ForumBean.ForumPostsBean forumPostsBean) {
            this.f46839a = forumPostsBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.j(this.f46839a);
        }
    }

    /* compiled from: ForumExtFuncPopWindow_.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f46841a;

        b(String str) {
            this.f46841a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.r(this.f46841a);
        }
    }

    /* compiled from: ForumExtFuncPopWindow_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f46843a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f46844b;

        c(int i2, boolean z3) {
            this.f46843a = i2;
            this.f46844b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.i(this.f46843a, this.f46844b);
        }
    }

    /* compiled from: ForumExtFuncPopWindow_.java */
    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.e();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumExtFuncPopWindow_.java */
    /* loaded from: classes3.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.d();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumExtFuncPopWindow_.java */
    /* renamed from: com.join.mgps.customview.f$f  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0197f extends a.c {
        C0197f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.f();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumExtFuncPopWindow_.java */
    /* loaded from: classes3.dex */
    class g extends a.c {
        g(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.c();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private f(Context context) {
        super(context);
        this.f46837y = context;
        B();
    }

    public static f A(Context context, Object obj) {
        return new f(context, obj);
    }

    private void B() {
    }

    public static f z(Context context) {
        return new f(context);
    }

    public void C(Context context) {
        this.f46837y = context;
        B();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void c() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void d() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void e() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void f() {
        org.androidannotations.api.a.l(new C0197f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void i(int i2, boolean z3) {
        org.androidannotations.api.b.e("", new c(i2, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void j(ForumBean.ForumPostsBean forumPostsBean) {
        org.androidannotations.api.b.e("", new a(forumPostsBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void r(String str) {
        org.androidannotations.api.b.e("", new b(str), 0L);
    }

    private f(Context context, Object obj) {
        super(context);
        this.f46837y = context;
        this.f46838z = obj;
        B();
    }
}
