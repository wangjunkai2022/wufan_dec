package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class OemDetailActivity_ extends OemDetailActivity implements g3.a, i3.a, i3.b {
    private final i3.c J = new i3.c();
    private final Map<Class<?>, Object> K = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OemDetailActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34495a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f34495a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                OemDetailActivity_.super.M0(this.f34495a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                OemDetailActivity_.super.R0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34498a;

        public d(Context context) {
            super(context, OemDetailActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34498a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), OemDetailActivity_.class);
            this.f34498a = fragment;
        }
    }

    public static d e1(Context context) {
        return new d(context);
    }

    public static d f1(Fragment fragment) {
        return new d(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.OemDetailActivity
    public void M0(int i2) {
        org.androidannotations.api.a.l(new b("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.OemDetailActivity
    public void R0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.J);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_forum_gift_detail_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34459b = aVar.internalFindViewById(R.id.back_image);
        this.f34460c = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f34461d = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f34462e = aVar.internalFindViewById(R.id.bottom);
        this.f34463f = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f34464g = (LinearLayout) aVar.internalFindViewById(R.id.oemTypeLayout1);
        this.f34465h = (LinearLayout) aVar.internalFindViewById(R.id.oemTypeLayout2);
        this.f34466i = (LinearLayout) aVar.internalFindViewById(R.id.oemTypeLayout3);
        this.f34467j = (SimpleDraweeView) aVar.internalFindViewById(R.id.giftIcon);
        this.f34468k = (TextView) aVar.internalFindViewById(R.id.giftName);
        this.f34469l = (TextView) aVar.internalFindViewById(R.id.giftExpireDate);
        this.f34470m = (LinearLayout) aVar.internalFindViewById(R.id.giftRetainLayout);
        this.f34471n = (TextView) aVar.internalFindViewById(R.id.giftRetain);
        this.f34472o = (TextView) aVar.internalFindViewById(R.id.cdkNum);
        this.f34473p = (TextView) aVar.internalFindViewById(R.id.giftTip);
        this.f34474q = (Button) aVar.internalFindViewById(R.id.receiveButton);
        this.f34475r = (Button) aVar.internalFindViewById(R.id.goToOem);
        this.f34476s = (TextView) aVar.internalFindViewById(R.id.giftTitle);
        this.f34477t = (TextView) aVar.internalFindViewById(R.id.giftContent);
        this.f34478u = (TextView) aVar.internalFindViewById(R.id.giftUseTitle);
        this.f34479v = (TextView) aVar.internalFindViewById(R.id.giftUseContent);
        this.f34480w = aVar.internalFindViewById(R.id.myGiftPackage);
        this.f34481x = (TextView) aVar.internalFindViewById(R.id.myGiftPackageCount);
        View view = this.f34459b;
        if (view != null) {
            view.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.K.put(cls, t3);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.J.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.J.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.J.a(this);
    }
}
