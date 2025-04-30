package com.netease.nis.quicklogin.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.R;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.LoginListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.c;
import com.netease.nis.quicklogin.utils.g;
import com.netease.nis.quicklogin.utils.h;
import com.netease.nis.quicklogin.view.FastClickButton;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class YDQuickLoginActivity extends Activity {

    /* renamed from: n  reason: collision with root package name */
    private static QuickLoginTokenListener f54253n;

    /* renamed from: a  reason: collision with root package name */
    ImageView f54254a;

    /* renamed from: b  reason: collision with root package name */
    private EditText f54255b;

    /* renamed from: c  reason: collision with root package name */
    private CheckBox f54256c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f54257d;

    /* renamed from: e  reason: collision with root package name */
    private ViewGroup f54258e;

    /* renamed from: f  reason: collision with root package name */
    private RelativeLayout f54259f;

    /* renamed from: g  reason: collision with root package name */
    private UnifyUiConfig f54260g;

    /* renamed from: h  reason: collision with root package name */
    private LoginListener f54261h;

    /* renamed from: i  reason: collision with root package name */
    private String f54262i;

    /* renamed from: j  reason: collision with root package name */
    private String f54263j;

    /* renamed from: k  reason: collision with root package name */
    private String f54264k;

    /* renamed from: l  reason: collision with root package name */
    private String f54265l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f54266m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (YDQuickLoginActivity.f54253n != null) {
                YDQuickLoginActivity.f54253n.onCancelGetToken();
            }
            YDQuickLoginActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FastClickButton f54268a;

        /* loaded from: classes4.dex */
        class a implements DialogInterface.OnClickListener {
            a(b bVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
            }
        }

        /* renamed from: com.netease.nis.quicklogin.ui.YDQuickLoginActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class DialogInterface$OnClickListenerC0256b implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC0256b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                YDQuickLoginActivity.this.f54256c.setChecked(true);
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
                if (YDQuickLoginActivity.this.f54260g.getPrivacyDialogAuto()) {
                    b.this.f54268a.performClick();
                }
            }
        }

        b(FastClickButton fastClickButton) {
            this.f54268a = fastClickButton;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CharSequence privacyDialogText;
            int i2 = 1;
            if (YDQuickLoginActivity.this.f54256c.isChecked()) {
                if (YDQuickLoginActivity.this.f54260g != null && YDQuickLoginActivity.this.f54260g.getLoadingVisible()) {
                    YDQuickLoginActivity.this.f54258e.setVisibility(0);
                }
                this.f54268a.a(true);
                YDQuickLoginActivity.this.a(4, 1);
                YDQuickLoginActivity.this.b();
                return;
            }
            YDQuickLoginActivity.this.f54258e.setVisibility(8);
            this.f54268a.a(false);
            YDQuickLoginActivity.this.a(4, 0);
            try {
                if (YDQuickLoginActivity.this.f54260g != null) {
                    if (YDQuickLoginActivity.this.f54261h == null || !YDQuickLoginActivity.this.f54261h.onDisagreePrivacy(YDQuickLoginActivity.this.f54257d, this.f54268a)) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(YDQuickLoginActivity.this);
                        if (!TextUtils.isEmpty(YDQuickLoginActivity.this.f54260g.getPrivacyDialogText())) {
                            privacyDialogText = YDQuickLoginActivity.this.f54260g.getPrivacyDialogText();
                        } else {
                            YDQuickLoginActivity yDQuickLoginActivity = YDQuickLoginActivity.this;
                            if (!yDQuickLoginActivity.f54266m) {
                                i2 = 2;
                            }
                            privacyDialogText = com.netease.nis.quicklogin.utils.a.a(i2, yDQuickLoginActivity.f54260g, "请您仔细阅读", "，点击“确定”，表示您已经阅读并同意以上协议");
                        }
                        AlertDialog create = builder.setMessage(privacyDialogText).setPositiveButton("确认", new DialogInterface$OnClickListenerC0256b()).setNegativeButton("取消", new a(this)).create();
                        if (!YDQuickLoginActivity.this.isFinishing()) {
                            create.show();
                        }
                        ((TextView) create.findViewById(16908299)).setMovementMethod(LinkMovementMethod.getInstance());
                        ((TextView) create.findViewById(16908299)).setTextSize(2, YDQuickLoginActivity.this.f54260g.getPrivacyDialogTextSize() != 0.0f ? YDQuickLoginActivity.this.f54260g.getPrivacyDialogTextSize() : 13.0f);
                        return;
                    }
                    return;
                }
                Toast.makeText(YDQuickLoginActivity.this.getApplicationContext(), R.string.yd_privacy_agree, 0).show();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        UnifyUiConfig unifyUiConfig = this.f54260g;
        if (unifyUiConfig != null && (!TextUtils.isEmpty(unifyUiConfig.getActivityEnterAnimation()) || !TextUtils.isEmpty(this.f54260g.getActivityExitAnimation()))) {
            h a4 = h.a(getApplicationContext());
            overridePendingTransition(a4.a(this.f54260g.getActivityEnterAnimation()), a4.a(this.f54260g.getActivityExitAnimation()));
        }
        if (f54253n != null) {
            f54253n = null;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        try {
            UnifyUiConfig unifyUiConfig = this.f54260g;
            if (unifyUiConfig == null || unifyUiConfig.getActivityResultCallbacks() == null) {
                return;
            }
            this.f54260g.getActivityResultCallbacks().onActivityResult(i2, i4, intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        UnifyUiConfig unifyUiConfig = this.f54260g;
        if (unifyUiConfig == null || !unifyUiConfig.getBackPressedAvailable()) {
            return;
        }
        QuickLoginTokenListener quickLoginTokenListener = f54253n;
        if (quickLoginTokenListener != null) {
            try {
                quickLoginTokenListener.onCancelGetToken();
            } catch (Exception e4) {
                Logger.e(e4.getMessage());
            }
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.yd_activity_quick_login);
        c();
        Intent intent = getIntent();
        if (intent != null) {
            a(intent);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        RelativeLayout relativeLayout = this.f54259f;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[Catch: Exception -> 0x0068, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x0068, blocks: (B:12:0x001a, B:15:0x0020, B:17:0x002e, B:21:0x0046, B:23:0x004a, B:18:0x003a, B:20:0x0041), top: B:40:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a A[Catch: Exception -> 0x0068, TRY_LEAVE, TryCatch #3 {Exception -> 0x0068, blocks: (B:12:0x001a, B:15:0x0020, B:17:0x002e, B:21:0x0046, B:23:0x004a, B:18:0x003a, B:20:0x0041), top: B:40:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a A[Catch: Exception -> 0x0068, TRY_LEAVE, TryCatch #3 {Exception -> 0x0068, blocks: (B:12:0x001a, B:15:0x0020, B:17:0x002e, B:21:0x0046, B:23:0x004a, B:18:0x003a, B:20:0x0041), top: B:40:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b() {
        /*
            r6 = this;
            r0 = 0
            java.lang.String r1 = com.netease.nis.quicklogin.utils.d.a()     // Catch: java.lang.Exception -> Lc
            java.lang.String r0 = com.netease.nis.quicklogin.utils.d.a(r6)     // Catch: java.lang.Exception -> La
            goto L15
        La:
            r2 = move-exception
            goto Le
        Lc:
            r2 = move-exception
            r1 = r0
        Le:
            java.lang.String r2 = r2.getMessage()
            com.netease.nis.basesdk.Logger.e(r2)
        L15:
            org.json.JSONObject r2 = new org.json.JSONObject
            r2.<init>()
            boolean r3 = r6.f54266m     // Catch: java.lang.Exception -> L68
            java.lang.String r4 = "accessToken"
            if (r3 == 0) goto L3a
            java.lang.String r3 = r6.f54262i     // Catch: java.lang.Exception -> L68
            r2.put(r4, r3)     // Catch: java.lang.Exception -> L68
            java.lang.String r3 = "version"
            java.lang.String r4 = "v2"
            r2.put(r3, r4)     // Catch: java.lang.Exception -> L68
            java.lang.String r3 = "md5"
            android.content.Context r4 = r6.getApplicationContext()     // Catch: java.lang.Exception -> L68
            java.lang.String r4 = com.sdk.Unicorn.base.api.ToolUtils.getAppMd5(r4)     // Catch: java.lang.Exception -> L68
            r2.put(r3, r4)     // Catch: java.lang.Exception -> L68
            goto L46
        L3a:
            java.lang.String r3 = r6.f54262i     // Catch: java.lang.Exception -> L68
            r2.put(r4, r3)     // Catch: java.lang.Exception -> L68
            java.lang.String r3 = "gwAuth"
            java.lang.String r4 = r6.f54264k     // Catch: java.lang.Exception -> L68
            r2.put(r3, r4)     // Catch: java.lang.Exception -> L68
        L46:
            com.netease.nis.quicklogin.listener.QuickLoginTokenListener r3 = com.netease.nis.quicklogin.ui.YDQuickLoginActivity.f54253n     // Catch: java.lang.Exception -> L68
            if (r3 == 0) goto L96
            java.lang.String r3 = "timeend"
            r4 = 0
            com.netease.nis.quicklogin.utils.e.a(r6, r3, r4)     // Catch: java.lang.Exception -> L68
            com.sdk.Unicorn.base.api.ToolUtils.clearCache(r6)     // Catch: java.lang.Exception -> L68
            com.netease.nis.quicklogin.listener.QuickLoginTokenListener r3 = com.netease.nis.quicklogin.ui.YDQuickLoginActivity.f54253n     // Catch: java.lang.Exception -> L68
            java.lang.String r4 = r6.f54265l     // Catch: java.lang.Exception -> L68
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L68
            java.lang.String r2 = com.netease.nis.quicklogin.utils.a.a(r2)     // Catch: java.lang.Exception -> L68
            java.lang.String r0 = r6.a(r2, r1, r0)     // Catch: java.lang.Exception -> L68
            r3.onGetTokenSuccess(r4, r0)     // Catch: java.lang.Exception -> L68
            goto L96
        L68:
            r0 = move-exception
            java.lang.String r1 = r0.getMessage()
            com.netease.nis.basesdk.Logger.e(r1)
            com.netease.nis.quicklogin.listener.QuickLoginTokenListener r1 = com.netease.nis.quicklogin.ui.YDQuickLoginActivity.f54253n
            if (r1 == 0) goto L86
            java.lang.String r2 = r6.f54265l     // Catch: java.lang.Exception -> L7e
            java.lang.String r3 = r0.toString()     // Catch: java.lang.Exception -> L7e
            r1.onGetTokenError(r2, r3)     // Catch: java.lang.Exception -> L7e
            goto L86
        L7e:
            r1 = move-exception
            java.lang.String r1 = r1.getMessage()
            com.netease.nis.basesdk.Logger.e(r1)
        L86:
            java.lang.String r1 = r6.f54265l
            com.netease.nis.quicklogin.b.b r2 = com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION
            int r2 = r2.ordinal()
            java.lang.String r0 = r0.toString()
            r3 = 0
            r6.a(r1, r2, r3, r0)
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.nis.quicklogin.ui.YDQuickLoginActivity.b():void");
    }

    private void c() {
        this.f54259f = (RelativeLayout) findViewById(R.id.yd_rl_root);
        ImageView imageView = (ImageView) findViewById(R.id.yd_iv_navigation);
        this.f54254a = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        UnifyUiConfig unifyUiConfig = this.f54260g;
        if (unifyUiConfig != null && unifyUiConfig.getLoadingView() != null) {
            ViewGroup loadingView = this.f54260g.getLoadingView();
            this.f54258e = loadingView;
            loadingView.bringToFront();
            try {
                this.f54259f.addView(this.f54258e);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f54258e.setVisibility(8);
        } else {
            this.f54258e = (ViewGroup) findViewById(R.id.yd_rl_loading);
        }
        this.f54255b = (EditText) findViewById(R.id.yd_et_number);
        FastClickButton fastClickButton = (FastClickButton) findViewById(R.id.yd_btn_oauth);
        this.f54257d = (TextView) findViewById(R.id.yd_tv_privacy);
        if (fastClickButton != null) {
            fastClickButton.setOnClickListener(new b(fastClickButton));
        }
        this.f54256c = (CheckBox) findViewById(R.id.yd_cb_privacy);
    }

    public static void a(QuickLoginTokenListener quickLoginTokenListener) {
        f54253n = quickLoginTokenListener;
    }

    public void a(UnifyUiConfig unifyUiConfig) {
        this.f54260g = unifyUiConfig;
    }

    public void a(LoginListener loginListener) {
        this.f54261h = loginListener;
    }

    private void a(Intent intent) {
        TextView textView;
        if ("cu".equals(intent.getStringExtra("operatorType"))) {
            this.f54266m = true;
        }
        if (this.f54266m && (textView = (TextView) findViewById(R.id.yd_tv_brand)) != null) {
            textView.setText("中国联通提供认证服务");
        }
        String stringExtra = intent.getStringExtra("maskNumber");
        this.f54263j = stringExtra;
        EditText editText = this.f54255b;
        if (editText != null && stringExtra != null) {
            editText.setText(stringExtra);
        }
        this.f54262i = intent.getStringExtra("accessToken");
        this.f54264k = intent.getStringExtra("gwAuth");
        this.f54265l = intent.getStringExtra("ydToken");
    }

    private String a(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("accessToken", str);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("deviceId", str2);
            }
            jSONObject.put("phone", this.f54263j);
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("randomId", str3);
            }
            return (TextUtils.isEmpty(com.netease.nis.quicklogin.b.a.f54122a) || TextUtils.isEmpty(com.netease.nis.quicklogin.b.a.f54123b)) ? str : c.b(jSONObject.toString(), com.netease.nis.quicklogin.b.a.f54122a, com.netease.nis.quicklogin.b.a.f54123b);
        } catch (Exception e4) {
            Logger.e(e4.getMessage());
            return str;
        }
    }

    private void a(String str, int i2, int i4, String str2) {
        g.c().a(g.c.MONITOR_GET_TOKEN, i2, str, 1, i4, 0, str2, System.currentTimeMillis());
        g.c().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i4) {
        try {
            UnifyUiConfig unifyUiConfig = this.f54260g;
            if (unifyUiConfig == null || unifyUiConfig.getClickEventListener() == null) {
                return;
            }
            this.f54260g.getClickEventListener().onClick(i2, i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
