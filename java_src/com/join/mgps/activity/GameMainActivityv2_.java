package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ViewPagerWithADs;
import com.join.mgps.dto.GameMainDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameMainActivityv2_ extends GameMainActivityv2 implements g3.a, i3.a, i3.b {
    public static final String F = "gameId";
    private final i3.c D = new i3.c();
    private final Map<Class<?>, Object> E = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameMainDataBean f31772a;

        a(GameMainDataBean gameMainDataBean) {
            this.f31772a = gameMainDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivityv2_.super.r(this.f31772a);
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
                GameMainActivityv2_.super.f();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31775a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f31775a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivityv2_.super.o(this.f31775a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivityv2_.super.e();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.g();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.c();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.m();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.d();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.l();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.i();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.k();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.n();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.h();
        }
    }

    /* loaded from: classes3.dex */
    public static class n extends org.androidannotations.api.builder.a<n> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31787a;

        public n(Context context) {
            super(context, GameMainActivityv2_.class);
        }

        public n a(String str) {
            return (n) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31787a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), GameMainActivityv2_.class);
            this.f31787a = fragment;
        }
    }

    private void w(Bundle bundle) {
        this.f31761u = new PrefDef_(this);
        i3.c.b(this);
        x();
    }

    private void x() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.f31760t = extras.getString("gameId");
    }

    public static n y(Context context) {
        return new n(context);
    }

    public static n z(Fragment fragment) {
        return new n(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivityv2
    public void e() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivityv2
    public void f() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.E.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivityv2
    public void o(int i2) {
        org.androidannotations.api.a.l(new c("", 0L, "", i2));
    }

    @Override // com.join.mgps.activity.GameMainActivityv2, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.D);
        w(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_mainv2);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31741a = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f31742b = (ImageView) aVar.internalFindViewById(R.id.iv_back);
        this.f31743c = (ImageView) aVar.internalFindViewById(R.id.iv_switch_netfight);
        this.f31744d = (ImageView) aVar.internalFindViewById(R.id.iv_list);
        this.f31745e = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_book_bg2);
        this.f31746f = (TextView) aVar.internalFindViewById(R.id.tv_gamename);
        this.f31747g = (TextView) aVar.internalFindViewById(R.id.archiveMessage);
        this.f31748h = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_gameicon);
        this.f31749i = (SimpleDraweeView) aVar.internalFindViewById(R.id.achieveImage);
        this.f31750j = (LinearLayout) aVar.internalFindViewById(R.id.tipsLayout);
        this.f31751k = (LinearLayout) aVar.internalFindViewById(R.id.ll_netfight_parent);
        this.f31752l = (LinearLayout) aVar.internalFindViewById(R.id.adContainer);
        this.f31753m = (RelativeLayout) aVar.internalFindViewById(R.id.rl_archive);
        this.f31754n = (RelativeLayout) aVar.internalFindViewById(R.id.joiinSwitchLayout);
        this.f31755o = (RelativeLayout) aVar.internalFindViewById(R.id.rl_localfight);
        this.f31756p = (ViewPagerWithADs) aVar.internalFindViewById(R.id.viewPagerAdLayout);
        this.f31757q = (LinearLayout) aVar.internalFindViewById(R.id.forumPostlayout);
        this.f31758r = (ViewFlipper) aVar.internalFindViewById(R.id.adviewFliper);
        this.f31759s = (TextView) aVar.internalFindViewById(R.id.tv_netfight);
        View internalFindViewById = aVar.internalFindViewById(R.id.btnFastGame);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.rl_top);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.forum_post);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.rl_video);
        ImageView imageView = this.f31742b;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new f());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new g());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new h());
        }
        RelativeLayout relativeLayout = this.f31755o;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new i());
        }
        LinearLayout linearLayout = this.f31751k;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new j());
        }
        RelativeLayout relativeLayout2 = this.f31753m;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new k());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new l());
        }
        ImageView imageView2 = this.f31743c;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new m());
        }
        b();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.E.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivityv2
    public void r(GameMainDataBean gameMainDataBean) {
        org.androidannotations.api.b.e("", new a(gameMainDataBean), 0L);
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.D.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        x();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.D.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.D.a(this);
    }
}
