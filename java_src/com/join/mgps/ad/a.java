package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import java.util.Map;
/* compiled from: AdManager.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: k  reason: collision with root package name */
    private static a f38617k = null;

    /* renamed from: l  reason: collision with root package name */
    public static final int f38618l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f38619m = 2;

    /* renamed from: n  reason: collision with root package name */
    public static final int f38620n = 3;

    /* renamed from: o  reason: collision with root package name */
    public static final int f38621o = 4;

    /* renamed from: p  reason: collision with root package name */
    public static final int f38622p = 5;

    /* renamed from: a  reason: collision with root package name */
    private m f38623a;

    /* renamed from: b  reason: collision with root package name */
    private e f38624b;

    /* renamed from: c  reason: collision with root package name */
    private Context f38625c;

    /* renamed from: d  reason: collision with root package name */
    private String f38626d;

    /* renamed from: e  reason: collision with root package name */
    private String f38627e;

    /* renamed from: f  reason: collision with root package name */
    private String f38628f;

    /* renamed from: g  reason: collision with root package name */
    private String f38629g;

    /* renamed from: h  reason: collision with root package name */
    private int f38630h = 1;

    /* renamed from: i  reason: collision with root package name */
    private boolean f38631i = false;

    /* renamed from: j  reason: collision with root package name */
    private f f38632j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdManager.java */
    /* renamed from: com.join.mgps.ad.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0175a extends m {

        /* renamed from: s  reason: collision with root package name */
        final /* synthetic */ boolean f38633s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0175a(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f38633s = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void a(String str, int i2, int i4) {
            super.a(str, i2, i4);
            if (a.this.f38632j != null) {
                a.this.f38632j.a(str, i2, i4);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            super.b(z3);
            if (a.this.f38632j != null) {
                a.this.f38632j.b(z3);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void c(String str) {
            super.c(str);
            if (a.this.f38632j != null) {
                a.this.f38632j.c(str);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClick() {
            super.onADClick();
            if (a.this.f38632j != null) {
                a.this.f38632j.onADClick();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClose() {
            super.onADClose();
            if (a.this.f38632j != null) {
                a.this.f38632j.onADClose();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADExpose() {
            super.onADExpose();
            if (a.this.f38632j != null) {
                a.this.f38632j.onADExpose();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            if (a.this.f38632j != null) {
                a.this.f38632j.onADShow();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onError(int i2, String str) {
            super.onError(i2, str);
            if (a.this.f38632j != null) {
                a.this.f38632j.onError(i2, str);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f38633s);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onReward(Map<String, Object> map) {
            super.onReward(map);
            if (a.this.f38632j != null) {
                a.this.f38632j.onReward(map);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
            if (a.this.f38632j != null) {
                a.this.f38632j.onVideoCached();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoComplete() {
            super.onVideoComplete();
            if (a.this.f38632j != null) {
                a.this.f38632j.onVideoComplete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdManager.java */
    /* loaded from: classes3.dex */
    public class b extends e {

        /* renamed from: q  reason: collision with root package name */
        final /* synthetic */ boolean f38635q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f38635q = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void a(String str, int i2, int i4) {
            super.a(str, i2, i4);
            if (a.this.f38632j != null) {
                a.this.f38632j.a(str, i2, i4);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            super.b(z3);
            if (a.this.f38632j != null) {
                a.this.f38632j.b(z3);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void c(String str) {
            super.c(str);
            if (a.this.f38632j != null) {
                a.this.f38632j.c(str);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClick() {
            super.onADClick();
            if (a.this.f38632j != null) {
                a.this.f38632j.onADClick();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClose() {
            super.onADClose();
            if (a.this.f38632j != null) {
                a.this.f38632j.onADClose();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADExpose() {
            super.onADExpose();
            if (a.this.f38632j != null) {
                a.this.f38632j.onADExpose();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            if (a.this.f38632j != null) {
                a.this.f38632j.onADShow();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onError(int i2, String str) {
            super.onError(i2, str);
            if (a.this.f38632j != null) {
                a.this.f38632j.onError(i2, str);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f38635q);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onReward(Map<String, Object> map) {
            super.onReward(map);
            if (a.this.f38632j != null) {
                a.this.f38632j.onReward(map);
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
            if (a.this.f38632j != null) {
                a.this.f38632j.onVideoCached();
            }
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoComplete() {
            super.onVideoComplete();
            if (a.this.f38632j != null) {
                a.this.f38632j.onVideoComplete();
            }
        }
    }

    private a(Context context) {
        this.f38625c = context;
    }

    private void c(String str, String str2, boolean z3) {
        if (d2.h(str) || d2.h(str2)) {
            return;
        }
        if (this.f38624b != null && str2.equals(this.f38626d)) {
            e eVar = this.f38624b;
            if (eVar != null) {
                eVar.g();
                return;
            }
            return;
        }
        this.f38626d = str2;
        b bVar = new b(this.f38625c, str, str2, z3);
        this.f38624b = bVar;
        bVar.e();
    }

    private void d(String str, String str2, boolean z3) {
        if (d2.h(str) || d2.h(str2)) {
            return;
        }
        if (this.f38623a != null && str2.equals(this.f38627e)) {
            m mVar = this.f38623a;
            if (mVar != null) {
                mVar.g();
                return;
            }
            return;
        }
        this.f38627e = str2;
        C0175a c0175a = new C0175a(this.f38625c, str, str2, z3);
        this.f38623a = c0175a;
        c0175a.e();
    }

    public static a e(Context context) {
        if (f38617k == null) {
            f38617k = new a(context);
        }
        return f38617k;
    }

    public void b() {
        this.f38632j = null;
    }

    public void f(int i2, String str, String str2, f fVar) {
        this.f38632j = fVar;
        if (i2 == 2) {
            c(str, str2, false);
        } else if (i2 != 3 && i2 != 4) {
            d(str, str2, false);
        }
        this.f38630h = i2;
        this.f38631i = true;
    }

    public void g(Activity activity) {
        e eVar;
        m mVar;
        if (this.f38631i) {
            int i2 = this.f38630h;
            if (i2 == 1 && (mVar = this.f38623a) != null) {
                mVar.p(activity);
                return;
            } else if (i2 != 2 || (eVar = this.f38624b) == null) {
                return;
            } else {
                eVar.p(activity);
                return;
            }
        }
        i2.a(activity).b("please call method load before show");
    }
}
