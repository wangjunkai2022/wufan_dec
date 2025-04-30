package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.umeng.analytics.MobclickAgent;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: LocalGameOneDialog.java */
/* loaded from: classes.dex */
public class f extends AlertDialog {

    /* renamed from: a  reason: collision with root package name */
    private Button f16928a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f16929b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16930c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f16931d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f16932e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f16933f;

    /* renamed from: g  reason: collision with root package name */
    private int f16934g;

    /* compiled from: LocalGameOneDialog.java */
    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.pref.h.n(f.this.getContext()).U(false);
            f.this.dismiss();
        }
    }

    /* compiled from: LocalGameOneDialog.java */
    /* loaded from: classes.dex */
    class b implements View.OnClickListener {

        /* compiled from: LocalGameOneDialog.java */
        /* loaded from: classes.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                f.this.dismiss();
            }
        }

        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.f16932e.setVisibility(4);
            f.this.f16933f.setImageResource(R.drawable.ic_local_game_scan);
            f.this.f16930c.setText("扫描提示");
            f.this.f16929b.setText("如再次需要扫描，请前往【我的游戏】点击本地游戏按钮。");
            f.this.f16928a.setText("我知道了");
            f.this.f16928a.setOnClickListener(new a());
        }
    }

    public f(@NonNull Context context, int i2) {
        super(context);
        this.f16934g = 0;
        this.f16934g = i2;
    }

    public void f(View.OnClickListener onClickListener) {
        this.f16928a.setOnClickListener(onClickListener);
    }

    public void g(String str, View.OnClickListener onClickListener) {
        this.f16928a.setOnClickListener(onClickListener);
        this.f16928a.setText(str);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        setContentView(R.layout.dialog_localgame_one_view);
        this.f16928a = (Button) findViewById(R.id.localGameOneBt);
        this.f16930c = (TextView) findViewById(R.id.localGameOneTitleTv);
        this.f16929b = (TextView) findViewById(R.id.localGameOneContentTv);
        this.f16931d = (TextView) findViewById(R.id.localGameOneNotTv);
        this.f16932e = (ImageView) findViewById(R.id.localGameOneCloseTv);
        this.f16933f = (ImageView) findViewById(R.id.localGameOneTopIv);
        this.f16931d.setOnClickListener(new a());
        this.f16932e.setOnClickListener(new b());
        int i2 = this.f16934g;
        if (i2 == 0) {
            setCancelable(true);
            this.f16930c.setText("本地游戏运行帮助");
            this.f16929b.setText("悟饭支持本地扫描了，下载文件至'Download'文件夹，点击下方的扫描游戏，即可添加游戏至我的游戏。");
            this.f16932e.setVisibility(4);
        } else if (i2 == 1) {
            MobclickAgent.onEvent(getContext(), "onFindNewFile");
            setCancelable(false);
            this.f16930c.setText("新增文件提示");
            this.f16929b.setText("检测到'Download'目录下有新增zip文件，是否进行扫描识别？");
            this.f16932e.setVisibility(0);
        }
    }
}
