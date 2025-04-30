package com.join.mgps.customview.input;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.Window;
import android.view.WindowManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.input.InputNumView;
/* compiled from: InputNumDialog.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f46939a;

    /* renamed from: b  reason: collision with root package name */
    private Window f46940b;

    /* renamed from: c  reason: collision with root package name */
    private InputNumView f46941c;

    /* renamed from: d  reason: collision with root package name */
    private Context f46942d;

    /* renamed from: e  reason: collision with root package name */
    private InputNumView.d f46943e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InputNumDialog.java */
    /* renamed from: com.join.mgps.customview.input.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0199a implements InputNumView.d {
        C0199a() {
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            if (a.this.f46943e != null) {
                a.this.f46943e.a();
            }
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String str) {
            if (a.this.f46943e != null) {
                a.this.f46943e.b(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InputNumDialog.java */
    /* loaded from: classes3.dex */
    public class b implements DialogInterface.OnCancelListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            a.this.f46941c.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InputNumDialog.java */
    /* loaded from: classes3.dex */
    public class c implements DialogInterface.OnDismissListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            a.this.f46941c.d();
        }
    }

    public a(Context context, String str, int i2, boolean z3) {
        this.f46942d = context;
        InputNumView inputNumView = new InputNumView(context);
        this.f46941c = inputNumView;
        inputNumView.setNumLengthAndIsPwd(i2, z3);
        this.f46941c.setTitle(str);
        d();
    }

    private void d() {
        Dialog dialog = new Dialog(this.f46942d, R.style.newtrans_floating_dialog);
        this.f46939a = dialog;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f46939a.getWindow().setAttributes(attributes);
        }
        this.f46939a.setContentView(this.f46941c);
        if (i2 >= 28) {
            WindowManager.LayoutParams attributes2 = this.f46939a.getWindow().getAttributes();
            attributes2.layoutInDisplayCutoutMode = 1;
            this.f46939a.getWindow().setAttributes(attributes2);
        }
        Window window = this.f46939a.getWindow();
        this.f46940b = window;
        WindowManager.LayoutParams attributes3 = window.getAttributes();
        attributes3.height = -1;
        attributes3.width = -1;
        this.f46940b.setGravity(80);
        this.f46941c.setListener(new C0199a());
        this.f46939a.setOnCancelListener(new b());
        this.f46939a.setOnDismissListener(new c());
    }

    public void c() {
        this.f46939a.dismiss();
    }

    public boolean e() {
        return this.f46939a.isShowing();
    }

    public void f(String str) {
        this.f46941c.setCurrentPwd(str);
    }

    public void g(InputNumView.d dVar) {
        this.f46943e = dVar;
    }

    public void h() {
        if (this.f46939a.isShowing()) {
            return;
        }
        this.f46939a.show();
    }
}
