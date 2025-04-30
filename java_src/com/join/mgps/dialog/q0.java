package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ForumLoadingDialog.java */
/* loaded from: classes3.dex */
public class q0 extends Dialog {

    /* renamed from: h  reason: collision with root package name */
    public static final int f47870h = -1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f47871i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f47872j = 1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f47873k = 2;

    /* renamed from: l  reason: collision with root package name */
    public static int f47874l = -1;

    /* renamed from: a  reason: collision with root package name */
    private Context f47875a;

    /* renamed from: b  reason: collision with root package name */
    View f47876b;

    /* renamed from: c  reason: collision with root package name */
    View f47877c;

    /* renamed from: d  reason: collision with root package name */
    View f47878d;

    /* renamed from: e  reason: collision with root package name */
    TextView f47879e;

    /* renamed from: f  reason: collision with root package name */
    TextView f47880f;

    /* renamed from: g  reason: collision with root package name */
    public Handler f47881g;

    /* compiled from: ForumLoadingDialog.java */
    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 != -1) {
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            return;
                        }
                        q0.this.c(2);
                        return;
                    }
                    q0.this.c(1);
                }
                q0.this.c(0);
                return;
            }
            q0.this.c(-1);
        }
    }

    public q0(Context context, int i2) {
        super(context, i2);
        this.f47881g = new a();
        this.f47875a = context;
    }

    public void a(CharSequence charSequence) {
        if (this.f47880f == null) {
            this.f47880f = (TextView) this.f47878d.findViewById(R.id.forum_send_failed_tv);
        }
        this.f47880f.setText(charSequence);
    }

    public void b(CharSequence charSequence) {
        if (this.f47879e == null) {
            this.f47879e = (TextView) this.f47877c.findViewById(R.id.forum_send_success_tv);
        }
        this.f47879e.setText(charSequence);
    }

    public void c(int i2) {
        f47874l = i2;
        if (i2 == -1) {
            dismiss();
            return;
        }
        if (isShowing()) {
            dismiss();
        }
        this.f47876b.setVisibility(8);
        this.f47877c.setVisibility(8);
        this.f47878d.setVisibility(8);
        if (i2 == 0) {
            this.f47876b.setVisibility(0);
        } else if (i2 == 1) {
            this.f47878d.setVisibility(0);
            this.f47881g.sendEmptyMessageDelayed(-1, 500L);
        } else if (i2 == 2) {
            this.f47877c.setVisibility(0);
            this.f47881g.sendEmptyMessageDelayed(-1, 500L);
        }
        if (isShowing()) {
            return;
        }
        show();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    public q0(Context context) {
        super(context, R.style.dialog_error);
        this.f47881g = new a();
        this.f47875a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.forum_send_loading_layout, (ViewGroup) null);
        this.f47876b = inflate.findViewById(R.id.forum_send_loading_container);
        this.f47877c = inflate.findViewById(R.id.forum_send_success_container);
        this.f47878d = inflate.findViewById(R.id.forum_send_failed_container);
        setContentView(inflate);
        setCancelable(true);
        setCanceledOnTouchOutside(false);
    }
}
