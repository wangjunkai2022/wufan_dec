package com.google.android.material.internal;

import android.widget.Checkable;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.internal.g;
/* compiled from: MaterialCheckable.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public interface g<T extends g<T>> extends Checkable {

    /* compiled from: MaterialCheckable.java */
    /* loaded from: classes2.dex */
    public interface a<C> {
        void a(C c4, boolean z3);
    }

    @IdRes
    int getId();

    void setInternalOnCheckedChangeListener(@Nullable a<T> aVar);
}
