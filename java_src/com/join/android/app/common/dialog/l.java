package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: LocalGameTwoDialog.java */
/* loaded from: classes.dex */
public class l extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    private Button f16967a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f16968b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16969c;

    public l(@NonNull Context context) {
        super(context);
        this.f16969c = false;
    }

    public boolean a() {
        return this.f16969c;
    }

    public void b() {
        this.f16969c = false;
        this.f16967a.setBackgroundResource(R.drawable.selector_blue_dialog_bg);
        this.f16967a.setText("关闭");
    }

    public void c() {
        this.f16969c = true;
        this.f16967a.setBackgroundResource(R.drawable.selector_blue_dialog_bg);
        this.f16967a.setText("智能识别");
    }

    public void d(String str) {
        this.f16968b.setText(str);
    }

    public void e(View.OnClickListener onClickListener) {
        this.f16967a.setOnClickListener(onClickListener);
    }

    public void f(String str, View.OnClickListener onClickListener) {
        this.f16967a.setOnClickListener(onClickListener);
        this.f16967a.setText(str);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        setContentView(R.layout.dialog_localgame_two_view);
        this.f16967a = (Button) findViewById(R.id.localGameTwoBt);
        this.f16968b = (TextView) findViewById(R.id.localGameTwoContentTv);
    }
}
