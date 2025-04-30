package com.join.mgps.baseactivity;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.b0;
import com.join.mgps.customview.LoadingLayout;
/* loaded from: classes3.dex */
public class BaseLoadingActivity extends BaseActivity implements LoadingLayout.b, LoadingLayout.a {

    /* renamed from: a  reason: collision with root package name */
    protected LoadingLayout f44763a;

    /* renamed from: b  reason: collision with root package name */
    protected String f44764b = null;

    /* renamed from: c  reason: collision with root package name */
    protected Handler f44765c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseLoadingActivity.this.f44763a;
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
            LoadingLayout loadingLayout = BaseLoadingActivity.this.f44763a;
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
            LoadingLayout loadingLayout = BaseLoadingActivity.this.f44763a;
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
            LoadingLayout loadingLayout = BaseLoadingActivity.this.f44763a;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseLoadingActivity.this.f44763a;
            if (loadingLayout != null) {
                loadingLayout.j();
            }
        }
    }

    public void E0() {
        Handler handler = this.f44765c;
        if (handler != null) {
            handler.post(new b());
        }
    }

    public void F0() {
    }

    public void G0() {
        Handler handler = this.f44765c;
        if (handler != null) {
            handler.post(new d());
        }
    }

    public void H0() {
        Handler handler = this.f44765c;
        if (handler != null) {
            handler.post(new a());
        }
    }

    public void I0() {
        Handler handler = this.f44765c;
        if (handler != null) {
            handler.post(new c());
        }
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        H0();
        F0();
    }

    public int getLoadingLayoutResID() {
        return 0;
    }

    public int getLoadingMarginTop() {
        return b0.a(this, 48.0f);
    }

    public boolean isHindeLoadingLayout() {
        return this.f44763a.e();
    }

    @Override // com.join.mgps.customview.LoadingLayout.a
    public void noDataCallBack() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Handler handler = this.f44765c;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f44765c = null;
        }
        super.onDestroy();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(this).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        this.f44763a = loadingLayout;
        String str = this.f44764b;
        if (str != null) {
            loadingLayout.setLoadingHintMsg(str);
        }
        int loadingLayoutResID = getLoadingLayoutResID();
        if (loadingLayoutResID > 0) {
            this.f44763a.b(getWindow().getDecorView().getRootView(), loadingLayoutResID);
            this.f44763a.setRefreshCallBackListener(this);
            this.f44763a.setLoadingLayoutMarginTop(getLoadingMarginTop());
        }
        this.f44765c = new Handler(Looper.getMainLooper());
    }

    public void setLoadingFailMsg(String str) {
        this.f44763a.setFailedMessage(str);
    }

    public void setLoadingHintMsg(String str) {
        this.f44764b = str;
    }

    public void setNoDataListener() {
        this.f44763a.setNoDataCallBackListener(this);
    }

    public void setTextViewNoData(String str) {
        LoadingLayout loadingLayout = this.f44763a;
        if (loadingLayout != null) {
            loadingLayout.setTextViewNoData(str);
        }
    }

    public void setmLoadingHintMsgLoading(String str) {
        this.f44763a.setLoadingHintMsg(str);
    }

    public void showNoDataLayoutTwo() {
        Handler handler = this.f44765c;
        if (handler != null) {
            handler.post(new e());
        }
    }
}
