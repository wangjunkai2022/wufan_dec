package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.SimulatorGoldAdCfgBean;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa91.common.BaseAppConfig;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* compiled from: StickAdDialog.java */
/* loaded from: classes3.dex */
public class x1 extends AlertDialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    ImageView f48063a;

    /* renamed from: b  reason: collision with root package name */
    TextView f48064b;

    /* renamed from: c  reason: collision with root package name */
    TextView f48065c;

    /* renamed from: d  reason: collision with root package name */
    TextView f48066d;

    /* renamed from: e  reason: collision with root package name */
    TextView f48067e;

    /* renamed from: f  reason: collision with root package name */
    private SimulatorGoldAdCfgBean f48068f;

    /* renamed from: g  reason: collision with root package name */
    private String f48069g;

    /* renamed from: h  reason: collision with root package name */
    Context f48070h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f48071i;

    /* renamed from: j  reason: collision with root package name */
    private a f48072j;

    /* renamed from: k  reason: collision with root package name */
    b f48073k;

    /* compiled from: StickAdDialog.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b(boolean z3);

        void onShow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StickAdDialog.java */
    /* loaded from: classes3.dex */
    public class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i2 = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            if (i2 > 0) {
                Intent intent2 = new Intent();
                intent2.setAction(f1.a.f65475f0);
                x1.this.getContext().sendBroadcast(intent2);
                x1.this.dismiss();
            }
        }
    }

    public x1(Context context, SimulatorGoldAdCfgBean simulatorGoldAdCfgBean, boolean z3) {
        super(context);
        this.f48071i = false;
        this.f48070h = context;
        this.f48068f = simulatorGoldAdCfgBean;
        this.f48071i = z3;
    }

    private void e() {
        SimulatorGoldAdCfgBean simulatorGoldAdCfgBean = this.f48068f;
        if (simulatorGoldAdCfgBean != null) {
            this.f48064b.setText(simulatorGoldAdCfgBean.getTip_text());
            this.f48065c.setText(this.f48068f.getT_btn_text());
            this.f48067e.setText(this.f48068f.getB_btn_text());
            this.f48066d.setText(this.f48068f.getCorner_text());
        }
    }

    void a() {
        this.f48073k = new b();
        IntentFilter intentFilter = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success");
        getContext().registerReceiver(this.f48073k, intentFilter);
    }

    public void b(String str, String str2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.a0.f51746b, str);
        intent.putExtra("gameId", str2);
        getContext().sendBroadcast(intent);
    }

    public void c(String str) {
        this.f48069g = str;
    }

    public void d(a aVar) {
        this.f48072j = aVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f48073k != null) {
            getContext().unregisterReceiver(this.f48073k);
            this.f48073k = null;
        }
        com.join.mgps.ad.a.e(this.f48070h).b();
        super.dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f48063a) {
            a aVar = this.f48072j;
            if (aVar != null) {
                aVar.b(this.f48071i);
            }
            if (this.f48071i) {
                b(Event.Customgoldfinger_AdUnnecessary_Close.name(), this.f48069g);
            } else {
                b(Event.Customgoldfinger_AdMust_Close.name(), this.f48069g);
            }
            dismiss();
        } else if (view == this.f48067e) {
            if (!this.f48071i) {
                SimulatorGoldAdCfgBean simulatorGoldAdCfgBean = this.f48068f;
                if (simulatorGoldAdCfgBean != null && com.join.mgps.Util.d2.i(simulatorGoldAdCfgBean.getB_btn_url())) {
                    IntentUtil.getInstance().goShareWebActivity(this.f48070h, this.f48068f.getB_btn_url());
                }
                b(Event.Customgoldfinger_AdMust_Buy.name(), this.f48069g);
            } else {
                a aVar2 = this.f48072j;
                if (aVar2 != null) {
                    aVar2.b(true);
                    b(Event.Customgoldfinger_AdUnnecessary_Buy.name(), this.f48069g);
                }
            }
            dismiss();
        } else if (view == this.f48065c) {
            a aVar3 = this.f48072j;
            if (aVar3 != null) {
                aVar3.a();
            }
            dismiss();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = defaultDisplay.getWidth();
        attributes.height = defaultDisplay.getHeight();
        window.setAttributes(attributes);
        setContentView(R.layout.dialog_stick_ad);
        this.f48063a = (ImageView) findViewById(R.id.iv_close);
        this.f48064b = (TextView) findViewById(R.id.tv_ad_tip);
        this.f48065c = (TextView) findViewById(R.id.tv_opt_view);
        this.f48067e = (TextView) findViewById(R.id.tv_opt_vip);
        this.f48066d = (TextView) findViewById(R.id.tv_view_ad_label);
        this.f48063a.setOnClickListener(this);
        this.f48065c.setOnClickListener(this);
        this.f48067e.setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        a aVar = this.f48072j;
        if (aVar != null) {
            aVar.onShow();
        }
        e();
        a();
    }
}
