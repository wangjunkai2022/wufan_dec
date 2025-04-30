package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.i2;
import com.join.mgps.pref.PrefDef_;
import com.mob.MobSDK;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
/* compiled from: UserPermissDialog.java */
/* loaded from: classes3.dex */
public class y1 extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    Activity f48099a;

    /* renamed from: b  reason: collision with root package name */
    TextView f48100b;

    /* renamed from: c  reason: collision with root package name */
    WebView f48101c;

    /* renamed from: d  reason: collision with root package name */
    String f48102d;

    /* renamed from: e  reason: collision with root package name */
    int f48103e;

    /* renamed from: f  reason: collision with root package name */
    f f48104f;

    /* renamed from: g  reason: collision with root package name */
    Handler f48105g;

    /* compiled from: UserPermissDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1 y1Var = y1.this;
            if (y1Var.f48103e == 1) {
                com.papa.sim.statistic.p.l(y1Var.f48099a).K1(Event.disagreePrivacyProtocol, new Ext());
                Activity activity = y1.this.f48099a;
                new y1(activity, 2, com.join.mgps.rpc.g.f51524k + com.constant.b.f11068b, y1.this.f48104f).show();
            } else {
                com.papa.sim.statistic.p.l(y1Var.f48099a).K1(Event.disagreeExitApp, new Ext());
                y1.this.f48099a.finish();
                MobSDK.submitPolicyGrantResult(false, null);
            }
            y1.this.dismiss();
        }
    }

    /* compiled from: UserPermissDialog.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1 y1Var = y1.this;
            if (y1Var.f48103e == 1) {
                com.papa.sim.statistic.p.l(y1Var.f48099a).K1(Event.agreePrivacyProtocol, new Ext());
                new PrefDef_(y1.this.f48099a).firstShowUserPermiss().g(Boolean.FALSE);
                y1.this.f48104f.a();
            } else {
                com.papa.sim.statistic.p.l(y1Var.f48099a).K1(Event.disagreeThinkAgain, new Ext());
                Activity activity = y1.this.f48099a;
                new y1(activity, 1, com.join.mgps.rpc.g.f51524k + com.constant.b.f11067a, y1.this.f48104f).show();
            }
            y1.this.dismiss();
        }
    }

    /* compiled from: UserPermissDialog.java */
    /* loaded from: classes3.dex */
    class c implements DialogInterface.OnKeyListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (y1.this.f48103e == 2) {
                    Activity activity = y1.this.f48099a;
                    new y1(activity, 1, com.join.mgps.rpc.g.f51524k + com.constant.b.f11067a, y1.this.f48104f).show();
                    y1.this.dismiss();
                }
                return true;
            }
            return false;
        }
    }

    /* compiled from: UserPermissDialog.java */
    /* loaded from: classes3.dex */
    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            if (message.what == 1) {
                y1 y1Var = y1.this;
                y1Var.f48101c.loadUrl(y1Var.f48102d);
                return;
            }
            y1 y1Var2 = y1.this;
            if (y1Var2.f48103e == 1) {
                y1Var2.f48101c.loadUrl("file:///android_asset/dialogxieyi1.html");
            } else {
                y1Var2.f48101c.loadUrl("file:///android_asset/dialogxieyi2.html");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserPermissDialog.java */
    /* loaded from: classes3.dex */
    public class e extends Thread {
        e() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (com.join.android.app.common.utils.f.l()) {
                y1.this.f48105g.sendEmptyMessage(1);
            } else {
                y1.this.f48105g.sendEmptyMessage(2);
            }
        }
    }

    /* compiled from: UserPermissDialog.java */
    /* loaded from: classes3.dex */
    public interface f {
        void a();
    }

    /* compiled from: UserPermissDialog.java */
    /* loaded from: classes3.dex */
    private class g extends WebViewClient {
        public g(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (com.join.android.app.common.utils.f.j(y1.this.f48099a)) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(str);
                intentDateBean.setObject("悟饭游戏厅用户使用协议");
                IntentUtil.getInstance().intentActivity(y1.this.f48099a, intentDateBean);
                return true;
            }
            i2.a(y1.this.f48099a).b(y1.this.f48099a.getString(R.string.net_connect_failed));
            return true;
        }
    }

    public y1(Activity activity, int i2, String str, f fVar) {
        super(activity, R.style.MyDialog);
        this.f48105g = new d();
        this.f48099a = activity;
        this.f48102d = str;
        this.f48103e = i2;
        this.f48104f = fVar;
    }

    public void a() {
        if (com.join.android.app.common.utils.f.j(this.f48099a)) {
            new e().start();
        } else if (this.f48103e == 1) {
            this.f48101c.loadUrl("file:///android_asset/dialogxieyi1.html");
        } else {
            this.f48101c.loadUrl("file:///android_asset/dialogxieyi2.html");
        }
    }

    public void b(String str) {
        this.f48100b.setText(str);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f48103e == 1) {
            com.papa.sim.statistic.p.l(this.f48099a).K1(Event.showPrivacyProtocol, new Ext());
        } else {
            com.papa.sim.statistic.p.l(this.f48099a).K1(Event.showDisagreePrivacyProtocol, new Ext());
        }
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View inflate = LayoutInflater.from(this.f48099a).inflate(R.layout.dialog_permiss_customer_alert, (ViewGroup) null);
        inflate.setMinimumWidth(com.join.android.app.common.utils.j.n(this.f48099a).B(this.f48099a));
        this.f48101c = (WebView) inflate.findViewById(R.id.info);
        TextView textView = (TextView) inflate.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) inflate.findViewById(R.id.dialog_button_cancel);
        TextView textView3 = (TextView) inflate.findViewById(R.id.dialog_button_ok);
        ScrollView scrollView = (ScrollView) inflate.findViewById(R.id.dialog_app_update_sv);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) scrollView.getLayoutParams();
        if (this.f48103e == 1) {
            layoutParams.height = this.f48099a.getResources().getDimensionPixelOffset(R.dimen.wdp700);
        } else {
            layoutParams.height = this.f48099a.getResources().getDimensionPixelOffset(R.dimen.wdp380);
        }
        scrollView.setLayoutParams(layoutParams);
        this.f48101c.setBackgroundColor(0);
        this.f48101c.setWebViewClient(new g(this.f48099a));
        this.f48101c.getSettings().setUseWideViewPort(true);
        this.f48101c.getSettings().setSupportZoom(false);
        this.f48101c.getSettings().setBuiltInZoomControls(false);
        this.f48101c.setHorizontalScrollBarEnabled(false);
        this.f48101c.setVerticalScrollBarEnabled(false);
        this.f48101c.setLayerType(0, null);
        if (this.f48103e == 1) {
            textView2.setText("不同意");
            textView3.setText("同意");
        } else {
            textView2.setText("退出应用");
            textView3.setText("我再想想");
        }
        textView2.setOnClickListener(new a());
        textView3.setOnClickListener(new b());
        setOnKeyListener(new c());
        setContentView(inflate);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        a();
    }
}
