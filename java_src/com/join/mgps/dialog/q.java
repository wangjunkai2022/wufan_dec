package com.join.mgps.dialog;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: BaseDialog.java */
/* loaded from: classes3.dex */
public class q extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private String f47861a;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnDismissListener f47862b;

    /* renamed from: c  reason: collision with root package name */
    protected Context f47863c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f47864d;

    /* renamed from: e  reason: collision with root package name */
    private int f47865e;

    /* renamed from: f  reason: collision with root package name */
    private float f47866f;

    /* renamed from: g  reason: collision with root package name */
    private int f47867g;

    /* renamed from: h  reason: collision with root package name */
    private int f47868h;

    /* renamed from: i  reason: collision with root package name */
    private int f47869i;

    public q(@NonNull Context context) {
        this(context, R.style.Dialog);
    }

    private void a() {
        try {
            Window window = getWindow();
            window.setFlags(1024, 1024);
            window.getDecorView().setSystemUiVisibility(Build.VERSION.SDK_INT >= 19 ? 5894 : 1799);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void b(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setSystemUiVisibility(5894);
        }
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(14)
    private void j() {
        boolean l4 = l();
        int i2 = l4;
        if (k()) {
            i2 = (l4 ? 1 : 0) | 5126;
        }
        if (getWindow().getDecorView() != null) {
            getWindow().getDecorView().setSystemUiVisibility(i2);
        }
    }

    private boolean k() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public int c() {
        return this.f47869i;
    }

    public int d() {
        return this.f47868h;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        j();
        DialogInterface.OnDismissListener onDismissListener = this.f47862b;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(this);
        }
    }

    public void e(int i2) {
        this.f47867g = i2;
    }

    public void f(float f4) {
        this.f47866f = f4;
    }

    public void g(boolean z3) {
        this.f47864d = z3;
    }

    public void h(int i2) {
        this.f47869i = i2;
    }

    public void i(int i2) {
        this.f47868h = i2;
    }

    public boolean l() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setAttributes(attributes);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        a();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        super.onWindowAttributesChanged(layoutParams);
        if (Build.VERSION.SDK_INT <= 29) {
            j();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        if (getWindow() != null) {
            getWindow().setFlags(8, 8);
            b(getWindow().getDecorView());
            getWindow().clearFlags(8);
        }
        super.onWindowFocusChanged(z3);
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(@Nullable DialogInterface.OnDismissListener onDismissListener) {
        this.f47862b = onDismissListener;
    }

    @Override // android.app.Dialog
    public void show() {
        if (getWindow() != null) {
            getWindow().setFlags(8, 8);
        }
        super.show();
        b(getWindow().getDecorView());
        getWindow().clearFlags(8);
    }

    public q(@NonNull Context context, int i2) {
        super(context, i2);
        this.f47861a = getClass().getSimpleName();
        this.f47864d = false;
        this.f47865e = 0;
        this.f47866f = 0.5f;
        this.f47867g = R.style.AlphaAnimStyle;
        this.f47868h = -1;
        this.f47869i = -1;
        this.f47863c = context;
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = this.f47868h;
            attributes.height = this.f47869i;
            attributes.gravity = this.f47865e;
            attributes.windowAnimations = this.f47867g;
            window.setAttributes(attributes);
            if (this.f47864d) {
                window.addFlags(2);
                window.setDimAmount(this.f47866f);
                return;
            }
            window.clearFlags(2);
        }
    }
}
