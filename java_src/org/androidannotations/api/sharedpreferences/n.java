package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import java.util.Set;
/* compiled from: SharedPreferencesHelper.java */
/* loaded from: classes.dex */
public abstract class n {
    private final SharedPreferences sharedPreferences;

    public n(SharedPreferences sharedPreferences) {
        this.sharedPreferences = sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d booleanField(String str, boolean z3) {
        return new d(this.sharedPreferences, str, Boolean.valueOf(z3));
    }

    public final void clear() {
        m.a(this.sharedPreferences.edit().clear());
    }

    protected g floatField(String str, float f4) {
        return new g(this.sharedPreferences, str, Float.valueOf(f4));
    }

    public final SharedPreferences getSharedPreferences() {
        return this.sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i intField(String str, int i2) {
        return new i(this.sharedPreferences, str, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k longField(String str, long j4) {
        return new k(this.sharedPreferences, str, Long.valueOf(j4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public p stringField(String str, String str2) {
        return new p(this.sharedPreferences, str, str2);
    }

    protected r stringSetField(String str, Set<String> set) {
        return new r(this.sharedPreferences, str, set);
    }
}
