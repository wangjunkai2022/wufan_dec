package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.ForumMyHeaderView;
import com.join.mgps.customview.XExpandableListView;
import com.join.mgps.dto.ForumData;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
import ru.noties.scrollable.ScrollableLayout;
/* loaded from: classes3.dex */
public final class ForumMyActivity_ extends ForumMyActivity implements g3.a, i3.a, i3.b {

    /* renamed from: t  reason: collision with root package name */
    private final i3.c f29946t = new i3.c();

    /* renamed from: u  reason: collision with root package name */
    private final Map<Class<?>, Object> f29947u = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumMyActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumData.MyForumMain f29950a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29951b;

        c(ForumData.MyForumMain myForumMain, int i2) {
            this.f29950a = myForumMain;
            this.f29951b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyActivity_.super.J0(this.f29950a, this.f29951b);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29953a;

        d(String str) {
            this.f29953a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyActivity_.super.showMessage(this.f29953a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29955a;

        e(int i2) {
            this.f29955a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyActivity_.super.D0(this.f29955a);
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29957a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f29957a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyActivity_.super.G0(this.f29957a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {
        g(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyActivity_.super.L0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class h extends org.androidannotations.api.builder.a<h> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29960a;

        public h(Context context) {
            super(context, ForumMyActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29960a;
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

        public h(Fragment fragment) {
            super(fragment.getActivity(), ForumMyActivity_.class);
            this.f29960a = fragment;
        }
    }

    public static h S0(Context context) {
        return new h(context);
    }

    public static h T0(Fragment fragment) {
        return new h(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void D0(int i2) {
        org.androidannotations.api.b.e("", new e(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void G0(int i2) {
        org.androidannotations.api.a.l(new f("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void J0(ForumData.MyForumMain myForumMain, int i2) {
        org.androidannotations.api.b.e("", new c(myForumMain, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void K0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void L0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29947u.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29946t);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_forum_my);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29890a = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f29891b = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f29892c = (ScrollableLayout) aVar.internalFindViewById(R.id.scrollableLayout);
        this.f29893d = (ForumMyHeaderView) aVar.internalFindViewById(R.id.headerView);
        this.f29894e = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f29895f = (XExpandableListView) aVar.internalFindViewById(R.id.expandableListView);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29947u.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29946t.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29946t.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29946t.a(this);
    }
}
