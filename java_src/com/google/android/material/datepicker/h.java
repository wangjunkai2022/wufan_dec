package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import java.util.Iterator;
/* compiled from: MaterialTextInputPicker.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class h<S> extends l<S> {

    /* renamed from: e  reason: collision with root package name */
    private static final String f14804e = "THEME_RES_ID_KEY";

    /* renamed from: f  reason: collision with root package name */
    private static final String f14805f = "DATE_SELECTOR_KEY";

    /* renamed from: g  reason: collision with root package name */
    private static final String f14806g = "CALENDAR_CONSTRAINTS_KEY";
    @StyleRes

    /* renamed from: b  reason: collision with root package name */
    private int f14807b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private DateSelector<S> f14808c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private CalendarConstraints f14809d;

    /* compiled from: MaterialTextInputPicker.java */
    /* loaded from: classes2.dex */
    class a extends k<S> {
        a() {
        }

        @Override // com.google.android.material.datepicker.k
        public void a() {
            Iterator<k<S>> it2 = h.this.f14825a.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
        }

        @Override // com.google.android.material.datepicker.k
        public void b(S s3) {
            Iterator<k<S>> it2 = h.this.f14825a.iterator();
            while (it2.hasNext()) {
                it2.next().b(s3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static <T> h<T> Q(DateSelector<T> dateSelector, @StyleRes int i2, @NonNull CalendarConstraints calendarConstraints) {
        h<T> hVar = new h<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f14804e, i2);
        bundle.putParcelable(f14805f, dateSelector);
        bundle.putParcelable(f14806g, calendarConstraints);
        hVar.setArguments(bundle);
        return hVar;
    }

    @Override // com.google.android.material.datepicker.l
    @NonNull
    public DateSelector<S> O() {
        DateSelector<S> dateSelector = this.f14808c;
        if (dateSelector != null) {
            return dateSelector;
        }
        throw new IllegalStateException("dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created.");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f14807b = bundle.getInt(f14804e);
        this.f14808c = (DateSelector) bundle.getParcelable(f14805f);
        this.f14809d = (CalendarConstraints) bundle.getParcelable(f14806g);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.f14808c.e0(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f14807b)), viewGroup, bundle, this.f14809d, new a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f14804e, this.f14807b);
        bundle.putParcelable(f14805f, this.f14808c);
        bundle.putParcelable(f14806g, this.f14809d);
    }
}
