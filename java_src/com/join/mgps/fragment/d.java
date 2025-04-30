package com.join.mgps.fragment;

import android.os.Handler;
import androidx.fragment.app.Fragment;
/* compiled from: BaseFragment.java */
/* loaded from: classes4.dex */
public abstract class d extends Fragment {
    protected boolean isVisible;
    Handler mHandler = new Handler();

    /* compiled from: BaseFragment.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48511a;

        a(String str) {
            this.f48511a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.join.mgps.Util.i2.a(d.this.getContext()).b(this.f48511a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T(String str) {
        this.mHandler.post(new a(str));
    }

    protected abstract void lazyLoad();

    protected void onInvisible() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onVisible() {
        lazyLoad();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        super.setUserVisibleHint(z3);
        if (getUserVisibleHint()) {
            this.isVisible = true;
            onVisible();
            return;
        }
        this.isVisible = false;
        onInvisible();
    }
}
