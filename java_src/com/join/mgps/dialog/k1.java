package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.ModGameIndexActivity_;
/* compiled from: ModStandardDialog.java */
/* loaded from: classes3.dex */
public class k1 extends AlertDialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private String f47768a;

    /* renamed from: b  reason: collision with root package name */
    private String f47769b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f47770c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f47771d;

    /* renamed from: e  reason: collision with root package name */
    DownloadTask f47772e;

    public k1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    private void c() {
        Context context = getContext();
        if (APKUtils.I(this.f47772e)) {
            APKUtils.s(getContext(), this.f47772e);
        } else if (com.join.android.app.common.utils.j.w() instanceof ModGameIndexActivity_) {
            Intent intent = new Intent(f1.a.f65499r0);
            intent.putExtra("from", "modStdDialog");
            context.sendBroadcast(intent);
        } else {
            ModGameIndexActivity_.H2(context).a("modStdDialog").b(this.f47769b).c(this.f47768a).start();
        }
    }

    public void a(String str) {
        this.f47768a = str;
        show();
    }

    public void b(String str, String str2) {
        this.f47769b = str;
        this.f47768a = str2;
        show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.launch) {
            dismiss();
            c();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_mod_standard);
        setCanceledOnTouchOutside(false);
        this.f47770c = (TextView) findViewById(R.id.textView102);
        this.f47771d = (TextView) findViewById(R.id.launch);
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.launch).setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        DownloadTask B = g1.f.G().B(this.f47769b);
        this.f47772e = B;
        if (B == null || !APKUtils.H(B)) {
            return;
        }
        this.f47770c.setText("如自动安装无法正常运行，请尝试手动安装");
        this.f47771d.setText("立即安装");
    }
}
