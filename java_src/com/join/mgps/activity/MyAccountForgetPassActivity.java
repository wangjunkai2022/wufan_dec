package com.join.mgps.activity;

import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MMSRequesBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.my_account_forgetpass_layout)
/* loaded from: classes3.dex */
public class MyAccountForgetPassActivity extends BaseAccountActivity {

    /* renamed from: c  reason: collision with root package name */
    MApplication f33998c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    EditText f33999d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.b f34000e;

    /* renamed from: f  reason: collision with root package name */
    private String f34001f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f34002g;

    /* renamed from: h  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f34003h;

    /* renamed from: i  reason: collision with root package name */
    private long f34004i;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            if (charSequence.length() == 11) {
                MyAccountForgetPassActivity.this.f34002g.setEnabled(true);
            } else {
                MyAccountForgetPassActivity.this.f34002g.setEnabled(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        String trim = this.f33999d.getText().toString().trim();
        this.f34001f = trim;
        if (com.join.mgps.Util.d2.j(trim) && this.f34001f.length() == 11) {
            if (System.currentTimeMillis() - this.f34004i <= 2000) {
                return;
            }
            this.f34004i = System.currentTimeMillis();
            J0();
            return;
        }
        com.join.mgps.Util.i2.a(this).b("手机号格式有误，请重新输入");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0() {
        Intent intent = new Intent(this, MyAccountMMSCodeGetpassbackFinish_.class);
        intent.putExtra("phonenumber", this.f34001f);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                MMSRequesBean mMSRequesBean = new MMSRequesBean();
                mMSRequesBean.setMobile(this.f34001f);
                mMSRequesBean.setType(MMSRequesBean.TYPE_FORGOT);
                mMSRequesBean.setSign(com.join.mgps.Util.u1.f(mMSRequesBean));
                AccountResultMainBean<AccountTokenSuccess> i2 = this.f34000e.i(mMSRequesBean.getParams());
                if (i2 != null && i2.getError() == 0) {
                    if (i2.getData().is_success()) {
                        I0();
                    } else {
                        error(i2.getData().getError_msg());
                    }
                } else if (i2 != null && i2.getError() == 601) {
                    AccountTokenSuccess data = i2.getData();
                    if (data != null) {
                        error(data.getError_msg());
                    } else {
                        error("系统繁忙，请稍后再试...");
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingDismis();
                error("连接失败，请稍后再试。");
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34000e = com.join.mgps.rpc.impl.a.b0();
        MApplication mApplication = (MApplication) getApplication();
        this.f33998c = mApplication;
        mApplication.k(this);
        F0("短信找回密码");
        this.f34002g.setEnabled(false);
        this.f34003h = com.join.mgps.Util.a0.c0(this).x(this);
        this.f33999d.addTextChangedListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f34003h.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        this.f34003h.dismiss();
    }
}
