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
/* compiled from: MessageDialog1.java */
/* loaded from: classes3.dex */
public class q extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    private TextView f47078a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f47079b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f47080c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f47081d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f47082e;

    /* renamed from: f  reason: collision with root package name */
    private Button f47083f;

    /* renamed from: g  reason: collision with root package name */
    private Button f47084g;

    /* renamed from: h  reason: collision with root package name */
    private Button f47085h;

    /* renamed from: i  reason: collision with root package name */
    private String f47086i;

    /* compiled from: MessageDialog1.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q.this.dismiss();
        }
    }

    /* compiled from: MessageDialog1.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q.this.dismiss();
        }
    }

    public q(@NonNull Context context) {
        super(context, R.style.MyDialog);
        this.f47086i = "";
    }

    public void a(View.OnClickListener onClickListener) {
        this.f47080c.setOnClickListener(onClickListener);
    }

    public void b(String str) {
        this.f47086i = str;
        TextView textView = this.f47079b;
        textView.setText("（1）创建热点，设置名称为\"" + str + "\"；");
        this.f47081d.setText("（2）设置密码为\"12345678\"；");
    }

    public void c(String str) {
        this.f47086i = str;
        this.f47080c.setVisibility(8);
        TextView textView = this.f47079b;
        textView.setText("（1）寻找名称以\"" + str + "\"开头的热点；");
        this.f47081d.setText("（2）加入密码为\"12345678\"；");
        this.f47082e.setText("（3）连接热点后，返回悟饭游戏厅（请确保本机热点处于关闭状态）。");
    }

    public void d(View.OnClickListener onClickListener) {
        e("", onClickListener);
    }

    public void e(String str, View.OnClickListener onClickListener) {
        this.f47083f.setOnClickListener(onClickListener);
        if (d2.h(str)) {
            return;
        }
        this.f47083f.setText(str);
    }

    public void f(String str) {
        this.f47078a.setText(str);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        setContentView(R.layout.dialog_message_view1);
        this.f47078a = (TextView) findViewById(R.id.dialogMessageTitleTx);
        this.f47079b = (TextView) findViewById(R.id.dialogMessagOneTx);
        this.f47080c = (TextView) findViewById(R.id.dialogMessagCopyTx);
        this.f47081d = (TextView) findViewById(R.id.dialogMessagTwoTx);
        this.f47082e = (TextView) findViewById(R.id.dialogMessagThreeTx);
        this.f47083f = (Button) findViewById(R.id.dialogMessagBt);
        this.f47084g = (Button) findViewById(R.id.dialogMessagCloseBt);
        Button button = (Button) findViewById(R.id.dialog_button_cancle);
        this.f47085h = button;
        button.setOnClickListener(new a());
        this.f47080c.getPaint().setFlags(8);
        Button button2 = this.f47084g;
        if (button2 != null) {
            button2.setOnClickListener(new b());
        }
    }
}
