package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountAnonymousReginRequest;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountChangeNickNameRequest;
import com.join.mgps.dto.AccountCheckReginCodeRequest;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountSendRequest;
import com.join.mgps.dto.JPushJoinDeviceResult;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.bind_phone_activity_new)
/* loaded from: classes3.dex */
public class AccountBindPhoneNew extends BaseAccountActivity {
    @Extra

    /* renamed from: c  reason: collision with root package name */
    AccountRegisterThirdwaiRequestBean f28098c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    int f28099d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f28100e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    SimpleDraweeView f28101f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f28102g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f28103h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    EditText f28104i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    EditText f28105j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    EditText f28106k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    EditText f28107l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f28108m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    LinearLayout f28109n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    LinearLayout f28110o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f28111p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f28112q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f28113r;

    /* renamed from: s  reason: collision with root package name */
    com.join.mgps.rpc.b f28114s;

    /* renamed from: t  reason: collision with root package name */
    Dialog f28115t;

    /* renamed from: w  reason: collision with root package name */
    AccountBean f28118w;

    /* renamed from: x  reason: collision with root package name */
    AccountBean f28119x;

    /* renamed from: z  reason: collision with root package name */
    AccountAnonymousReginRequest f28121z;

    /* renamed from: u  reason: collision with root package name */
    int f28116u = 0;

    /* renamed from: v  reason: collision with root package name */
    int f28117v = 0;

    /* renamed from: y  reason: collision with root package name */
    boolean f28120y = false;
    int A = 60;
    private Handler B = new f();

