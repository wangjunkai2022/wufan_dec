package com.join.mgps.wrapper.SystemUiHider;

import android.app.Activity;
import android.view.View;
/* compiled from: SystemUiHiderBase.java */
/* loaded from: classes4.dex */
class b extends a {

    /* renamed from: i  reason: collision with root package name */
    private boolean f52408i;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Activity activity, View view, int i2) {
        super(activity, view, i2);
        this.f52408i = true;
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.a
    public void b() {
        if ((this.f52406c & 2) != 0) {
            this.f52404a.getWindow().setFlags(1024, 1024);
        }
        this.f52407d.onVisibilityChange(false);
        this.f52408i = false;
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.a
    public boolean c() {
        return this.f52408i;
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.a
    public void e() {
        if ((this.f52406c & 1) == 0) {
            this.f52404a.getWindow().setFlags(768, 768);
        }
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.a
    public void f() {
        if ((this.f52406c & 2) != 0) {
            this.f52404a.getWindow().setFlags(0, 1024);
        }
        this.f52407d.onVisibilityChange(true);
        this.f52408i = true;
    }
}
