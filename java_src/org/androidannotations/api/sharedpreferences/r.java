package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import java.util.Set;
/* compiled from: StringSetPrefField.java */
/* loaded from: classes5.dex */
public final class r extends b<Set<String>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r(SharedPreferences sharedPreferences, String str, Set<String> set) {
        super(sharedPreferences, str, set);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: j */
    public Set<String> e(Set<String> set) {
        return m.c(this.f73188b, this.f73189c, set);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* renamed from: k */
    public void h(Set<String> set) {
        SharedPreferences.Editor edit = this.f73188b.edit();
        m.e(edit, this.f73189c, set);
        a(edit);
    }
}
