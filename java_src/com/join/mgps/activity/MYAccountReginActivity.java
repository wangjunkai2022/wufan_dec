package com.join.mgps.activity;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountReginBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MRegisterRequesBean;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.my_account_regin_activity_layout)
/* loaded from: classes3.dex */
public class MYAccountReginActivity extends BaseFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    MApplication f33624a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    EditText f33625b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    EditText f33626c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    EditText f33627d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    CheckBox f33628e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.b f33629f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f33630g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    Button f33631h;

    /* renamed from: i  reason: collision with root package name */
    private int f33632i = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f33633j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f33634k = 0;

    /* renamed from: l  reason: collision with root package name */
    private long f33635l = 0;

    /* renamed from: m  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f33636m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    AccountReginBean f33637n;

    /* renamed from: o  reason: collision with root package name */
    private Context f33638o;

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
            MYAccountReginActivity.this.f33634k = charSequence.length();
            MYAccountReginActivity.this.L0();
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
            MYAccountReginActivity.this.f33632i = charSequence.length();
            MYAccountReginActivity.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            MYAccountReginActivity.this.f33633j = charSequence.length();
            MYAccountReginActivity.this.L0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0() {
        if (this.f33632i != 0 && this.f33634k > 5 && this.f33633j > 0) {
            this.f33631h.setEnabled(true);
        } else {
            this.f33631h.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(String str, String str2, String str3) {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                MRegisterRequesBean mRegisterRequesBean = new MRegisterRequesBean();
                mRegisterRequesBean.setMobile(str2);
                mRegisterRequesBean.setAccount(str);
                mRegisterRequesBean.setSign(com.join.mgps.Util.u1.f(mRegisterRequesBean));
                AccountResultMainBean<AccountTokenSuccess> T = this.f33629f.T(mRegisterRequesBean.getParams());
                if (T != null && T.getError() == 0) {
                    if (T.getData().is_success()) {
                        J0(str, str2, str3);
                    } else {
                        error(T.getData().getError_msg());
                    }
                } else if (T != null && T.getError() == 601) {
                    AccountTokenSuccess data = T.getData();
                    if (data != null) {
                        error(data.getError_msg());
                    } else {
                        error("系统繁忙，请稍后...");
                    }
                } else {
                    error("注册失败");
                }
                showLodingDismis();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                error("注册失败");
                showLodingDismis();
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(String str, String str2, String str3) {
        if (this.f33637n == null) {
            this.f33637n = new AccountReginBean();
        }
        this.f33637n.setNickname(str);
        this.f33637n.setMobile(str2);
        this.f33637n.setPassword(str3);
        MyAccountMMSCodeReginFinish_.X0(this).a(this.f33637n).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        if (System.currentTimeMillis() - this.f33635l <= 1000) {
            return;
        }
        this.f33635l = System.currentTimeMillis();
        String trim = this.f33625b.getText().toString().trim();
        String trim2 = this.f33626c.getText().toString().trim();
        String trim3 = this.f33627d.getText().toString().trim();
        if (!Pattern.matches("^[a-zA-Z0-9_一-龥]*$", trim3)) {
            com.join.mgps.Util.i2.a(this).b("用户名为中文/字母/数字/下划线\n请检查后重新输入");
        } else if (trim3.length() <= 12 && trim2.length() >= 1) {
            if (trim3.length() == 11 && trim3.matches("[0-9]+")) {
                com.join.mgps.Util.i2.a(this).b("为保护你的信息安全，用户名不能类似手机号哦");
            } else if (trim.length() == 11 && com.join.mgps.Util.d2.j(trim)) {
                if (trim2.length() >= 6 && trim2.length() <= 16) {
                    if (com.join.mgps.Util.d2.i(trim) && com.join.mgps.Util.d2.i(trim2) && com.join.mgps.Util.d2.i(trim3)) {
                        I0(trim3, trim, trim2);
                        return;
                    }
                    return;
                }
                com.join.mgps.Util.i2.a(this).b("密码格式有误，输入6至16位字母或数字");
            } else {
                com.join.mgps.Util.i2.a(this).b("手机号格式有误");
            }
        } else {
            com.join.mgps.Util.i2.a(this).b("用户名为1~12个字符,请检查后重新输入");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f33629f = com.join.mgps.rpc.impl.a.b0();
        MApplication mApplication = (MApplication) getApplication();
        this.f33624a = mApplication;
        mApplication.k(this);
        this.f33638o = this;
        this.f33630g.setText("手机号注册");
        this.f33636m = com.join.mgps.Util.a0.c0(this).x(this);
        this.f33626c.addTextChangedListener(new a());
        this.f33625b.addTextChangedListener(new b());
        this.f33627d.addTextChangedListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f33636m.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        this.f33636m.dismiss();
    }
}
