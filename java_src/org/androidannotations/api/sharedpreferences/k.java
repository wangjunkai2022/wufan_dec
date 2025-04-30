package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
/* compiled from: LongPrefField.java */
/* loaded from: classes5.dex */
public final class k extends b<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(SharedPreferences sharedPreferences, String str, Long l4) {
        super(sharedPreferences, str, l4);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: j */
    public Long e(Long l4) {
        try {
            return Long.valueOf(this.f73188b.getLong(this.f73189c, l4.longValue()));
        } catch (ClassCastException e4) {
            try {
                SharedPreferences sharedPreferences = this.f73188b;
                String str = this.f73189c;
                return Long.valueOf(Long.parseLong(sharedPreferences.getString(str, "" + l4)));
            } catch (Exception unused) {
                throw e4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: k */
    public void h(Long l4) {
        a(b().putLong(this.f73189c, l4.longValue()));
    }
}
