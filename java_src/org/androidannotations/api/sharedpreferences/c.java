package org.androidannotations.api.sharedpreferences;

import org.androidannotations.api.sharedpreferences.e;
/* compiled from: BooleanPrefEditorField.java */
/* loaded from: classes5.dex */
public final class c<T extends e<T>> extends a<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(T t3, String str) {
        super(t3, str);
    }

    public T b(boolean z3) {
        this.f73185a.f().putBoolean(this.f73186b, z3);
        return this.f73185a;
    }
}
