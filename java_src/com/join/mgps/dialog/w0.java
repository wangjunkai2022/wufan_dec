package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: InviteDialog.java */
/* loaded from: classes3.dex */
public class w0 {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f48027a;

    /* renamed from: b  reason: collision with root package name */
    private Window f48028b;

    /* renamed from: c  reason: collision with root package name */
    private Context f48029c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f48030d;

    /* renamed from: e  reason: collision with root package name */
    private c f48031e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InviteDialog.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w0.this.f48031e.a();
            w0.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InviteDialog.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w0.this.b();
        }
    }

    /* compiled from: InviteDialog.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a();
    }

    public w0(Context context, c cVar) {
        this.f48029c = context;
        this.f48031e = cVar;
        c(context);
    }

    private void c(Context context) {
        Dialog dialog = new Dialog(context, R.style.newtrans_floating_dialog);
        this.f48027a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f48027a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_invite_pwd, (ViewGroup) null);
        this.f48030d = (TextView) inflate.findViewById(R.id.tv_pwd_info);
        inflate.findViewById(R.id.btn_copy).setOnClickListener(new a());
        inflate.findViewById(R.id.iv_close).setOnClickListener(new b());
        this.f48027a.setContentView(inflate);
        Window window = this.f48027a.getWindow();
        this.f48028b = window;
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.height = -1;
        attributes2.width = -1;
        this.f48028b.setGravity(17);
    }

    public void b() {
        this.f48027a.dismiss();
    }

    public boolean d() {
        return this.f48027a.isShowing();
    }

    public void e(String str) {
        this.f48030d.setText(str);
    }

    public void f() {
        this.f48027a.show();
    }
}
