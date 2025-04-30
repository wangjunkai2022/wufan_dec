package com.xinzhu.overmind.client.frameworks.accounts;

import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorDescription;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xinzhu.haunted.android.accounts.c;
import com.xinzhu.haunted.com.android.internal.a;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import java.io.IOException;
/* loaded from: classes3.dex */
public class GrantCredentialsPermissionActivity extends Activity implements View.OnClickListener {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64042f = "account";

    /* renamed from: g  reason: collision with root package name */
    public static final String f64043g = "authTokenType";

    /* renamed from: h  reason: collision with root package name */
    public static final String f64044h = "response";

    /* renamed from: i  reason: collision with root package name */
    public static final String f64045i = "uid";

    /* renamed from: a  reason: collision with root package name */
    private Account f64046a;

    /* renamed from: b  reason: collision with root package name */
    private String f64047b;

    /* renamed from: c  reason: collision with root package name */
    private int f64048c;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f64049d = null;

    /* renamed from: e  reason: collision with root package name */
    protected LayoutInflater f64050e;

    /* loaded from: classes3.dex */
    class a implements AccountManagerCallback<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f64051a;

        /* renamed from: com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0401a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f64053a;

            RunnableC0401a(final String val$authTokenLabel) {
                this.f64053a = val$authTokenLabel;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (GrantCredentialsPermissionActivity.this.isFinishing()) {
                    return;
                }
                a.this.f64051a.setText(this.f64053a);
                a.this.f64051a.setVisibility(0);
            }
        }

        a(final TextView val$authTokenTypeView) {
            this.f64051a = val$authTokenTypeView;
        }

        @Override // android.accounts.AccountManagerCallback
        public void run(AccountManagerFuture<String> future) {
            try {
                String result = future.getResult();
                if (TextUtils.isEmpty(result)) {
                    return;
                }
                GrantCredentialsPermissionActivity.this.runOnUiThread(new RunnableC0401a(result));
            } catch (AuthenticatorException | OperationCanceledException | IOException unused) {
            }
        }
    }

    private String a(Account account) {
        AuthenticatorDescription[] authenticatorTypes;
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            if (authenticatorDescription.type.equals(account.type)) {
                try {
                    return createPackageContext(authenticatorDescription.packageName, 0).getString(authenticatorDescription.labelId);
                } catch (PackageManager.NameNotFoundException unused) {
                    return account.type;
                } catch (Resources.NotFoundException unused2) {
                    return account.type;
                }
            }
        }
        return account.type;
    }

    private View b(String packageLabel) {
        View inflate = this.f64050e.inflate(a.b.n(), (ViewGroup) null);
        ((TextView) inflate.findViewById(a.C0389a.s())).setText(packageLabel);
        return inflate;
    }

    public final void c(Bundle result) {
        this.f64049d = result;
    }

    @Override // android.app.Activity
    public void finish() {
        AccountAuthenticatorResponse accountAuthenticatorResponse = (AccountAuthenticatorResponse) getIntent().getParcelableExtra(f64044h);
        if (accountAuthenticatorResponse != null) {
            Bundle bundle = this.f64049d;
            if (bundle != null) {
                accountAuthenticatorResponse.onResult(bundle);
            } else {
                accountAuthenticatorResponse.onError(4, "canceled");
            }
        }
        super.finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v3) {
        if (v3.getId() == a.C0389a.o()) {
            MindAccountManagerService.get().updateAppPermission(this.f64046a, this.f64047b, this.f64048c, true);
            Intent intent = new Intent();
            intent.putExtra("retry", true);
            setResult(-1, intent);
            c(intent.getExtras());
        } else if (v3.getId() == a.C0389a.q()) {
            MindAccountManagerService.get().updateAppPermission(this.f64046a, this.f64047b, this.f64048c, false);
            setResult(0);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(a.b.m());
        setTitle(a.c.f());
        this.f64050e = (LayoutInflater) getSystemService("layout_inflater");
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            setResult(0);
            finish();
            return;
        }
        this.f64046a = (Account) extras.getParcelable(f64042f);
        this.f64047b = extras.getString("authTokenType");
        this.f64048c = extras.getInt("uid");
        PackageManager packageManager = getPackageManager();
        String[] packagesForUid = packageManager.getPackagesForUid(this.f64048c);
        Account account = this.f64046a;
        if (account != null && this.f64047b != null && packagesForUid != null) {
            try {
                String a4 = a(account);
                TextView textView = (TextView) findViewById(a.C0389a.p());
                textView.setVisibility(8);
                new c(AccountManager.get(this)).f(this.f64046a.type, this.f64047b, new a(textView), null);
                findViewById(a.C0389a.o()).setOnClickListener(this);
                findViewById(a.C0389a.q()).setOnClickListener(this);
                LinearLayout linearLayout = (LinearLayout) findViewById(a.C0389a.t());
                for (String str : packagesForUid) {
                    try {
                        str = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    linearLayout.addView(b(str));
                }
                ((TextView) findViewById(a.C0389a.k())).setText(this.f64046a.name);
                ((TextView) findViewById(a.C0389a.n())).setText(a4);
                return;
            } catch (IllegalArgumentException unused2) {
                setResult(0);
                finish();
                return;
            }
        }
        setResult(0);
        finish();
    }
}
