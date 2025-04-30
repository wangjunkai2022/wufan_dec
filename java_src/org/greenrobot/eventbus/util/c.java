package org.greenrobot.eventbus.util;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.os.Bundle;
import org.greenrobot.eventbus.util.ErrorDialogFragments;
/* compiled from: ErrorDialogFragmentFactory.java */
/* loaded from: classes5.dex */
public abstract class c<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final org.greenrobot.eventbus.util.b f73337a;

    /* compiled from: ErrorDialogFragmentFactory.java */
    @TargetApi(11)
    /* loaded from: classes5.dex */
    public static class a extends c<Fragment> {
        public a(org.greenrobot.eventbus.util.b bVar) {
            super(bVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.greenrobot.eventbus.util.c
        /* renamed from: e */
        public Fragment a(f fVar, Bundle bundle) {
            ErrorDialogFragments.Honeycomb honeycomb = new ErrorDialogFragments.Honeycomb();
            honeycomb.setArguments(bundle);
            return honeycomb;
        }
    }

    /* compiled from: ErrorDialogFragmentFactory.java */
    /* loaded from: classes5.dex */
    public static class b extends c<androidx.fragment.app.Fragment> {
        public b(org.greenrobot.eventbus.util.b bVar) {
            super(bVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.greenrobot.eventbus.util.c
        /* renamed from: e */
        public androidx.fragment.app.Fragment a(f fVar, Bundle bundle) {
            ErrorDialogFragments.a aVar = new ErrorDialogFragments.a();
            aVar.setArguments(bundle);
            return aVar;
        }
    }

    protected c(org.greenrobot.eventbus.util.b bVar) {
        this.f73337a = bVar;
    }

    protected abstract T a(f fVar, Bundle bundle);

    protected String b(f fVar, Bundle bundle) {
        return this.f73337a.f73328a.getString(this.f73337a.d(fVar.f73339a));
    }

    protected String c(f fVar, Bundle bundle) {
        org.greenrobot.eventbus.util.b bVar = this.f73337a;
        return bVar.f73328a.getString(bVar.f73329b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T d(f fVar, boolean z3, Bundle bundle) {
        Bundle bundle2;
        int i2;
        Class<?> cls;
        if (fVar.d()) {
            return null;
        }
        if (bundle != null) {
            bundle2 = (Bundle) bundle.clone();
        } else {
            bundle2 = new Bundle();
        }
        if (!bundle2.containsKey(ErrorDialogManager.f73305d)) {
            bundle2.putString(ErrorDialogManager.f73305d, c(fVar, bundle2));
        }
        if (!bundle2.containsKey(ErrorDialogManager.f73306e)) {
            bundle2.putString(ErrorDialogManager.f73306e, b(fVar, bundle2));
        }
        if (!bundle2.containsKey(ErrorDialogManager.f73307f)) {
            bundle2.putBoolean(ErrorDialogManager.f73307f, z3);
        }
        if (!bundle2.containsKey(ErrorDialogManager.f73309h) && (cls = this.f73337a.f73336i) != null) {
            bundle2.putSerializable(ErrorDialogManager.f73309h, cls);
        }
        if (!bundle2.containsKey(ErrorDialogManager.f73308g) && (i2 = this.f73337a.f73335h) != 0) {
            bundle2.putInt(ErrorDialogManager.f73308g, i2);
        }
        return a(fVar, bundle2);
    }
}
