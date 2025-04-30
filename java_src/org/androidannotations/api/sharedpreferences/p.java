package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
/* compiled from: StringPrefField.java */
/* loaded from: classes5.dex */
public final class p extends b<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public p(SharedPreferences sharedPreferences, String str, String str2) {
        super(sharedPreferences, str, str2);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: j */
    public String e(String str) {
        return this.f73188b.getString(this.f73189c, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: k */
    public void h(String str) {
        a(b().putString(this.f73189c, str));
    }
}
