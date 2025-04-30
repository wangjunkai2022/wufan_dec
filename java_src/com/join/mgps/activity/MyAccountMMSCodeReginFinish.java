package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountMMSCheckCodebean;
import com.join.mgps.dto.AccountReginBean;
import com.join.mgps.dto.AccountRegisterRequestBean;
import com.join.mgps.dto.AccountResultBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MMSRequesBean;
import com.join.mgps.dto.RewardBean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.my_account_regin_sendmmscode_layout)
/* loaded from: classes3.dex */
public class MyAccountMMSCodeReginFinish extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    MApplication f34161a;

    /* renamed from: b  reason: collision with root package name */
    private String f34162b;

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.rpc.b f34163c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    EditText f34164d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f34165e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f34166f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f34167g;

    /* renamed from: h  reason: collision with root package name */
    f f34168h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    Button f34169i;

    /* renamed from: k  reason: collision with root package name */
    private String f34171k;

    /* renamed from: l  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f34172l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    AccountReginBean f34173m;

    /* renamed from: n  reason: collision with root package name */
    private e f34174n;

    /* renamed from: j  reason: collision with root package name */
    int f34170j = 0;

    /* renamed from: o  reason: collision with root package name */
    public Handler f34175o = new a();

    /* renamed from: p  reason: collision with root package name */
    private Uri f34176p = Uri.parse("content://sms/");

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
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
            MyAccountMMSCodeReginFinish.this.f34170j = charSequence.length();
            MyAccountMMSCodeReginFinish myAccountMMSCodeReginFinish = MyAccountMMSCodeReginFinish.this;
            if (myAccountMMSCodeReginFinish.f34170j == 6) {
                myAccountMMSCodeReginFinish.f34169i.setEnabled(true);
            } else {
                myAccountMMSCodeReginFinish.f34169i.setEnabled(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f34179a;

        c(Dialog dialog) {
            this.f34179a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f34179a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f34181a;

        d(Dialog dialog) {
            this.f34181a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeReginFinish.this.finish();
            this.f34181a.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class e extends ContentObserver {
        public e(Context context, Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            super.onChange(z3);
            MyAccountMMSCodeReginFinish.this.getSmsFromPhone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends CountDownTimer {
        public f(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            MyAccountMMSCodeReginFinish.this.f34165e.setText("重新获取");
            MyAccountMMSCodeReginFinish.this.f34165e.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            MyAccountMMSCodeReginFinish.this.f34165e.setEnabled(false);
            TextView textView = MyAccountMMSCodeReginFinish.this.f34165e;
            textView.setText("重新获取(" + (j4 / 1000) + ")");
        }
    }

    private void N0() {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this, R.style.MyDialog);
        tVar.setContentView(R.layout.delete_dialog);
        ((Button) tVar.findViewById(R.id.dialog_button_ok)).setText("返回");
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setText("等待");
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("接收短信稍有延迟，确认返回吗？");
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new c(tVar));
        ((Button) tVar.findViewById(R.id.dialog_button_ok)).setOnClickListener(new d(tVar));
        tVar.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        N0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        com.join.mgps.Util.i2.a(this).b("获取验证码成功");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void G0(AccountReginBean accountReginBean) {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                AccountRegisterRequestBean accountRegisterRequestBean = new AccountRegisterRequestBean();
                accountRegisterRequestBean.setMobile(accountReginBean.getMobile());
                accountRegisterRequestBean.setPassword(accountReginBean.getPassword());
                accountRegisterRequestBean.setSource(accountReginBean.getSource());
                accountRegisterRequestBean.setCode(accountReginBean.getCode());
                accountRegisterRequestBean.setAvatar_src("");
                accountRegisterRequestBean.setGender(1);
                accountRegisterRequestBean.setNick_name(accountReginBean.getNickname());
                accountRegisterRequestBean.setAccount("");
                accountRegisterRequestBean.setMac("");
                com.join.mgps.Util.d2.i("");
                accountRegisterRequestBean.setDevice_id("");
                accountRegisterRequestBean.setSign(com.join.mgps.Util.u1.f(accountRegisterRequestBean));
                AccountResultBean<AccountLoginresultData<AccountBean>> a4 = this.f34163c.a(accountRegisterRequestBean.getParams());
                if (a4 != null && a4.getError() == 0) {
                    if (a4.getData().isIs_success()) {
                        AccountUtil_.getInstance_(this).saveAccountData(a4.getData().getUser_info(), this);
                        UtilsMy.A3(this, a4.getData().getGame_list_permission());
                        UtilsMy.K(this);
                        I0(a4.getData().getUser_info(), a4.getData().getReward());
                    } else {
                        error(a4.getData().getError_msg());
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                error("连接失败，请稍后再试。");
                showLodingDismis();
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                AccountMMSCheckCodebean accountMMSCheckCodebean = new AccountMMSCheckCodebean();
                accountMMSCheckCodebean.setMobile(this.f34162b);
                int i2 = 0;
                try {
                    i2 = Integer.parseInt(str);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                accountMMSCheckCodebean.setCode(i2);
                accountMMSCheckCodebean.setSign(com.join.mgps.Util.u1.f(accountMMSCheckCodebean));
                AccountResultMainBean<AccountTokenSuccess> g4 = this.f34163c.g(accountMMSCheckCodebean.getParams());
                if (g4 != null && g4.getError() == 0) {
                    if (g4.getData().is_success()) {
                        M0();
                    } else {
                        error(g4.getData().getError_msg());
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                error("连接失败，请稍后再试。");
                showLodingDismis();
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(AccountBean accountBean, RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
        this.f34161a.l();
        MYAccountReginFinishActivity_.a1(this).a(accountBean).b(1).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            this.f34168h.start();
            try {
                MMSRequesBean mMSRequesBean = new MMSRequesBean();
                mMSRequesBean.setMobile(this.f34162b);
                mMSRequesBean.setType(MMSRequesBean.TYPE_REGISTER);
                mMSRequesBean.setSign(com.join.mgps.Util.u1.f(mMSRequesBean));
                AccountResultMainBean<AccountTokenSuccess> i2 = this.f34163c.i(mMSRequesBean.getParams());
                if (i2 != null && i2.getError() == 0) {
                    if (i2.getData().is_success()) {
                        F0();
                    } else {
                        error(i2.getData().getError_msg());
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                error("连接失败，请稍后再试。");
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        String trim = this.f34164d.getText().toString().trim();
        this.f34171k = trim;
        if (com.join.mgps.Util.d2.i(trim) && com.join.mgps.Util.d2.j(this.f34171k) && this.f34171k.length() == 6) {
            H0(this.f34171k);
        } else {
            com.join.mgps.Util.i2.a(this).b("输入格式有误");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        this.f34173m.setCode(Integer.parseInt(this.f34171k));
        G0(this.f34173m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34163c = com.join.mgps.rpc.impl.a.b0();
        MApplication mApplication = (MApplication) getApplication();
        this.f34161a = mApplication;
        mApplication.k(this);
        this.f34169i.setEnabled(false);
        this.f34172l = com.join.mgps.Util.a0.c0(this).x(this);
        this.f34167g.setText("填写验证码");
        String mobile = this.f34173m.getMobile();
        this.f34162b = mobile;
        String replace = mobile.replace("+86", "");
        this.f34162b = replace;
        try {
            String substring = replace.substring(0, 3);
            String substring2 = this.f34162b.substring(3, 7);
            String substring3 = this.f34162b.substring(7, 11);
            TextView textView = this.f34166f;
            textView.setText("+86 " + substring + " " + substring2 + " " + substring3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        f fVar = new f(60000L, 1000L);
        this.f34168h = fVar;
        fVar.start();
        this.f34164d.addTextChangedListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    public void getSmsFromPhone() {
        Cursor query = getContentResolver().query(this.f34176p, new String[]{"body"}, "date >  " + (System.currentTimeMillis() - TTAdConstant.AD_MAX_EVENT_TIME), null, "date desc");
        if (query != null && query.moveToNext()) {
            String string = query.getString(query.getColumnIndex("body"));
            if (string.contains(com.join.android.app.mgsim.wufun.b.f17915i)) {
                Matcher matcher = Pattern.compile("\\d+").matcher(string);
                while (matcher.find()) {
                    String group = matcher.group();
                    if (group.length() == 6) {
                        this.f34164d.setText(group);
                        return;
                    }
                }
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            N0();
            return false;
        }
        return super.onKeyDown(i2, keyEvent);
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
        this.f34172l.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        this.f34172l.dismiss();
    }
}
