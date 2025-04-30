package com.join.mgps.basefragment;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingLayout;
/* compiled from: BaseLoadingFragment.java */
/* loaded from: classes3.dex */
public abstract class a extends com.join.mgps.fragment.d implements LoadingLayout.b {

    /* renamed from: a  reason: collision with root package name */
    protected LoadingLayout f44771a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseLoadingFragment.java */
    /* renamed from: com.join.mgps.basefragment.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class RunnableC0189a implements Runnable {
        RunnableC0189a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = a.this.f44771a;
            if (loadingLayout != null) {
                loadingLayout.h();
            }
        }
    }

    /* compiled from: BaseLoadingFragment.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = a.this.f44771a;
            if (loadingLayout != null) {
                loadingLayout.d();
            }
        }
    }

    /* compiled from: BaseLoadingFragment.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = a.this.f44771a;
            if (loadingLayout != null) {
                loadingLayout.i();
            }
        }
    }

    /* compiled from: BaseLoadingFragment.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = a.this.f44771a;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    protected void M(View view) {
        this.f44771a = (LoadingLayout) LayoutInflater.from(getContext()).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        int O = O();
        if (O > 0) {
            this.f44771a.c(view, O);
            this.f44771a.setRefreshCallBackListener(this);
            this.f44771a.setLoadingLayoutMarginTop(P());
        }
    }

    protected abstract int N();

    protected abstract int O();

    protected int P() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Q() {
        new Handler(Looper.getMainLooper()).post(new b());
    }

    protected void R(String str) {
        this.f44771a.setFailedMessage(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void S() {
        new Handler(Looper.getMainLooper()).post(new d());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void U() {
        new Handler(Looper.getMainLooper()).post(new RunnableC0189a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void V() {
        new Handler(Looper.getMainLooper()).post(new c());
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        U();
        loadData();
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    protected abstract void loadData();

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(N(), viewGroup, false);
        M(inflate);
        ViewParent parent = inflate.getParent();
        return parent == null ? inflate : (View) parent;
    }
}
