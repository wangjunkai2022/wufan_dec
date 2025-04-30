package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.dto.GameDiscoverMainBean;
import com.join.mgps.dto.GameDiscoverMessageBean;
import com.uc.crashsdk.export.LogType;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.discover_layout)
/* loaded from: classes3.dex */
public class GameDiscoverActivity extends BaseFragmentActivity implements com.join.mgps.pref.c {

    /* renamed from: a  reason: collision with root package name */
    private Context f31298a;

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.rpc.d f31299b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    FrameLayout f31300c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f31301d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f31302e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f31303f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    RelativeLayout f31304g;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    ExtBean f31305h;

    /* renamed from: i  reason: collision with root package name */
    private int f31306i;

    /* renamed from: j  reason: collision with root package name */
    private com.join.mgps.fragment.f f31307j;

    /* renamed from: k  reason: collision with root package name */
    private com.join.android.app.common.manager.b f31308k;

    /* renamed from: l  reason: collision with root package name */
    private int f31309l;

    public static int F0(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i2 = rect.top;
        if (i2 == 0) {
            try {
                Class<?> cls = Class.forName("com.android.internal.R$dimen");
                return activity.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
            } catch (ClassNotFoundException e4) {
                e4.printStackTrace();
                return i2;
            } catch (IllegalAccessException e5) {
                e5.printStackTrace();
                return i2;
            } catch (IllegalArgumentException e6) {
                e6.printStackTrace();
                return i2;
            } catch (InstantiationException e7) {
                e7.printStackTrace();
                return i2;
            } catch (NoSuchFieldException e8) {
                e8.printStackTrace();
                return i2;
            } catch (NumberFormatException e9) {
                e9.printStackTrace();
                return i2;
            } catch (SecurityException e10) {
                e10.printStackTrace();
                return i2;
            }
        }
        return i2;
    }

    private void I0() {
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = getWindow();
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            window.setStatusBarColor(0);
        }
        com.join.android.app.common.manager.b bVar = new com.join.android.app.common.manager.b(this);
        this.f31308k = bVar;
        bVar.m(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void D0() {
        if (com.join.android.app.common.utils.f.j(this.f31298a)) {
            try {
                GameDiscoverMainBean J0 = this.f31299b.J0(E0(this.f31306i, 10, this.f31305h));
                if (J0 != null) {
                    GameDiscoverMessageBean messages = J0.getMessages();
                    if (messages != null) {
                        List<GameDiscoverBean> data = messages.getData();
                        if (data != null && data.size() > 0) {
                            K0(data);
                        } else {
                            J0();
                        }
                    } else {
                        J0();
                    }
                } else {
                    J0();
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                J0();
                return;
            }
        }
        J0();
    }

    public CommonRequestBean E0(int i2, int i4, ExtBean extBean) {
        return RequestBeanUtil.getInstance(this.f31298a).getGameDiscoverRequestBean(i2, i4, extBean);
    }

    public com.join.android.app.common.manager.b G0() {
        return this.f31308k;
    }

    @Override // com.join.mgps.pref.c
    public void H(Bundle bundle) {
        this.f31303f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        try {
            if (this.f31306i == 1) {
                this.f31301d.setVisibility(8);
                this.f31300c.setVisibility(8);
                this.f31302e.setVisibility(0);
                this.f31303f.setVisibility(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(List<GameDiscoverBean> list) {
        try {
            if (this.f31307j == null) {
                this.f31307j = com.join.mgps.fragment.f.X();
            }
            this.f31301d.setVisibility(8);
            this.f31300c.setVisibility(0);
            this.f31302e.setVisibility(8);
            this.f31303f.setVisibility(8);
            if (this.f31306i == 1) {
                FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
                this.f31307j.d0(list);
                beginTransaction.add(R.id.frameLayout, this.f31307j);
                try {
                    beginTransaction.commit();
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            this.f31307j.d0(list);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    @Override // com.join.mgps.pref.c
    public void O(Bundle bundle) {
        if (bundle != null) {
            this.f31306i = bundle.getInt("CurrentPn");
            D0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        try {
            this.f31299b = com.join.mgps.rpc.impl.c.P1();
            this.f31298a = this;
            this.f31306i = 1;
            showLoading();
            D0();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        I0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoading();
        this.f31306i = 1;
        D0();
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f31298a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        try {
            this.f31301d.setVisibility(0);
            this.f31300c.setVisibility(8);
            this.f31302e.setVisibility(8);
            this.f31303f.setVisibility(0);
            if (Build.VERSION.SDK_INT >= 21) {
                int applyDimension = (int) TypedValue.applyDimension(1, 46.0f, getResources().getDisplayMetrics());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
                int F0 = F0(this) + ((int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics()));
                this.f31309l = F0;
                layoutParams.setMargins(0, F0, 0, 0);
                this.f31304g.setLayoutParams(layoutParams);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        I0();
    }
}
