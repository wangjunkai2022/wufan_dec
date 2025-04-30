package com.join.mgps.customview;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: MessageDialog.java */
/* loaded from: classes3.dex */
public class p extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    private TextView f47050a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f47051b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f47052c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f47053d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f47054e;

    /* renamed from: f  reason: collision with root package name */
    private Button f47055f;

    /* renamed from: g  reason: collision with root package name */
    private Button f47056g;

    /* renamed from: h  reason: collision with root package name */
    private String f47057h;

    /* compiled from: MessageDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.dismiss();
        }
    }

    public p(@NonNull Context context) {
        super(context);
        this.f47057h = "";
    }

    public void a(View.OnClickListener onClickListener) {
        this.f47052c.setOnClickListener(onClickListener);
    }

    public void b(String str) {
        this.f47057h = str;
        TextView textView = this.f47051b;
        textView.setText("（1）创建热点，设置名称为\"" + str + "\"；");
        this.f47053d.setText("（2）设置密码为\"12345678\"；");
    }

    public void c(String str) {
        this.f47057h = str;
        this.f47052c.setVisibility(8);
        TextView textView = this.f47051b;
        textView.setText("（1）寻找名称以\"" + str + "\"开头的热点；");
        this.f47053d.setText("（2）加入密码为\"12345678\"；");
        this.f47054e.setText("（3）连接热点后，返回悟饭游戏厅（请确保本机热点处于关闭状态）。");
    }

    public void d(View.OnClickListener onClickListener) {
        e("", onClickListener);
    }

    public void e(String str, View.OnClickListener onClickListener) {
        this.f47055f.setOnClickListener(onClickListener);
        if (d2.h(str)) {
            return;
        }
        this.f47055f.setText(str);
    }

    public void f(String str) {
        this.f47050a.setText(str);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setLayout((int) getContext().getResources().getDimension(R.dimen.wdp915), (int) getContext().getResources().getDimension(R.dimen.wdp424));
        window.setGravity(17);
        setContentView(R.layout.dialog_message_view);
        this.f47050a = (TextView) findViewById(R.id.dialogMessageTitleTx);
        this.f47051b = (TextView) findViewById(R.id.dialogMessagOneTx);
        this.f47052c = (TextView) findViewById(R.id.dialogMessagCopyTx);
        this.f47053d = (TextView) findViewById(R.id.dialogMessagTwoTx);
        this.f47054e = (TextView) findViewById(R.id.dialogMessagThreeTx);
        this.f47055f = (Button) findViewById(R.id.dialogMessagBt);
        this.f47056g = (Button) findViewById(R.id.dialogMessagCloseBt);
        this.f47052c.getPaint().setFlags(8);
        this.f47056g.setOnClickListener(new a());
    }
}
