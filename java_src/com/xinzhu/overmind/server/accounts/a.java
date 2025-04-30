package com.xinzhu.overmind.server.accounts;

import android.accounts.AuthenticatorDescription;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.xinzhu.haunted.com.android.internal.a;
import com.xinzhu.overmind.server.pm.l;
/* compiled from: AccountAuthenticatorCache.java */
/* loaded from: classes3.dex */
class a extends l<AuthenticatorDescription> implements d {

    /* renamed from: o  reason: collision with root package name */
    private static final String f64372o = "Account";

    public a(Context context) {
        super(context, "android.accounts.AccountAuthenticator", "android.accounts.AccountAuthenticator", "account-authenticator");
    }

    @Override // com.xinzhu.overmind.server.accounts.d
    public /* bridge */ /* synthetic */ l.d d(AuthenticatorDescription type, int userId) {
        return super.p(type, userId);
    }

    @Override // com.xinzhu.overmind.server.pm.l
    /* renamed from: y */
    public AuthenticatorDescription v(Resources res, String packageName, AttributeSet attrs) {
        TypedArray obtainAttributes = res.obtainAttributes(attrs, a.e.A());
        try {
            String string = obtainAttributes.getString(a.e.C());
            int resourceId = obtainAttributes.getResourceId(a.e.F(), 0);
            int resourceId2 = obtainAttributes.getResourceId(a.e.E(), 0);
            int resourceId3 = obtainAttributes.getResourceId(a.e.G(), 0);
            int resourceId4 = obtainAttributes.getResourceId(a.e.B(), 0);
            boolean z3 = obtainAttributes.getBoolean(a.e.D(), false);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return new AuthenticatorDescription(string, packageName, resourceId, resourceId2, resourceId3, resourceId4, z3);
        } finally {
            obtainAttributes.recycle();
        }
    }
}
