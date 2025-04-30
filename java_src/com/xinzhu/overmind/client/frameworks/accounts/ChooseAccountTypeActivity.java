package com.xinzhu.overmind.client.frameworks.accounts;

import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes3.dex */
public class ChooseAccountTypeActivity extends Activity {

    /* renamed from: c  reason: collision with root package name */
    private static final String f64004c = "AccountChooser";

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, c> f64005a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<c> f64006b;

    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View v3, int position, long id) {
            ChooseAccountTypeActivity chooseAccountTypeActivity = ChooseAccountTypeActivity.this;
            chooseAccountTypeActivity.d(((c) chooseAccountTypeActivity.f64006b.get(position)).f64010a.type);
        }
    }

    /* loaded from: classes3.dex */
    private static class b extends ArrayAdapter<c> {

        /* renamed from: a  reason: collision with root package name */
        private LayoutInflater f64008a;

        /* renamed from: b  reason: collision with root package name */
        private ArrayList<c> f64009b;

        public b(Context context, int textViewResourceId, ArrayList<c> infos) {
            super(context, textViewResourceId, infos);
            this.f64009b = infos;
            this.f64008a = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            d dVar;
            if (convertView == null) {
                convertView = this.f64008a.inflate(a.b.j(), (ViewGroup) null);
                dVar = new d(null);
                dVar.f64014b = (TextView) convertView.findViewById(a.C0389a.m());
                dVar.f64013a = (ImageView) convertView.findViewById(a.C0389a.l());
                convertView.setTag(dVar);
            } else {
                dVar = (d) convertView.getTag();
            }
            dVar.f64014b.setText(this.f64009b.get(position).f64011b);
            dVar.f64013a.setImageDrawable(this.f64009b.get(position).f64012c);
            return convertView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final AuthenticatorDescription f64010a;

        /* renamed from: b  reason: collision with root package name */
        final String f64011b;

        /* renamed from: c  reason: collision with root package name */
        final Drawable f64012c;

        c(AuthenticatorDescription desc, String name, Drawable drawable) {
            this.f64010a = desc;
            this.f64011b = name;
            this.f64012c = drawable;
        }
    }

    /* loaded from: classes3.dex */
    private static class d {

        /* renamed from: a  reason: collision with root package name */
        ImageView f64013a;

        /* renamed from: b  reason: collision with root package name */
        TextView f64014b;

        private d() {
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    private void c() {
        AuthenticatorDescription[] authenticatorTypes;
        Drawable drawable;
        String str;
        Context createPackageContext;
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            try {
                createPackageContext = createPackageContext(authenticatorDescription.packageName, 0);
                drawable = createPackageContext.getDrawable(authenticatorDescription.iconId);
            } catch (PackageManager.NameNotFoundException unused) {
                drawable = null;
            } catch (Resources.NotFoundException unused2) {
                drawable = null;
            }
            try {
                CharSequence text = createPackageContext.getResources().getText(authenticatorDescription.labelId);
                if (text != null) {
                    text.toString();
                }
                str = text.toString();
            } catch (PackageManager.NameNotFoundException unused3) {
                if (Log.isLoggable(f64004c, 5)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("No icon name for account type ");
                    sb.append(authenticatorDescription.type);
                }
                str = null;
                this.f64005a.put(authenticatorDescription.type, new c(authenticatorDescription, str, drawable));
            } catch (Resources.NotFoundException unused4) {
                if (Log.isLoggable(f64004c, 5)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("No icon resource for account type ");
                    sb2.append(authenticatorDescription.type);
                }
                str = null;
                this.f64005a.put(authenticatorDescription.type, new c(authenticatorDescription, str, drawable));
            }
            this.f64005a.put(authenticatorDescription.type, new c(authenticatorDescription, str, drawable));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final String type) {
        Bundle bundle = new Bundle();
        bundle.putString("accountType", type);
        setResult(-1, new Intent().putExtras(bundle));
        if (Log.isLoggable(f64004c, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("ChooseAccountTypeActivity.setResultAndFinish: selected account type ");
            sb.append(type);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Log.isLoggable(f64004c, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("ChooseAccountTypeActivity.onCreate(savedInstanceState=");
            sb.append(savedInstanceState);
            sb.append(")");
        }
        HashSet hashSet = null;
        String[] stringArrayExtra = getIntent().getStringArrayExtra(ChooseTypeAndAccountActivity.f64017r);
        if (stringArrayExtra != null) {
            hashSet = new HashSet(stringArrayExtra.length);
            for (String str : stringArrayExtra) {
                hashSet.add(str);
            }
        }
        c();
        this.f64006b = new ArrayList<>(this.f64005a.size());
        for (Map.Entry<String, c> entry : this.f64005a.entrySet()) {
            String key = entry.getKey();
            c value = entry.getValue();
            if (hashSet == null || hashSet.contains(key)) {
                this.f64006b.add(value);
            }
        }
        if (this.f64006b.isEmpty()) {
            Bundle bundle = new Bundle();
            bundle.putString("errorMessage", "no allowable account types");
            setResult(-1, new Intent().putExtras(bundle));
            finish();
        } else if (this.f64006b.size() == 1) {
            d(this.f64006b.get(0).f64010a.type);
        } else {
            setContentView(a.b.k());
            ListView listView = (ListView) findViewById(16908298);
            listView.setAdapter((ListAdapter) new b(this, 17367043, this.f64006b));
            listView.setChoiceMode(0);
            listView.setTextFilterEnabled(false);
            listView.setOnItemClickListener(new a());
        }
    }
}
