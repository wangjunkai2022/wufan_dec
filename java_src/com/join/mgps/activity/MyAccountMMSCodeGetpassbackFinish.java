package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
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
import com.MApplication;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.login.LoginInputPassActivity_;
import com.join.mgps.dto.AccountMMSCheckCodebean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MMSRequesBean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.my_account_regin_sendmmscode_layout)
/* loaded from: classes3.dex */
public class MyAccountMMSCodeGetpassbackFinish extends BaseAccountActivity {

    /* renamed from: c  reason: collision with root package name */
    private String f34124c;

    /* renamed from: d  reason: collision with root package name */
    MApplication f34125d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.b f34126e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    EditText f34127f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f34128g;

    /* renamed from: h  reason: collision with root package name */
    private String f34129h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f34130i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f34131j;

    /* renamed from: k  reason: collision with root package name */
    g f34132k;

    /* renamed from: m  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f34134m;

    /* renamed from: o  reason: collision with root package name */
    private f f34136o;

    /* renamed from: l  reason: collision with root package name */
    int f34133l = 0;

    /* renamed from: n  reason: collision with root package name */
    public Handler f34135n = new a();

    /* renamed from: p  reason: collision with root package name */
    private Uri f34137p = Uri.parse("content://sms/");

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeGetpassbackFinish.this.N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements TextWatcher {
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
            MyAccountMMSCodeGetpassbackFinish.this.f34133l = charSequence.length();
            MyAccountMMSCodeGetpassbackFinish myAccountMMSCodeGetpassbackFinish = MyAccountMMSCodeGetpassbackFinish.this;
            if (myAccountMMSCodeGetpassbackFinish.f34133l == 6) {
                myAccountMMSCodeGetpassbackFinish.f34131j.setEnabled(true);
            } else {
                myAccountMMSCodeGetpassbackFinish.f34131j.setEnabled(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f34141a;

        d(Dialog dialog) {
            this.f34141a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f34141a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f34143a;

        e(Dialog dialog) {
            this.f34143a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeGetpassbackFinish.this.finish();
            this.f34143a.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class f extends ContentObserver {
        public f(Context context, Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            super.onChange(z3);
            MyAccountMMSCodeGetpassbackFinish.this.getSmsFromPhone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends CountDownTimer {
        public g(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            MyAccountMMSCodeGetpassbackFinish.this.f34130i.setText("重新获取");
            MyAccountMMSCodeGetpassbackFinish.this.f34130i.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            MyAccountMMSCodeGetpassbackFinish.this.f34130i.setEnabled(false);
            TextView textView = MyAccountMMSCodeGetpassbackFinish.this.f34130i;
            textView.setText("" + (j4 / 1000) + "S");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this, R.style.MyDialog);
        tVar.setContentView(R.layout.delete_dialog);
        ((Button) tVar.findViewById(R.id.dialog_button_ok)).setText("返回");
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setText("等待");
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("接收短信稍有延迟，确认返回吗？");
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new d(tVar));
        ((Button) tVar.findViewById(R.id.dialog_button_ok)).setOnClickListener(new e(tVar));
        tVar.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        com.join.mgps.Util.i2.a(this).b("获取验证码成功");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            showLoding();
            try {
                AccountMMSCheckCodebean accountMMSCheckCodebean = new AccountMMSCheckCodebean();
                accountMMSCheckCodebean.setMobile(this.f34124c);
                int i2 = 0;
                try {
                    i2 = Integer.parseInt(str);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                accountMMSCheckCodebean.setCode(i2);
                accountMMSCheckCodebean.setSign(com.join.mgps.Util.u1.f(accountMMSCheckCodebean));
                AccountResultMainBean<AccountTokenSuccess> g4 = this.f34126e.g(accountMMSCheckCodebean.getParams());
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
                showLodingDismis();
                error("连接失败，请稍后再试。");
                return;
            }
        }
        error("没有网络，请先检查网络。");
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
            this.f34132k.start();
            try {
                MMSRequesBean mMSRequesBean = new MMSRequesBean();
                mMSRequesBean.setMobile(this.f34124c);
                mMSRequesBean.setType(MMSRequesBean.TYPE_FORGOT);
                mMSRequesBean.setSign(com.join.mgps.Util.u1.f(mMSRequesBean));
                AccountResultMainBean<AccountTokenSuccess> i2 = this.f34126e.i(mMSRequesBean.getParams());
                if (i2 != null && i2.getError() == 0) {
                    if (i2.getData().is_success()) {
                        H0();
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
        String trim = this.f34127f.getText().toString().trim();
        this.f34129h = trim;
        if (com.join.mgps.Util.d2.i(trim) && com.join.mgps.Util.d2.j(this.f34129h) && this.f34129h.length() == 6) {
            I0(this.f34129h);
        } else {
            com.join.mgps.Util.i2.a(this).b("输入格式有误");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        Intent intent = new Intent(this, MyAccountGetpassByPhone_.class);
        intent.putExtra(LoginInputPassActivity_.PHONE_NUMBER_EXTRA, this.f34124c);
        intent.putExtra("MMSCode", this.f34129h);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34126e = com.join.mgps.rpc.impl.a.b0();
        MApplication mApplication = (MApplication) getApplication();
        this.f34125d = mApplication;
        mApplication.k(this);
        this.f28402b.setText("填写验证码");
        this.f34131j.setEnabled(false);
        this.f34134m = com.join.mgps.Util.a0.c0(this).x(this);
        String stringExtra = getIntent().getStringExtra("phonenumber");
        this.f34124c = stringExtra;
        this.f34124c = stringExtra.replace("+86", "");
        this.f34131j.setEnabled(false);
        E0(new b());
        this.f34128g.setText(this.f34124c);
        try {
            this.f34124c.substring(0, 3);
            this.f34124c.substring(3, 7);
            this.f34124c.substring(7, 11);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        g gVar = new g(60000L, 1000L);
        this.f34132k = gVar;
        gVar.start();
        this.f34127f.addTextChangedListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    public void getSmsFromPhone() {
        Cursor query = getContentResolver().query(this.f34137p, new String[]{"body"}, "date >  " + (System.currentTimeMillis() - TTAdConstant.AD_MAX_EVENT_TIME), null, "date desc");
        if (query != null && query.moveToNext()) {
            String string = query.getString(query.getColumnIndex("body"));
            if (string.contains(com.join.android.app.mgsim.wufun.b.f17915i)) {
                Matcher matcher = Pattern.compile("\\d+").matcher(string);
                while (matcher.find()) {
                    String group = matcher.group();
                    if (group.length() == 6) {
                        this.f34127f.setText(group);
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
        this.f34134m.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        this.f34134m.dismiss();
    }
}
