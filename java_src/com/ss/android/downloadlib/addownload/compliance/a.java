package com.ss.android.downloadlib.addownload.compliance;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.R;
import com.ss.android.downloadlib.addownload.compliance.d;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.l;
import com.ss.android.downloadlib.guide.install.ClipImageView;
/* compiled from: AdLpAppInfoDialog.java */
/* loaded from: classes4.dex */
public class a extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private TextView f57192a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f57193b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f57194c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f57195d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f57196e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f57197f;

    /* renamed from: g  reason: collision with root package name */
    private ClipImageView f57198g;

    /* renamed from: h  reason: collision with root package name */
    private LinearLayout f57199h;

    /* renamed from: i  reason: collision with root package name */
    private Activity f57200i;

    /* renamed from: j  reason: collision with root package name */
    private final long f57201j;

    /* renamed from: k  reason: collision with root package name */
    private long f57202k;

    /* renamed from: l  reason: collision with root package name */
    private final com.ss.android.downloadlib.addownload.b.b f57203l;

    public a(@NonNull Activity activity, long j4) {
        super(activity);
        this.f57200i = activity;
        this.f57201j = j4;
        this.f57203l = c.a().get(Long.valueOf(j4));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        com.ss.android.socialbase.appdownloader.c.a(this.f57200i);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f57203l == null) {
            dismiss();
            return;
        }
        requestWindowFeature(1);
        setContentView(R.layout.ttdownloader_dialog_appinfo);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.drawable.ttdownloader_bg_transparent);
        }
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        this.f57202k = this.f57203l.f57113b;
        a();
        e.b("lp_app_dialog_show", this.f57202k);
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                e.a("lp_app_dialog_cancel", a.this.f57202k);
            }
        });
    }

    private void a() {
        this.f57192a = (TextView) findViewById(R.id.tv_app_name);
        this.f57193b = (TextView) findViewById(R.id.tv_app_version);
        this.f57194c = (TextView) findViewById(R.id.tv_app_developer);
        this.f57195d = (TextView) findViewById(R.id.tv_app_detail);
        this.f57196e = (TextView) findViewById(R.id.tv_app_privacy);
        this.f57197f = (TextView) findViewById(R.id.tv_give_up);
        this.f57198g = (ClipImageView) findViewById(R.id.iv_app_icon);
        this.f57199h = (LinearLayout) findViewById(R.id.ll_download);
        this.f57192a.setText(l.a(this.f57203l.f57116e, "--"));
        TextView textView = this.f57193b;
        textView.setText("版本号：" + l.a(this.f57203l.f57117f, "--"));
        TextView textView2 = this.f57194c;
        textView2.setText("开发者：" + l.a(this.f57203l.f57118g, "应用信息正在完善中"));
        this.f57198g.setRoundRadius(l.a(j.getContext(), 8.0f));
        this.f57198g.setBackgroundColor(Color.parseColor("#EBEBEB"));
        d.a().a(this.f57201j, new d.a() { // from class: com.ss.android.downloadlib.addownload.compliance.a.2
            @Override // com.ss.android.downloadlib.addownload.compliance.d.a
            public void a(Bitmap bitmap) {
                if (bitmap != null) {
                    a.this.f57198g.setImageBitmap(bitmap);
                } else {
                    e.a(8, a.this.f57202k);
                }
            }
        });
        this.f57195d.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.a().a(a.this.f57200i);
                AppDetailInfoActivity.a(a.this.f57200i, a.this.f57201j);
                e.a("lp_app_dialog_click_detail", a.this.f57202k);
            }
        });
        this.f57196e.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.a().a(a.this.f57200i);
                AppPrivacyPolicyActivity.a(a.this.f57200i, a.this.f57201j);
                e.a("lp_app_dialog_click_privacy", a.this.f57202k);
            }
        });
        this.f57197f.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.dismiss();
                e.a("lp_app_dialog_click_giveup", a.this.f57202k);
            }
        });
        this.f57199h.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.a("lp_app_dialog_click_download", a.this.f57202k);
                b.a().b(a.this.f57202k);
                a.this.dismiss();
            }
        });
    }
}
