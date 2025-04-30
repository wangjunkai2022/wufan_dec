package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes3.dex */
public class SmartScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private boolean f46400a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f46401b;

    /* renamed from: c  reason: collision with root package name */
    private a f46402c;

    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b();
    }

    public SmartScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46400a = true;
        this.f46401b = false;
    }

    private void c() {
        a aVar;
        if (this.f46400a) {
            a aVar2 = this.f46402c;
            if (aVar2 != null) {
                aVar2.b();
            }
        } else if (!this.f46401b || (aVar = this.f46402c) == null) {
        } else {
            aVar.a();
        }
    }

    public boolean a() {
        return this.f46401b;
    }

    public boolean b() {
        return this.f46400a;
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onOverScrolled(int i2, int i4, boolean z3, boolean z4) {
        super.onOverScrolled(i2, i4, z3, z4);
        if (i4 == 0) {
            this.f46400a = z4;
            this.f46401b = false;
        } else {
            this.f46400a = false;
            this.f46401b = z4;
        }
        c();
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        super.onScrollChanged(i2, i4, i5, i6);
    }

    public void setScanScrollChangedListener(a aVar) {
        this.f46402c = aVar;
    }
}
