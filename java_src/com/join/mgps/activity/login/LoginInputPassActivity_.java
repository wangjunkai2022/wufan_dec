package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.pref.PrefDef_;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class LoginInputPassActivity_ extends LoginInputPassActivity implements a, i3.a, b {
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String IS_SET_PWD_EXTRA = "isSetPwd";
    public static final String PHONE_NUMBER_EXTRA = "phoneNumber";
    public static final String THIRD_REQUESTBEAN_EXTRA = "thirdRequestbean";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, LoginInputPassActivity_.class);
        }

        public IntentBuilder_ from(int i2) {
            return (IntentBuilder_) super.extra("from", i2);
        }

        public IntentBuilder_ gameId(String str) {
            return (IntentBuilder_) super.extra("gameId", str);
        }

        public IntentBuilder_ isSetPwd(boolean z3) {
            return (IntentBuilder_) super.extra(LoginInputPassActivity_.IS_SET_PWD_EXTRA, z3);
        }

        public IntentBuilder_ phoneNumber(String str) {
            return (IntentBuilder_) super.extra(LoginInputPassActivity_.PHONE_NUMBER_EXTRA, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public f startForResult(int i2) {
            Fragment fragment = this.fragmentSupport_;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new f(this.context);
        }

        public IntentBuilder_ thirdRequestbean(AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean) {
            return (IntentBuilder_) super.extra("thirdRequestbean", accountRegisterThirdwaiRequestBean);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), LoginInputPassActivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle bundle) {
        this.prefDef = new PrefDef_(this);
        c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
            if (extras.containsKey(PHONE_NUMBER_EXTRA)) {
                this.phoneNumber = extras.getString(PHONE_NUMBER_EXTRA);
            }
            if (extras.containsKey("thirdRequestbean")) {
                this.thirdRequestbean = (AccountRegisterThirdwaiRequestBean) extras.getSerializable("thirdRequestbean");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey(IS_SET_PWD_EXTRA)) {
                this.isSetPwd = extras.getBoolean(IS_SET_PWD_EXTRA);
            }
        }
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void bindCode() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.17
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.bindCode();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void error(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.error(str);
            }
        }, 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void getLogin(final String str, final String str2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.14
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.getLogin(str, str2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void joinDevice() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.15
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.joinDevice();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void loginSuccess(final AccountBean accountBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.loginSuccess(accountBean);
            }
        }, 0L);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
        setContentView(R.layout.wufunlogin_inputpass_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.titleMessage = (TextView) aVar.internalFindViewById(R.id.titleMessage);
        this.codeLayout = (RelativeLayout) aVar.internalFindViewById(R.id.codeLayout);
        this.passLayout = (RelativeLayout) aVar.internalFindViewById(R.id.passLayout);
        this.inputCode = (EditText) aVar.internalFindViewById(R.id.inputCode);
        this.inputPass = (EditText) aVar.internalFindViewById(R.id.inputPass);
        this.getCode = (TextView) aVar.internalFindViewById(R.id.getCode);
        this.clear = (ImageView) aVar.internalFindViewById(R.id.clear);
        this.sendLogin = (TextView) aVar.internalFindViewById(R.id.sendLogin);
        this.fergetPass = (TextView) aVar.internalFindViewById(R.id.fergetPass);
        this.bindmessage = (TextView) aVar.internalFindViewById(R.id.bindmessage);
        this.loginMessage = (TextView) aVar.internalFindViewById(R.id.loginMessage);
        this.permissLayout = aVar.internalFindViewById(R.id.permissLayout);
        this.seePass = (CheckBox) aVar.internalFindViewById(R.id.seePass);
        View internalFindViewById = aVar.internalFindViewById(R.id.shengming);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.xieyi);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.back);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.shengming();
                }
            });
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.xieyi();
                }
            });
        }
        ImageView imageView = this.clear;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.clear();
                }
            });
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.back();
                }
            });
        }
        TextView textView = this.getCode;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.getCode();
                }
            });
        }
        TextView textView2 = this.fergetPass;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.fergetPass();
                }
            });
        }
        TextView textView3 = this.sendLogin;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.sendLogin();
                }
            });
        }
        afterview();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void phoneRegin() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.18
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.phoneRegin();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void resendgetCode(final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.16
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.resendgetCode(i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void resetPass(final String str, final String str2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.20
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.resetPass(str, str2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void showKeyborad(final EditText editText) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.showKeyborad(editText);
            }
        }, 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.showLoding();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.12
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.showLodingDismis();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void success() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.success();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void thirdRegin() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.19
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.thirdRegin();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static IntentBuilder_ intent(Fragment fragment) {
        return new IntentBuilder_(fragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
