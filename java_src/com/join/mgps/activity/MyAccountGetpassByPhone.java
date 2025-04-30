package com.join.mgps.activity;

import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.login.LoginInputPassActivity_;
import com.join.mgps.dto.AccountGetBackRequest;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.my_account_getpassbyphone)
/* loaded from: classes3.dex */
public class MyAccountGetpassByPhone extends BaseAccountActivity {

    /* renamed from: c  reason: collision with root package name */
    MApplication f34017c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    EditText f34018d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    EditText f34019e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.b f34020f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    Button f34021g;

    /* renamed from: h  reason: collision with root package name */
    private String f34022h;

    /* renamed from: i  reason: collision with root package name */
    private String f34023i;

    /* renamed from: j  reason: collision with root package name */
    private int f34024j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f34025k = 0;

    /* renamed from: l  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f34026l;

    /* renamed from: m  reason: collision with root package name */
    private long f34027m;

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
            MyAccountGetpassByPhone.this.f34024j = charSequence.length();
            MyAccountGetpassByPhone.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            MyAccountGetpassByPhone.this.f34025k = charSequence.length();
            MyAccountGetpassByPhone.this.K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0() {
        if (this.f34024j >= 6 && this.f34025k >= 6) {
            this.f34021g.setEnabled(true);
        } else {
            this.f34021g.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        String trim = this.f34018d.getText().toString().trim();
        String obj = this.f34019e.getText().toString();
        if (obj.length() <= 16 && obj.length() >= 6) {
            if (!com.join.mgps.Util.d2.i(trim)) {
                com.join.mgps.Util.i2.a(this).b("密码不能为空");
                return;
            } else if (!com.join.mgps.Util.d2.i(obj)) {
                com.join.mgps.Util.i2.a(this).b("再次输入的密码不能为空");
                return;
            } else if (trim.equals(obj)) {
                if (System.currentTimeMillis() - this.f34027m <= 2000) {
                    return;
                }
                this.f34027m = System.currentTimeMillis();
                L0(trim);
                return;
            } else {
                com.join.mgps.Util.i2.a(this).b("两次输入密码不一致");
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("密码格式有误，输入6至16位字母或数字");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                AccountGetBackRequest accountGetBackRequest = new AccountGetBackRequest();
                accountGetBackRequest.setMobile(this.f34022h);
                accountGetBackRequest.setPassword(str);
                int i2 = 0;
                try {
                    i2 = Integer.parseInt(this.f34023i.trim());
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                accountGetBackRequest.setCode(i2 + "");
                accountGetBackRequest.setSign(com.join.mgps.Util.u1.f(accountGetBackRequest));
                AccountResultMainBean<AccountTokenSuccess> Y = this.f34020f.Y(accountGetBackRequest.getParams());
                if (Y != null && Y.getError() == 0) {
                    if (Y.getData().is_success()) {
                        success();
                    } else {
                        error(Y.getData().getError_msg());
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                showLodingDismis();
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34020f = com.join.mgps.rpc.impl.a.b0();
        this.f34017c = (MApplication) getApplication();
        this.f34026l = com.join.mgps.Util.a0.c0(this).x(this);
        this.f28402b.setText("设置新密码");
        this.f34022h = getIntent().getStringExtra(LoginInputPassActivity_.PHONE_NUMBER_EXTRA);
        this.f34023i = getIntent().getStringExtra("MMSCode");
        this.f34021g.setEnabled(false);
        this.f34018d.addTextChangedListener(new a());
        this.f34019e.addTextChangedListener(new b());
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
        this.f34026l.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        this.f34026l.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void success() {
        com.join.mgps.Util.i2.a(this).b("重置密码成功");
        this.f34017c.l();
        finish();
        startActivity(new Intent(this, MyAccountLoginActivity_.class));
    }
}
