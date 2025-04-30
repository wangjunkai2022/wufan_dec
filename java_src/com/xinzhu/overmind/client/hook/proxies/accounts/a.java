package com.xinzhu.overmind.client.hook.proxies.accounts;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.IAccountManagerResponse;
import android.os.Bundle;
import android.os.IInterface;
import android.os.UserHandle;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.lang.reflect.Method;
import java.util.Map;
/* compiled from: AccountManagerStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64146f = "AccountManagerStub";

    /* renamed from: g  reason: collision with root package name */
    private static final com.xinzhu.overmind.client.frameworks.accounts.a f64147g = com.xinzhu.overmind.client.frameworks.accounts.a.get();

    /* compiled from: AccountManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.accounts.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0404a extends com.xinzhu.overmind.client.hook.g {
        C0404a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "accountAuthenticated";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Boolean.valueOf(a.f64147g.accountAuthenticated((Account) args[0]));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class a0 extends com.xinzhu.overmind.client.hook.g {
        a0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPreviousName";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getPreviousName((Account) args[0]);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class b extends com.xinzhu.overmind.client.hook.g {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "addAccount";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.addAccount((IAccountManagerResponse) args[0], (String) args[1], (String) args[2], (String[]) args[3], ((Boolean) args[4]).booleanValue(), (Bundle) args[5]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class b0 extends com.xinzhu.overmind.client.hook.g {
        b0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getSharedAccountsAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getSharedAccountsAsUser(((Integer) args[0]).intValue());
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class c extends com.xinzhu.overmind.client.hook.g {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "addAccountAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.addAccountAsUser((IAccountManagerResponse) args[0], (String) args[1], (String) args[2], (String[]) args[3], ((Boolean) args[4]).booleanValue(), (Bundle) args[5], ((Integer) args[6]).intValue());
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class c0 extends com.xinzhu.overmind.client.hook.g {
        c0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getUserData";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getUserData((Account) args[0], (String) args[1]);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class d extends com.xinzhu.overmind.client.hook.g {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "addAccountExplicitly";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Boolean.valueOf(a.f64147g.addAccountExplicitly((Account) args[0], (String) args[1], (Bundle) args[2]));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class d0 extends com.xinzhu.overmind.client.hook.g {
        d0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "hasAccountAccess";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Boolean.valueOf(a.f64147g.hasAccountAccess((Account) args[0], (String) args[1], (UserHandle) args[2]));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class e extends com.xinzhu.overmind.client.hook.g {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "addAccountExplicitlyWithVisibility";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Boolean.valueOf(a.f64147g.addAccountExplicitlyWithVisibility((Account) args[0], (String) args[1], (Bundle) args[2], (Map) args[3]));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class e0 extends com.xinzhu.overmind.client.hook.g {
        e0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "hasFeatures";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.hasFeatures((IAccountManagerResponse) args[0], (Account) args[1], (String[]) args[2], args.length >= 4 ? (String) args[3] : null);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class f extends com.xinzhu.overmind.client.hook.g {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "addSharedAccountAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int intValue = ((Integer) args[1]).intValue();
            return Boolean.valueOf(a.f64147g.addSharedAccountAsUser((Account) args[0], intValue));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class f0 extends com.xinzhu.overmind.client.hook.g {
        f0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "invalidateAuthToken";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.invalidateAuthToken((String) args[0], (String) args[1]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class g extends com.xinzhu.overmind.client.hook.g {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "addSharedAccountsFromParentUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.addSharedAccountsFromParentUser(((Integer) args[0]).intValue(), ((Integer) args[1]).intValue(), args.length >= 3 ? (String) args[2] : null);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class g0 extends com.xinzhu.overmind.client.hook.g {
        g0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "isCredentialsUpdateSuggested";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.isCredentialsUpdateSuggested((IAccountManagerResponse) args[0], (Account) args[1], (String) args[2]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class h extends com.xinzhu.overmind.client.hook.g {
        h() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "clearPassword";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.clearPassword((Account) args[0]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class h0 extends com.xinzhu.overmind.client.hook.g {
        h0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "onAccountAccessed";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.onAccountAccessed((String) args[0]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class i extends com.xinzhu.overmind.client.hook.g {
        i() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "confirmCredentialsAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.confirmCredentialsAsUser((IAccountManagerResponse) args[0], (Account) args[1], (Bundle) args[2], ((Boolean) args[3]).booleanValue(), ((Integer) args[4]).intValue());
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class i0 extends com.xinzhu.overmind.client.hook.g {
        i0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "peekAuthToken";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.peekAuthToken((Account) args[0], (String) args[1]);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class j extends com.xinzhu.overmind.client.hook.g {
        j() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "copyAccountToUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int intValue = ((Integer) args[2]).intValue();
            int intValue2 = ((Integer) args[3]).intValue();
            a.f64147g.copyAccountToUser((IAccountManagerResponse) args[0], (Account) args[1], intValue, intValue2);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class j0 extends com.xinzhu.overmind.client.hook.g {
        j0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "registerAccountListener";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.registerAccountListener((String[]) args[0], (String) args[1]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class k extends com.xinzhu.overmind.client.hook.g {
        k() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "createRequestAccountAccessIntentSenderAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.createRequestAccountAccessIntentSenderAsUser((Account) args[0], (String) args[1], (UserHandle) args[2]);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class k0 extends com.xinzhu.overmind.client.hook.g {
        k0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "removeAccount";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.removeAccountAsUser((IAccountManagerResponse) args[0], (Account) args[1], args.length >= 3 ? ((Boolean) args[2]).booleanValue() : false, com.xinzhu.overmind.client.e.getUserId());
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class l extends com.xinzhu.overmind.client.hook.g {
        l() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "editProperties";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            boolean booleanValue = ((Boolean) args[2]).booleanValue();
            a.f64147g.editProperties((IAccountManagerResponse) args[0], (String) args[1], booleanValue);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class l0 extends com.xinzhu.overmind.client.hook.g {
        l0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "removeAccountAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int i2;
            boolean z3 = false;
            IAccountManagerResponse iAccountManagerResponse = (IAccountManagerResponse) args[0];
            Account account = (Account) args[1];
            if (args.length == 3) {
                i2 = ((Integer) args[2]).intValue();
            } else if (args.length >= 4) {
                z3 = ((Boolean) args[2]).booleanValue();
                i2 = ((Integer) args[3]).intValue();
            } else {
                i2 = 0;
            }
            a.f64147g.removeAccountAsUser(iAccountManagerResponse, account, z3, i2);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class m extends com.xinzhu.overmind.client.hook.g {
        m() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "finishSessionAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.finishSessionAsUser((IAccountManagerResponse) args[0], (Bundle) args[1], ((Boolean) args[2]).booleanValue(), (Bundle) args[3], ((Integer) args[4]).intValue());
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class m0 extends com.xinzhu.overmind.client.hook.g {
        m0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "removeAccountExplicitly";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.removeAccountExplicitly((Account) args[0]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class n extends com.xinzhu.overmind.client.hook.g {
        n() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAccountByTypeAndFeatures";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.getAccountByTypeAndFeatures((IAccountManagerResponse) args[0], (String) args[1], (String[]) args[2], (String) args[3]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class n0 extends com.xinzhu.overmind.client.hook.g {
        n0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "removeSharedAccountAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int intValue = ((Integer) args[1]).intValue();
            return Boolean.valueOf(a.f64147g.removeSharedAccountAsUser((Account) args[0], intValue));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class o extends com.xinzhu.overmind.client.hook.g {
        o() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAccountVisibility";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Integer.valueOf(a.f64147g.getAccountVisibility((Account) args[0], (String) args[1]));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class o0 extends com.xinzhu.overmind.client.hook.g {
        o0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "renameAccount";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.renameAccount((IAccountManagerResponse) args[0], (Account) args[1], (String) args[2]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class p extends com.xinzhu.overmind.client.hook.g {
        p() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAccounts";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getAccountsAsUser((String) args[0], com.xinzhu.overmind.client.e.getUserId(), args.length >= 2 ? (String) args[1] : null);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class p0 extends com.xinzhu.overmind.client.hook.g {
        p0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "renameSharedAccountAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int intValue = ((Integer) args[2]).intValue();
            return Boolean.valueOf(a.f64147g.renameSharedAccountAsUser((Account) args[0], (String) args[1], intValue));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class q extends com.xinzhu.overmind.client.hook.g {
        q() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAccountsAndVisibilityForPackage";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getAccountsAndVisibilityForPackage((String) args[0], (String) args[1]);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class q0 extends com.xinzhu.overmind.client.hook.g {
        q0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setAccountVisibility";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int intValue = ((Integer) args[2]).intValue();
            return Boolean.valueOf(a.f64147g.setAccountVisibility((Account) args[0], (String) args[1], intValue));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class r extends com.xinzhu.overmind.client.hook.g {
        r() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAccountsAsUser";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getAccountsAsUser((String) args[0], ((Integer) args[1]).intValue(), args.length >= 3 ? (String) args[2] : null);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class r0 extends com.xinzhu.overmind.client.hook.g {
        r0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setAuthToken";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.setAuthToken((Account) args[0], (String) args[1], (String) args[2]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class s extends com.xinzhu.overmind.client.hook.g {
        s() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAccountsByFeatures";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.getAccountsByFeatures((IAccountManagerResponse) args[0], (String) args[1], (String[]) args[2], args.length >= 4 ? (String) args[3] : null);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class s0 extends com.xinzhu.overmind.client.hook.g {
        s0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setPassword";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.setPassword((Account) args[0], (String) args[1]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class t extends com.xinzhu.overmind.client.hook.g {
        t() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAccountsByTypeForPackage";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getAccountsByTypeForPackage((String) args[0], (String) args[1], args.length >= 3 ? (String) args[2] : null);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class t0 extends com.xinzhu.overmind.client.hook.g {
        t0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setUserData";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.setUserData((Account) args[0], (String) args[1], (String) args[2]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class u extends com.xinzhu.overmind.client.hook.g {
        u() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAccountsForPackage";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getAccountsForPackage((String) args[0], ((Integer) args[1]).intValue(), args.length >= 3 ? (String) args[2] : null);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class u0 extends com.xinzhu.overmind.client.hook.g {
        u0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "someUserHasAccount";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Boolean.valueOf(a.f64147g.someUserHasAccount((Account) args[0]));
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class v extends com.xinzhu.overmind.client.hook.g {
        v() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAuthToken";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.getAuthToken((IAccountManagerResponse) args[0], (Account) args[1], (String) args[2], ((Boolean) args[3]).booleanValue(), ((Boolean) args[4]).booleanValue(), (Bundle) args[5], com.xinzhu.overmind.client.e.getVUid());
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class v0 extends com.xinzhu.overmind.client.hook.g {
        v0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startAddAccountSession";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.startAddAccountSession((IAccountManagerResponse) args[0], (String) args[1], (String) args[2], (String[]) args[3], ((Boolean) args[4]).booleanValue(), (Bundle) args[5]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class w extends com.xinzhu.overmind.client.hook.g {
        w() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAuthTokenLabel";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.getAuthTokenLabel((IAccountManagerResponse) args[0], (String) args[1], (String) args[2]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class w0 extends com.xinzhu.overmind.client.hook.g {
        w0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "startUpdateCredentialsSession";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.startUpdateCredentialsSession((IAccountManagerResponse) args[0], (Account) args[1], (String) args[2], ((Boolean) args[3]).booleanValue(), (Bundle) args[4]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class x extends com.xinzhu.overmind.client.hook.g {
        x() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getAuthenticatorTypes";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getAuthenticatorTypes(((Integer) args[0]).intValue());
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class x0 extends com.xinzhu.overmind.client.hook.g {
        x0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "unregisterAccountListener";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.unregisterAccountListener((String[]) args[0], (String) args[1]);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class y extends com.xinzhu.overmind.client.hook.g {
        y() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPackagesAndVisibilityForAccount";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getPackagesAndVisibilityForAccount((Account) args[0]);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class y0 extends com.xinzhu.overmind.client.hook.g {
        y0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "updateAppPermission";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int intValue = ((Integer) args[2]).intValue();
            boolean booleanValue = ((Boolean) args[3]).booleanValue();
            a.f64147g.updateAppPermission((Account) args[0], (String) args[1], intValue, booleanValue);
            return null;
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class z extends com.xinzhu.overmind.client.hook.g {
        z() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPassword";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return a.f64147g.getPassword((Account) args[0]);
        }
    }

    /* compiled from: AccountManagerStub.java */
    /* loaded from: classes.dex */
    static class z0 extends com.xinzhu.overmind.client.hook.g {
        z0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "updateCredentials";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            a.f64147g.updateCredentials((IAccountManagerResponse) args[0], (Account) args[1], (String) args[2], ((Boolean) args[3]).booleanValue(), (Bundle) args[4]);
            return null;
        }
    }

    public a() {
        super(((IInterface) new com.xinzhu.haunted.android.accounts.c(AccountManager.get(Overmind.getContext())).g().f62398a).asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return new com.xinzhu.haunted.android.accounts.c(AccountManager.get(Overmind.getContext())).g().f62398a;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        com.xinzhu.haunted.android.accounts.c cVar = new com.xinzhu.haunted.android.accounts.c(AccountManager.get(Overmind.getContext()));
        cVar.i(new com.xinzhu.haunted.android.accounts.d(proxyInvocation));
        if (cVar.b()) {
            cVar.e();
        }
        m(GrantCredentialsPermissionActivity.f64042f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new z());
        d(new c0());
        d(new x());
        d(new p());
        d(new u());
        d(new t());
        d(new r());
        d(new e0());
        d(new t());
        d(new n());
        d(new s());
        d(new d());
        d(new k0());
        d(new l0());
        d(new m0());
        d(new j());
        d(new f0());
        d(new i0());
        d(new r0());
        d(new s0());
        d(new h());
        d(new t0());
        d(new y0());
        d(new v());
        d(new b());
        d(new c());
        d(new z0());
        d(new l());
        d(new i());
        d(new C0404a());
        d(new w());
        d(new f());
        d(new b0());
        d(new n0());
        d(new p0());
        d(new g());
        d(new o0());
        d(new a0());
        if (com.xinzhu.overmind.utils.e.d()) {
            d(new v0());
            d(new w0());
            d(new m());
            d(new u0());
            d(new g0());
            if (com.xinzhu.overmind.utils.e.v()) {
                d(new y());
                d(new e());
                d(new q0());
                d(new o());
                d(new q());
                d(new j0());
                d(new x0());
                d(new d0());
                d(new k());
                d(new h0());
            }
        }
    }
}
