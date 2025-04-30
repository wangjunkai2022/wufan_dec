package com.join.mgps.mod.activity;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.github.snowdream.android.app.downloader.b;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.u;
import com.join.mgps.Util.u0;
import com.join.mgps.Util.v0;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.va.overmind.h;
import com.join.mgps.va.service.MessengerService;
import com.papa91.arc.util.FileUtils;
import com.xinzhu.overmind.Overmind;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class ModLoadingActivity extends AppCompatActivity {
    static b.InterfaceC0098b A = null;
    private static Map<String, com.github.snowdream.android.app.downloader.c> B = new ConcurrentHashMap(0);
    public static int C = 0;
    public static final int D = 2;

    /* renamed from: y  reason: collision with root package name */
    public static final String f51004y = "_mod_info";

    /* renamed from: z  reason: collision with root package name */
    private static com.github.snowdream.android.app.downloader.b f51005z;

    /* renamed from: a  reason: collision with root package name */
    String f51006a;

    /* renamed from: b  reason: collision with root package name */
    String f51007b;

    /* renamed from: c  reason: collision with root package name */
    String f51008c;

    /* renamed from: d  reason: collision with root package name */
    String f51009d;

    /* renamed from: e  reason: collision with root package name */
    int f51010e;

    /* renamed from: f  reason: collision with root package name */
    int f51011f;

    /* renamed from: g  reason: collision with root package name */
    int f51012g;

    /* renamed from: h  reason: collision with root package name */
    f f51013h;

    /* renamed from: m  reason: collision with root package name */
    private DownloadTask f51018m;

    /* renamed from: n  reason: collision with root package name */
    private LinearLayout f51019n;

    /* renamed from: o  reason: collision with root package name */
    private ProgressBar f51020o;

    /* renamed from: p  reason: collision with root package name */
    private TextView f51021p;

    /* renamed from: q  reason: collision with root package name */
    private TextView f51022q;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f51026u;

    /* renamed from: v  reason: collision with root package name */
    private TextView f51027v;

    /* renamed from: x  reason: collision with root package name */
    AnimationDrawable f51029x;

    /* renamed from: i  reason: collision with root package name */
    boolean f51014i = false;

    /* renamed from: j  reason: collision with root package name */
    List<String> f51015j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    List<String> f51016k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    boolean f51017l = false;

    /* renamed from: r  reason: collision with root package name */
    private boolean f51023r = false;

    /* renamed from: s  reason: collision with root package name */
    private String f51024s = "";

    /* renamed from: t  reason: collision with root package name */
    private long f51025t = 0;

    /* renamed from: w  reason: collision with root package name */
    private Executor f51028w = new ThreadPoolExecutor(1, 2, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) ModLoadingActivity.this.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(Integer.MAX_VALUE)) {
                    if (runningServiceInfo.service.getClassName().equals(MessengerService.class.getName())) {
                        u0.a("messenger service is running", new Object[0]);
                        return;
                    }
                }
                u0.a("start messenger service", new Object[0]);
                ModLoadingActivity.this.startService(new Intent(ModLoadingActivity.this, MessengerService.class));
            } catch (SecurityException e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.join.mgps.va.overmind.e.p().b0();
            ModLoadingActivity.this.g1();
            if (com.join.mgps.va.overmind.e.p().M(ModLoadingActivity.this.f51007b)) {
                ModLoadingActivity.this.Y0();
                return;
            }
            com.join.mgps.va.overmind.e p3 = com.join.mgps.va.overmind.e.p();
            ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
            p3.o(modLoadingActivity, modLoadingActivity.f51007b, modLoadingActivity.f51008c, modLoadingActivity.f51009d, modLoadingActivity.f51010e, modLoadingActivity.f51011f == 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements b.InterfaceC0098b {

        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.f51027v.setVisibility(8);
                ModLoadingActivity.this.f51019n.setVisibility(0);
            }
        }

        /* loaded from: classes4.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f51034a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f51035b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f51036c;

            b(String str, int i2, String str2) {
                this.f51034a = str;
                this.f51035b = i2;
                this.f51036c = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) ModLoadingActivity.B.get(this.f51034a);
                if (cVar != null) {
                    ModLoadingActivity.this.f51020o.setProgress(this.f51035b);
                    TextView textView = ModLoadingActivity.this.f51021p;
                    String string = ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_1);
                    textView.setText(String.format(string, UtilsMy.c(cVar.g()) + "", UtilsMy.c(cVar.i()) + "", this.f51035b + "%"));
                    TextView textView2 = ModLoadingActivity.this.f51022q;
                    String string2 = ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_2);
                    textView2.setText(String.format(string2, UtilsMy.c(cVar.i()) + "", this.f51036c + "", "v" + ModLoadingActivity.this.f51009d));
                }
            }
        }

        /* renamed from: com.join.mgps.mod.activity.ModLoadingActivity$c$c  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0217c implements Runnable {
            RunnableC0217c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.f51019n.setVisibility(8);
                ModLoadingActivity.this.f51027v.setVisibility(0);
            }
        }

        c() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onError(String str) {
            ModLoadingActivity.this.i1();
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onFinish(String str) {
            u0.a("onFinish onStart - " + str, new Object[0]);
            com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) ModLoadingActivity.B.get(str);
            if (cVar != null) {
                if (ModLoadingActivity.this.f51018m.isMod()) {
                    if (d2.i(ModLoadingActivity.this.f51024s)) {
                        ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(ModLoadingActivity.this.f51024s, ModInfoBean.class);
                        if (modInfoBean != null) {
                            ModLoadingActivity.this.f51018m.setResource_url_remote(modInfoBean.getDown_url());
                            modInfoBean.setStatus(14);
                            ModLoadingActivity.this.f51018m.setMod_info(JsonMapper.toJsonString(modInfoBean));
                        } else {
                            ModLoadingActivity.this.f51018m.setMod_info(JsonMapper.toJsonString(ModLoadingActivity.this.f51024s));
                        }
                    }
                } else if (APKUtils.H(ModLoadingActivity.this.f51018m) && d2.i(ModLoadingActivity.this.f51024s)) {
                    SingleGameModInfoBean singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(ModLoadingActivity.this.f51024s, SingleGameModInfoBean.class);
                    if (singleGameModInfoBean != null) {
                        ModLoadingActivity.this.f51018m.setResource_url_remote(singleGameModInfoBean.getDownUrl());
                        singleGameModInfoBean.setStatus(14);
                        ModLoadingActivity.this.f51018m.setSingle_game_mod_info(JsonMapper.toJsonString(singleGameModInfoBean));
                    } else {
                        ModLoadingActivity.this.f51018m.setSingle_game_mod_info(JsonMapper.toJsonString(ModLoadingActivity.this.f51024s));
                    }
                }
                ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
                modLoadingActivity.f51008c = cVar.h() + cVar.k();
                ModLoadingActivity.this.f51018m.setResource_path(ModLoadingActivity.this.f51008c);
                g1.f.G().m(ModLoadingActivity.this.f51018m);
            }
            ModLoadingActivity.this.runOnUiThread(new RunnableC0217c());
            ModLoadingActivity.this.i1();
            ModLoadingActivity.B.remove(str);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onProgress(String str, int i2, String str2) {
            ModLoadingActivity.this.runOnUiThread(new b(str, i2, str2));
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onStart(String str) {
            u0.a("PreDownloadPlug onStart - " + str, new Object[0]);
            ModLoadingActivity.this.runOnUiThread(new a());
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onStop(String str) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onWait(String str) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void updateSize(String str, long j4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements Runnable {

        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.f51019n.setVisibility(0);
                ModLoadingActivity.this.f51020o.setProgress(0);
                ModLoadingActivity.this.f51022q.setVisibility(8);
                ModLoadingActivity.this.f51021p.setText(String.format(ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_3), "0%"));
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            ModLoadingActivity.this.f51015j.add("copyExtFile");
            com.join.mgps.va.overmind.f fVar = com.join.mgps.va.overmind.f.f52369d;
            String M = fVar.M(ModLoadingActivity.this.f51007b);
            ModLoadingActivity.this.f51025t = FileUtils.fileSize(M);
            Bundle bundle = new Bundle();
            bundle.putString("modPath", ModLoadingActivity.this.f51008c);
            bundle.putString("gameId", ModLoadingActivity.this.f51006a);
            bundle.putLong("obbSize", ModLoadingActivity.this.f51025t);
            ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
            h.a(modLoadingActivity.f51007b, modLoadingActivity.f51012g, bundle);
            if (ModLoadingActivity.this.f51025t == 0) {
                ModLoadingActivity.this.f51016k.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f51090t));
                return;
            }
            long j4 = com.join.mgps.va.overmind.e.p().j(fVar.O(ModLoadingActivity.this.f51007b));
            ModLoadingActivity.this.V0();
            if (ModLoadingActivity.this.f51025t != j4) {
                ModLoadingActivity.this.runOnUiThread(new a());
            } else {
                ModLoadingActivity.this.f51016k.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f51090t));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements Runnable {

        /* loaded from: classes4.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f51042a;

            a(int i2) {
                this.f51042a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.f51020o.setProgress(this.f51042a);
                TextView textView = ModLoadingActivity.this.f51021p;
                String string = ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_3);
                textView.setText(String.format(string, this.f51042a + "%"));
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            while (!ModLoadingActivity.this.f51023r) {
                try {
                    long j4 = com.join.mgps.va.overmind.e.p().j(com.join.mgps.va.overmind.f.f52369d.O(ModLoadingActivity.this.f51007b));
                    ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
                    modLoadingActivity.f51023r = j4 >= modLoadingActivity.f51025t;
                    int i2 = ModLoadingActivity.this.f51025t == 0 ? 100 : (int) ((j4 / ModLoadingActivity.this.f51025t) * 100);
                    Thread.currentThread();
                    Thread.sleep(1000L);
                    ModLoadingActivity.this.runOnUiThread(new a(i2));
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
            ModLoadingActivity.this.f51016k.add("copyExtFile");
            Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f51090t));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(com.join.mgps.mod.utils.d.f51089s)) {
                String stringExtra = intent.getStringExtra("soName");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                ModLoadingActivity.this.f51015j.add(stringExtra);
            } else if (action.equals(com.join.mgps.mod.utils.d.f51090t)) {
                String stringExtra2 = intent.getStringExtra("soName");
                if (TextUtils.isEmpty(stringExtra2)) {
                    ModLoadingActivity.this.f51014i = true;
                    ModLoadingActivity.this.X0();
                    return;
                }
                ModLoadingActivity.this.f51016k.add(stringExtra2);
                ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
                if (modLoadingActivity.f51014i) {
                    modLoadingActivity.X0();
                }
            } else if (action.equals(com.join.mgps.mod.utils.d.f51092v)) {
                ModLoadingActivity.this.finish();
            } else if (action.equals(com.join.mgps.mod.utils.d.f51091u)) {
                ModLoadingActivity.C++;
                g0.i(ModLoadingActivity.this.f51008c);
                g0.i(u.f27848g + "mod/" + ModLoadingActivity.this.f51018m.getPackageName() + "/oat");
                if (d2.i(ModLoadingActivity.this.f51024s) && !com.join.android.app.common.utils.f.j(ModLoadingActivity.this) && ModLoadingActivity.C < 2) {
                    ModLoadingActivity modLoadingActivity2 = ModLoadingActivity.this;
                    modLoadingActivity2.W0(modLoadingActivity2.f51006a);
                    return;
                }
                ModLoadingActivity.this.i1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0() {
        new Thread(new e()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Y0() {
        new Thread(new d()).start();
    }

    private void Z0() {
        this.f51006a = getIntent().getStringExtra("gameId");
        this.f51007b = getIntent().getStringExtra("packageName");
        this.f51008c = getIntent().getStringExtra("modPath");
        this.f51009d = getIntent().getStringExtra("modVersion");
        this.f51010e = getIntent().getIntExtra("modCode", 0);
        this.f51011f = getIntent().getIntExtra("modType", 0);
        this.f51012g = getIntent().getIntExtra("userId", 0);
        this.f51024s = getIntent().getStringExtra(f51004y);
        if (TextUtils.isEmpty(this.f51007b)) {
            finish();
            return;
        }
        new PrefDef_(this).lastLaunchModGameId().g(this.f51006a);
        this.f51019n = (LinearLayout) findViewById(R.id.ll_download_status);
        this.f51020o = (ProgressBar) findViewById(R.id.pb_progress);
        this.f51021p = (TextView) findViewById(R.id.tv_progress_status_1);
        this.f51022q = (TextView) findViewById(R.id.tv_progress_status_2);
        this.f51027v = (TextView) findViewById(R.id.tv_launch_status);
        ImageView imageView = (ImageView) findViewById(R.id.iv_loading);
        this.f51026u = imageView;
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getDrawable();
        this.f51029x = animationDrawable;
        animationDrawable.start();
        this.f51013h = new f();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(com.join.mgps.mod.utils.d.f51089s);
        intentFilter.addAction(com.join.mgps.mod.utils.d.f51090t);
        intentFilter.addAction(com.join.mgps.mod.utils.d.f51091u);
        intentFilter.addAction(com.join.mgps.mod.utils.d.f51092v);
        registerReceiver(this.f51013h, intentFilter);
        W0(this.f51006a);
        h1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b1() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c1(Handler handler) {
        if (com.join.mgps.va.overmind.e.p().M(this.f51007b)) {
            com.join.mgps.va.overmind.f fVar = com.join.mgps.va.overmind.f.f52369d;
            String[] strArr = {fVar.M(this.f51007b), fVar.v(this.f51007b), fVar.W()};
            for (int i2 = 0; i2 < 3; i2++) {
                g0.i(strArr[i2]);
            }
        }
        handler.postDelayed(new Runnable() { // from class: com.join.mgps.mod.activity.a
            @Override // java.lang.Runnable
            public final void run() {
                ModLoadingActivity.this.b1();
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d1(final Handler handler) {
        if (this.f51017l || isFinishing()) {
            return;
        }
        this.f51017l = true;
        this.f51019n.setVisibility(8);
        this.f51027v.setVisibility(0);
        com.join.mgps.va.overmind.e.p().S(this, this.f51012g, this.f51007b);
        new Thread(new Runnable() { // from class: com.join.mgps.mod.activity.c
            @Override // java.lang.Runnable
            public final void run() {
                ModLoadingActivity.this.c1(handler);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e1(String str) {
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0076, code lost:
        r6 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g1() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.mod.activity.ModLoadingActivity.g1():void");
    }

    void W0(String str) {
        DownloadTask downloadTask;
        if (TextUtils.isEmpty(str)) {
            showToast("游戏信息[ID]缺失");
            finish();
            return;
        }
        this.f51018m = g1.f.G().B(str);
        if ((d2.i(this.f51024s) && com.join.android.app.common.utils.f.j(this) && (downloadTask = this.f51018m) != null && (d2.h(downloadTask.getResource_path()) || !g0.x(this.f51018m.getResource_path()))) || f1(this.f51018m)) {
            j1(this.f51018m);
        } else {
            i1();
        }
    }

    synchronized void X0() {
        boolean z3 = true;
        Iterator<String> it2 = this.f51015j.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (!this.f51016k.contains(it2.next())) {
                z3 = false;
                break;
            }
        }
        if (z3) {
            final Handler handler = new Handler();
            handler.postDelayed(new Runnable() { // from class: com.join.mgps.mod.activity.b
                @Override // java.lang.Runnable
                public final void run() {
                    ModLoadingActivity.this.d1(handler);
                }
            }, 2000L);
        }
    }

    public void a1() {
        f51005z = com.github.snowdream.android.app.downloader.b.e();
        c cVar = new c();
        A = cVar;
        f51005z.m(cVar);
    }

    boolean f1(DownloadTask downloadTask) {
        ModInfoBean modInfoBean;
        if (downloadTask == null) {
            return false;
        }
        if (!APKUtils.I(downloadTask)) {
            return APKUtils.E(downloadTask) && (modInfoBean = downloadTask.getModInfoBean()) != null && !TextUtils.isEmpty(modInfoBean.getDown_url()) && modInfoBean.getStatus() == 9;
        }
        SingleGameModInfoBean singleGameModInfoBean = downloadTask.getSingleGameModInfoBean();
        return (singleGameModInfoBean == null || TextUtils.isEmpty(singleGameModInfoBean.getDownUrl()) || singleGameModInfoBean.getStatus() != 9) ? false : true;
    }

    void h1() {
        this.f51028w.execute(new a());
    }

    void i1() {
        this.f51028w.execute(new b());
    }

    void j1(DownloadTask downloadTask) {
        a1();
        String str = "";
        boolean I = APKUtils.I(downloadTask);
        if (I) {
            SingleGameModInfoBean singleGameModInfoBean = downloadTask.getSingleGameModInfoBean();
            if (singleGameModInfoBean != null) {
                str = singleGameModInfoBean.getDownUrl();
            }
        } else {
            ModInfoBean modInfoBean = downloadTask.getModInfoBean();
            if (modInfoBean != null) {
                str = modInfoBean.getDown_url();
            }
        }
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            StringBuilder sb = new StringBuilder();
            sb.append(downloadTask.getShowName());
            sb.append(", mod url null error, vm=");
            sb.append(I);
            i1();
            return;
        }
        com.github.snowdream.android.app.downloader.c cVar = new com.github.snowdream.android.app.downloader.c(str2, v0.d(str2) + ".mod", u.f27848g + "mod/" + downloadTask.getPackageName() + net.lingala.zip4j.util.e.F0, 0L);
        f51005z.b(cVar);
        if (B == null || cVar.l() == null || cVar.l().equals("")) {
            return;
        }
        String l4 = cVar.l();
        if (B.get(cVar.l()) != null) {
            return;
        }
        synchronized (B) {
            B.put(l4, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_mod_loading);
        Z0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f51017l = false;
        f fVar = this.f51013h;
        if (fVar != null) {
            unregisterReceiver(fVar);
        }
        AnimationDrawable animationDrawable = this.f51029x;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        Z0();
    }

    void showToast(final String str) {
        runOnUiThread(new Runnable() { // from class: com.join.mgps.mod.activity.d
            @Override // java.lang.Runnable
            public final void run() {
                ModLoadingActivity.this.e1(str);
            }
        });
    }
}
