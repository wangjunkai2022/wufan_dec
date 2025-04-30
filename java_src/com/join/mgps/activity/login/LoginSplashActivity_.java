package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.pref.PrefDef_;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class LoginSplashActivity_ extends LoginSplashActivity implements a, i3.a, b {
    public static final String GAME_ID_EXTRA = "gameId";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, LoginSplashActivity_.class);
        }

        public IntentBuilder_ gameId(String str) {
            return (IntentBuilder_) super.extra("gameId", str);
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

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), LoginSplashActivity_.class);
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
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.gameId = extras.getString("gameId");
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void error(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                LoginSplashActivity_.super.error(str);
            }
        }, 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void joinDevice() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginSplashActivity_.6
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginSplashActivity_.super.joinDevice();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void loginSuccess(final AccountBean accountBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                LoginSplashActivity_.super.loginSuccess(accountBean);
            }
        }, 0L);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
        setContentView(R.layout.wufunlogin_splash_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.close = aVar.internalFindViewById(R.id.close);
        this.login = aVar.internalFindViewById(R.id.login);
        View view = this.close;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LoginSplashActivity_.this.close();
                }
            });
        }
        View view2 = this.login;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    LoginSplashActivity_.this.login();
                }
            });
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
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
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void toLogin(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                LoginSplashActivity_.super.toLogin(str);
            }
        }, 0L);
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
