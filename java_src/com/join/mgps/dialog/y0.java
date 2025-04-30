package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CircleDownloadProgressBar;
/* compiled from: LodingProgressDialog.java */
/* loaded from: classes3.dex */
public class y0 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    boolean f48095a;

    /* renamed from: b  reason: collision with root package name */
    String f48096b;

    /* renamed from: c  reason: collision with root package name */
    TextView f48097c;

    /* renamed from: d  reason: collision with root package name */
    CircleDownloadProgressBar f48098d;

    protected y0(Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f48095a = false;
    }

    public Dialog a(int i2) {
        CircleDownloadProgressBar circleDownloadProgressBar = this.f48098d;
        if (circleDownloadProgressBar != null) {
            circleDownloadProgressBar.setProgress(i2);
        }
        return this;
    }

    public Dialog b(String str) {
        TextView textView = this.f48097c;
        if (textView != null) {
            textView.setText(str);
        }
        this.f48096b = str;
        return this;
    }

    public void c() {
        try {
            if (isShowing()) {
                return;
            }
            show();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.loding_progress_layout);
        setCancelable(this.f48095a);
        this.f48097c = (TextView) findViewById(R.id.textView);
        this.f48098d = (CircleDownloadProgressBar) findViewById(R.id.progressBar);
        if (TextUtils.isEmpty(this.f48096b)) {
            return;
        }
        this.f48097c.setText(this.f48096b);
    }

    public y0(Context context) {
        super(context);
        this.f48095a = false;
    }

    public y0(Context context, int i2) {
        super(context, i2);
        this.f48095a = false;
    }

    public y0(Context context, int i2, boolean z3) {
        super(context, i2);
        this.f48095a = false;
        this.f48095a = z3;
    }

    public y0(Context context, int i2, String str) {
        super(context, i2);
        this.f48095a = false;
        this.f48095a = false;
        this.f48096b = str;
    }

    public y0(Context context, int i2, String str, boolean z3) {
        super(context, i2);
        this.f48095a = false;
        this.f48095a = z3;
        this.f48096b = str;
    }
}
