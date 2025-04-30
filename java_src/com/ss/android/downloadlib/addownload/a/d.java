package com.ss.android.downloadlib.addownload.a;

import android.app.Activity;
import android.app.Dialog;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.R;
/* compiled from: SelectOperationDialog.java */
/* loaded from: classes4.dex */
public class d extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private TextView f57083a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f57084b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f57085c;

    /* renamed from: d  reason: collision with root package name */
    private c f57086d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f57087e;

    /* renamed from: f  reason: collision with root package name */
    private Activity f57088f;

    /* renamed from: g  reason: collision with root package name */
    private String f57089g;

    /* renamed from: h  reason: collision with root package name */
    private String f57090h;

    /* renamed from: i  reason: collision with root package name */
    private String f57091i;

    /* compiled from: SelectOperationDialog.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Activity f57094a;

        /* renamed from: b  reason: collision with root package name */
        private String f57095b;

        /* renamed from: c  reason: collision with root package name */
        private String f57096c;

        /* renamed from: d  reason: collision with root package name */
        private String f57097d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f57098e;

        /* renamed from: f  reason: collision with root package name */
        private c f57099f;

        public a(Activity activity) {
            this.f57094a = activity;
        }

        public a a(String str) {
            this.f57095b = str;
            return this;
        }

        public a b(String str) {
            this.f57096c = str;
            return this;
        }

        public a c(String str) {
            this.f57097d = str;
            return this;
        }

        public a a(boolean z3) {
            this.f57098e = z3;
            return this;
        }

        public a a(c cVar) {
            this.f57099f = cVar;
            return this;
        }

        public d a() {
            return new d(this.f57094a, this.f57095b, this.f57096c, this.f57097d, this.f57098e, this.f57099f);
        }
    }

    public d(@NonNull Activity activity, String str, String str2, String str3, boolean z3, @NonNull c cVar) {
        super(activity, R.style.ttdownloader_translucent_dialog);
        this.f57088f = activity;
        this.f57086d = cVar;
        this.f57089g = str;
        this.f57090h = str2;
        this.f57091i = str3;
        setCanceledOnTouchOutside(z3);
        d();
    }

    private void d() {
        setContentView(LayoutInflater.from(this.f57088f.getApplicationContext()).inflate(a(), (ViewGroup) null));
        this.f57083a = (TextView) findViewById(b());
        this.f57084b = (TextView) findViewById(c());
        this.f57085c = (TextView) findViewById(R.id.message_tv);
        if (!TextUtils.isEmpty(this.f57090h)) {
            this.f57083a.setText(this.f57090h);
        }
        if (!TextUtils.isEmpty(this.f57091i)) {
            this.f57084b.setText(this.f57091i);
        }
        if (!TextUtils.isEmpty(this.f57089g)) {
            this.f57085c.setText(this.f57089g);
        }
        this.f57083a.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.a.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.e();
            }
        });
        this.f57084b.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.a.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f57087e = true;
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        dismiss();
    }

    public int c() {
        return R.id.cancel_tv;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (!this.f57088f.isFinishing()) {
            this.f57088f.finish();
        }
        if (this.f57087e) {
            this.f57086d.a();
        } else {
            this.f57086d.b();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public int a() {
        return R.layout.ttdownloader_dialog_select_operation;
    }

    public int b() {
        return R.id.confirm_tv;
    }
}
