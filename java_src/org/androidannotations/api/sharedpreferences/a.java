package org.androidannotations.api.sharedpreferences;

import org.androidannotations.api.sharedpreferences.e;
/* compiled from: AbstractPrefEditorField.java */
/* loaded from: classes5.dex */
public abstract class a<T extends e<T>> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f73185a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f73186b;

    public a(T t3, String str) {
        this.f73185a = t3;
        this.f73186b = str;
    }

    public final T a() {
        this.f73185a.f().remove(this.f73186b);
        return this.f73185a;
    }
}
