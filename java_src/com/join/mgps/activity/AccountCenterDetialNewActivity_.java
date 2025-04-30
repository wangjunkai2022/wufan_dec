package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FavoritesCenterData;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class AccountCenterDetialNewActivity_ extends AccountCenterDetialNewActivity implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f28273j = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f28274k = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FavoritesCenterData f28275a;

        a(FavoritesCenterData favoritesCenterData) {
            this.f28275a = favoritesCenterData;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterDetialNewActivity_.super.D0(this.f28275a);
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountCenterDetialNewActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28278a;

        public c(Context context) {
            super(context, AccountCenterDetialNewActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28278a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public c(Fragment fragment) {
            super(fragment.getActivity(), AccountCenterDetialNewActivity_.class);
            this.f28278a = fragment;
        }
    }

    public static c G0(Context context) {
        return new c(context);
    }

    public static c H0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterDetialNewActivity
    public void D0(FavoritesCenterData favoritesCenterData) {
        org.androidannotations.api.b.e("", new a(favoritesCenterData), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28274k.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterDetialNewActivity
    public void getData() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28273j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_account_center_detial_new);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28253a = (SimpleDraweeView) aVar.internalFindViewById(R.id.titleImg);
        this.f28254b = (SimpleDraweeView) aVar.internalFindViewById(R.id.userIcon);
        this.f28255c = (TextView) aVar.internalFindViewById(R.id.userName);
        this.f28256d = (TextView) aVar.internalFindViewById(R.id.tipName);
        this.f28257e = (LinearLayout) aVar.internalFindViewById(R.id.tipsLayout);
        this.f28258f = (RecyclerView) aVar.internalFindViewById(R.id.recycleView);
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28274k.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28273j.a(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28273j.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28273j.a(this);
    }
}
