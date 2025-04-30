package com.xinzhu.overmind.client.frameworks.accounts;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.xinzhu.haunted.com.android.internal.a;
import com.xinzhu.overmind.server.accounts.AccountManagerResponse;
import com.xinzhu.overmind.server.am.f;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class ChooseAccountActivity extends Activity {

    /* renamed from: g  reason: collision with root package name */
    private static final String f63990g = "AccountManager";

    /* renamed from: c  reason: collision with root package name */
    private Bundle f63993c;

    /* renamed from: d  reason: collision with root package name */
    private int f63994d;

    /* renamed from: e  reason: collision with root package name */
    private String f63995e;

    /* renamed from: a  reason: collision with root package name */
    private Parcelable[] f63991a = null;

    /* renamed from: b  reason: collision with root package name */
    private AccountManagerResponse f63992b = null;

    /* renamed from: f  reason: collision with root package name */
    private HashMap<String, AuthenticatorDescription> f63996f = new HashMap<>();

    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View v3, int position, long id) {
            ChooseAccountActivity.this.c((ListView) parent, v3, position, id);
        }
    }

    /* loaded from: classes3.dex */
    private static class b extends ArrayAdapter<c> {

        /* renamed from: a  reason: collision with root package name */
        private LayoutInflater f63998a;

        /* renamed from: b  reason: collision with root package name */
        private c[] f63999b;

        public b(Context context, int textViewResourceId, c[] infos) {
            super(context, textViewResourceId, infos);
            this.f63999b = infos;
            this.f63998a = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            d dVar;
            if (convertView == null) {
                convertView = this.f63998a.inflate(a.b.j(), (ViewGroup) null);
                dVar = new d(null);
                dVar.f64003b = (TextView) convertView.findViewById(a.C0389a.m());
                dVar.f64002a = (ImageView) convertView.findViewById(a.C0389a.l());
                convertView.setTag(dVar);
            } else {
                dVar = (d) convertView.getTag();
            }
            dVar.f64003b.setText(this.f63999b[position].f64000a);
            dVar.f64002a.setImageDrawable(this.f63999b[position].f64001b);
            return convertView;
        }
    }

    /* loaded from: classes3.dex */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        final String f64000a;

        /* renamed from: b  reason: collision with root package name */
        final Drawable f64001b;

        c(String name, Drawable drawable) {
            this.f64000a = name;
            this.f64001b = drawable;
        }
    }

    /* loaded from: classes3.dex */
    private static class d {

        /* renamed from: a  reason: collision with root package name */
        ImageView f64002a;

        /* renamed from: b  reason: collision with root package name */
        TextView f64003b;

        private d() {
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    private void a() {
        AuthenticatorDescription[] authenticatorTypes;
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            this.f63996f.put(authenticatorDescription.type, authenticatorDescription);
        }
    }

    private Drawable b(String accountType) {
        if (this.f63996f.containsKey(accountType)) {
            try {
                AuthenticatorDescription authenticatorDescription = this.f63996f.get(accountType);
                return createPackageContext(authenticatorDescription.packageName, 0).getDrawable(authenticatorDescription.iconId);
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable(f63990g, 5)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("No icon name for account type ");
                    sb.append(accountType);
                }
            } catch (Resources.NotFoundException unused2) {
                if (Log.isLoggable(f63990g, 5)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("No icon resource for account type ");
                    sb2.append(accountType);
                }
            }
        }
        return null;
    }

    protected void c(ListView l4, View v3, int position, long id) {
        Account account = (Account) this.f63991a[position];
        com.xinzhu.overmind.client.frameworks.accounts.a aVar = com.xinzhu.overmind.client.frameworks.accounts.a.get();
        Integer valueOf = Integer.valueOf(aVar.getAccountVisibility(account, this.f63995e));
        if (valueOf != null && valueOf.intValue() == 4) {
            aVar.setAccountVisibility(account, this.f63995e, 2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("selected account ");
        sb.append(account);
        Bundle bundle = new Bundle();
        bundle.putString("authAccount", account.name);
        bundle.putString("accountType", account.type);
        this.f63993c = bundle;
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        AccountManagerResponse accountManagerResponse = this.f63992b;
        if (accountManagerResponse != null) {
            Bundle bundle = this.f63993c;
            if (bundle != null) {
                accountManagerResponse.b(bundle);
            } else {
                accountManagerResponse.a(4, "canceled");
            }
        }
        super.finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.f63991a = getIntent().getParcelableArrayExtra("accounts");
        this.f63992b = (AccountManagerResponse) getIntent().getParcelableExtra("accountManagerResponse");
        int i2 = 0;
        if (this.f63991a == null) {
            setResult(0);
            finish();
            return;
        }
        try {
            IBinder g4 = new com.xinzhu.haunted.android.app.a(this).g();
            this.f63994d = f.get().getLaunchedFromUid(g4);
            this.f63995e = f.get().getLaunchedFromPackage(g4);
        } catch (RemoteException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to get caller identity \n");
            sb.append(e4);
        }
        if (MindUserHandle.p(this.f63994d, 1000) && getIntent().getStringExtra("androidPackageName") != null) {
            this.f63995e = getIntent().getStringExtra("androidPackageName");
        }
        if (!MindUserHandle.p(this.f63994d, 1000) && getIntent().getStringExtra("androidPackageName") != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Non-system Uid: ");
            sb2.append(this.f63994d);
            sb2.append(" tried to override packageName \n");
        }
        a();
        c[] cVarArr = new c[this.f63991a.length];
        while (true) {
            Parcelable[] parcelableArr = this.f63991a;
            if (i2 < parcelableArr.length) {
                cVarArr[i2] = new c(((Account) parcelableArr[i2]).name, b(((Account) parcelableArr[i2]).type));
                i2++;
            } else {
                setContentView(a.b.i());
                ListView listView = (ListView) findViewById(16908298);
                listView.setAdapter((ListAdapter) new b(this, 17367043, cVarArr));
                listView.setChoiceMode(1);
                listView.setTextFilterEnabled(true);
                listView.setOnItemClickListener(new a());
                return;
            }
        }
    }
}
