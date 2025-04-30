package com.xinzhu.overmind.client.frameworks.accounts;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorDescription;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.xinzhu.haunted.com.android.internal.a;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import com.xinzhu.overmind.server.am.f;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class ChooseTypeAndAccountActivity extends Activity implements AccountManagerCallback<Bundle> {
    public static final int A = 2;
    private static final String B = "pendingRequest";
    private static final String C = "existingAccounts";
    private static final String D = "selectedAccountName";
    private static final String E = "selectedAddAccount";
    private static final String F = "accountsList";
    private static final String G = "visibilityList";
    private static final int H = -1;
    private static final ComponentName I = ComponentName.unflattenFromString(Resources.getSystem().getString(a.c.e()));

    /* renamed from: p  reason: collision with root package name */
    private static final String f64015p = "AccountChooser";

    /* renamed from: q  reason: collision with root package name */
    public static final String f64016q = "allowableAccounts";

    /* renamed from: r  reason: collision with root package name */
    public static final String f64017r = "allowableAccountTypes";

    /* renamed from: s  reason: collision with root package name */
    public static final String f64018s = "addAccountOptions";

    /* renamed from: t  reason: collision with root package name */
    public static final String f64019t = "addAccountRequiredFeatures";

    /* renamed from: u  reason: collision with root package name */
    public static final String f64020u = "authTokenType";

    /* renamed from: v  reason: collision with root package name */
    public static final String f64021v = "selectedAccount";
    @Deprecated

    /* renamed from: w  reason: collision with root package name */
    public static final String f64022w = "alwaysPromptForAccount";

    /* renamed from: x  reason: collision with root package name */
    public static final String f64023x = "descriptionTextOverride";

    /* renamed from: y  reason: collision with root package name */
    public static final int f64024y = 0;

    /* renamed from: z  reason: collision with root package name */
    public static final int f64025z = 1;

    /* renamed from: a  reason: collision with root package name */
    private Set<Account> f64026a;

    /* renamed from: b  reason: collision with root package name */
    private Set<String> f64027b;

    /* renamed from: e  reason: collision with root package name */
    private String f64030e;

    /* renamed from: f  reason: collision with root package name */
    private LinkedHashMap<Account, Integer> f64031f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<Account> f64032g;

    /* renamed from: j  reason: collision with root package name */
    private int f64035j;

    /* renamed from: k  reason: collision with root package name */
    private Button f64036k;

    /* renamed from: l  reason: collision with root package name */
    private int f64037l;

    /* renamed from: m  reason: collision with root package name */
    private String f64038m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f64039n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f64040o;

    /* renamed from: c  reason: collision with root package name */
    private String f64028c = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f64029d = false;

    /* renamed from: h  reason: collision with root package name */
    private int f64033h = 0;

    /* renamed from: i  reason: collision with root package name */
    private Parcelable[] f64034i = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View v3, int position, long id) {
            ChooseTypeAndAccountActivity.this.f64035j = position;
            ChooseTypeAndAccountActivity.this.f64036k.setEnabled(true);
        }
    }

    private LinkedHashMap<Account, Integer> c(com.xinzhu.overmind.client.frameworks.accounts.a accountManager) {
        Set<String> set;
        Map accountsAndVisibilityForPackage = accountManager.getAccountsAndVisibilityForPackage(this.f64038m, null);
        Account[] accountsAsUser = accountManager.getAccountsAsUser(null, MindUserHandle.k(1000), null);
        LinkedHashMap<Account, Integer> linkedHashMap = new LinkedHashMap<>(accountsAndVisibilityForPackage.size());
        for (Account account : accountsAsUser) {
            Set<Account> set2 = this.f64026a;
            if ((set2 == null || set2.contains(account)) && (((set = this.f64027b) == null || set.contains(account.type)) && accountsAndVisibilityForPackage.get(account) != null)) {
                linkedHashMap.put(account, (Integer) accountsAndVisibilityForPackage.get(account));
            }
        }
        return linkedHashMap;
    }

    private Set<Account> d(final Intent intent) {
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(f64016q);
        if (parcelableArrayListExtra != null) {
            HashSet hashSet = new HashSet(parcelableArrayListExtra.size());
            Iterator it2 = parcelableArrayListExtra.iterator();
            while (it2.hasNext()) {
                hashSet.add((Account) ((Parcelable) it2.next()));
            }
            return hashSet;
        }
        return null;
    }

    private int e(ArrayList<Account> accounts, String selectedAccountName, boolean selectedAddNewAccount) {
        if (selectedAddNewAccount) {
            return accounts.size();
        }
        for (int i2 = 0; i2 < accounts.size(); i2++) {
            if (accounts.get(i2).name.equals(selectedAccountName)) {
                return i2;
            }
        }
        return -1;
    }

    private String[] f(ArrayList<Account> accounts) {
        String[] strArr = new String[accounts.size() + (!this.f64039n ? 1 : 0)];
        for (int i2 = 0; i2 < accounts.size(); i2++) {
            strArr[i2] = accounts.get(i2).name;
        }
        if (!this.f64039n) {
            strArr[accounts.size()] = getResources().getString(a.c.d());
        }
        return strArr;
    }

    private Set<String> g(final Intent intent) {
        String[] stringArrayExtra = intent.getStringArrayExtra(f64017r);
        AuthenticatorDescription[] authenticatorTypes = AccountManager.get(this).getAuthenticatorTypes();
        HashSet hashSet = new HashSet(authenticatorTypes.length);
        for (AuthenticatorDescription authenticatorDescription : authenticatorTypes) {
            hashSet.add(authenticatorDescription.type);
        }
        if (stringArrayExtra != null) {
            HashSet hashSet2 = new HashSet(Arrays.asList(stringArrayExtra));
            hashSet2.retainAll(hashSet);
            return hashSet2;
        }
        return hashSet;
    }

    public static boolean h(Intent intent) {
        return I.equals(intent.getComponent());
    }

    private void i(Account account) {
        StringBuilder sb = new StringBuilder();
        sb.append("selected account ");
        sb.append(account);
        n(account.name, account.type);
    }

    private void j(String descriptionOverride) {
        TextView textView = (TextView) findViewById(a.C0389a.r());
        if (!TextUtils.isEmpty(descriptionOverride)) {
            textView.setText(descriptionOverride);
        } else {
            textView.setVisibility(8);
        }
    }

    private final void k(String[] listItems) {
        ListView listView = (ListView) findViewById(16908298);
        listView.setAdapter((ListAdapter) new ArrayAdapter(this, 17367055, listItems));
        listView.setChoiceMode(1);
        listView.setItemsCanFocus(false);
        listView.setOnItemClickListener(new a());
        int i2 = this.f64035j;
        if (i2 != -1) {
            listView.setItemChecked(i2, true);
            if (Log.isLoggable(f64015p, 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("List item ");
                sb.append(this.f64035j);
                sb.append(" should be selected");
            }
        }
    }

    private void m(Bundle savedInstanceState) {
        setTheme(a.d.b());
        super.onCreate(savedInstanceState);
    }

    private void n(final String accountName, final String accountType) {
        Account account = new Account(accountName, accountType);
        Integer valueOf = Integer.valueOf(MindAccountManagerService.get().getAccountVisibility(account, this.f64038m));
        if (valueOf != null && valueOf.intValue() == 4) {
            MindAccountManagerService.get().setAccountVisibility(account, this.f64038m, 2);
        }
        if (valueOf != null && valueOf.intValue() == 3) {
            setResult(0);
            finish();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("authAccount", accountName);
        bundle.putString("accountType", accountType);
        setResult(-1, new Intent().putExtras(bundle));
        if (Log.isLoggable(f64015p, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("ChooseTypeAndAccountActivity.setResultAndFinish: selected account ");
            sb.append(accountName);
            sb.append(", ");
            sb.append(accountType);
        }
        finish();
    }

    private void o() {
        Log.isLoggable(f64015p, 2);
        Intent intent = new Intent(this, ChooseAccountTypeActivity.class);
        intent.setFlags(524288);
        intent.putExtra(f64017r, getIntent().getStringArrayExtra(f64017r));
        intent.putExtra(f64018s, getIntent().getBundleExtra(f64018s));
        intent.putExtra(f64019t, getIntent().getStringArrayExtra(f64019t));
        intent.putExtra("authTokenType", getIntent().getStringExtra("authTokenType"));
        startActivityForResult(intent, 1);
        this.f64033h = 1;
    }

    protected void l(String type) {
        if (Log.isLoggable(f64015p, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("runAddAccountForAuthenticator: ");
            sb.append(type);
        }
        Bundle bundleExtra = getIntent().getBundleExtra(f64018s);
        String[] stringArrayExtra = getIntent().getStringArrayExtra(f64019t);
        AccountManager.get(this).addAccount(type, getIntent().getStringExtra("authTokenType"), stringArrayExtra, bundleExtra, null, this, null);
    }

    @Override // android.app.Activity
    protected void onActivityResult(final int requestCode, final int resultCode, final Intent data) {
        String str;
        String stringExtra;
        String str2 = null;
        if (Log.isLoggable(f64015p, 2)) {
            if (data != null && data.getExtras() != null) {
                data.getExtras().keySet();
            }
            Bundle extras = data != null ? data.getExtras() : null;
            StringBuilder sb = new StringBuilder();
            sb.append("ChooseTypeAndAccountActivity.onActivityResult(reqCode=");
            sb.append(requestCode);
            sb.append(", resCode=");
            sb.append(resultCode);
            sb.append(", extras=");
            sb.append(extras);
            sb.append(")");
        }
        this.f64033h = 0;
        if (resultCode == 0) {
            if (this.f64032g.isEmpty()) {
                setResult(0);
                finish();
                return;
            }
            return;
        }
        if (resultCode == -1) {
            if (requestCode == 1) {
                if (data != null && (stringExtra = data.getStringExtra("accountType")) != null) {
                    l(stringExtra);
                    return;
                }
            } else if (requestCode == 2) {
                if (data != null) {
                    str2 = data.getStringExtra("authAccount");
                    str = data.getStringExtra("accountType");
                } else {
                    str = null;
                }
                if (str2 == null || str == null) {
                    MindAccountManagerService mindAccountManagerService = MindAccountManagerService.get();
                    String str3 = this.f64038m;
                    Account[] accountsForPackage = mindAccountManagerService.getAccountsForPackage(str3, this.f64037l, str3);
                    HashSet hashSet = new HashSet();
                    for (Parcelable parcelable : this.f64034i) {
                        hashSet.add((Account) parcelable);
                    }
                    int length = accountsForPackage.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        }
                        Account account = accountsForPackage[i2];
                        if (!hashSet.contains(account)) {
                            str2 = account.name;
                            str = account.type;
                            break;
                        }
                        i2++;
                    }
                }
                if (str2 != null || str != null) {
                    n(str2, str);
                    return;
                }
            }
        }
        Log.isLoggable(f64015p, 2);
        setResult(0);
        finish();
    }

    public void onCancelButtonClicked(View view) {
        onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        if (Log.isLoggable(f64015p, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("ChooseTypeAndAccountActivity.onCreate(savedInstanceState=");
            sb.append(savedInstanceState);
            sb.append(")");
        }
        try {
            IBinder g4 = new com.xinzhu.haunted.android.app.a(this).g();
            this.f64037l = f.get().getLaunchedFromUid(g4);
            String launchedFromPackage = f.get().getLaunchedFromPackage(g4);
            this.f64038m = launchedFromPackage;
            if (this.f64037l != 0 && launchedFromPackage != null) {
                this.f64039n = false;
            }
        } catch (RemoteException e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to get caller identity \n");
            sb2.append(e4);
        }
        Intent intent = getIntent();
        this.f64026a = d(intent);
        this.f64027b = g(intent);
        this.f64030e = intent.getStringExtra(f64023x);
        if (savedInstanceState != null) {
            this.f64033h = savedInstanceState.getInt(B);
            this.f64034i = savedInstanceState.getParcelableArray(C);
            this.f64028c = savedInstanceState.getString(D);
            this.f64029d = savedInstanceState.getBoolean(E, false);
            Parcelable[] parcelableArray = savedInstanceState.getParcelableArray(F);
            ArrayList<Integer> integerArrayList = savedInstanceState.getIntegerArrayList(G);
            this.f64031f = new LinkedHashMap<>();
            for (int i2 = 0; i2 < parcelableArray.length; i2++) {
                this.f64031f.put((Account) parcelableArray[i2], integerArrayList.get(i2));
            }
        } else {
            this.f64033h = 0;
            this.f64034i = null;
            Account account = (Account) intent.getParcelableExtra(f64021v);
            if (account != null) {
                this.f64028c = account.name;
            }
            this.f64031f = c(com.xinzhu.overmind.client.frameworks.accounts.a.get());
        }
        if (Log.isLoggable(f64015p, 2)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("selected account name is ");
            sb3.append(this.f64028c);
        }
        this.f64032g = new ArrayList<>(this.f64031f.size());
        for (Map.Entry<Account, Integer> entry : this.f64031f.entrySet()) {
            if (3 != entry.getValue().intValue()) {
                this.f64032g.add(entry.getKey());
            }
        }
        if (this.f64032g.isEmpty() && this.f64039n) {
            requestWindowFeature(1);
            setContentView(a.b.h());
            this.f64040o = true;
        }
        if (this.f64040o) {
            super.onCreate(savedInstanceState);
            return;
        }
        if (this.f64033h == 0 && this.f64032g.isEmpty()) {
            m(savedInstanceState);
            if (this.f64027b.size() == 1) {
                l(this.f64027b.iterator().next());
            } else {
                o();
            }
        }
        String[] f4 = f(this.f64032g);
        this.f64035j = e(this.f64032g, this.f64028c, this.f64029d);
        super.onCreate(savedInstanceState);
        setContentView(a.b.l());
        j(this.f64030e);
        k(f4);
        Button button = (Button) findViewById(16908314);
        this.f64036k = button;
        button.setEnabled(this.f64035j != -1);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        Log.isLoggable(f64015p, 2);
        super.onDestroy();
    }

    public void onOkButtonClicked(View view) {
        if (this.f64035j == this.f64032g.size()) {
            o();
            return;
        }
        int i2 = this.f64035j;
        if (i2 != -1) {
            i(this.f64032g.get(i2));
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(final Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putInt(B, this.f64033h);
        if (this.f64033h == 2) {
            outState.putParcelableArray(C, this.f64034i);
        }
        int i2 = this.f64035j;
        int i4 = 0;
        if (i2 != -1) {
            if (i2 == this.f64032g.size()) {
                outState.putBoolean(E, true);
            } else {
                outState.putBoolean(E, false);
                outState.putString(D, this.f64032g.get(this.f64035j).name);
            }
        }
        Parcelable[] parcelableArr = new Parcelable[this.f64031f.size()];
        ArrayList<Integer> arrayList = new ArrayList<>(this.f64031f.size());
        for (Map.Entry<Account, Integer> entry : this.f64031f.entrySet()) {
            parcelableArr[i4] = entry.getKey();
            arrayList.add(entry.getValue());
            i4++;
        }
        outState.putParcelableArray(F, parcelableArr);
        outState.putIntegerArrayList(G, arrayList);
    }

    @Override // android.accounts.AccountManagerCallback
    public void run(final AccountManagerFuture<Bundle> accountManagerFuture) {
        try {
            Intent intent = (Intent) accountManagerFuture.getResult().getParcelable("intent");
            if (intent != null) {
                this.f64033h = 2;
                MindAccountManagerService mindAccountManagerService = MindAccountManagerService.get();
                String str = this.f64038m;
                this.f64034i = mindAccountManagerService.getAccountsForPackage(str, this.f64037l, str);
                intent.setFlags(intent.getFlags() & (-268435457));
                startActivityForResult(intent, 2);
                return;
            }
        } catch (AuthenticatorException | IOException unused) {
        } catch (OperationCanceledException unused2) {
            setResult(0);
            finish();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("errorMessage", "error communicating with server");
        setResult(-1, new Intent().putExtras(bundle));
        finish();
    }
}
