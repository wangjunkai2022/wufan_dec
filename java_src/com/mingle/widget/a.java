package com.mingle.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mingle.shapeloading.R;
/* compiled from: ShapeLoadingDialog.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f52692a;

    /* renamed from: b  reason: collision with root package name */
    private Dialog f52693b;

    /* renamed from: c  reason: collision with root package name */
    private LoadingView f52694c;

    /* renamed from: d  reason: collision with root package name */
    private View f52695d;

    public a(Context context) {
        this.f52692a = context;
        c();
    }

    private void c() {
        this.f52693b = new Dialog(this.f52692a, R.style.custom_dialog);
        View inflate = LayoutInflater.from(this.f52692a).inflate(R.layout.layout_dialog, (ViewGroup) null);
        this.f52695d = inflate;
        this.f52694c = (LoadingView) inflate.findViewById(R.id.loadView);
        this.f52693b.setContentView(this.f52695d);
    }

    public void a() {
        this.f52693b.dismiss();
    }

    public Dialog b() {
        return this.f52693b;
    }

    public void d(int i2) {
        ((GradientDrawable) this.f52695d.getBackground()).setColor(i2);
    }

    public void e(boolean z3) {
        this.f52693b.setCanceledOnTouchOutside(z3);
    }

    public void f(CharSequence charSequence) {
        this.f52694c.setLoadingText(charSequence);
    }

    public void g() {
        this.f52693b.show();
    }
}
