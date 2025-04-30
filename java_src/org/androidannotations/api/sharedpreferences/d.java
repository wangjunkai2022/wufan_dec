package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
/* compiled from: BooleanPrefField.java */
/* loaded from: classes.dex */
public final class d extends b<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(SharedPreferences sharedPreferences, String str, Boolean bool) {
        super(sharedPreferences, str, bool);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: j */
    public Boolean e(Boolean bool) {
        return Boolean.valueOf(this.f73188b.getBoolean(this.f73189c, bool.booleanValue()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: k */
    public void h(Boolean bool) {
        a(b().putBoolean(this.f73189c, bool.booleanValue()));
    }
}
