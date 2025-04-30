package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import org.androidannotations.api.sharedpreferences.e;
/* compiled from: EditorHelper.java */
/* loaded from: classes5.dex */
public abstract class e<T extends e<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences.Editor f73190a;

    public e(SharedPreferences sharedPreferences) {
        this.f73190a = sharedPreferences.edit();
    }

    private T c() {
        return this;
    }

    public final void a() {
        m.a(this.f73190a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c<T> b(String str) {
        return new c<>(c(), str);
    }

    public final T d() {
        this.f73190a.clear();
        return c();
    }

    protected f<T> e(String str) {
        return new f<>(c(), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SharedPreferences.Editor f() {
        return this.f73190a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h<T> g(String str) {
        return new h<>(c(), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j<T> h(String str) {
        return new j<>(c(), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o<T> i(String str) {
        return new o<>(c(), str);
    }

    protected q<T> j(String str) {
        return new q<>(c(), str);
    }
}
