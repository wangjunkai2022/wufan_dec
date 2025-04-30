package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ApFightActivity_ extends ApFightActivity implements g3.a, i3.a, i3.b {

    /* renamed from: e  reason: collision with root package name */
    public static final String f28347e = "gameId";

    /* renamed from: a  reason: collision with root package name */
    private final i3.c f28348a = new i3.c();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Object> f28349b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final IntentFilter f28350c = new IntentFilter();

    /* renamed from: d  reason: collision with root package name */
    private final BroadcastReceiver f28351d = new i();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.modeIconWifi();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity_.super.afterStartGame();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity_.super.startGameServer();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity_.super.startGameClient();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity_.super.startGameClientWifi();
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ApFightActivity_.super.disConnectWifiFightAPClient();
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
                ApFightActivity_.super.disConnectWifiFightClient();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ApFightActivity_.super.fightStartClicked();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends BroadcastReceiver {
        i() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ApFightActivity_.this.connectToChosen(intent);
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.zxingTipBtn();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.zxingCloseBtn();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.serverBtn();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.zxingBtn();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.clientBtn();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.backClicked();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.fightStartClicked();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.modeIconAP();
        }
    }

    /* loaded from: classes3.dex */
    public static class r extends org.androidannotations.api.builder.a<r> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28369a;

        public r(Context context) {
            super(context, ApFightActivity_.class);
        }

        public r a(String str) {
            return (r) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28369a;
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

        public r(Fragment fragment) {
            super(fragment.getActivity(), ApFightActivity_.class);
            this.f28369a = fragment;
        }
    }

    public static r L0(Context context) {
        return new r(context);
    }

    public static r M0(Fragment fragment) {
        return new r(fragment);
    }

    private void init_(Bundle bundle) {
        this.prefDef = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        this.f28350c.addAction(com.join.mgps.broadcast.b.f44787a);
        registerReceiver(this.f28351d, this.f28350c);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.gameId = extras.getString("gameId");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void afterStartGame() {
        org.androidannotations.api.b.e("", new b(), 3000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void disConnectWifiFightAPClient() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void disConnectWifiFightClient() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void fightStartClicked() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28349b.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28348a);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.fight_activity);
    }

    @Override // com.join.mgps.activity.ApFightActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f28351d);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.hint = (TextView) aVar.internalFindViewById(R.id.hint);
        this.lcon = (ImageView) aVar.internalFindViewById(R.id.lcon);
        this.back = (ImageView) aVar.internalFindViewById(R.id.back);
        this.fightStart = (ImageView) aVar.internalFindViewById(R.id.fightStart);
        this.fightClientIcon = (ImageView) aVar.internalFindViewById(R.id.fightClientIcon);
        this.fightServerIcon = (ImageView) aVar.internalFindViewById(R.id.fightServerIcon);
        this.modeIconAP = (ImageView) aVar.internalFindViewById(R.id.modeIconAP);
        this.modeIconWifi = (ImageView) aVar.internalFindViewById(R.id.modeIconWifi);
        this.waitHint = (TextView) aVar.internalFindViewById(R.id.waitHint);
        this.serverBrandName = (TextView) aVar.internalFindViewById(R.id.serverBrandName);
        this.clientBrandName = (TextView) aVar.internalFindViewById(R.id.clientBrandName);
        this.num = (TextView) aVar.internalFindViewById(R.id.num);
        this.serverBtn = (Button) aVar.internalFindViewById(R.id.serverBtn);
        this.clientBtn = (Button) aVar.internalFindViewById(R.id.clientBtn);
        this.zxingBtn = (Button) aVar.internalFindViewById(R.id.zxingBtn);
        this.p1status_btn_around_img = (ImageView) aVar.internalFindViewById(R.id.p1status_btn_around_img);
        this.ap_net_match_info_1p_frame = (ImageView) aVar.internalFindViewById(R.id.ap_net_match_info_1p_frame);
        this.ap_net_match_info_2p_frame = (ImageView) aVar.internalFindViewById(R.id.ap_net_match_info_2p_frame);
        this.ssidTxt = (TextView) aVar.internalFindViewById(R.id.ssidTxt);
        this.ipTxt = (TextView) aVar.internalFindViewById(R.id.ipTxt);
        this.zxingImg = (ImageView) aVar.internalFindViewById(R.id.zxingImg);
        this.zxing_lay = (FrameLayout) aVar.internalFindViewById(R.id.zxing_lay);
        this.zxing_tip_lay = (LinearLayout) aVar.internalFindViewById(R.id.zxing_tip_lay);
        this.zxingTip1 = (TextView) aVar.internalFindViewById(R.id.zxingTip1);
        this.zxingTip2 = (TextView) aVar.internalFindViewById(R.id.zxingTip2);
        this.tipWifi = (TextView) aVar.internalFindViewById(R.id.tipWifi);
        this.apfight_zxing_content_lay = (RelativeLayout) aVar.internalFindViewById(R.id.apfight_zxing_content_lay);
        this.tipTxt2 = (TextView) aVar.internalFindViewById(R.id.tipTxt2);
        this.tipTxt1 = (TextView) aVar.internalFindViewById(R.id.tipTxt1);
        this.ip_lay = (LinearLayout) aVar.internalFindViewById(R.id.ip_lay);
        View internalFindViewById = aVar.internalFindViewById(R.id.zxingTipBtn);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.zxingCloseBtn);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new j());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new k());
        }
        Button button = this.serverBtn;
        if (button != null) {
            button.setOnClickListener(new l());
        }
        Button button2 = this.zxingBtn;
        if (button2 != null) {
            button2.setOnClickListener(new m());
        }
        Button button3 = this.clientBtn;
        if (button3 != null) {
            button3.setOnClickListener(new n());
        }
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new o());
        }
        ImageView imageView2 = this.fightStart;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new p());
        }
        ImageView imageView3 = this.modeIconAP;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new q());
        }
        ImageView imageView4 = this.modeIconWifi;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28349b.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28348a.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void startGameClient() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void startGameClientWifi() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void startGameServer() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28348a.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28348a.a(this);
    }
}
