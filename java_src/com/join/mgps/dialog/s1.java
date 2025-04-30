package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity;
/* compiled from: PrePostingHintDialog.java */
/* loaded from: classes3.dex */
public class s1 {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f47950a;

    /* renamed from: b  reason: collision with root package name */
    private PostingActivity.m f47951b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrePostingHintDialog.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f47952a;

        a(int i2) {
            this.f47952a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s1.this.f47951b.b(this.f47952a);
            s1.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrePostingHintDialog.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f47954a;

        b(int i2) {
            this.f47954a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s1.this.f47951b.e(this.f47954a);
            s1.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrePostingHintDialog.java */
    /* loaded from: classes3.dex */
    public class c implements DialogInterface.OnKeyListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                s1.this.f47951b.e(-1);
                s1.this.f47950a.dismiss();
                return false;
            }
            return false;
        }
    }

    public s1(Activity activity, PostingActivity.m mVar, int i2, String... strArr) {
        this.f47951b = mVar;
        d(activity, i2, strArr);
    }

    public void c() {
        this.f47950a.dismiss();
    }

    void d(Activity activity, int i2, String... strArr) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f47950a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f47950a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_pre_posting_hint, (ViewGroup) null);
        Button button = (Button) inflate.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) inflate.findViewById(R.id.dialog_button_ok);
        ((TextView) inflate.findViewById(R.id.tip_title)).setText(strArr[0]);
        ((TextView) inflate.findViewById(R.id.dialog_content)).setText(strArr[1]);
        if (strArr.length == 3) {
            button.setVisibility(8);
            button2.setText(strArr[2]);
        } else {
            button.setText(strArr[2]);
            button2.setText(strArr[3]);
        }
        button.setOnClickListener(new a(i2));
        button2.setOnClickListener(new b(i2));
        this.f47950a.setContentView(inflate);
        this.f47950a.setCancelable(false);
        this.f47950a.setOnKeyListener(new c());
        Window window = this.f47950a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -2;
        window.setGravity(17);
    }

    public void e() {
        if (this.f47950a.isShowing()) {
            return;
        }
        this.f47950a.show();
    }
}
