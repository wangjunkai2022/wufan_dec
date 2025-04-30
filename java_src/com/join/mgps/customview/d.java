package com.join.mgps.customview;

import android.content.Context;
import android.os.CountDownTimer;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.lang.reflect.Field;
/* compiled from: DownFinishToast.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: m  reason: collision with root package name */
    private static d f46785m;

    /* renamed from: n  reason: collision with root package name */
    static String f46786n;

    /* renamed from: o  reason: collision with root package name */
    static Context f46787o;

    /* renamed from: b  reason: collision with root package name */
    private Handler f46789b;

    /* renamed from: c  reason: collision with root package name */
    private Toast f46790c;

    /* renamed from: d  reason: collision with root package name */
    private CountDownTimerC0196d f46791d;

    /* renamed from: e  reason: collision with root package name */
    TextView f46792e;

    /* renamed from: f  reason: collision with root package name */
    TextView f46793f;

    /* renamed from: g  reason: collision with root package name */
    SimpleDraweeView f46794g;

    /* renamed from: h  reason: collision with root package name */
    TextView f46795h;

    /* renamed from: i  reason: collision with root package name */
    DownloadTask f46796i;

    /* renamed from: k  reason: collision with root package name */
    WindowManager f46798k;

    /* renamed from: l  reason: collision with root package name */
    WindowManager.LayoutParams f46799l;

    /* renamed from: a  reason: collision with root package name */
    private boolean f46788a = true;

    /* renamed from: j  reason: collision with root package name */
    boolean f46797j = false;

    /* compiled from: DownFinishToast.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f46800a;

        a(Context context) {
            this.f46800a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.d();
            IntentUtil.getInstance().goDownloadCenterActivity(this.f46800a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownFinishToast.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownFinishToast.java */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.i();
        }
    }

    /* compiled from: DownFinishToast.java */
    /* renamed from: com.join.mgps.customview.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class CountDownTimerC0196d extends CountDownTimer {
        public CountDownTimerC0196d(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            d.this.d();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
        }
    }

    public d(Context context, Handler handler, String str) {
        this.f46789b = handler;
        this.f46798k = (WindowManager) context.getSystemService("window");
        this.f46798k.getDefaultDisplay().getMetrics(new DisplayMetrics());
        View inflate = ((LayoutInflater) MApplication.f9223q.getSystemService("layout_inflater")).inflate(R.layout.appdown_finish_dialog_layout, (ViewGroup) null, false);
        this.f46792e = (TextView) inflate.findViewById(R.id.title);
        this.f46793f = (TextView) inflate.findViewById(R.id.ok);
        this.f46794g = (SimpleDraweeView) inflate.findViewById(R.id.icon);
        this.f46795h = (TextView) inflate.findViewById(R.id.info);
        inflate.findViewById(R.id.main).setOnClickListener(new a(context));
        if (this.f46790c == null) {
            this.f46790c = new Toast(context);
        }
        this.f46790c.setGravity(55, 0, 0);
        this.f46790c.setDuration(1);
        this.f46790c.setView(inflate);
        f(this.f46790c);
    }

    private static Object b(Object obj, String str) throws NoSuchFieldException, IllegalAccessException {
        Field declaredField = obj.getClass().getDeclaredField(str);
        if (declaredField != null) {
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        }
        return null;
    }

    public static d c(Context context, String str) {
        f46786n = str;
        if (f46785m == null) {
            f46785m = new d(context, new Handler(), f46786n);
        }
        f46787o = context;
        return f46785m;
    }

    private void f(Toast toast) {
        Object b4;
        try {
            Object b5 = b(toast, "mTN");
            if (b5 == null || (b4 = b(b5, "mParams")) == null || !(b4 instanceof WindowManager.LayoutParams)) {
                return;
            }
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) b4;
            layoutParams.windowAnimations = R.style.ClickToast;
            layoutParams.flags = 136;
            layoutParams.type = 2005;
            layoutParams.width = -1;
            layoutParams.height = -2;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void g() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f46799l = layoutParams;
        layoutParams.height = -2;
        layoutParams.width = -1;
        layoutParams.windowAnimations = R.style.ClickToast;
        layoutParams.flags = 136;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f46788a) {
            return;
        }
        this.f46790c.show();
        this.f46789b.postDelayed(new c(), 3000L);
    }

    private void j() {
        this.f46796i = g1.f.G().B(f46786n);
        if (Dtype.apk.name().equals(this.f46796i.getFileType())) {
            this.f46795h.setText("下载完成");
            this.f46797j = true;
            com.papa.sim.statistic.p.l(f46787o).K1(Event.showSoGameStart, new Ext().setGameId(this.f46796i.getCrc_link_type_val()));
        } else {
            com.papa.sim.statistic.p.l(f46787o).K1(Event.showSinGameStart, new Ext().setGameId(this.f46796i.getCrc_link_type_val()));
            this.f46797j = false;
            this.f46795h.setText("安装完成");
        }
        MyImageLoader.h(this.f46794g, this.f46796i.getPortraitURL());
        this.f46792e.setText(this.f46796i.getShowName());
        this.f46793f.setText("开始游戏");
        this.f46793f.setOnClickListener(new b());
    }

    public void d() {
        Toast toast = this.f46790c;
        if (toast != null) {
            toast.cancel();
        }
        this.f46788a = true;
    }

    void e() {
        if (this.f46797j) {
            com.papa.sim.statistic.p.l(f46787o).K1(Event.onclickSoGameStart, new Ext().setGameId(this.f46796i.getCrc_link_type_val()));
        } else {
            com.papa.sim.statistic.p.l(f46787o).K1(Event.onclickSinGameStart, new Ext().setGameId(this.f46796i.getCrc_link_type_val()));
        }
        DownloadTask downloadTask = this.f46796i;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status != 5) {
            if (status != 11) {
                d();
                return;
            } else {
                com.join.android.app.common.utils.a.g0(f46787o).y(f46787o, this.f46796i.getGameZipPath());
                return;
            }
        }
        DownloadTask downloadTask2 = this.f46796i;
        if (downloadTask2 != null) {
            UtilsMy.c3(f46787o, downloadTask2);
        }
        d();
    }

    public d h(int i2) {
        j();
        CountDownTimerC0196d countDownTimerC0196d = new CountDownTimerC0196d(i2, 1000L);
        this.f46791d = countDownTimerC0196d;
        if (this.f46788a) {
            countDownTimerC0196d.start();
            this.f46788a = false;
            i();
        }
        return this;
    }
}
