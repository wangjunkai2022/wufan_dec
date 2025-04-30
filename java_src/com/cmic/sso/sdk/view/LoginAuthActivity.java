package com.cmic.sso.sdk.view;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.cmic.sso.sdk.auth.AuthnHelper;
import com.cmic.sso.sdk.auth.TokenListener;
import com.cmic.sso.sdk.e.e;
import com.cmic.sso.sdk.e.h;
import com.cmic.sso.sdk.e.n;
import com.cmic.sso.sdk.e.q;
import com.cmic.sso.sdk.view.a;
import com.join.mgps.activity.posting.PostingActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import m.framework.ui.widget.asyncview.AsyncImageView;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class LoginAuthActivity extends Activity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    protected static final String f11004a = LoginAuthActivity.class.getSimpleName();
    private AuthThemeConfig A;
    private int B;
    private int C;
    private boolean D;
    private Dialog E;

    /* renamed from: b  reason: collision with root package name */
    private Handler f11005b;

    /* renamed from: c  reason: collision with root package name */
    private Context f11006c;

    /* renamed from: d  reason: collision with root package name */
    private RelativeLayout f11007d;

    /* renamed from: e  reason: collision with root package name */
    private com.cmic.sso.sdk.view.c f11008e;

    /* renamed from: f  reason: collision with root package name */
    private com.cmic.sso.sdk.view.c f11009f;

    /* renamed from: g  reason: collision with root package name */
    private com.cmic.sso.sdk.view.c f11010g;

    /* renamed from: h  reason: collision with root package name */
    private com.cmic.sso.sdk.view.c f11011h;

    /* renamed from: i  reason: collision with root package name */
    private com.cmic.sso.sdk.view.c f11012i;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<com.cmic.sso.sdk.view.c> f11013j;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<String> f11014k;

    /* renamed from: l  reason: collision with root package name */
    private String[] f11015l;

    /* renamed from: m  reason: collision with root package name */
    private com.cmic.sso.sdk.a f11016m;

    /* renamed from: n  reason: collision with root package name */
    private com.cmic.sso.sdk.auth.a f11017n;

    /* renamed from: p  reason: collision with root package name */
    private CheckBox f11019p;

    /* renamed from: q  reason: collision with root package name */
    private RelativeLayout f11020q;

    /* renamed from: r  reason: collision with root package name */
    private RelativeLayout f11021r;

    /* renamed from: v  reason: collision with root package name */
    private TokenListener f11025v;

    /* renamed from: x  reason: collision with root package name */
    private RelativeLayout f11027x;

    /* renamed from: y  reason: collision with root package name */
    private String f11028y;

    /* renamed from: z  reason: collision with root package name */
    private String f11029z;

    /* renamed from: o  reason: collision with root package name */
    private String f11018o = "";

    /* renamed from: s  reason: collision with root package name */
    private long f11022s = 0;

    /* renamed from: t  reason: collision with root package name */
    private int f11023t = 0;

    /* renamed from: u  reason: collision with root package name */
    private a f11024u = null;

    /* renamed from: w  reason: collision with root package name */
    private boolean f11026w = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<LoginAuthActivity> f11038a;

        a(LoginAuthActivity loginAuthActivity) {
            this.f11038a = new WeakReference<>(loginAuthActivity);
        }

        private void a(Message message) {
            LoginAuthActivity loginAuthActivity = this.f11038a.get();
            if (loginAuthActivity == null || message.what != 1) {
                return;
            }
            loginAuthActivity.c();
            loginAuthActivity.k();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                a(message);
            } catch (Exception e4) {
                com.cmic.sso.sdk.d.c.f10912b.add(e4);
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b extends n.a {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<LoginAuthActivity> f11039a;

        /* renamed from: b  reason: collision with root package name */
        WeakReference<c> f11040b;

        protected b(LoginAuthActivity loginAuthActivity, c cVar) {
            this.f11039a = new WeakReference<>(loginAuthActivity);
            this.f11040b = new WeakReference<>(cVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b() {
            c cVar = this.f11040b.get();
            if (this.f11039a.get() == null || cVar == null) {
                return false;
            }
            return cVar.a(false);
        }

        @Override // com.cmic.sso.sdk.e.n.a
        protected void a() {
            final LoginAuthActivity loginAuthActivity = this.f11039a.get();
            loginAuthActivity.f11016m.a("logintype", 1);
            h.a(true, false);
            loginAuthActivity.f11017n.b(loginAuthActivity.f11016m, new com.cmic.sso.sdk.auth.b() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.b.1
                @Override // com.cmic.sso.sdk.auth.b
                public void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
                    if (b.this.b()) {
                        long b4 = aVar.b("loginTime", 0L);
                        String b5 = aVar.b("phonescrip");
                        if (b4 != 0) {
                            aVar.a("loginTime", System.currentTimeMillis() - b4);
                        }
                        if (!"103000".equals(str) || TextUtils.isEmpty(b5)) {
                            loginAuthActivity.f11026w = false;
                            com.cmic.sso.sdk.d.a.a("authClickFailed");
                        } else {
                            com.cmic.sso.sdk.d.a.a("authClickSuccess");
                            loginAuthActivity.f11026w = true;
                        }
                        loginAuthActivity.a(str, str2, aVar, jSONObject);
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e4) {
                            e4.printStackTrace();
                        }
                        loginAuthActivity.f11024u.sendEmptyMessage(1);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private com.cmic.sso.sdk.a f11044b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f11045c;

        c(com.cmic.sso.sdk.a aVar) {
            this.f11044b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a(true)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("resultCode", "102507");
                    jSONObject.put("resultString", "请求超时");
                } catch (JSONException e4) {
                    e4.printStackTrace();
                }
                LoginAuthActivity.this.f11026w = false;
                com.cmic.sso.sdk.d.a.a("authClickFailed");
                LoginAuthActivity.this.f11024u.sendEmptyMessage(1);
                long b4 = this.f11044b.b("loginTime", 0L);
                if (b4 != 0) {
                    this.f11044b.a("loginTime", System.currentTimeMillis() - b4);
                }
                LoginAuthActivity.this.a("102507", "请求超时", this.f11044b, jSONObject);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean a(boolean z3) {
            boolean z4;
            z4 = this.f11045c;
            this.f11045c = z3;
            return !z4;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            int id = view.getId();
            if (id != 17476) {
                if (id == 26214) {
                    a(false);
                    return;
                } else if (id != 34952) {
                    return;
                } else {
                    if (this.f11019p.isChecked()) {
                        this.f11019p.setChecked(false);
                        return;
                    } else {
                        this.f11019p.setChecked(true);
                        return;
                    }
                }
            }
            if (!this.f11019p.isChecked()) {
                if (this.A.getPrivacyAnimation() != null) {
                    Context context = this.f11006c;
                    this.f11020q.startAnimation(AnimationUtils.loadAnimation(context, com.cmic.sso.sdk.view.b.c(context, this.A.getPrivacyAnimation())));
                }
                if (this.A.getCheckBoxListener() != null) {
                    this.A.getCheckBoxListener().onLoginClick(this.f11006c, null);
                    return;
                } else if (!TextUtils.isEmpty(this.A.getCheckTipText())) {
                    Toast.makeText(this.f11006c, this.A.getCheckTipText(), 1).show();
                    return;
                }
            }
            this.f11023t++;
            m();
        } catch (Exception e4) {
            com.cmic.sso.sdk.d.c.f10912b.add(e4);
            e4.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            if (bundle != null) {
                finish();
            }
            this.f11006c = this;
            AuthThemeConfig authThemeConfig = AuthnHelper.getInstance((Context) this).getAuthThemeConfig();
            this.A = authThemeConfig;
            if (authThemeConfig != null) {
                if (authThemeConfig.getThemeId() != -1) {
                    setTheme(this.A.getThemeId());
                }
                if (this.A.getAuthPageActIn() != null && this.A.getActivityOut() != null) {
                    overridePendingTransition(com.cmic.sso.sdk.view.b.c(this, this.A.getAuthPageActIn()), com.cmic.sso.sdk.view.b.c(this, this.A.getActivityOut()));
                }
            }
            com.cmic.sso.sdk.d.a.a("authPageIn");
            this.f11022s = System.currentTimeMillis();
            this.f11017n = com.cmic.sso.sdk.auth.a.a(this);
            d();
            f();
        } catch (Exception e4) {
            this.f11016m.a().f10886a.add(e4);
            com.cmic.sso.sdk.e.c.a(f11004a, e4.toString());
            e4.printStackTrace();
            a("200025", "发生未知错误", this.f11016m, null);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            this.f11005b.removeCallbacksAndMessages(null);
            com.cmic.sso.sdk.d.a.a("timeOnAuthPage", (System.currentTimeMillis() - this.f11022s) + "");
            if (this.f11019p.isChecked()) {
                com.cmic.sso.sdk.d.a.a("authPrivacyState", "1");
            } else {
                com.cmic.sso.sdk.d.a.a("authPrivacyState", "0");
            }
            this.E = null;
            com.cmic.sso.sdk.view.a.a().c();
            this.f11024u.removeCallbacksAndMessages(null);
        } catch (Exception e4) {
            com.cmic.sso.sdk.e.c.a(f11004a, "LoginAuthActivity clear failed");
            com.cmic.sso.sdk.d.c.f10912b.add(e4);
            e4.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && !keyEvent.isCanceled() && keyEvent.getRepeatCount() == 0) {
            if (this.A.getBackPressedListener() != null) {
                this.A.getBackPressedListener().onBackPressed();
            }
            if (this.A.getWindowWidth() == 0 || this.A.isBackButton()) {
                a(false);
                return true;
            }
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            com.cmic.sso.sdk.a aVar = this.f11016m;
            if (aVar != null) {
                aVar.a("loginMethod", "loginAuth");
            }
            AuthnHelper.getInstance((Context) this).loginPageInCallBack("200087", null);
        } catch (Exception e4) {
            this.f11016m.a().f10886a.add(e4);
            a("200025", "发生未知错误", this.f11016m, null);
        }
    }

    private void d() {
        String str;
        com.cmic.sso.sdk.a d4 = e.d(getIntent().getStringExtra("traceId"));
        this.f11016m = d4;
        if (d4 == null) {
            this.f11016m = new com.cmic.sso.sdk.a(0);
        }
        this.f11025v = e.c(this.f11016m.b("traceId", ""));
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.f11005b = new Handler(getMainLooper());
        this.f11024u = new a(this);
        this.f11018o = this.f11016m.b("securityphone");
        String str2 = f11004a;
        com.cmic.sso.sdk.e.c.b(str2, "mSecurityPhone value is " + this.f11018o);
        String b4 = this.f11016m.b("operatortype", "");
        com.cmic.sso.sdk.e.c.b(str2, "operator value is " + b4);
        if (this.A.getAppLanguageType() == 1) {
            this.f11015l = com.cmic.sso.sdk.c.f10786b;
        } else if (this.A.getAppLanguageType() == 2) {
            this.f11015l = com.cmic.sso.sdk.c.f10787c;
        } else {
            this.f11015l = com.cmic.sso.sdk.c.f10785a;
        }
        if (b4.equals("1")) {
            this.f11028y = this.f11015l[0];
            str = "http://wap.cmpassport.com/resources/html/contract.html";
        } else if (b4.equals("3")) {
            this.f11028y = this.f11015l[1];
            str = "https://e.189.cn/sdk/agreement/detail.do?hidetop=true";
        } else {
            this.f11028y = this.f11015l[2];
            str = "https://opencloud.wostore.cn/authz/resource/html/disclaimer.html?fromsdk=true";
        }
        com.cmic.sso.sdk.view.c cVar = new com.cmic.sso.sdk.view.c(this.f11006c, 16973840, this.f11028y, str);
        this.f11008e = cVar;
        cVar.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                if (i2 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                    LoginAuthActivity.this.f11008e.b();
                }
                return true;
            }
        });
        this.f11013j = new ArrayList<>();
        this.f11014k = new ArrayList<>();
        if (!TextUtils.isEmpty(this.A.getClauseUrl())) {
            com.cmic.sso.sdk.view.c cVar2 = new com.cmic.sso.sdk.view.c(this.f11006c, 16973840, this.A.getClauseName(), this.A.getClauseUrl());
            this.f11009f = cVar2;
            cVar2.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.2
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    if (i2 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                        LoginAuthActivity.this.f11009f.b();
                    }
                    return true;
                }
            });
            this.f11013j.add(this.f11009f);
            this.f11014k.add(this.A.getClauseName());
        }
        if (!TextUtils.isEmpty(this.A.getClauseUrl2())) {
            com.cmic.sso.sdk.view.c cVar3 = new com.cmic.sso.sdk.view.c(this.f11006c, 16973840, this.A.getClauseName2(), this.A.getClauseUrl2());
            this.f11010g = cVar3;
            cVar3.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.3
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    if (i2 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                        LoginAuthActivity.this.f11010g.b();
                    }
                    return true;
                }
            });
            this.f11013j.add(this.f11010g);
            this.f11014k.add(this.A.getClauseName2());
        }
        if (!TextUtils.isEmpty(this.A.getClauseUrl3())) {
            com.cmic.sso.sdk.view.c cVar4 = new com.cmic.sso.sdk.view.c(this.f11006c, 16973840, this.A.getClauseName3(), this.A.getClauseUrl3());
            this.f11011h = cVar4;
            cVar4.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.4
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    if (i2 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                        LoginAuthActivity.this.f11011h.b();
                    }
                    return true;
                }
            });
            this.f11013j.add(this.f11011h);
            this.f11014k.add(this.A.getClauseName3());
        }
        if (!TextUtils.isEmpty(this.A.getClauseUrl4())) {
            com.cmic.sso.sdk.view.c cVar5 = new com.cmic.sso.sdk.view.c(this.f11006c, 16973840, this.A.getClauseName4(), this.A.getClauseUrl4());
            this.f11012i = cVar5;
            cVar5.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.5
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    if (i2 == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                        LoginAuthActivity.this.f11012i.b();
                    }
                    return true;
                }
            });
            this.f11013j.add(this.f11012i);
            this.f11014k.add(this.A.getClauseName4());
        }
        j();
        if (this.A.isPrivacyBookSymbol()) {
            for (int i2 = 0; i2 < this.f11014k.size(); i2++) {
                String format = String.format("《%s》", this.f11014k.get(i2));
                this.f11029z = this.f11029z.replaceFirst(this.f11014k.get(i2), format);
                this.f11014k.set(i2, format);
            }
        }
        com.cmic.sso.sdk.view.a.a().a(new a.InterfaceC0051a() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.6
            @Override // com.cmic.sso.sdk.view.a.InterfaceC0051a
            public void a() {
                LoginAuthActivity.this.f11005b.removeCallbacksAndMessages(null);
                if (LoginAuthActivity.this.f11008e != null && LoginAuthActivity.this.f11008e.isShowing()) {
                    LoginAuthActivity.this.f11008e.dismiss();
                }
                if (LoginAuthActivity.this.f11009f != null && LoginAuthActivity.this.f11009f.isShowing()) {
                    LoginAuthActivity.this.f11009f.dismiss();
                }
                LoginAuthActivity.this.a(true);
            }
        });
    }

    private void e() {
        int i2;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f11021r.getLayoutParams();
        if (this.A.getNumFieldOffsetY() <= 0 && this.A.getNumFieldOffsetY_B() >= 0) {
            if (this.A.getNumFieldOffsetY_B() > 0 && (this.B - this.f11021r.getMeasuredHeight()) - d.a(this.f11006c, this.A.getNumFieldOffsetY_B()) > 0) {
                com.cmic.sso.sdk.e.c.b(f11004a, "numberField_bottom");
                layoutParams.addRule(12, -1);
                layoutParams.setMargins(0, 0, 0, d.a(this.f11006c, this.A.getNumFieldOffsetY_B()));
            } else {
                layoutParams.addRule(10, -1);
            }
        } else {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.f11021r.measure(makeMeasureSpec, makeMeasureSpec);
            String str = f11004a;
            com.cmic.sso.sdk.e.c.b(str, "mPhoneLayout.getMeasuredHeight()=" + this.f11021r.getMeasuredHeight());
            if (this.A.getNumFieldOffsetY() > 0 && (this.B - this.f11021r.getMeasuredHeight()) - d.a(this.f11006c, this.A.getNumFieldOffsetY()) > 0) {
                com.cmic.sso.sdk.e.c.b(str, "numberField_top");
                layoutParams.addRule(10, -1);
                layoutParams.setMargins(0, d.a(this.f11006c, this.A.getNumFieldOffsetY()), 0, 0);
            } else {
                layoutParams.addRule(12, -1);
            }
        }
        this.f11021r.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f11007d.getLayoutParams();
        int max = Math.max(this.A.getLogBtnMarginLeft(), 0);
        int max2 = Math.max(this.A.getLogBtnMarginRight(), 0);
        if (this.A.getLogBtnOffsetY() <= 0 && this.A.getLogBtnOffsetY_B() >= 0) {
            if (this.A.getLogBtnOffsetY_B() > 0 && this.B - d.a(this.f11006c, this.A.getLogBtnHeight() + this.A.getLogBtnOffsetY_B()) > 0) {
                com.cmic.sso.sdk.e.c.b(f11004a, "logBtn_bottom");
                layoutParams2.addRule(12, -1);
                layoutParams2.setMargins(d.a(this.f11006c, max), 0, d.a(this.f11006c, max2), d.a(this.f11006c, this.A.getLogBtnOffsetY_B()));
            } else {
                layoutParams2.addRule(10, -1);
                layoutParams2.setMargins(d.a(this.f11006c, max), 0, d.a(this.f11006c, max2), 0);
            }
        } else if (this.A.getLogBtnOffsetY() > 0 && this.B - d.a(this.f11006c, this.A.getLogBtnHeight() + this.A.getLogBtnOffsetY()) > 0) {
            com.cmic.sso.sdk.e.c.b(f11004a, "logBtn_top");
            layoutParams2.addRule(10, -1);
            layoutParams2.setMargins(d.a(this.f11006c, max), d.a(this.f11006c, this.A.getLogBtnOffsetY()), d.a(this.f11006c, max2), 0);
        } else {
            layoutParams2.addRule(12, -1);
            layoutParams2.setMargins(d.a(this.f11006c, max), 0, d.a(this.f11006c, max2), 0);
        }
        this.f11007d.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f11020q.getLayoutParams();
        if (this.A.getPrivacyMarginLeft() >= 0) {
            i2 = this.A.getCheckedImgWidth() > 30 ? this.A.getPrivacyMarginLeft() : this.A.getPrivacyMarginLeft() - (30 - this.A.getCheckedImgWidth());
        } else {
            i2 = this.A.getCheckedImgWidth() > 30 ? 0 : -(30 - this.A.getCheckedImgWidth());
        }
        int max3 = Math.max(this.A.getPrivacyMarginRight(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f11020q.measure(makeMeasureSpec2, makeMeasureSpec2);
        if (this.A.getPrivacyOffsetY() <= 0 && this.A.getPrivacyOffsetY_B() >= 0) {
            if (this.A.getPrivacyOffsetY_B() > 0 && (this.B - this.f11020q.getMeasuredHeight()) - d.a(this.f11006c, this.A.getPrivacyOffsetY_B()) > 0) {
                String str2 = f11004a;
                com.cmic.sso.sdk.e.c.b(str2, "privacy_bottom=" + this.f11020q.getMeasuredHeight());
                layoutParams3.addRule(12, -1);
                layoutParams3.setMargins(d.a(this.f11006c, (float) i2), 0, d.a(this.f11006c, (float) max3), d.a(this.f11006c, (float) this.A.getPrivacyOffsetY_B()));
            } else {
                layoutParams3.addRule(10, -1);
                layoutParams3.setMargins(d.a(this.f11006c, i2), 0, d.a(this.f11006c, max3), 0);
                com.cmic.sso.sdk.e.c.b(f11004a, "privacy_top");
            }
        } else if (this.A.getPrivacyOffsetY() > 0 && (this.B - this.f11020q.getMeasuredHeight()) - d.a(this.f11006c, this.A.getPrivacyOffsetY()) > 0) {
            String str3 = f11004a;
            com.cmic.sso.sdk.e.c.b(str3, "privacy_top = " + this.f11020q.getMeasuredHeight());
            layoutParams3.addRule(10, -1);
            layoutParams3.setMargins(d.a(this.f11006c, (float) i2), d.a(this.f11006c, (float) this.A.getPrivacyOffsetY()), d.a(this.f11006c, (float) max3), 0);
        } else {
            String str4 = f11004a;
            com.cmic.sso.sdk.e.c.b(str4, "privacy_bottom=" + i2);
            layoutParams3.addRule(12, -1);
            layoutParams3.setMargins(d.a(this.f11006c, (float) i2), 0, d.a(this.f11006c, (float) max3), 0);
        }
        this.f11020q.setLayoutParams(layoutParams3);
    }

    private void f() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            getWindow().addFlags(67108864);
            getWindow().addFlags(134217728);
            if (this.A.getStatusBarColor() != 0) {
                getWindow().addFlags(Integer.MIN_VALUE);
                getWindow().clearFlags(67108864);
                getWindow().setStatusBarColor(this.A.getStatusBarColor());
                getWindow().setNavigationBarColor(this.A.getStatusBarColor());
            }
        }
        if (i2 >= 23) {
            if (this.A.isLightColor()) {
                getWindow().getDecorView().setSystemUiVisibility(8192);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(0);
            }
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        View contentView = this.A.getContentView();
        if (contentView != null) {
            ViewParent parent = contentView.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(contentView);
            }
            relativeLayout.addView(contentView);
        } else if (this.A.getLayoutResID() != -1) {
            getLayoutInflater().inflate(this.A.getLayoutResID(), relativeLayout);
        }
        setContentView(relativeLayout);
        int requestedOrientation = getRequestedOrientation();
        this.B = d.b(this.f11006c);
        int a4 = d.a(this.f11006c);
        this.C = a4;
        boolean z3 = true;
        if ((requestedOrientation == 1 && a4 > this.B) || (requestedOrientation == 0 && a4 < this.B)) {
            this.C = this.B;
            this.B = a4;
        }
        String str = f11004a;
        com.cmic.sso.sdk.e.c.b(str, "orientation = " + requestedOrientation + "--screenWidth = " + this.C + "--screenHeight = " + this.B);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (this.A.getWindowWidth() != 0) {
            getWindow().getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
            getWindowManager().getDefaultDisplay().getSize(new Point());
            attributes.width = d.a(this.f11006c, this.A.getWindowWidth());
            int a5 = d.a(this.f11006c, this.A.getWindowHeight());
            attributes.height = a5;
            this.C = attributes.width;
            this.B = a5;
            attributes.x = d.a(this.f11006c, this.A.getWindowX());
            if (this.A.getWindowBottom() == 1) {
                getWindow().setGravity(80);
            } else {
                attributes.y = d.a(this.f11006c, this.A.getWindowY());
            }
            getWindow().setAttributes(attributes);
        }
        relativeLayout.setFitsSystemWindows(this.A.isFitsSystemWindows());
        relativeLayout.setClipToPadding(true);
        try {
            g();
            relativeLayout.addView(this.f11021r);
            relativeLayout.addView(h());
            relativeLayout.addView(i());
            e();
            this.f11007d.setOnClickListener(this);
            this.f11027x.setOnClickListener(this);
            this.f11019p.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.7
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z4) {
                    boolean z5 = true;
                    if (z4) {
                        LoginAuthActivity.this.f11007d.setEnabled(true);
                        try {
                            CheckBox checkBox = LoginAuthActivity.this.f11019p;
                            LoginAuthActivity loginAuthActivity = LoginAuthActivity.this;
                            checkBox.setBackgroundResource(com.cmic.sso.sdk.view.b.b(loginAuthActivity, loginAuthActivity.A.getCheckedImgPath()));
                            return;
                        } catch (Exception unused) {
                            LoginAuthActivity.this.f11019p.setBackgroundResource(com.cmic.sso.sdk.view.b.b(LoginAuthActivity.this, "umcsdk_check_image"));
                            return;
                        }
                    }
                    RelativeLayout relativeLayout2 = LoginAuthActivity.this.f11007d;
                    if (LoginAuthActivity.this.A.getCheckBoxListener() == null && TextUtils.isEmpty(LoginAuthActivity.this.A.getCheckTipText())) {
                        z5 = false;
                    }
                    relativeLayout2.setEnabled(z5);
                    try {
                        CheckBox checkBox2 = LoginAuthActivity.this.f11019p;
                        LoginAuthActivity loginAuthActivity2 = LoginAuthActivity.this;
                        checkBox2.setBackgroundResource(com.cmic.sso.sdk.view.b.b(loginAuthActivity2, loginAuthActivity2.A.getUncheckedImgPath()));
                    } catch (Exception unused2) {
                        LoginAuthActivity.this.f11019p.setBackgroundResource(com.cmic.sso.sdk.view.b.b(LoginAuthActivity.this, "umcsdk_uncheck_image"));
                    }
                }
            });
            k();
            try {
                if (this.A.isPrivacyState()) {
                    this.f11019p.setChecked(true);
                    this.f11019p.setBackgroundResource(com.cmic.sso.sdk.view.b.b(this, this.A.getCheckedImgPath()));
                    this.f11007d.setEnabled(true);
                    return;
                }
                this.f11019p.setChecked(false);
                RelativeLayout relativeLayout2 = this.f11007d;
                if (this.A.getCheckBoxListener() == null && TextUtils.isEmpty(this.A.getCheckTipText())) {
                    z3 = false;
                }
                relativeLayout2.setEnabled(z3);
                this.f11019p.setBackgroundResource(com.cmic.sso.sdk.view.b.b(this, this.A.getUncheckedImgPath()));
            } catch (Exception unused) {
                this.f11019p.setChecked(false);
            }
        } catch (Exception e4) {
            com.cmic.sso.sdk.d.c.f10912b.add(e4);
            e4.printStackTrace();
            com.cmic.sso.sdk.e.c.a(f11004a, e4.toString());
            a("200040", "UI资源加载异常", this.f11016m, null);
        }
    }

    private void g() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f11021r = relativeLayout;
        relativeLayout.setId(13107);
        this.f11021r.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        TextView textView = new TextView(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        textView.setGravity(15);
        int numberOffsetX = this.A.getNumberOffsetX();
        if (numberOffsetX == 0) {
            layoutParams.addRule(13);
        } else if (numberOffsetX > 0) {
            float f4 = numberOffsetX;
            if ((this.C - textView.getWidth()) - d.a(this.f11006c, f4) > 0) {
                layoutParams.setMargins(d.a(this.f11006c, f4), 0, 0, 0);
            } else {
                com.cmic.sso.sdk.e.c.b(f11004a, "RelativeLayout.ALIGN_PARENT_RIGHT");
                layoutParams.addRule(11);
            }
        }
        try {
            textView.setTextSize(2, this.A.getNumberSize());
        } catch (Exception unused) {
            textView.setTextSize(2, 18.0f);
        }
        textView.setText(this.f11018o);
        if (this.A.isNumberBold()) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        textView.setId(30583);
        this.f11021r.addView(textView, layoutParams);
        try {
            textView.setTextColor(this.A.getNumberColor());
        } catch (Exception unused2) {
            textView.setTextColor(-13421773);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f11021r.measure(makeMeasureSpec, makeMeasureSpec);
        com.cmic.sso.sdk.e.c.b(f11004a, "mPhoneLayout.getMeasuredHeight()=" + this.f11021r.getMeasuredHeight());
    }

    private RelativeLayout h() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f11007d = relativeLayout;
        relativeLayout.setId(PostingActivity.C0);
        this.f11007d.setLayoutParams(new RelativeLayout.LayoutParams(d.a(this.f11006c, this.A.getLogBtnWidth()), d.a(this.f11006c, this.A.getLogBtnHeight())));
        TextView textView = new TextView(this);
        textView.setTextSize(2, this.A.getLogBtnTextSize());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        textView.setLayoutParams(layoutParams);
        if (this.A.isLogBtnTextBold()) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        this.f11007d.addView(textView);
        textView.setText(this.A.getLogBtnText());
        try {
            textView.setTextColor(this.A.getLogBtnTextColor());
        } catch (Exception unused) {
            textView.setTextColor(-1);
        }
        try {
            this.f11007d.setBackgroundResource(com.cmic.sso.sdk.view.b.b(this.f11006c, this.A.getLogBtnBackgroundPath()));
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f11007d.setBackgroundResource(com.cmic.sso.sdk.view.b.b(this.f11006c, "umcsdk_login_btn_bg"));
        }
        return this.f11007d;
    }

    private RelativeLayout i() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f11020q = relativeLayout;
        relativeLayout.setHorizontalGravity(1);
        this.f11020q.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int checkedImgWidth = this.A.getCheckedImgWidth();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(d.a(this.f11006c, Math.max(checkedImgWidth, 30)), d.a(this.f11006c, Math.max(this.A.getCheckedImgHeight(), 30)));
        if (this.A.getCheckBoxLocation() == 1) {
            layoutParams.addRule(15, -1);
        }
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        this.f11027x = relativeLayout2;
        relativeLayout2.setId(34952);
        this.f11027x.setLayoutParams(layoutParams);
        CheckBox checkBox = new CheckBox(this);
        this.f11019p = checkBox;
        checkBox.setChecked(false);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(d.a(this.f11006c, this.A.getCheckedImgWidth()), d.a(this.f11006c, this.A.getCheckedImgHeight()));
        layoutParams2.setMargins(d.a(this.f11006c, checkedImgWidth > 30 ? 0.0f : 30 - checkedImgWidth), 0, 0, 0);
        layoutParams2.addRule(11, -1);
        if (this.A.getCheckBoxLocation() == 1) {
            layoutParams2.addRule(15, -1);
        }
        this.f11019p.setLayoutParams(layoutParams2);
        this.f11027x.addView(this.f11019p);
        this.f11020q.addView(this.f11027x);
        TextView textView = new TextView(this);
        textView.setTextSize(2, this.A.getPrivacyTextSize());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(d.a(this.f11006c, 5.0f), 0, 0, d.a(this.f11006c, 5.0f));
        layoutParams3.addRule(1, 34952);
        textView.setLayoutParams(layoutParams3);
        this.f11020q.addView(textView);
        textView.setTextColor(this.A.getClauseBaseColor());
        textView.setText(d.a(this, this.f11029z, this.f11028y, this.f11008e, this.f11013j, this.f11014k));
        textView.setLineSpacing(8.0f, 1.0f);
        textView.setIncludeFontPadding(false);
        if (this.A.isPrivacyTextBold()) {
            textView.setTypeface(Typeface.DEFAULT_BOLD);
        }
        if (this.A.isPrivacyTextGravityCenter()) {
            textView.setGravity(17);
        }
        textView.setHighlightColor(getResources().getColor(AsyncImageView.DEFAULT_TRANSPARENT));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        this.f11019p.setButtonDrawable(new ColorDrawable());
        try {
            this.f11019p.setBackgroundResource(com.cmic.sso.sdk.view.b.b(this, this.A.getUncheckedImgPath()));
        } catch (Exception unused) {
            this.f11019p.setBackgroundResource(com.cmic.sso.sdk.view.b.b(this, "umcsdk_uncheck_image"));
        }
        return this.f11020q;
    }

    private String j() {
        this.f11029z = this.A.getPrivacy();
        if (this.A.isPrivacyBookSymbol()) {
            this.f11028y = String.format("《%s》", this.f11028y);
        }
        if (this.f11029z.contains(AuthThemeConfig.PLACEHOLDER)) {
            this.f11029z = this.f11029z.replace(AuthThemeConfig.PLACEHOLDER, this.f11028y);
        }
        return this.f11029z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.f11007d.setClickable(true);
        this.f11019p.setClickable(true);
    }

    private void l() {
        this.f11007d.setClickable(false);
        this.f11019p.setClickable(false);
    }

    private void m() {
        try {
            if (this.f11023t >= 5) {
                Toast.makeText(this.f11006c, "网络不稳定,请返回重试其他登录方式", 1).show();
                this.f11007d.setClickable(true);
                return;
            }
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StringBuilder sb = new StringBuilder();
            for (StackTraceElement stackTraceElement : stackTrace) {
                com.cmic.sso.sdk.e.c.a("stack", stackTraceElement.getClassName());
                String className = stackTraceElement.getClassName();
                if (!TextUtils.isEmpty(className) && className.contains("com.cmic.sso.sdk.activity") && !sb.toString().contains(className)) {
                    sb.append(className);
                    sb.append(";");
                }
            }
            this.f11016m.a("loginTime", System.currentTimeMillis());
            String b4 = this.f11016m.b("traceId", "");
            if (!TextUtils.isEmpty(b4) && e.a(b4)) {
                String c4 = q.c();
                this.f11016m.a("traceId", c4);
                e.a(c4, this.f11025v);
            }
            b();
            l();
            c cVar = new c(this.f11016m);
            this.f11005b.postDelayed(cVar, AuthnHelper.getInstance((Context) this).getOverTime());
            n.a(new b(this, cVar));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void c() {
        try {
            com.cmic.sso.sdk.e.c.a(f11004a, "loginClickComplete");
            if (this.A.getLoginClickListener() != null && this.D) {
                this.D = false;
                this.A.getLoginClickListener().onLoginClickComplete(this.f11006c, null);
            } else {
                Dialog dialog = this.E;
                if (dialog != null && dialog.isShowing()) {
                    this.E.dismiss();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void b() {
        com.cmic.sso.sdk.e.c.a(f11004a, "loginClickStart");
        try {
            this.D = true;
            if (this.A.getLoginClickListener() != null) {
                this.A.getLoginClickListener().onLoginClickStart(this.f11006c, null);
            } else {
                Dialog dialog = this.E;
                if (dialog != null) {
                    dialog.show();
                    return;
                }
                AlertDialog create = new AlertDialog.Builder(this).create();
                this.E = create;
                create.setCancelable(false);
                this.E.setCanceledOnTouchOutside(false);
                this.E.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.cmic.sso.sdk.view.LoginAuthActivity.8
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                        return i2 == 4;
                    }
                });
                RelativeLayout relativeLayout = new RelativeLayout(this.E.getContext());
                relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                ImageView imageView = new ImageView(this.E.getContext());
                imageView.setImageResource(com.cmic.sso.sdk.view.b.b(this.f11006c, "dialog_loading"));
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(80, 80);
                layoutParams.addRule(13, -1);
                relativeLayout.addView(imageView, layoutParams);
                if (this.E.getWindow() != null) {
                    this.E.getWindow().setDimAmount(0.0f);
                }
                this.E.show();
                this.E.setContentView(relativeLayout);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.cmic.sso.sdk.e.c.a(f11004a, "loginClickStart");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z3) {
        try {
            com.cmic.sso.sdk.d.a.a("authPageOut");
            a("200020", "登录页面关闭", this.f11016m, null);
        } catch (Exception e4) {
            com.cmic.sso.sdk.d.c.f10912b.add(e4);
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
        try {
            this.f11005b.removeCallbacksAndMessages(null);
            if ("103000".equals(str)) {
                if (AuthnHelper.getInstance((Context) this) != null && e.c(aVar.b("traceId")) != null) {
                    aVar.a("keepListener", true);
                    AuthnHelper.getInstance((Context) this).callBackResult(str, str2, aVar, jSONObject);
                }
            } else if ("200020".equals(str)) {
                if (AuthnHelper.getInstance((Context) this) != null) {
                    if (e.c(aVar.b("traceId")) != null) {
                        AuthnHelper.getInstance((Context) this).callBackResult(str, str2, aVar, jSONObject);
                        a();
                    } else {
                        a();
                    }
                }
            } else {
                aVar.a("keepListener", true);
                AuthnHelper.getInstance((Context) this).callBackResult(str, str2, aVar, jSONObject);
            }
        } catch (Exception e4) {
            com.cmic.sso.sdk.e.c.a(f11004a, "CallbackResult:未知错误");
            e4.printStackTrace();
        }
    }

    public void a() {
        this.f11005b.removeCallbacksAndMessages(null);
        com.cmic.sso.sdk.view.c cVar = this.f11008e;
        if (cVar != null && cVar.isShowing()) {
            this.f11008e.dismiss();
        }
        com.cmic.sso.sdk.view.c cVar2 = this.f11009f;
        if (cVar2 != null && cVar2.isShowing()) {
            this.f11009f.dismiss();
        }
        c();
        this.E = null;
        this.f11020q.clearAnimation();
        finish();
        if (this.A.getAuthPageActOut() == null || this.A.getActivityIn() == null) {
            return;
        }
        overridePendingTransition(com.cmic.sso.sdk.view.b.c(this, this.A.getActivityIn()), com.cmic.sso.sdk.view.b.c(this, this.A.getAuthPageActOut()));
    }
}
