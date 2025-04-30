package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.GameShareData;
import com.zhy.view.flowlayout.TagFlowLayout;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ShareGameActivity_ extends ShareGameActivity implements g3.a, i3.a, i3.b {

    /* renamed from: y0  reason: collision with root package name */
    public static final String f35295y0 = "downloadTask";

    /* renamed from: u0  reason: collision with root package name */
    private final i3.c f35296u0 = new i3.c();

    /* renamed from: v0  reason: collision with root package name */
    private final Map<Class<?>, Object> f35297v0 = new HashMap();

    /* renamed from: w0  reason: collision with root package name */
    private final IntentFilter f35298w0 = new IntentFilter();

    /* renamed from: x0  reason: collision with root package name */
    private final BroadcastReceiver f35299x0 = new f();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareGameActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameShareData f35301a;

        b(GameShareData gameShareData) {
            this.f35301a = gameShareData;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareGameActivity_.super.W0(this.f35301a);
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
                ShareGameActivity_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35304a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f35304a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareGameActivity_.super.O0(this.f35304a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35306a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f35306a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareGameActivity_.super.N0(this.f35306a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ShareGameActivity_.this.C0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.back();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.X0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.V0();
        }
    }

    /* loaded from: classes3.dex */
    public static class o extends org.androidannotations.api.builder.a<o> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35317a;

        public o(Context context) {
            super(context, ShareGameActivity_.class);
        }

        public o a(DownloadTask downloadTask) {
            return (o) super.extra("downloadTask", downloadTask);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35317a;
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

        public o(Fragment fragment) {
            super(fragment.getActivity(), ShareGameActivity_.class);
            this.f35317a = fragment;
        }
    }

    public static o d1(Context context) {
        return new o(context);
    }

    public static o e1(Fragment fragment) {
        return new o(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.f35298w0.addAction(f1.a.B);
        registerReceiver(this.f35299x0, this.f35298w0);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("downloadTask")) {
            return;
        }
        this.K = (DownloadTask) extras.getSerializable("downloadTask");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void I0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void M0() {
        org.androidannotations.api.b.e("", new a(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void N0(String str) {
        org.androidannotations.api.a.l(new e("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void O0(String str) {
        org.androidannotations.api.a.l(new d("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void W0(GameShareData gameShareData) {
        org.androidannotations.api.b.e("", new b(gameShareData), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35297v0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35296u0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_share_game);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f35299x0);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35252a = (SimpleDraweeView) aVar.internalFindViewById(R.id.titleImg);
        this.f35253b = (SimpleDraweeView) aVar.internalFindViewById(R.id.backImg);
        this.f35254c = (TextView) aVar.internalFindViewById(R.id.msg);
        this.f35255d = (TextView) aVar.internalFindViewById(R.id.msgEnd);
        this.f35256e = (TextView) aVar.internalFindViewById(R.id.appName);
        this.f35257f = (TextView) aVar.internalFindViewById(R.id.startGame);
        this.f35258g = (SimpleDraweeView) aVar.internalFindViewById(R.id.icon);
        this.f35259h = (SimpleDraweeView) aVar.internalFindViewById(R.id.userIcon);
        this.f35260i = (LinearLayout) aVar.internalFindViewById(R.id.sharMainlayout);
        this.f35261j = (LinearLayout) aVar.internalFindViewById(R.id.starLayout);
        this.f35262k = (LinearLayout) aVar.internalFindViewById(R.id.tipsLayout);
        this.f35263l = (LinearLayout) aVar.internalFindViewById(R.id.commitLayout);
        this.f35264m = (LinearLayout) aVar.internalFindViewById(R.id.startGameLayout);
        this.f35265n = (LinearLayout) aVar.internalFindViewById(R.id.sharEndlayout);
        this.f35267o = (LinearLayout) aVar.internalFindViewById(R.id.shareLayout);
        this.f35269p = (MStarBar) aVar.internalFindViewById(R.id.selecteStar);
        this.f35271q = (MStarBar) aVar.internalFindViewById(R.id.selecteStar2);
        this.f35273r = (MStarBar) aVar.internalFindViewById(R.id.selecteStar3);
        this.f35275s = (MStarBar) aVar.internalFindViewById(R.id.selecteStarEnd);
        this.f35277t = (SimpleDraweeView) aVar.internalFindViewById(R.id.userIcon2);
        this.f35279u = (SimpleDraweeView) aVar.internalFindViewById(R.id.userIcon3);
        this.f35280v = (SimpleDraweeView) aVar.internalFindViewById(R.id.titleImgEnd);
        this.f35281w = (SimpleDraweeView) aVar.internalFindViewById(R.id.iconEnd);
        this.f35282x = (SimpleDraweeView) aVar.internalFindViewById(R.id.userIconEnd);
        this.f35283y = (TextView) aVar.internalFindViewById(R.id.userName);
        this.f35284z = (TextView) aVar.internalFindViewById(R.id.userName3);
        this.A = (TextView) aVar.internalFindViewById(R.id.commit);
        this.B = (TextView) aVar.internalFindViewById(R.id.appNameEnd);
        this.C = (TextView) aVar.internalFindViewById(R.id.userNameEnd);
        this.D = (TextView) aVar.internalFindViewById(R.id.selectedMessage);
        this.E = (TagFlowLayout) aVar.internalFindViewById(R.id.tips);
        this.F = (ImageView) aVar.internalFindViewById(R.id.zxing);
        this.G = (ImageView) aVar.internalFindViewById(R.id.back);
        this.H = (ImageView) aVar.internalFindViewById(R.id.notShow);
        this.I = (EditText) aVar.internalFindViewById(R.id.editText);
        this.J = (ImageView) aVar.internalFindViewById(R.id.closeImg);
        View internalFindViewById = aVar.internalFindViewById(R.id.qqLayout);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.weichartLayout);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.friendLayout);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.qZoneLayout);
        ImageView imageView = this.J;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        ImageView imageView2 = this.H;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new h());
        }
        ImageView imageView3 = this.G;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new i());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new j());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new k());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new l());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new m());
        }
        TextView textView = this.f35257f;
        if (textView != null) {
            textView.setOnClickListener(new n());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35297v0.put(cls, t3);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35296u0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35296u0.a(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35296u0.a(this);
    }
}
