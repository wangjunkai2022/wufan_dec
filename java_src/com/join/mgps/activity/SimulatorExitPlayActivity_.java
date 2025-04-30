package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class SimulatorExitPlayActivity_ extends SimulatorExitPlayActivity implements g3.a, i3.a, i3.b {
    public static final String B = "gameId";
    public static final String C = "time";
    public static final String D = "hideLevel";
    public static final String E = "level";
    public static final String F = "progress";
    public static final String G = "max";
    public static final String H = "levelUrl";
    public static final String I = "battleUids";

    /* renamed from: x  reason: collision with root package name */
    private final i3.c f35707x = new i3.c();

    /* renamed from: y  reason: collision with root package name */
    private final Map<Class<?>, Object> f35708y = new HashMap();

    /* renamed from: z  reason: collision with root package name */
    private final IntentFilter f35709z = new IntentFilter();
    private final BroadcastReceiver A = new g();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35710a;

        a(int i2) {
            this.f35710a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.E0(this.f35710a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35712a;

        b(int i2) {
            this.f35712a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.K0(this.f35712a);
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
                SimulatorExitPlayActivity_.super.L0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity_.super.afterLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35716a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f35716a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity_.super.add(this.f35716a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35718a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f35718a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity_.super.J0(this.f35718a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends BroadcastReceiver {
        g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SimulatorExitPlayActivity_.this.afterLogin();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity_.this.N0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.updateTitle();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimulatorExitPlayResponseData f35727a;

        n(SimulatorExitPlayResponseData simulatorExitPlayResponseData) {
            this.f35727a = simulatorExitPlayResponseData;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.P0(this.f35727a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35729a;

        o(String str) {
            this.f35729a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.toast(this.f35729a);
        }
    }

    /* loaded from: classes3.dex */
    public static class p extends org.androidannotations.api.builder.a<p> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35731a;

        public p(Context context) {
            super(context, SimulatorExitPlayActivity_.class);
        }

        public p a(int[] iArr) {
            return (p) super.extra(SimulatorExitPlayActivity_.I, iArr);
        }

        public p b(String str) {
            return (p) super.extra("gameId", str);
        }

        public p c(boolean z3) {
            return (p) super.extra(SimulatorExitPlayActivity_.D, z3);
        }

        public p d(int i2) {
            return (p) super.extra(SimulatorExitPlayActivity_.E, i2);
        }

        public p e(String str) {
            return (p) super.extra(SimulatorExitPlayActivity_.H, str);
        }

        public p f(int i2) {
            return (p) super.extra(SimulatorExitPlayActivity_.G, i2);
        }

        public p g(int i2) {
            return (p) super.extra("progress", i2);
        }

        public p h(int i2) {
            return (p) super.extra("time", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35731a;
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

        public p(Fragment fragment) {
            super(fragment.getActivity(), SimulatorExitPlayActivity_.class);
            this.f35731a = fragment;
        }
    }

    public static p c1(Context context) {
        return new p(context);
    }

    public static p d1(Fragment fragment) {
        return new p(fragment);
    }

    private void init_(Bundle bundle) {
        this.f35704w = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        this.f35709z.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        registerReceiver(this.A, this.f35709z);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.f35695n = extras.getString("gameId");
            }
            if (extras.containsKey("time")) {
                this.f35696o = extras.getInt("time");
            }
            if (extras.containsKey(D)) {
                this.f35697p = extras.getBoolean(D);
            }
            if (extras.containsKey(E)) {
                this.f35698q = extras.getInt(E);
            }
            if (extras.containsKey("progress")) {
                this.f35699r = extras.getInt("progress");
            }
            if (extras.containsKey(G)) {
                this.f35700s = extras.getInt(G);
            }
            if (extras.containsKey(H)) {
                this.f35701t = extras.getString(H);
            }
            if (extras.containsKey(I)) {
                this.f35702u = extras.getIntArray(I);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void E0(int i2) {
        org.androidannotations.api.b.e("", new a(i2), 0L);
    }

    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void J0(int i2) {
        org.androidannotations.api.a.l(new f("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void K0(int i2) {
        org.androidannotations.api.b.e("", new b(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void L0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void P0(SimulatorExitPlayResponseData simulatorExitPlayResponseData) {
        org.androidannotations.api.b.e("", new n(simulatorExitPlayResponseData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void Q0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void add(int i2) {
        org.androidannotations.api.a.l(new e("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void afterLogin() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35708y.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.activity.SimulatorExitPlayActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35707x);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_simulator_exit_play);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.A);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35682a = (TextView) aVar.internalFindViewById(R.id.title);
        this.f35683b = (SimpleDraweeView) aVar.internalFindViewById(R.id.adIcon);
        this.f35684c = (TextView) aVar.internalFindViewById(R.id.adTitle);
        this.f35685d = (RecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        this.f35686e = aVar.internalFindViewById(R.id.save);
        this.f35687f = aVar.internalFindViewById(R.id.info);
        this.f35688g = (TextView) aVar.internalFindViewById(R.id.levelName);
        this.f35689h = (TextView) aVar.internalFindViewById(R.id.progressTv);
        this.f35690i = (ImageView) aVar.internalFindViewById(R.id.levelIcon);
        this.f35691j = (ProgressBar) aVar.internalFindViewById(R.id.progressBar);
        View internalFindViewById = aVar.internalFindViewById(R.id.resume);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.exit);
        View view = this.f35686e;
        if (view != null) {
            view.setOnClickListener(new h());
        }
        View view2 = this.f35687f;
        if (view2 != null) {
            view2.setOnClickListener(new i());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new j());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new k());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35708y.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35707x.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void toast(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void updateTitle() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35707x.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35707x.a(this);
    }
}
