package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
/* compiled from: FloatPrefField.java */
/* loaded from: classes5.dex */
public final class g extends b<Float> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(SharedPreferences sharedPreferences, String str, Float f4) {
        super(sharedPreferences, str, f4);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: j */
    public Float e(Float f4) {
        try {
            return Float.valueOf(this.f73188b.getFloat(this.f73189c, f4.floatValue()));
        } catch (ClassCastException e4) {
            try {
                SharedPreferences sharedPreferences = this.f73188b;
                String str = this.f73189c;
                return Float.valueOf(Float.parseFloat(sharedPreferences.getString(str, "" + f4)));
            } catch (Exception unused) {
                throw e4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: k */
    public void h(Float f4) {
        a(b().putFloat(this.f73189c, f4.floatValue()));
    }
}
