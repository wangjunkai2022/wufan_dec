package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3.dex */
public class LoginDialog extends Dialog {

    /* renamed from: h  reason: collision with root package name */
    public static final int f47460h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f47461i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f47462j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f47463k = 4;

    /* renamed from: a  reason: collision with root package name */
    private View f47464a;

    /* renamed from: b  reason: collision with root package name */
    private View f47465b;

    /* renamed from: c  reason: collision with root package name */
    private View f47466c;

    /* renamed from: d  reason: collision with root package name */
    private int f47467d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f47468e;

    /* renamed from: f  reason: collision with root package name */
    private d f47469f;

    /* renamed from: g  reason: collision with root package name */
    private c f47470g;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface StyleType {
    }

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (LoginDialog.this.f47470g != null) {
                LoginDialog.this.f47470g.a(LoginDialog.this, 0);
            } else {
                LoginDialog.this.dismiss();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (LoginDialog.this.f47469f != null) {
                LoginDialog.this.f47469f.a(LoginDialog.this, 1);
                return;
            }
            LoginDialog.this.dismiss();
            IntentUtil.getInstance().goMyAccountLoginActivity(view.getContext());
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(LoginDialog loginDialog, int i2);
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(LoginDialog loginDialog, int i2);
    }

    public LoginDialog(@NonNull Context context) {
        super(context, R.style.PapaTheme_Dialog);
        this.f47467d = 1;
        this.f47468e = false;
    }

    public static LoginDialog e(@NonNull Context context) {
        return new LoginDialog(context);
    }

    public LoginDialog c(boolean z3) {
        this.f47468e = z3;
        return this;
    }

    public LoginDialog d(c cVar) {
        this.f47470g = cVar;
        return this;
    }

    public LoginDialog f(d dVar) {
        this.f47469f = dVar;
        return this;
    }

    public LoginDialog g(int i2) {
        this.f47467d = i2;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(this.f47468e);
        setContentView(R.layout.mg_dialog_login);
        this.f47464a = findViewById(R.id.main);
        this.f47465b = findViewById(R.id.vOK);
        this.f47466c = findViewById(R.id.vCancel);
        int i2 = this.f47467d;
        if (i2 == 1) {
            this.f47464a.setBackgroundResource(R.drawable.bg_login_normal);
        } else if (i2 == 2) {
            this.f47464a.setBackgroundResource(R.drawable.bg_login_battle);
        } else if (i2 == 3) {
            this.f47464a.setBackgroundResource(R.drawable.bg_login_interactive);
        } else if (i2 == 4) {
            this.f47464a.setBackgroundResource(R.drawable.bg_login_net_game);
        }
        this.f47466c.setOnClickListener(new a());
        this.f47465b.setOnClickListener(new b());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0 && this.f47468e) {
            dismiss();
        }
        return super.onKeyDown(i2, keyEvent);
    }
}
