package com.join.mgps.wrapper.SystemUiHider;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.view.View;
/* compiled from: SystemUiHiderHoneycomb.java */
@TargetApi(11)
/* loaded from: classes4.dex */
class c extends com.join.mgps.wrapper.SystemUiHider.b {

    /* renamed from: j  reason: collision with root package name */
    private int f52409j;

    /* renamed from: k  reason: collision with root package name */
    private int f52410k;

    /* renamed from: l  reason: collision with root package name */
    private int f52411l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f52412m;

    /* renamed from: n  reason: collision with root package name */
    private View.OnSystemUiVisibilityChangeListener f52413n;

    /* renamed from: o  reason: collision with root package name */
    private View.OnSystemUiVisibilityChangeListener f52414o;

    /* compiled from: SystemUiHiderHoneycomb.java */
    /* loaded from: classes4.dex */
    class a implements View.OnSystemUiVisibilityChangeListener {
        a() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i2) {
            if (Build.VERSION.SDK_INT < 16) {
                c.this.f52404a.getWindow().setFlags(1024, 1024);
            }
            if (i2 == 0) {
                c.this.f52407d.onVisibilityChange(false);
                c.this.f52412m = false;
                return;
            }
            c.this.f52407d.onVisibilityChange(true);
            c.this.f52412m = true;
        }
    }

    /* compiled from: SystemUiHiderHoneycomb.java */
    /* loaded from: classes4.dex */
    class b implements View.OnSystemUiVisibilityChangeListener {
        b() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i2) {
            if ((i2 & c.this.f52411l) != 0) {
                if (Build.VERSION.SDK_INT < 16) {
                    c.this.f52404a.getWindow().setFlags(1024, 1024);
                }
                c.this.f52407d.onVisibilityChange(false);
                c.this.f52412m = false;
                return;
            }
            c cVar = c.this;
            cVar.f52405b.setSystemUiVisibility(cVar.f52409j);
            if (Build.VERSION.SDK_INT < 16) {
                c.this.f52404a.getWindow().setFlags(0, 1024);
            }
            c.this.f52407d.onVisibilityChange(true);
            c.this.f52412m = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(Activity activity, View view, int i2) {
        super(activity, view, i2);
        this.f52412m = true;
        this.f52413n = new a();
        this.f52414o = new b();
        this.f52409j = 0;
        this.f52410k = 1;
        this.f52411l = 1;
        int i4 = this.f52406c;
        if ((i4 & 2) != 0) {
            this.f52410k = 1 | 1028;
        }
        if ((i4 & 6) != 0) {
            this.f52411l = 2;
        }
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.b, com.join.mgps.wrapper.SystemUiHider.a
    public void b() {
        this.f52405b.setSystemUiVisibility(this.f52410k);
        if (Build.VERSION.SDK_INT >= 19) {
            this.f52405b.setSystemUiVisibility(this.f52410k | 2 | 512 | 4096);
        }
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.b, com.join.mgps.wrapper.SystemUiHider.a
    public boolean c() {
        return this.f52412m;
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.b, com.join.mgps.wrapper.SystemUiHider.a
    public void e() {
        this.f52405b.setOnSystemUiVisibilityChangeListener(this.f52413n);
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.b, com.join.mgps.wrapper.SystemUiHider.a
    public void f() {
        this.f52405b.setSystemUiVisibility(this.f52409j);
    }
}
