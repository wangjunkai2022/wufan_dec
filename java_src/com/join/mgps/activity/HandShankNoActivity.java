package com.join.mgps.activity;

import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.HandShankAdView;
import com.join.mgps.db.tables.HandShankTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.HandShankAdBean;
import com.join.mgps.dto.ResultMainBean;
import com.papa.controller.core.ControllerManager;
import com.papa.sim.statistic.JoyStickConfig;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.handshank_layout_no)
/* loaded from: classes3.dex */
public class HandShankNoActivity extends HandShankBaseActivity {

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.dialog.u0 f32382c;

    /* renamed from: d  reason: collision with root package name */
    boolean f32383d = false;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f32384e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f32385f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    HandShankAdView f32386g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.d f32387h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankNoActivity.this.startActivity(new Intent(HandShankNoActivity.this, HandShankYesActivity_.class));
            HandShankNoActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(HandShankNoActivity.this, HandShankCheckKeyActivity_.class);
            intent.putExtra("from", "first");
            HandShankNoActivity.this.startActivity(intent);
            HandShankNoActivity.this.finish();
        }
    }

    private void X0(List<ControllerManager.c> list) {
        if (list != null && list.size() != 0) {
            String str = "";
            for (ControllerManager.c cVar : list) {
                if (!com.join.mgps.joystick.map.a.b().f(cVar.d())) {
                    HandShankTable handShankTable = new HandShankTable();
                    handShankTable.setName(cVar.d());
                    handShankTable.setAddress(cVar.a());
                    handShankTable.setTime(Long.valueOf(System.currentTimeMillis()));
                    handShankTable.setIsConnect(Boolean.TRUE);
                    this.f32383d = true;
                    String d4 = cVar.d();
                    b1(handShankTable);
                    str = d4;
                }
            }
            if (this.f32383d) {
                d1(str);
                return;
            }
            return;
        }
        com.join.mgps.dialog.u0 u0Var = this.f32382c;
        if (u0Var == null || !u0Var.isShowing() || H0(list) >= 1) {
            return;
        }
        this.f32382c.dismiss();
    }

    private void c1(HandShankTable handShankTable) {
        JoyStickConfig joyStickConfig = new JoyStickConfig();
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null) {
            joyStickConfig.setUid(0);
        } else {
            joyStickConfig.setUid(accountData.getUid());
        }
        joyStickConfig.setGamepad_name(handShankTable.getName());
        joyStickConfig.setGamepad_mac(handShankTable.getAddress().replace(":", "_"));
        joyStickConfig.setUpdate_time(handShankTable.getTime().longValue());
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity
    public void K0(int i2, List<ControllerManager.c> list) {
        X0(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void U0() {
        this.f32387h = com.join.mgps.rpc.impl.c.P1();
        Z0();
        com.papa.sim.statistic.p.l(this).a0(AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).isTourist(), "", "", 0);
        Button button = this.f32384e;
        if (button != null) {
            button.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V0() {
        finish();
    }

    @Click
    public void W0() {
        startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Y0() {
        try {
            ResultMainBean<HandShankAdBean> r02 = this.f32387h.r0(RequestBeanUtil.getInstance(this).getHandShankAdList());
            if (r02.getCode() == 600) {
                this.f32386g.m(r02.getMessages().getData());
            } else {
                this.f32386g.i();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f32386g.i();
        }
    }

    public void Z0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            Y0();
        } else {
            this.f32386g.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a1() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val("http://h5.5fun.com/wf_shoubing.html");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b1(HandShankTable handShankTable) {
        n1.x p3 = n1.x.p();
        if (p3.q(handShankTable.getAddress())) {
            return;
        }
        p3.n(handShankTable);
        c1(handShankTable);
    }

    public synchronized void d1(String str) {
        com.join.mgps.dialog.u0 u0Var = this.f32382c;
        if (u0Var == null || !u0Var.isShowing()) {
            com.join.mgps.dialog.u0 u0Var2 = new com.join.mgps.dialog.u0(this);
            this.f32382c = u0Var2;
            u0Var2.c(str);
            this.f32382c.a(new a());
            this.f32382c.b(new b());
            this.f32382c.show();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.dialog.u0 u0Var = this.f32382c;
        if (u0Var != null && u0Var.isShowing()) {
            this.f32382c.dismiss();
            this.f32382c = null;
        }
        super.onDestroy();
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        P0(true);
        super.onResume();
    }
}
