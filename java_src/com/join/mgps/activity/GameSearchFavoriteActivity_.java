package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameSearchFavoriteActivity_ extends GameSearchFavoriteActivity implements g3.a, i3.a, i3.b {

    /* renamed from: x  reason: collision with root package name */
    public static final String f31982x = "type";

    /* renamed from: v  reason: collision with root package name */
    private final i3.c f31983v = new i3.c();

    /* renamed from: w  reason: collision with root package name */
    private final Map<Class<?>, Object> f31984w = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameSearchFavoriteActivity_.this.d();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameSearchFavoriteActivity_.this.j();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameSearchFavoriteActivity_.this.k();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f31988a;

        d(List list) {
            this.f31988a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.o(this.f31988a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.m();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.l();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.h();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31993a;

        h(String str) {
            this.f31993a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.n(this.f31993a);
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameSearchFavoriteActivity_.super.e();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31996a;

        public j(Context context) {
            super(context, GameSearchFavoriteActivity_.class);
        }

        public j a(int i2) {
            return (j) super.extra("type", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31996a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), GameSearchFavoriteActivity_.class);
            this.f31996a = fragment;
        }
    }

    private void v(Bundle bundle) {
        i3.c.b(this);
        this.f31970l = AccountUtil_.getInstance_(this);
        w();
    }

    private void w() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("type")) {
            return;
        }
        this.f31959a = extras.getInt("type");
    }

    public static j x(Context context) {
        return new j(context);
    }

    public static j y(Fragment fragment) {
        return new j(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void e() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f31984w.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void h() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void l() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void m() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void n(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void o(List<CollectionBeanSub> list) {
        org.androidannotations.api.b.e("", new d(list), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f31983v);
        v(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_search_favorite);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31960b = (EditText) aVar.internalFindViewById(R.id.et_search);
        this.f31961c = (RelativeLayout) aVar.internalFindViewById(R.id.rl_normal);
        this.f31962d = (RelativeLayout) aVar.internalFindViewById(R.id.rl_search);
        this.f31963e = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f31964f = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f31965g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f31966h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f31967i = (XListView2) aVar.internalFindViewById(R.id.mListView);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f31963e;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new c());
        }
        c();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f31984w.put(cls, t3);
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f31983v.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        w();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f31983v.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f31983v.a(this);
    }
}
