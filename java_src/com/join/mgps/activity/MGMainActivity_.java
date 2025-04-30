package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.customview.CircleDownloadProgressBar;
import com.join.mgps.customview.LightningView;
import com.join.mgps.db.tables.VideoWatchLogTable;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.JPushIntentData;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MGMainActivity_ extends MGMainActivity implements g3.a, i3.a, i3.b {
    public static final String E = "intentDateBean";
    public static final String F = "intentDateBean22";
    public static final String G = "jPushIntentData";

    /* renamed from: a  reason: collision with root package name */
    private final i3.c f33278a = new i3.c();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Object> f33279b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final IntentFilter f33280c = new IntentFilter();

    /* renamed from: d  reason: collision with root package name */
    private final BroadcastReceiver f33281d = new o();

    /* renamed from: e  reason: collision with root package name */
    private final IntentFilter f33282e = new IntentFilter();

    /* renamed from: f  reason: collision with root package name */
    private final BroadcastReceiver f33283f = new z();

    /* renamed from: g  reason: collision with root package name */
    private final IntentFilter f33284g = new IntentFilter();

    /* renamed from: h  reason: collision with root package name */
    private final BroadcastReceiver f33285h = new k0();

    /* renamed from: i  reason: collision with root package name */
    private final IntentFilter f33286i = new IntentFilter();

    /* renamed from: j  reason: collision with root package name */
    private final BroadcastReceiver f33287j = new v0();

    /* renamed from: k  reason: collision with root package name */
    private final IntentFilter f33288k = new IntentFilter();

    /* renamed from: l  reason: collision with root package name */
    private final BroadcastReceiver f33289l = new g1();

    /* renamed from: m  reason: collision with root package name */
    private final IntentFilter f33290m = new IntentFilter();

    /* renamed from: o  reason: collision with root package name */
    private final BroadcastReceiver f33291o = new r1();

    /* renamed from: p  reason: collision with root package name */
    private final IntentFilter f33292p = new IntentFilter();

    /* renamed from: q  reason: collision with root package name */
    private final BroadcastReceiver f33293q = new c2();

    /* renamed from: s  reason: collision with root package name */
    private final IntentFilter f33294s = new IntentFilter();

    /* renamed from: t  reason: collision with root package name */
    private final BroadcastReceiver f33295t = new n2();

    /* renamed from: u  reason: collision with root package name */
    private final IntentFilter f33296u = new IntentFilter();

    /* renamed from: v  reason: collision with root package name */
    private final BroadcastReceiver f33297v = new y2();

    /* renamed from: w  reason: collision with root package name */
    private final IntentFilter f33298w = new IntentFilter();

    /* renamed from: x  reason: collision with root package name */
    private final BroadcastReceiver f33299x = new e();

    /* renamed from: y  reason: collision with root package name */
    private final IntentFilter f33300y = new IntentFilter();

    /* renamed from: z  reason: collision with root package name */
    private final BroadcastReceiver f33301z = new f();
    private final IntentFilter A = new IntentFilter();
    private final BroadcastReceiver B = new g();
    private final IntentFilter C = new IntentFilter();
    private final BroadcastReceiver D = new h();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.handleVideoAdWatchLogRecord();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f33303a;

        a0(CollectionBeanSub collectionBeanSub) {
            this.f33303a = collectionBeanSub;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showSharedGameDialog(this.f33303a);
        }
    }

    /* loaded from: classes3.dex */
    class a1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33305a;

        a1(List list) {
            this.f33305a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showCheckData(this.f33305a);
        }
    }

    /* loaded from: classes3.dex */
    class a2 extends a.c {
        a2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.rewadCopper();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.afterLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33309a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f33310b;

        b0(int i2, List list) {
            this.f33309a = i2;
            this.f33310b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showInstallAppDialogActivity(this.f33309a, this.f33310b);
        }
    }

    /* loaded from: classes3.dex */
    class b1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33312a;

        b1(String str) {
            this.f33312a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showToast(this.f33312a);
        }
    }

    /* loaded from: classes3.dex */
    class b2 extends a.c {
        b2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.init();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33315a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f33315a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.reject(this.f33315a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RewardBean f33317a;

        c0(RewardBean rewardBean) {
            this.f33317a = rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.toastData(this.f33317a);
        }
    }

    /* loaded from: classes3.dex */
    class c1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SNKGameInfoBean f33319a;

        c1(SNKGameInfoBean sNKGameInfoBean) {
            this.f33319a = sNKGameInfoBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.setSNKGameData(this.f33319a);
        }
    }

    /* loaded from: classes3.dex */
    class c2 extends BroadcastReceiver {
        c2() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.recveidcoinfloat(intent);
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33322a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f33322a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getOnlineCouponConfig(this.f33322a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33324a;

        d0(String str) {
            this.f33324a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showMessage(this.f33324a);
        }
    }

    /* loaded from: classes3.dex */
    class d1 implements Runnable {
        d1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.initAdVideoConfig();
        }
    }

    /* loaded from: classes3.dex */
    class d2 extends a.c {
        d2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends BroadcastReceiver {
        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.downloadPermissGet(intent);
        }
    }

    /* loaded from: classes3.dex */
    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateHistory();
        }
    }

    /* loaded from: classes3.dex */
    class e1 implements Runnable {
        e1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.delayChangeAdshow();
        }
    }

    /* loaded from: classes3.dex */
    class e2 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33331a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e2(String str, long j4, String str2, boolean z3) {
            super(str, j4, str2);
            this.f33331a = z3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.startBackups(this.f33331a);
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
            MGMainActivity_.this.accountChange(intent);
        }
    }

    /* loaded from: classes3.dex */
    class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33334a;

        f0(int i2) {
            this.f33334a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showBackupFinishDialog(this.f33334a);
        }
    }

    /* loaded from: classes3.dex */
    class f1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f33336a;

        f1(View view) {
            this.f33336a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.startAlphaBreathAnimation(this.f33336a);
        }
    }

    /* loaded from: classes3.dex */
    class f2 extends a.c {
        f2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.startLoadRecommendwifi();
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
            MGMainActivity_.this.afterLogin();
        }
    }

    /* loaded from: classes3.dex */
    class g0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33340a;

        g0(List list) {
            this.f33340a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.getdownloadTaskUI(this.f33340a);
        }
    }

    /* loaded from: classes3.dex */
    class g1 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f33342b = "gameId";

        g1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.unreadnotify((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("gameId"));
        }
    }

    /* loaded from: classes3.dex */
    class g2 extends a.c {
        g2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getdownloadTask();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f33345b = "packageName";

        h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.emuOnResume((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("packageName"));
        }
    }

    /* loaded from: classes3.dex */
    class h0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33347a;

        h0(String str) {
            this.f33347a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.sendRegister(this.f33347a);
        }
    }

    /* loaded from: classes3.dex */
    class h1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33349a;

        h1(DownloadTask downloadTask) {
            this.f33349a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.delaydown(this.f33349a);
        }
    }

    /* loaded from: classes3.dex */
    class h2 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33351a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h2(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f33351a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.sendRigester(this.f33351a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.mg_recom_tabselectClicked();
        }
    }

    /* loaded from: classes3.dex */
    class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33354a;

        i0(int i2) {
            this.f33354a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateLine(this.f33354a);
        }
    }

    /* loaded from: classes3.dex */
    class i1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.event.m f33356a;

        i1(com.join.mgps.event.m mVar) {
            this.f33356a = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.startGameRoom(this.f33356a);
        }
    }

    /* loaded from: classes3.dex */
    class i2 extends a.c {
        i2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkDownlodingNumber();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.mg_category_tabselectClicked();
        }
    }

    /* loaded from: classes3.dex */
    class j0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33360a;

        j0(int i2) {
            this.f33360a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateDownloadingPoint(this.f33360a);
        }
    }

    /* loaded from: classes3.dex */
    class j1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaRequest f33362a;

        j1(ArenaRequest arenaRequest) {
            this.f33362a = arenaRequest;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showInputRoomPwdDialog(this.f33362a);
        }
    }

    /* loaded from: classes3.dex */
    class j2 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33364a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j2(String str, long j4, String str2, boolean z3) {
            super(str, j4, str2);
            this.f33364a = z3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getVideoAdCfg(this.f33364a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.mg_chart_tabselectClicked();
        }
    }

    /* loaded from: classes3.dex */
    class k0 extends BroadcastReceiver {
        k0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.showupdateDialog(intent);
        }
    }

    /* loaded from: classes3.dex */
    class k1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArenaResponse f33368a;

        k1(ArenaResponse arenaResponse) {
            this.f33368a = arenaResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.handleFailure(this.f33368a);
        }
    }

    /* loaded from: classes3.dex */
    class k2 extends a.c {
        k2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getEMUVersion();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.mg_emulator_tabselect();
        }
    }

    /* loaded from: classes3.dex */
    class l0 implements Runnable {
        l0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateNoOpenPoint();
        }
    }

    /* loaded from: classes3.dex */
    class l1 implements Runnable {
        l1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.autoSendAdd();
        }
    }

    /* loaded from: classes3.dex */
    class l2 extends a.c {
        l2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.pullUpExtHelper();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.fightSelect();
        }
    }

    /* loaded from: classes3.dex */
    class m0 implements Runnable {
        m0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateHidePoint();
        }
    }

    /* loaded from: classes3.dex */
    class m1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ OnlineCouponConfigBean f33377a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33378b;

        m1(OnlineCouponConfigBean onlineCouponConfigBean, int i2) {
            this.f33377a = onlineCouponConfigBean;
            this.f33378b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showOnlineCouponDialog(this.f33377a, this.f33378b);
        }
    }

    /* loaded from: classes3.dex */
    class m2 extends a.c {
        m2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.onresumData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.hideSplash();
        }
    }

    /* loaded from: classes3.dex */
    class n0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VersionDto f33382a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f33383b;

        n0(VersionDto versionDto, boolean z3) {
            this.f33382a = versionDto;
            this.f33383b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showVersionDownLoadHint(this.f33382a, this.f33383b);
        }
    }

    /* loaded from: classes3.dex */
    class n1 extends a.c {
        n1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.saveUUID();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n2 extends BroadcastReceiver {
        n2() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.receivedInitAdVideoConfig(intent);
        }
    }

    /* loaded from: classes3.dex */
    class o extends BroadcastReceiver {
        o() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.recivedShowToast(intent);
        }
    }

    /* loaded from: classes3.dex */
    class o0 implements Runnable {
        o0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.startPlayVideo();
        }
    }

    /* loaded from: classes3.dex */
    class o1 extends a.c {
        o1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.initApplicationData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o2 extends a.c {
        o2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.updateAndroidApp();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.hideSplash2();
        }
    }

    /* loaded from: classes3.dex */
    class p0 implements Runnable {
        p0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.refreshTabIcon();
        }
    }

    /* loaded from: classes3.dex */
    class p1 extends a.c {
        p1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getRootUrl();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p2 extends a.c {
        p2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.setwifiStadu();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showRedPoint();
        }
    }

    /* loaded from: classes3.dex */
    class q0 implements Runnable {
        q0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.serverConnectionException();
        }
    }

    /* loaded from: classes3.dex */
    class q1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33397a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33398b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q1(String str, long j4, String str2, List list, int i2) {
            super(str, j4, str2);
            this.f33397a = list;
            this.f33398b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.initCheckSNKGame(this.f33397a, this.f33398b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q2 extends a.c {
        q2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.hideRedPoint();
        }
    }

    /* loaded from: classes3.dex */
    class r0 implements Runnable {
        r0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showDownNotice();
        }
    }

    /* loaded from: classes3.dex */
    class r1 extends BroadcastReceiver {
        r1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.recveidDownLiveRes(intent);
        }
    }

    /* loaded from: classes3.dex */
    class r2 extends a.c {
        r2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getHomePopupAd();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33405a;

        s(boolean z3) {
            this.f33405a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.checkShowOldUserRecom(this.f33405a);
        }
    }

    /* loaded from: classes3.dex */
    class s0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33407a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f33408b;

        s0(DownloadTask downloadTask, int i2) {
            this.f33407a = downloadTask;
            this.f33408b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.receiveStart(this.f33407a, this.f33408b);
        }
    }

    /* loaded from: classes3.dex */
    class s1 extends a.c {
        s1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.preloadingAD();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class s2 extends a.c {
        s2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getBootPageData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.checkRealName();
        }
    }

    /* loaded from: classes3.dex */
    class t0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33413a;

        t0(DownloadTask downloadTask) {
            this.f33413a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.receiveSuccess(this.f33413a);
        }
    }

    /* loaded from: classes3.dex */
    class t1 extends a.c {
        t1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.initJPushJoinDevice();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class t2 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupAdBean f33416a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t2(String str, long j4, String str2, PopupAdBean popupAdBean) {
            super(str, j4, str2);
            this.f33416a = popupAdBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.preLoad(this.f33416a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.selectTableDelay();
        }
    }

    /* loaded from: classes3.dex */
    class u0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33419a;

        u0(DownloadTask downloadTask) {
            this.f33419a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.receiveDelete(this.f33419a);
        }
    }

    /* loaded from: classes3.dex */
    class u1 extends a.c {
        u1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getRedPointData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class u2 extends a.c {
        u2(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkSNKGame();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33423a;

        v(List list) {
            this.f33423a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.setADCacheData(this.f33423a);
        }
    }

    /* loaded from: classes3.dex */
    class v0 extends BroadcastReceiver {
        v0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.backUpGameFinish(intent);
        }
    }

    /* loaded from: classes3.dex */
    class v1 extends a.c {
        v1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getHaveGameList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class v2 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33427a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v2(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f33427a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getSNKGameInfo(this.f33427a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.checkPlugNeedUpdate();
        }
    }

    /* loaded from: classes3.dex */
    class w0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33430a;

        w0(String str) {
            this.f33430a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.error(this.f33430a);
        }
    }

    /* loaded from: classes3.dex */
    class w1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33432a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w1(String str, long j4, String str2, List list) {
            super(str, j4, str2);
            this.f33432a = list;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.savePurchasedList(this.f33432a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class w2 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.ad.c f33434a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w2(String str, long j4, String str2, com.join.mgps.ad.c cVar) {
            super(str, j4, str2);
            this.f33434a = cVar;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.delayLoadRewardAd(this.f33434a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33436a;

        x(boolean z3) {
            this.f33436a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.getData(this.f33436a);
        }
    }

    /* loaded from: classes3.dex */
    class x0 implements Runnable {
        x0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showAdM();
        }
    }

    /* loaded from: classes3.dex */
    class x1 extends a.c {
        x1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkPurchasedList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class x2 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoWatchLogTable f33440a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f33441b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x2(String str, long j4, String str2, VideoWatchLogTable videoWatchLogTable, boolean z3) {
            super(str, j4, str2);
            this.f33440a = videoWatchLogTable;
            this.f33441b = z3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.videoAdWatchLog(this.f33440a, this.f33441b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f33443a;

        y(long j4) {
            this.f33443a = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.startIntentOldUserRecom(this.f33443a);
        }
    }

    /* loaded from: classes3.dex */
    class y0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupAdBean f33445a;

        y0(PopupAdBean popupAdBean) {
            this.f33445a = popupAdBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showHomePopupAd(this.f33445a);
        }
    }

    /* loaded from: classes3.dex */
    class y1 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f33447a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y1(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f33447a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getDetailData(this.f33447a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class y2 extends BroadcastReceiver {
        y2() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.downloaddelay(intent);
        }
    }

    /* loaded from: classes3.dex */
    class z extends BroadcastReceiver {
        z() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.getUpdateIntent(intent);
        }
    }

    /* loaded from: classes3.dex */
    class z0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33451a;

        z0(int i2) {
            this.f33451a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.sanLocalGameIv(this.f33451a);
        }
    }

    /* loaded from: classes3.dex */
    class z1 extends a.c {
        z1(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkInstallApp();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class z2 extends org.androidannotations.api.builder.a<z2> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33454a;

        public z2(Context context) {
            super(context, MGMainActivity_.class);
        }

        public z2 a(IntentDateBean intentDateBean) {
            return (z2) super.extra("intentDateBean", intentDateBean);
        }

        public z2 b(IntentDateBean intentDateBean) {
            return (z2) super.extra(MGMainActivity_.F, intentDateBean);
        }

        public z2 c(JPushIntentData jPushIntentData) {
            return (z2) super.extra(MGMainActivity_.G, jPushIntentData);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33454a;
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

        public z2(Fragment fragment) {
            super(fragment.getActivity(), MGMainActivity_.class);
            this.f33454a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        ((MGMainActivity) this).prefDef = new PrefDef_(this);
        i3.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectException = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.f33280c.addAction("com.join.intent.showtoast");
        this.f33282e.addAction(f1.a.J);
        this.f33284g.addAction(f1.a.f65473e0);
        this.f33286i.addAction(f1.a.f65512y);
        this.f33288k.addAction(f1.a.f65484k);
        this.f33290m.addAction(f1.a.D);
        this.f33292p.addAction(f1.a.E);
        this.f33294s.addAction(f1.a.f65501s0);
        this.f33296u.addAction(f1.a.f65483j0);
        this.f33298w.addAction(f1.a.f65485k0);
        this.f33300y.addAction(f1.a.B);
        this.A.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        this.C.addAction(f1.a.f65471d0);
        registerReceiver(this.f33281d, this.f33280c);
        registerReceiver(this.f33283f, this.f33282e);
        registerReceiver(this.f33285h, this.f33284g);
        registerReceiver(this.f33287j, this.f33286i);
        registerReceiver(this.f33289l, this.f33288k);
        registerReceiver(this.f33291o, this.f33290m);
        registerReceiver(this.f33293q, this.f33292p);
        registerReceiver(this.f33295t, this.f33294s);
        registerReceiver(this.f33297v, this.f33296u);
        registerReceiver(this.f33299x, this.f33298w);
        registerReceiver(this.f33301z, this.f33300y);
        registerReceiver(this.B, this.A);
        registerReceiver(this.D, this.C);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentDateBean")) {
                this.intentDateBean = (IntentDateBean) extras.getSerializable("intentDateBean");
            }
            if (extras.containsKey(F)) {
                this.intentDateBean22 = (IntentDateBean) extras.getSerializable(F);
            }
            if (extras.containsKey(G)) {
                this.jPushIntentData = (JPushIntentData) extras.getSerializable(G);
            }
        }
    }

    public static z2 y2(Context context) {
        return new z2(context);
    }

    public static z2 z2(Fragment fragment) {
        return new z2(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void afterLogin() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void autoSendAdd() {
        org.androidannotations.api.b.e("", new l1(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkDownlodingNumber() {
        org.androidannotations.api.a.l(new i2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkInstallApp() {
        org.androidannotations.api.a.l(new z1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkPlugNeedUpdate() {
        org.androidannotations.api.b.e("", new w(), 1200L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkPurchasedList() {
        org.androidannotations.api.a.l(new x1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkRealName() {
        org.androidannotations.api.b.e("", new t(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkSNKGame() {
        org.androidannotations.api.a.l(new u2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkShowOldUserRecom(boolean z3) {
        org.androidannotations.api.b.e("", new s(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkToken() {
        org.androidannotations.api.a.l(new d2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void delayChangeAdshow() {
        org.androidannotations.api.b.e("", new e1(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void delayLoadRewardAd(com.join.mgps.ad.c cVar) {
        org.androidannotations.api.a.l(new w2("", 300L, "", cVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void delaydown(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new h1(downloadTask), 3000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new w0(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33279b.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getBootPageData() {
        org.androidannotations.api.a.l(new s2("", 1500L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getData(boolean z3) {
        org.androidannotations.api.b.e("", new x(z3), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getDetailData(String str) {
        org.androidannotations.api.a.l(new y1("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getEMUVersion() {
        org.androidannotations.api.a.l(new k2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getHaveGameList() {
        org.androidannotations.api.a.l(new v1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getHomePopupAd() {
        org.androidannotations.api.a.l(new r2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getOnlineCouponConfig(int i4) {
        org.androidannotations.api.a.l(new d("", 0L, "", i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getRedPointData() {
        org.androidannotations.api.a.l(new u1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getRootUrl() {
        org.androidannotations.api.a.l(new p1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getSNKGameInfo(int i4) {
        org.androidannotations.api.a.l(new v2("", 0L, "", i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getVideoAdCfg(boolean z3) {
        org.androidannotations.api.a.l(new j2("", 0L, "", z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getdownloadTask() {
        org.androidannotations.api.a.l(new g2("", 1000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getdownloadTaskUI(List<DownloadTask> list) {
        org.androidannotations.api.b.e("", new g0(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void handleFailure(ArenaResponse arenaResponse) {
        org.androidannotations.api.b.e("", new k1(arenaResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void handleVideoAdWatchLogRecord() {
        org.androidannotations.api.a.l(new a("", 5000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void hideRedPoint() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void hideSplash() {
        org.androidannotations.api.b.e("", new n(), 1300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void hideSplash2() {
        org.androidannotations.api.b.e("", new p(), 1300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void init() {
        org.androidannotations.api.a.l(new b2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initAdVideoConfig() {
        org.androidannotations.api.b.e("", new d1(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initApplicationData() {
        org.androidannotations.api.a.l(new o1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initCheckSNKGame(List<String> list, int i4) {
        org.androidannotations.api.a.l(new q1("", 0L, "", list, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initJPushJoinDevice() {
        org.androidannotations.api.a.l(new t1("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i4) {
        return (T) findViewById(i4);
    }

    @Override // com.join.mgps.activity.MGMainActivity, com.join.android.app.common.servcie.DownloadBaseActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33278a);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_mainlayout);
    }

    @Override // com.join.mgps.activity.MGMainActivity, com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f33281d);
        unregisterReceiver(this.f33283f);
        unregisterReceiver(this.f33285h);
        unregisterReceiver(this.f33287j);
        unregisterReceiver(this.f33289l);
        unregisterReceiver(this.f33291o);
        unregisterReceiver(this.f33293q);
        unregisterReceiver(this.f33295t);
        unregisterReceiver(this.f33297v);
        unregisterReceiver(this.f33299x);
        unregisterReceiver(this.f33301z);
        unregisterReceiver(this.B);
        unregisterReceiver(this.D);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.numberInTab = (LightningView) aVar.internalFindViewById(R.id.numberInTab);
        this.cdp_down_progress = (CircleDownloadProgressBar) aVar.internalFindViewById(R.id.cdp_down_progress);
        this.downlodingGameIcon = (SimpleDraweeView) aVar.internalFindViewById(R.id.downlodingGameIcon);
        this.splash = (ImageView) aVar.internalFindViewById(R.id.splash);
        this.bottom = (LinearLayout) aVar.internalFindViewById(R.id.bottom);
        this.mg_recom_tabselect = (RelativeLayout) aVar.internalFindViewById(R.id.mg_recom_tabselect);
        this.mg_category_tabselect = (LinearLayout) aVar.internalFindViewById(R.id.mg_category_tabselect);
        this.mg_emulator_tabselect = (RelativeLayout) aVar.internalFindViewById(R.id.mg_emulator_tabselect);
        this.mg_recom_image = (ImageView) aVar.internalFindViewById(R.id.mg_recom_image);
        this.mg_recom_text = (TextView) aVar.internalFindViewById(R.id.mg_recom_text);
        this.mg_category_image = (ImageView) aVar.internalFindViewById(R.id.mg_category_image);
        this.mg_category_text = (TextView) aVar.internalFindViewById(R.id.mg_category_text);
        this.mg_chart_image = (ImageView) aVar.internalFindViewById(R.id.mg_chart_image);
        this.gifIcon = (SimpleDraweeView) aVar.internalFindViewById(R.id.gifIcon);
        this.mg_chart_text = (TextView) aVar.internalFindViewById(R.id.mg_chart_text);
        this.mg_emulator_image = (ImageView) aVar.internalFindViewById(R.id.mg_emulator_image);
        this.mg_emulator_text = (TextView) aVar.internalFindViewById(R.id.mg_emulator_text);
        this.fightImage = (ImageView) aVar.internalFindViewById(R.id.fightImage);
        this.fightText = (TextView) aVar.internalFindViewById(R.id.fightText);
        this.red_point = (TextView) aVar.internalFindViewById(R.id.red_point);
        this.fightSelect = (RelativeLayout) aVar.internalFindViewById(R.id.fightSelect);
        this.mg_chart_tabselect = (RelativeLayout) aVar.internalFindViewById(R.id.mg_chart_tabselect);
        this.unreadMessageBadge = (TextView) aVar.internalFindViewById(R.id.unreadMessageBadge);
        this.home_tab_monkey_layout = (RelativeLayout) aVar.internalFindViewById(R.id.home_tab_monkey_layout);
        this.home_tab_default_layout = (LinearLayout) aVar.internalFindViewById(R.id.home_tab_default_layout);
        this.home_tab_monkey_image = (ImageView) aVar.internalFindViewById(R.id.home_tab_monkey_image);
        this.home_tab_huojian_image = (ImageView) aVar.internalFindViewById(R.id.home_tab_huojian_image);
        this.imageView36 = (ImageView) aVar.internalFindViewById(R.id.imageView36);
        this.layout_others = (RelativeLayout) aVar.internalFindViewById(R.id.layout_others);
        this.discoverNormal = (LinearLayout) aVar.internalFindViewById(R.id.discoverNormal);
        this.discoverMessage = (ImageView) aVar.internalFindViewById(R.id.discoverMessage);
        this.discoverHuojian = (ImageView) aVar.internalFindViewById(R.id.discoverHuojian);
        this.notice_text = (TextView) aVar.internalFindViewById(R.id.notice_text);
        this.dialogBack = (TextView) aVar.internalFindViewById(R.id.dialogBack);
        this.notice_layout = (LinearLayout) aVar.internalFindViewById(R.id.notice_layout);
        this.bigCenterRound = (TextView) aVar.internalFindViewById(R.id.bigCenterRound);
        this.miniGameBadge = (TextView) aVar.internalFindViewById(R.id.miniGameBadge);
        RelativeLayout relativeLayout = this.mg_recom_tabselect;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new i());
        }
        LinearLayout linearLayout = this.mg_category_tabselect;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new j());
        }
        RelativeLayout relativeLayout2 = this.mg_chart_tabselect;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new k());
        }
        RelativeLayout relativeLayout3 = this.mg_emulator_tabselect;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnClickListener(new l());
        }
        RelativeLayout relativeLayout4 = this.fightSelect;
        if (relativeLayout4 != null) {
            relativeLayout4.setOnClickListener(new m());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void onresumData() {
        org.androidannotations.api.a.l(new m2("", 1000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void preLoad(PopupAdBean popupAdBean) {
        org.androidannotations.api.a.l(new t2("", 0L, "", popupAdBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void preloadingAD() {
        org.androidannotations.api.a.l(new s1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void pullUpExtHelper() {
        org.androidannotations.api.a.l(new l2("", 0L, ""));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33279b.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void receiveDelete(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new u0(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void receiveStart(DownloadTask downloadTask, int i4) {
        org.androidannotations.api.b.e("", new s0(downloadTask, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void receiveSuccess(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new t0(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void refreshTabIcon() {
        org.androidannotations.api.b.e("", new p0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void reject(int i4) {
        org.androidannotations.api.a.l(new c("", 0L, "", i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void rewadCopper() {
        org.androidannotations.api.a.l(new a2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void sanLocalGameIv(int i4) {
        org.androidannotations.api.b.e("", new z0(i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void savePurchasedList(List<AppBean> list) {
        org.androidannotations.api.a.l(new w1("", 0L, "", list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void saveUUID() {
        org.androidannotations.api.a.l(new n1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void selectTableDelay() {
        org.androidannotations.api.b.e("", new u(), 800L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void sendRegister(String str) {
        org.androidannotations.api.b.e("", new h0(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void sendRigester(String str) {
        org.androidannotations.api.a.l(new h2("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new q0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void setADCacheData(List<GameHeadAd> list) {
        org.androidannotations.api.b.e("", new v(list), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i4) {
        super.setContentView(i4);
        this.f33278a.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void setSNKGameData(SNKGameInfoBean sNKGameInfoBean) {
        org.androidannotations.api.b.e("", new c1(sNKGameInfoBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void setwifiStadu() {
        org.androidannotations.api.a.l(new p2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showAdM() {
        org.androidannotations.api.b.e("", new x0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showBackupFinishDialog(int i4) {
        org.androidannotations.api.b.e("", new f0(i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showCheckData(List<CollectionBeanSub> list) {
        org.androidannotations.api.b.e("", new a1(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showDownNotice() {
        org.androidannotations.api.b.e("", new r0(), 1500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showHomePopupAd(PopupAdBean popupAdBean) {
        org.androidannotations.api.b.e("", new y0(popupAdBean), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showInputRoomPwdDialog(ArenaRequest arenaRequest) {
        org.androidannotations.api.b.e("", new j1(arenaRequest), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showInstallAppDialogActivity(int i4, List<DownloadTask> list) {
        org.androidannotations.api.b.e("", new b0(i4, list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new d0(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showOnlineCouponDialog(OnlineCouponConfigBean onlineCouponConfigBean, int i4) {
        org.androidannotations.api.b.e("", new m1(onlineCouponConfigBean, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showRedPoint() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showSharedGameDialog(CollectionBeanSub collectionBeanSub) {
        org.androidannotations.api.b.e("", new a0(collectionBeanSub), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new b1(str), 0L);
    }

    @Override // com.join.mgps.activity.MGMainActivity
    public void showVersionDownLoadHint(VersionDto versionDto, boolean z3) {
        org.androidannotations.api.b.e("", new n0(versionDto, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startAlphaBreathAnimation(View view) {
        org.androidannotations.api.b.e("", new f1(view), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startBackups(boolean z3) {
        org.androidannotations.api.a.l(new e2("", 0L, "", z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startGameRoom(com.join.mgps.event.m mVar) {
        org.androidannotations.api.b.e("", new i1(mVar), 200L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startIntentOldUserRecom(long j4) {
        org.androidannotations.api.b.e("", new y(j4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startLoadRecommendwifi() {
        org.androidannotations.api.a.l(new f2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startPlayVideo() {
        org.androidannotations.api.b.e("", new o0(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void toastData(RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new c0(rewardBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new q2("", 1000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateAndroidApp() {
        org.androidannotations.api.a.l(new o2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateDownloadingPoint(int i4) {
        org.androidannotations.api.b.e("", new j0(i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateHidePoint() {
        org.androidannotations.api.b.e("", new m0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateHistory() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateLine(int i4) {
        org.androidannotations.api.b.e("", new i0(i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateNoOpenPoint() {
        org.androidannotations.api.b.e("", new l0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void videoAdWatchLog(VideoWatchLogTable videoWatchLogTable, boolean z3) {
        org.androidannotations.api.a.l(new x2("", 0L, "", videoWatchLogTable, z3));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33278a.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33278a.a(this);
    }
}
