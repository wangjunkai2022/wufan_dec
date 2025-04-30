package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
/* compiled from: AbstractPrefField.java */
/* loaded from: classes.dex */
public abstract class b<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f73187a;

    /* renamed from: b  reason: collision with root package name */
    protected final SharedPreferences f73188b;

    /* renamed from: c  reason: collision with root package name */
    protected final String f73189c;

    public b(SharedPreferences sharedPreferences, String str, T t3) {
        this.f73188b = sharedPreferences;
        this.f73189c = str;
        this.f73187a = t3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(SharedPreferences.Editor editor) {
        m.a(editor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SharedPreferences.Editor b() {
        return this.f73188b.edit();
    }

    public final boolean c() {
        return this.f73188b.contains(this.f73189c);
    }

    public final T d() {
        return e(this.f73187a);
    }

    public abstract T e(T t3);

    public String f() {
        return this.f73189c;
    }

    public final void g(T t3) {
        if (t3 == null) {
            t3 = this.f73187a;
        }
        h(t3);
    }

    protected abstract void h(T t3);

    public final void i() {
        a(b().remove(this.f73189c));
    }
}
