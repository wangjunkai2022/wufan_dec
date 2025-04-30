package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HintDialog.java */
/* loaded from: classes3.dex */
public class v0 {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f48003a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f48004b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HintDialog.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v0.this.a();
        }
    }

    public v0(Activity activity) {
        c(activity);
    }

    public void a() {
        this.f48003a.dismiss();
    }

    public Dialog b() {
        return this.f48003a;
    }

    void c(Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f48003a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f48003a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_hint, (ViewGroup) null);
        inflate.findViewById(R.id.iv_close).setOnClickListener(new a());
        this.f48004b = (TextView) inflate.findViewById(R.id.tv_hint);
        this.f48003a.setContentView(inflate);
        Window window = this.f48003a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -1;
        window.setGravity(17);
    }

    public void d(String str) {
        this.f48004b.setText(str);
    }

    public void e() {
        if (this.f48003a.isShowing()) {
            return;
        }
        this.f48003a.show();
    }
}
