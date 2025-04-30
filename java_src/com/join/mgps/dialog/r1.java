package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity;
/* compiled from: PostingSelectGameDialog.java */
/* loaded from: classes3.dex */
public class r1 {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f47930a;

    /* renamed from: b  reason: collision with root package name */
    private PostingActivity.m f47931b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostingSelectGameDialog.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r1.this.f47931b.a(4354);
            r1.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostingSelectGameDialog.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r1.this.f47931b.a(4353);
            r1.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PostingSelectGameDialog.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r1.this.f47931b.a(4352);
            r1.this.b();
        }
    }

    public r1(Activity activity, PostingActivity.m mVar) {
        this.f47931b = mVar;
        c(activity);
    }

    public void b() {
        this.f47930a.dismiss();
    }

    void c(Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f47930a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f47930a.getWindow().setAttributes(attributes);
        }
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_posting_select_game, (ViewGroup) null);
        inflate.findViewById(R.id.tv_papaku).setOnClickListener(new a());
        inflate.findViewById(R.id.tv_collection).setOnClickListener(new b());
        inflate.findViewById(R.id.tv_local).setOnClickListener(new c());
        this.f47930a.setContentView(inflate);
        Window window = this.f47930a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = com.join.mgps.Util.b0.a(activity, 166.0f);
        window.setGravity(80);
    }

    public void d() {
        if (this.f47930a.isShowing()) {
            return;
        }
        this.f47930a.show();
    }
}
