package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.NewArenaMainActivty_;
/* compiled from: ArenaNoRecordDialog.java */
/* loaded from: classes3.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f47789a;

    /* renamed from: b  reason: collision with root package name */
    Activity f47790b;

    /* renamed from: c  reason: collision with root package name */
    View f47791c;

    /* renamed from: d  reason: collision with root package name */
    View f47792d;

    /* renamed from: e  reason: collision with root package name */
    TextView f47793e;

    public n(Activity activity) {
        this.f47790b = activity;
        d(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        c();
        ((NewArenaMainActivty_.h) NewArenaMainActivty_.F1(view.getContext()).flags(67108864)).start();
    }

    public void c() {
        this.f47789a.dismiss();
    }

    void d(Activity activity) {
        this.f47789a = new Dialog(activity, R.style.newtrans_floating_dialog);
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_arena_no_record, (ViewGroup) null);
        inflate.findViewById(R.id.iv_close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n.this.e(view);
            }
        });
        this.f47791c = inflate.findViewById(R.id.noRecord);
        this.f47793e = (TextView) inflate.findViewById(R.id.tv_top);
        View findViewById = inflate.findViewById(R.id.tv2);
        this.f47792d = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n.this.f(view);
            }
        });
        this.f47789a.setContentView(inflate);
        Window window = this.f47789a.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setGravity(17);
    }

    public void g() {
        if (this.f47789a.isShowing()) {
            return;
        }
        this.f47789a.show();
    }
}