    /* loaded from: classes3.dex */
    class a implements View.OnFocusChangeListener {
        a() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            if (z3) {
                AccountBindPhoneNew accountBindPhoneNew = AccountBindPhoneNew.this;
                accountBindPhoneNew.showKeyborad(accountBindPhoneNew.f28104i);
            }
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
            int length = charSequence.length();
            if (length > 0) {
                AccountBindPhoneNew.this.f28102g.setVisibility(0);
            } else {
                AccountBindPhoneNew.this.f28102g.setVisibility(8);
            }
            if (length == 11) {
                AccountBindPhoneNew.this.f28111p.setEnabled(true);
            } else {
                AccountBindPhoneNew.this.f28111p.setEnabled(false);
            }
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
            AccountBindPhoneNew.this.f28116u = charSequence.length();
            AccountBindPhoneNew accountBindPhoneNew = AccountBindPhoneNew.this;
            if (accountBindPhoneNew.f28116u > 0 && accountBindPhoneNew.f28117v > 0) {
                accountBindPhoneNew.f28112q.setEnabled(true);
            } else {
                accountBindPhoneNew.f28112q.setEnabled(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements TextWatcher {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            AccountBindPhoneNew.this.f28117v = charSequence.length();
            AccountBindPhoneNew accountBindPhoneNew = AccountBindPhoneNew.this;
            if (accountBindPhoneNew.f28117v > 0 && accountBindPhoneNew.f28116u > 0) {
                accountBindPhoneNew.f28112q.setEnabled(true);
            } else {
                accountBindPhoneNew.f28112q.setEnabled(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements TextWatcher {
        e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            if (charSequence.length() > 0) {
                AccountBindPhoneNew.this.f28113r.setEnabled(true);
            } else {
                AccountBindPhoneNew.this.f28113r.setEnabled(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends Handler {
        f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AccountBindPhoneNew accountBindPhoneNew = AccountBindPhoneNew.this;
            accountBindPhoneNew.A--;
            accountBindPhoneNew.f28100e.setText(AccountBindPhoneNew.this.A + "S");
            AccountBindPhoneNew accountBindPhoneNew2 = AccountBindPhoneNew.this;
            if (accountBindPhoneNew2.A > 0) {
                accountBindPhoneNew2.B.sendEmptyMessageDelayed(1, 1000L);
                AccountBindPhoneNew.this.f28100e.setEnabled(false);
                return;
            }
            accountBindPhoneNew2.f28100e.setEnabled(true);
            AccountBindPhoneNew.this.f28100e.setText("重新获取");
        }
    }

    private int getChineseCount(String str) {
        Matcher matcher = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(str);
        int i2 = 0;
        while (matcher.find()) {
            for (int i4 = 0; i4 <= matcher.groupCount(); i4++) {
                i2++;
            }
        }
        return i2;
    }

    private int getStringLength(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            return 0;
        }
        return str.length() + getChineseCount(str);
    }

    private boolean matchStringLength(String str, int i2, int i4) {
        int stringLength = getStringLength(str);
        return stringLength >= i2 && stringLength <= i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showKeyborad(EditText editText) {
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(0, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    AccountCheckReginCodeRequest accountCheckReginCodeRequest = new AccountCheckReginCodeRequest();
                    accountCheckReginCodeRequest.setMobile(this.f28104i.getText().toString());
                    accountCheckReginCodeRequest.setCode(this.f28106k.getText().toString());
                    accountCheckReginCodeRequest.setDevice_id("");
                    accountCheckReginCodeRequest.setMac("");
                    accountCheckReginCodeRequest.setSign(com.join.mgps.Util.u1.f(accountCheckReginCodeRequest));
                    AccountResultMainBean<AccountLoginresultData> B = this.f28114s.B(accountCheckReginCodeRequest.getParams());
                    if (B != null && B.getData() != null) {
                        if (B.getData().is_success()) {
                            AccountAnonymousReginRequest accountAnonymousReginRequest = new AccountAnonymousReginRequest();
                            accountAnonymousReginRequest.setMobile(this.f28104i.getText().toString());
                            accountAnonymousReginRequest.setCode(this.f28106k.getText().toString());
                            accountAnonymousReginRequest.setPassword(this.f28105j.getText().toString());
                            S0(accountAnonymousReginRequest);
                        } else {
                            error(B.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            error("没有网络，请检查网络设置");
        } finally {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        this.f28115t.show();
        this.A = 60;
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        this.f28115t.dismiss();
        this.f28100e.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0(String str) {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    AccountChangeNickNameRequest accountChangeNickNameRequest = new AccountChangeNickNameRequest();
                    accountChangeNickNameRequest.setUid(this.f28118w.getUid() + "");
                    accountChangeNickNameRequest.setToken(this.f28118w.getToken());
                    accountChangeNickNameRequest.setNick_name(str);
                    accountChangeNickNameRequest.setAvatar_src(this.f28118w.getAvatarSrc());
                    accountChangeNickNameRequest.setSign(com.join.mgps.Util.u1.f(accountChangeNickNameRequest));
                    AccountResultMainBean<AccountLoginresultData> G = this.f28114s.G(accountChangeNickNameRequest.getParams());
                    if (G != null && G.getData() != null) {
                        if (G.getData().is_success()) {
                            setResult(10001);
                            finish();
                        } else {
                            error(G.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            error("没有网络，请检查网络设置");
        } finally {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0(String str) {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    AccountChangeNickNameRequest accountChangeNickNameRequest = new AccountChangeNickNameRequest();
                    accountChangeNickNameRequest.setUid(this.f28118w.getUid() + "");
                    accountChangeNickNameRequest.setToken(this.f28118w.getToken());
                    accountChangeNickNameRequest.setNick_name(str);
                    accountChangeNickNameRequest.setAvatar_src(this.f28118w.getAvatarSrc());
                    accountChangeNickNameRequest.setSign(com.join.mgps.Util.u1.f(accountChangeNickNameRequest));
                    AccountResultMainBean<AccountLoginresultData> Z = this.f28114s.Z(accountChangeNickNameRequest.getParams());
                    if (Z != null && Z.getData() != null) {
                        if (Z.getData().is_success()) {
                            setResult(10001);
                            finish();
                        } else {
                            error(Z.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            error("没有网络，请检查网络设置");
        } finally {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        if (!matchStringLength(this.f28105j.getText().toString(), 6, 16)) {
            error("密码格式有误，输入6至16位字母或数字");
            return;
        }
        this.f28115t.show();
        if (this.f28120y) {
            I0();
        } else if (this.f28099d == 1) {
            phoneRegin();
        } else {
            thirdRegin();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0(AccountAnonymousReginRequest accountAnonymousReginRequest) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                    accountAnonymousReginRequest.setUid(this.f28119x.getUid());
                    accountAnonymousReginRequest.setToken(this.f28119x.getToken());
                    accountAnonymousReginRequest.setNick_name(this.f28107l.getText().toString());
                    accountAnonymousReginRequest.setDevice_id("");
                    accountAnonymousReginRequest.setMac("");
                    accountAnonymousReginRequest.setSign(com.join.mgps.Util.u1.f(accountAnonymousReginRequest));
                    AccountResultMainBean<AccountLoginresultData> H = this.f28114s.H(accountAnonymousReginRequest.getParamsPhone());
                    if (H != null && H.getData() != null) {
                        if (H.getData().is_success()) {
                            this.f28118w = H.getData().getUser_info();
                            AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.f28118w, getApplicationContext());
                            joinDevice();
                            setResult(10001);
                            finish();
                        } else {
                            error(H.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                K0();
            }
        }
        error("没有网络，请检查网络设置");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P0(AccountAnonymousReginRequest accountAnonymousReginRequest) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                    accountAnonymousReginRequest.setUid(this.f28119x.getUid());
                    accountAnonymousReginRequest.setToken(this.f28119x.getToken());
                    accountAnonymousReginRequest.setUnique_id(this.f28098c.getUnique_id());
                    accountAnonymousReginRequest.setType(this.f28098c.getType());
                    accountAnonymousReginRequest.setNick_name(this.f28107l.getText().toString());
                    accountAnonymousReginRequest.setDevice_id("");
                    accountAnonymousReginRequest.setMac("");
                    accountAnonymousReginRequest.setSign(com.join.mgps.Util.u1.f(accountAnonymousReginRequest));
                    AccountResultMainBean<AccountLoginresultData> o3 = this.f28114s.o(accountAnonymousReginRequest.getParamsThird());
                    if (o3 != null && o3.getData() != null) {
                        if (o3.getData().is_success()) {
                            this.f28118w = o3.getData().getUser_info();
                            AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.f28118w, getApplicationContext());
                            joinDevice();
                            setResult(10001);
                            finish();
                        } else {
                            error(o3.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                K0();
            }
        }
        error("没有网络，请检查网络设置");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q0() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    AccountSendRequest accountSendRequest = new AccountSendRequest();
                    accountSendRequest.setMobile(this.f28104i.getText().toString());
                    AccountBean accountBean = this.f28118w;
                    if (accountBean != null) {
                        accountSendRequest.setUid(accountBean.getUid());
                    }
                    accountSendRequest.setSign(com.join.mgps.Util.u1.f(accountSendRequest));
                    AccountResultMainBean<AccountLoginresultData> C = this.f28114s.C(accountSendRequest.getParams());
                    if (C != null && C.getData() != null) {
                        if (C.getData().is_success()) {
                            R0();
                        } else {
                            error(C.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            error("没有网络，请检查网络设置");
        } finally {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        F0("设置密码");
        this.f28108m.setVisibility(0);
        this.f28109n.setVisibility(8);
        this.f28103h.setText(this.f28104i.getText());
        this.B.sendEmptyMessageDelayed(1, 1000L);
        this.f28100e.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0(AccountAnonymousReginRequest accountAnonymousReginRequest) {
        F0("设置头像/昵称");
        this.f28108m.setVisibility(8);
        this.f28110o.setVisibility(0);
        this.f28121z = accountAnonymousReginRequest;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        F0("绑定手机号");
        this.f28115t = com.join.mgps.Util.a0.c0(this).x(this);
        this.f28114s = com.join.mgps.rpc.impl.a.b0();
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.f28119x = accountData;
        if (accountData != null && accountData.getAccount_type() == 2) {
            this.f28120y = true;
            this.f28118w = AccountUtil_.getInstance_(this).getAccountData();
        }
        this.f28104i.setOnFocusChangeListener(new a());
        this.f28104i.addTextChangedListener(new b());
        this.f28105j.addTextChangedListener(new c());
        this.f28106k.addTextChangedListener(new d());
        this.f28107l.addTextChangedListener(new e());
        com.join.mgps.Util.n.g(this.f28107l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void joinDevice() {
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this).getUid() + "");
        linkedMultiValueMap.add("token", AccountUtil_.getInstance_(this).getToken());
        AccountResultMainBean<JPushJoinDeviceResult> R = this.f28114s.R(linkedMultiValueMap);
        if (R != null && R.getError() == 0 && R.getData().isResult()) {
            R.getData().getMsg();
        }
        UtilsMy.K(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void nextStep() {
        this.f28115t.show();
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void nickNameBution() {
        String obj = this.f28107l.getText().toString();
        if (!matchStringLength(obj, 1, 20)) {
            error("用户名格式有误，输入1至24位字母或数字或汉字");
            return;
        }
        this.f28115t.show();
        if (this.f28120y) {
            int i2 = this.f28099d;
            if (i2 == 1) {
                O0(this.f28121z);
            } else if (i2 == 2) {
                P0(this.f28121z);
            }
        } else if (this.f28099d == 1) {
            L0(obj);
        } else {
            M0(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        if (i2 == 10001 && i4 == 10001) {
            MyImageLoader.s(this.f28101f, AccountUtil_.getInstance_(this).getAccountData().getAvatarSrc());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.f28118w = accountData;
        MyImageLoader.s(this.f28101f, accountData.getAvatarSrc());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void phoneRegin() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                    AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean = new AccountRegisterThirdwaiRequestBean();
                    accountRegisterThirdwaiRequestBean.setSource(2);
                    accountRegisterThirdwaiRequestBean.setMobile(this.f28104i.getText().toString());
                    accountRegisterThirdwaiRequestBean.setPassword(this.f28105j.getText().toString());
                    accountRegisterThirdwaiRequestBean.setCode(this.f28106k.getText().toString());
                    accountRegisterThirdwaiRequestBean.setShare_code(MApplication.f9236w0);
                    accountRegisterThirdwaiRequestBean.setMac("");
                    com.join.mgps.Util.d2.i("");
                    accountRegisterThirdwaiRequestBean.setDevice_id("");
                    accountRegisterThirdwaiRequestBean.setSign(com.join.mgps.Util.u1.f(accountRegisterThirdwaiRequestBean));
                    AccountResultMainBean<AccountLoginresultData<AccountBean>> U = this.f28114s.U(accountRegisterThirdwaiRequestBean.getParams());
                    if (U != null && U.getData() != null) {
                        if (U.getData().is_success()) {
                            this.f28118w = U.getData().getUser_info();
                            AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.f28118w, getApplicationContext());
                            joinDevice();
                            showFinishPage(U.getData().getUser_info());
                        } else {
                            error(U.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                K0();
            }
        }
        error("没有网络，请检查网络设置");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFinishPage(AccountBean accountBean) {
        F0("设置头像/昵称");
        this.f28108m.setVisibility(8);
        this.f28110o.setVisibility(0);
        if (this.f28099d == 1) {
            MyImageLoader.d(this.f28101f, R.drawable.unloginstatus, accountBean.getAvatarSrc());
            this.f28107l.setText(accountBean.getAccount());
            return;
        }
        Random random = new Random();
        EditText editText = this.f28107l;
        editText.setText(this.f28098c.getNickname() + random.nextInt(1000));
        MyImageLoader.d(this.f28101f, R.drawable.unloginstatus, this.f28098c.getAvatar_src());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void thirdRegin() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    this.f28098c.setSource(2);
                    this.f28098c.setMobile(this.f28104i.getText().toString());
                    this.f28098c.setPassword(this.f28105j.getText().toString());
                    this.f28098c.setCode(this.f28106k.getText().toString());
                    this.f28098c.setShare_code(MApplication.f9236w0);
                    this.f28098c.setMac("");
                    com.join.mgps.Util.d2.i("");
                    this.f28098c.setDevice_id("");
                    AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean = this.f28098c;
                    accountRegisterThirdwaiRequestBean.setSign(com.join.mgps.Util.u1.f(accountRegisterThirdwaiRequestBean));
                    AccountResultMainBean<AccountLoginresultData<AccountBean>> N = this.f28114s.N(this.f28098c.getParams());
                    if (N != null && N.getData() != null) {
                        if (N.getData().is_success()) {
                            this.f28118w = N.getData().getUser_info();
                            AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.f28118w, getApplicationContext());
                            joinDevice();
                            showFinishPage(N.getData().getUser_info());
                        } else {
                            error(N.getData().getError_msg());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            }
            error("没有网络，请检查网络设置");
        } finally {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void userIcon() {
        MGChooseIconActivity_.V0(this).a(this.f28118w).b(1).startForResult(10001);
    }
}
