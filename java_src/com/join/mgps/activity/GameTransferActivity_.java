package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameTransferActivity_ extends GameTransferActivity implements g3.a, i3.a, i3.b {
    public static final String I0 = "Flag";
    private final i3.c G0 = new i3.c();
    private final Map<Class<?>, Object> H0 = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameTransferActivity_.super.q1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32053a;

        h(String str) {
            this.f32053a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameTransferActivity_.super.toast(this.f32053a);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f32055a;

        i(DownloadTask downloadTask) {
            this.f32055a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameTransferActivity_.super.I0(this.f32055a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameTransferActivity_.super.t1();
        }
    }

    /* loaded from: classes3.dex */
    public static class k extends org.androidannotations.api.builder.a<k> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32058a;

        public k(Context context) {
            super(context, GameTransferActivity_.class);
        }

        public k a(int i2) {
            return (k) super.extra(GameTransferActivity_.I0, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32058a;
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

        public k(Fragment fragment) {
            super(fragment.getActivity(), GameTransferActivity_.class);
            this.f32058a = fragment;
        }
    }

    public static k U1(Context context) {
        return new k(context);
    }

    public static k V1(Fragment fragment) {
        return new k(fragment);
    }

    private void init_(Bundle bundle) {
        this.f32032y = new PrefDef_(this);
        i3.c.b(this);
        this.f32021s0 = (PowerManager) getSystemService("power");
        this.f32000d = com.join.mgps.adapter.j2.y(this, null);
        this.f32002f = com.join.mgps.adapter.h2.x(this, null);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(I0)) {
            return;
        }
        this.f32016q = extras.getInt(I0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameTransferActivity
    public void I0(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new i(downloadTask), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.H0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.G0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_game_transfer);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31997a = (TextView) aVar.internalFindViewById(R.id.game_transfer_title_txt);
        this.f31998b = (TextView) aVar.internalFindViewById(R.id.game_transfer_right_phone_txt);
        this.f31999c = (RecyclerView) aVar.internalFindViewById(R.id.game_transfer_list_rv);
        this.f32001e = (RecyclerView) aVar.internalFindViewById(R.id.game_transfer_historyList_rv);
        this.f32003g = (TextView) aVar.internalFindViewById(R.id.game_transfer_bottom_navigation_left_txt);
        this.f32006j = (TextView) aVar.internalFindViewById(R.id.game_transfer_bottom_navigation_right_txt);
        this.f32007k = (Button) aVar.internalFindViewById(R.id.game_transfer_ok_btn);
        this.f32008l = (TextView) aVar.internalFindViewById(R.id.game_transfer_selected_num_txt);
        this.f32009m = (TextView) aVar.internalFindViewById(R.id.game_transfer_list_choose_all_txt);
        this.f32012o = (RelativeLayout) aVar.internalFindViewById(R.id.game_transfer_history_hint_rl);
        View internalFindViewById = aVar.internalFindViewById(R.id.game_transfer_list_hint_close_img);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.game_transfer_back_img);
        TextView textView = this.f32003g;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        TextView textView2 = this.f32006j;
        if (textView2 != null) {
            textView2.setOnClickListener(new c());
        }
        Button button = this.f32007k;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new e());
        }
        TextView textView3 = this.f32009m;
        if (textView3 != null) {
            textView3.setOnClickListener(new f());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new g());
        }
        S0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.H0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameTransferActivity
    public void q1() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.G0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameTransferActivity
    public void t1() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameTransferActivity
    public void toast(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.G0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.G0.a(this);
    }
}
