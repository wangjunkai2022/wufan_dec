package com.join.mgps.activity;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountMMSCheckCodebean;
import com.join.mgps.dto.AccountRebindPhoneRequestbean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.CheckBindRequestBean;
import com.join.mgps.dto.MMSRequesBean;
import com.join.mgps.dto.UploadResultMainBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.TextChange;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.change_phone_activity)
/* loaded from: classes3.dex */
public class MyAccountChangePhoneActivity extends BaseActivity {
    @StringRes(resName = "net_excption")

    /* renamed from: a  reason: collision with root package name */
    String f33953a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f33954b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f33955c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f33956d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f33957e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    EditText f33958f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    EditText f33959g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f33960h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f33961i;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    AccountBean f33962j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.b f33963k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    String f33964l;

    /* renamed from: m  reason: collision with root package name */
    MApplication f33965m;

    /* renamed from: n  reason: collision with root package name */
    private Context f33966n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f33967o = true;

    /* renamed from: p  reason: collision with root package name */
    c f33968p;

    /* renamed from: q  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f33969q;

    /* renamed from: r  reason: collision with root package name */
    private com.join.mgps.customview.t f33970r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountChangePhoneActivity.this.N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MyAccountChangePhoneActivity.this.f33970r == null || !MyAccountChangePhoneActivity.this.f33970r.isShowing()) {
                return;
            }
            MyAccountChangePhoneActivity.this.f33970r.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends CountDownTimer {
        public c(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            MyAccountChangePhoneActivity.this.f33960h.setText("重新获取");
            MyAccountChangePhoneActivity.this.f33960h.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            MyAccountChangePhoneActivity.this.f33960h.setEnabled(false);
            TextView textView = MyAccountChangePhoneActivity.this.f33960h;
            textView.setText("重新获取(" + (j4 / 1000) + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        if (this.f33967o) {
            finish();
            return;
        }
        this.f33967o = true;
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                try {
                    CheckBindRequestBean checkBindRequestBean = new CheckBindRequestBean();
                    checkBindRequestBean.setUid(this.f33962j.getUid());
                    checkBindRequestBean.setCode(this.f33958f.getText().toString());
                    checkBindRequestBean.setMobile(this.f33964l);
                    checkBindRequestBean.setToken(this.f33962j.getToken());
                    AccountResultMainBean<AccountTokenSuccess> F = this.f33963k.F(checkBindRequestBean.getParams());
                    showLodingDismis();
                    if (F != null && F.getError() == 0) {
                        if (F.getData().is_success()) {
                            if (com.join.mgps.Util.d2.i(F.getData().getError_msg())) {
                                R0(F.getData().getError_msg());
                                return;
                            }
                            return;
                        } else if (F.getData().getError_code().equals("226")) {
                            N0();
                            return;
                        } else if (com.join.mgps.Util.d2.i(F.getData().getError_msg())) {
                            R0(F.getData().getError_msg());
                            return;
                        } else {
                            return;
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showLodingDismis();
                }
                showToast("连接失败，请稍后再试。");
                return;
            } catch (Throwable th) {
                showLodingDismis();
                showToast("连接失败，请稍后再试。");
                throw th;
            }
        }
        showToast(this.f33953a);
        showLodingDismis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                try {
                    CheckBindRequestBean checkBindRequestBean = new CheckBindRequestBean();
                    checkBindRequestBean.setUid(this.f33962j.getUid());
                    checkBindRequestBean.setCode(this.f33958f.getText().toString());
                    AccountResultMainBean<AccountTokenSuccess> y3 = this.f33963k.y(checkBindRequestBean.getParamsv2());
                    showLodingDismis();
                    if (y3 != null && y3.getError() == 0) {
                        if (y3.getData().is_success()) {
                            this.f33967o = false;
                            Q0();
                            return;
                        } else if (com.join.mgps.Util.d2.i(y3.getData().getError_msg())) {
                            String error_msg = y3.getData().getError_msg();
                            if ("验证码错误".equals(error_msg)) {
                                showToast("验证码错误");
                                return;
                            } else {
                                R0(error_msg);
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showLodingDismis();
                }
                showToast("连接失败，请稍后再试。");
                return;
            } catch (Throwable th) {
                showLodingDismis();
                showToast("连接失败，请稍后再试。");
                throw th;
            }
        }
        showToast(this.f33953a);
        showLodingDismis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        int i2;
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                AccountMMSCheckCodebean accountMMSCheckCodebean = new AccountMMSCheckCodebean();
                accountMMSCheckCodebean.setMobile(this.f33962j.getMobile());
                try {
                    i2 = Integer.parseInt(this.f33959g.getText().toString());
                } catch (Exception e4) {
                    e4.printStackTrace();
                    i2 = 0;
                }
                accountMMSCheckCodebean.setCode(i2);
                accountMMSCheckCodebean.setSign(com.join.mgps.Util.u1.f(accountMMSCheckCodebean));
                AccountResultMainBean<AccountTokenSuccess> g4 = this.f33963k.g(accountMMSCheckCodebean.getParams());
                if (g4 != null && g4.getError() == 0) {
                    if (g4.getData().is_success()) {
                        this.f33967o = false;
                        Q0();
                    } else if (com.join.mgps.Util.d2.i(g4.getData().getError_msg())) {
                        String error_msg = g4.getData().getError_msg();
                        if ("验证码错误".equals(error_msg)) {
                            showToast("验证码错误");
                        } else {
                            R0(error_msg);
                        }
                    }
                } else {
                    showToast("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                showToast("连接失败，请稍后再试。");
                showLodingDismis();
                return;
            }
        }
        showToast("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        this.f33962j.setMobile(this.f33964l);
        AccountUtil_.getInstance_(this.f33966n).saveAccountData(this.f33962j, this.f33966n);
        this.f33965m.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        if (this.f33967o) {
            O0(this.f33962j.getMobile());
            return;
        }
        this.f33967o = true;
        O0(this.f33964l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TextChange
    public void L0() {
        if (this.f33958f.getText().toString().length() > 0 && !this.f33967o) {
            this.f33961i.setEnabled(true);
        } else {
            this.f33961i.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TextChange
    public void M0() {
        if (this.f33959g.getText().toString().length() > 0 && this.f33967o) {
            this.f33961i.setEnabled(true);
        } else {
            this.f33961i.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountRebindPhoneRequestbean accountRebindPhoneRequestbean = new AccountRebindPhoneRequestbean();
                accountRebindPhoneRequestbean.setNew_code(this.f33958f.getText().toString());
                accountRebindPhoneRequestbean.setOld_code(this.f33959g.getText().toString());
                accountRebindPhoneRequestbean.setNew_mobile(this.f33964l);
                accountRebindPhoneRequestbean.setToken(this.f33962j.getToken());
                accountRebindPhoneRequestbean.setUid(this.f33962j.getUid());
                UploadResultMainBean<AccountTokenSuccess> q3 = this.f33963k.q(accountRebindPhoneRequestbean.getParams());
                if (q3 != null && q3.getError() == 0) {
                    if (q3.getData().is_success()) {
                        showToast("修改绑定成功");
                        J0();
                    } else {
                        showToast(q3.getData().getError_msg());
                    }
                } else {
                    showToast("连接失败，请稍后再试。");
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showToast("连接失败，请稍后再试。");
                return;
            }
        }
        showToast(this.f33953a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                MMSRequesBean mMSRequesBean = new MMSRequesBean();
                mMSRequesBean.setMobile(str);
                mMSRequesBean.setType(MMSRequesBean.TYPE_BIND);
                mMSRequesBean.setSign(com.join.mgps.Util.u1.f(mMSRequesBean));
                AccountResultMainBean<AccountTokenSuccess> i2 = this.f33963k.i(mMSRequesBean.getParams());
                if (i2 != null && i2.getError() == 0) {
                    if (i2.getData().is_success()) {
                        this.f33968p.start();
                        showToast("获取验证码成功");
                    } else {
                        showToast(i2.getData().getError_msg());
                    }
                } else {
                    showToast("连接失败，请稍后再试。");
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showToast("连接失败，请稍后再试。");
                return;
            }
        }
        showToast(this.f33953a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        if (this.f33967o) {
            if (com.join.mgps.Util.d2.i(this.f33959g.getText().toString())) {
                I0();
            } else {
                showToast("请输入验证码");
            }
        } else if (com.join.mgps.Util.d2.i(this.f33958f.getText().toString())) {
            G0();
        } else {
            showToast("请输入验证码");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0() {
        this.f33960h.setText("重新获取");
        if (this.f33967o) {
            this.f33957e.setVisibility(8);
            this.f33956d.setVisibility(0);
            this.f33958f.setVisibility(8);
            this.f33959g.setVisibility(0);
            String mobile = this.f33962j.getMobile();
            if (com.join.mgps.Util.d2.i(mobile) && mobile.length() == 11) {
                TextView textView = this.f33956d;
                textView.setText("已向原号码" + this.f33962j.getMobile().substring(0, 3) + "****" + this.f33962j.getMobile().substring(7, 11) + "发送一条验证消息");
            }
            if (this.f33959g.getText().toString().length() > 0) {
                this.f33961i.setEnabled(true);
                return;
            } else {
                this.f33961i.setEnabled(false);
                return;
            }
        }
        this.f33957e.setVisibility(0);
        this.f33956d.setVisibility(8);
        this.f33958f.setVisibility(0);
        this.f33959g.setVisibility(8);
        this.f33958f.setText("");
        String str = this.f33964l;
        if (com.join.mgps.Util.d2.i(str) && str.length() == 11) {
            TextView textView2 = this.f33957e;
            textView2.setText("已向新号码" + this.f33964l.substring(0, 3) + "****" + this.f33964l.substring(7, 11) + "发送一条验证消息");
        }
        if (this.f33958f.getText().toString().length() > 0) {
            this.f33961i.setEnabled(true);
        } else {
            this.f33961i.setEnabled(false);
        }
        O0(this.f33964l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0(String str) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f33966n, R.style.MyDialog);
        this.f33970r = tVar;
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) this.f33970r.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.f33970r.findViewById(R.id.dialog_button_ok);
        ((TextView) this.f33970r.findViewById(R.id.tip_title)).setText("提示");
        ((TextView) this.f33970r.findViewById(R.id.dialog_content)).setText("该手机号已与账号“" + str + "”绑定，是否解除绑定关系？");
        ((TextView) this.f33970r.findViewById(R.id.dialog_desci)).setText("*绑定成功后将发送账号到你的手机");
        button2.setText("解除绑定");
        button.setText("取消");
        button2.setOnClickListener(new a());
        button.setOnClickListener(new b());
        com.join.mgps.customview.t tVar2 = this.f33970r;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.f33970r.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f33963k = com.join.mgps.rpc.impl.a.b0();
        MApplication mApplication = (MApplication) getApplication();
        this.f33965m = mApplication;
        this.f33966n = this;
        mApplication.k(this);
        this.f33954b.setText("更换绑定手机号");
        this.f33968p = new c(60000L, 1000L);
        TextView textView = this.f33955c;
        textView.setText("账号:" + this.f33962j.getNickname());
        this.f33969q = com.join.mgps.Util.a0.c0(this).x(this);
        Q0();
        O0(this.f33962j.getMobile());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.dialog.x0 x0Var = this.f33969q;
        if (x0Var != null && x0Var.isShowing()) {
            this.f33969q.dismiss();
        }
        com.join.mgps.customview.t tVar = this.f33970r;
        if (tVar != null && tVar.isShowing()) {
            this.f33970r.dismiss();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            if (this.f33967o) {
                finish();
            } else {
                this.f33967o = true;
                Q0();
            }
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.dialog.x0 x0Var = this.f33969q;
        if (x0Var == null || x0Var.isShowing()) {
            return;
        }
        this.f33969q.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.x0 x0Var = this.f33969q;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.f33969q.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f33966n).b(str);
    }
}
