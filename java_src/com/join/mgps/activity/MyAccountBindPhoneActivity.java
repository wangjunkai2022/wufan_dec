package com.join.mgps.activity;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountBindPhoneRequestbean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.CheckBindRequestBean;
import com.join.mgps.dto.MMSRequesBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.bind_phone_activity)
/* loaded from: classes3.dex */
public class MyAccountBindPhoneActivity extends BaseActivity {
    @StringRes(resName = "net_excption")

    /* renamed from: a  reason: collision with root package name */
    String f33916a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f33917b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f33918c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f33919d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f33920e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    EditText f33921f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    EditText f33922g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f33923h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f33924i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.b f33925j;
    @Extra

    /* renamed from: k  reason: collision with root package name */
    AccountBean f33926k;

    /* renamed from: l  reason: collision with root package name */
    private Context f33927l;

    /* renamed from: m  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f33928m;

    /* renamed from: n  reason: collision with root package name */
    private com.join.mgps.customview.t f33929n;

    /* renamed from: o  reason: collision with root package name */
    private String f33930o;

    /* renamed from: p  reason: collision with root package name */
    private String f33931p;

    /* renamed from: q  reason: collision with root package name */
    c f33932q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountBindPhoneActivity.this.G0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MyAccountBindPhoneActivity.this.f33929n == null || !MyAccountBindPhoneActivity.this.f33929n.isShowing()) {
                return;
            }
            MyAccountBindPhoneActivity.this.f33929n.dismiss();
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
            MyAccountBindPhoneActivity.this.f33923h.setText("重新获取");
            MyAccountBindPhoneActivity.this.f33923h.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            MyAccountBindPhoneActivity.this.f33923h.setEnabled(false);
            TextView textView = MyAccountBindPhoneActivity.this.f33923h;
            textView.setText("重新获取(" + (j4 / 1000) + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                try {
                    AccountBindPhoneRequestbean accountBindPhoneRequestbean = new AccountBindPhoneRequestbean();
                    accountBindPhoneRequestbean.setUid(this.f33926k.getUid());
                    accountBindPhoneRequestbean.setCode(this.f33931p);
                    accountBindPhoneRequestbean.setMobile(this.f33930o);
                    accountBindPhoneRequestbean.setSign(com.join.mgps.Util.u1.f(accountBindPhoneRequestbean));
                    accountBindPhoneRequestbean.setToken(this.f33926k.getToken());
                    AccountResultMainBean<AccountTokenSuccess> M = this.f33925j.M(accountBindPhoneRequestbean.getParams());
                    showLodingDismis();
                    if (M != null && M.getError() == 0) {
                        if (M.getData().is_success()) {
                            showToast("绑定成功");
                            I0();
                            return;
                        }
                        showToast(M.getData().getError_msg());
                        return;
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
        showToast(this.f33916a);
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
                    checkBindRequestBean.setUid(this.f33926k.getUid());
                    checkBindRequestBean.setCode(this.f33931p);
                    checkBindRequestBean.setMobile(this.f33930o);
                    checkBindRequestBean.setToken(this.f33926k.getToken());
                    AccountResultMainBean<AccountTokenSuccess> F = this.f33925j.F(checkBindRequestBean.getParams());
                    if (F != null && F.getError() == 0) {
                        if (F.getData().is_success()) {
                            if (com.join.mgps.Util.d2.i(F.getData().getError_msg())) {
                                M0(F.getData().getError_msg());
                            }
                        } else if (F.getData().getError_code().equals("226")) {
                            G0();
                        } else if (com.join.mgps.Util.d2.i(F.getData().getError_msg())) {
                            if ("验证码错误".equals(F.getData().getError_msg())) {
                                showToast(F.getData().getError_msg());
                            } else {
                                M0(F.getData().getError_msg());
                            }
                        }
                    } else {
                        showToast("连接失败，请稍后再试。");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                showLodingDismis();
            }
        }
        showToast(this.f33916a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0() {
        this.f33926k.setMobile(this.f33930o);
        AccountUtil_.getInstance_(this.f33927l).saveAccountData(this.f33926k, this.f33927l);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        this.f33930o = this.f33921f.getText().toString();
        this.f33931p = this.f33922g.getText().toString();
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                MMSRequesBean mMSRequesBean = new MMSRequesBean();
                mMSRequesBean.setMobile(this.f33930o);
                mMSRequesBean.setType(MMSRequesBean.TYPE_BIND);
                mMSRequesBean.setSign(com.join.mgps.Util.u1.f(mMSRequesBean));
                AccountResultMainBean<AccountTokenSuccess> i2 = this.f33925j.i(mMSRequesBean.getParams());
                if (i2 != null && i2.getError() == 0) {
                    if (i2.getData().is_success()) {
                        this.f33932q.start();
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
        showToast("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        this.f33930o = this.f33921f.getText().toString();
        this.f33931p = this.f33922g.getText().toString();
        if (this.f33930o.length() == 11 && com.join.mgps.Util.d2.j(this.f33930o)) {
            if (this.f33931p.replaceAll(" ", "").length() == 0) {
                com.join.mgps.Util.i2.a(this).b("验证码不能为空");
                return;
            } else {
                H0();
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("手机号格式有误");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0(String str) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f33927l, R.style.MyDialog);
        this.f33929n = tVar;
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) this.f33929n.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.f33929n.findViewById(R.id.dialog_button_ok);
        ((TextView) this.f33929n.findViewById(R.id.tip_title)).setText("提示");
        ((TextView) this.f33929n.findViewById(R.id.dialog_content)).setText("该手机号已与账号“" + str + "”绑定，是否解除绑定关系？");
        ((TextView) this.f33929n.findViewById(R.id.dialog_desci)).setText("*绑定成功后将发送账号到你的手机");
        button2.setText("解除绑定");
        button.setText("取消");
        button2.setOnClickListener(new a());
        button.setOnClickListener(new b());
        com.join.mgps.customview.t tVar2 = this.f33929n;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.f33929n.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f33925j = com.join.mgps.rpc.impl.a.b0();
        this.f33927l = this;
        this.f33926k = AccountUtil_.getInstance_(this).getAccountData();
        TextView textView = this.f33918c;
        textView.setText("账号 : " + this.f33926k.getAccount());
        this.f33917b.setText("绑定手机号");
        this.f33928m = com.join.mgps.Util.a0.c0(this).x(this);
        this.f33932q = new c(60000L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.dialog.x0 x0Var = this.f33928m;
        if (x0Var != null && x0Var.isShowing()) {
            this.f33928m.dismiss();
        }
        com.join.mgps.customview.t tVar = this.f33929n;
        if (tVar != null && tVar.isShowing()) {
            this.f33929n.dismiss();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.dialog.x0 x0Var = this.f33928m;
        if (x0Var == null || x0Var.isShowing()) {
            return;
        }
        this.f33928m.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.x0 x0Var = this.f33928m;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.f33928m.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f33927l).b(str);
    }
}
