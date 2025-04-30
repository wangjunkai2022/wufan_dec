package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PickerFragment.java */
/* loaded from: classes2.dex */
public abstract class l<S> extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    protected final LinkedHashSet<k<S>> f14825a = new LinkedHashSet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean M(k<S> kVar) {
        return this.f14825a.add(kVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N() {
        this.f14825a.clear();
    }

    abstract DateSelector<S> O();

    boolean P(k<S> kVar) {
        return this.f14825a.remove(kVar);
    }
}
