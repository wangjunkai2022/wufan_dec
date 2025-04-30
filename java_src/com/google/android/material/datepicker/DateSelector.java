package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.util.Pair;
import java.util.Collection;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public interface DateSelector<S> extends Parcelable {
    @StyleRes
    int A(Context context);

    @NonNull
    String U(Context context);

    @NonNull
    Collection<Pair<Long, Long>> Y();

    void a0(@NonNull S s3);

    @NonNull
    View e0(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, @NonNull CalendarConstraints calendarConstraints, @NonNull k<S> kVar);

    boolean k0();

    @NonNull
    Collection<Long> m0();

    @Nullable
    S v0();

    @StringRes
    int x();

    void y0(long j4);
}
