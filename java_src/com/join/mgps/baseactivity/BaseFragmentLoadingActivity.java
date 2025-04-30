package com.join.mgps.baseactivity;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.b0;
import com.join.mgps.customview.LoadingLayout;
/* loaded from: classes3.dex */
public class BaseFragmentLoadingActivity extends BaseFragmentActivity implements LoadingLayout.b, LoadingLayout.a {

    /* renamed from: a  reason: collision with root package name */
    protected LoadingLayout f44757a;

    /* renamed from: b  reason: collision with root package name */
    String f44758b = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseFragmentLoadingActivity.this.f44757a;
            if (loadingLayout != null) {
                loadingLayout.h();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseFragmentLoadingActivity.this.f44757a;
            if (loadingLayout != null) {
                loadingLayout.d();
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseFragmentLoadingActivity.this.f44757a;
            if (loadingLayout != null) {
                loadingLayout.i();
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseFragmentLoadingActivity.this.f44757a;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    protected void D0() {
        new Handler(Looper.getMainLooper()).post(new b());
    }

    public void E0() {
    }

    protected void F0() {
        new Handler(Looper.getMainLooper()).post(new d());
    }

    protected void G0() {
        new Handler(Looper.getMainLooper()).post(new a());
    }

    protected void H0() {
        new Handler(Looper.getMainLooper()).post(new c());
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        G0();
        E0();
    }

    protected int getLoadingLayoutResID() {
        return 0;
    }

    protected int getLoadingMarginTop() {
        return b0.a(this, 48.0f);
    }

    @Override // com.join.mgps.customview.LoadingLayout.a
    public void noDataCallBack() {
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(this).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        this.f44757a = loadingLayout;
        String str = this.f44758b;
        if (str != null) {
            loadingLayout.setLoadingHintMsg(str);
        }
        int loadingLayoutResID = getLoadingLayoutResID();
        if (loadingLayoutResID > 0) {
            this.f44757a.b(getWindow().getDecorView().getRootView(), loadingLayoutResID);
            this.f44757a.setRefreshCallBackListener(this);
            this.f44757a.setLoadingLayoutMarginTop(getLoadingMarginTop());
        }
    }

    protected void setLoadingFailMsg(String str) {
        this.f44757a.setFailedMessage(str);
    }

    public void setLoadingHintMsg(String str) {
        this.f44758b = str;
    }

    protected void setNoDataListener() {
        this.f44757a.setNoDataCallBackListener(this);
    }

    public void setmLoadingHintMsgLoading(String str) {
        this.f44757a.setLoadingHintMsg(str);
    }
}
