package com.join.mgps.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.Util.UtilsMy;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
/* compiled from: ModDownloadDialog.java */
/* loaded from: classes3.dex */
public class z0 extends q implements View.OnClickListener, DialogInterface.OnShowListener {

    /* renamed from: w  reason: collision with root package name */
    public static final int f48117w = 0;

    /* renamed from: x  reason: collision with root package name */
    public static final int f48118x = 1;

    /* renamed from: y  reason: collision with root package name */
    public static final int f48119y = 2;

    /* renamed from: z  reason: collision with root package name */
    public static final int f48120z = 3;

    /* renamed from: j  reason: collision with root package name */
    TextView f48121j;

    /* renamed from: k  reason: collision with root package name */
    TextView f48122k;

    /* renamed from: l  reason: collision with root package name */
    TextView f48123l;

    /* renamed from: m  reason: collision with root package name */
    TextView f48124m;

    /* renamed from: n  reason: collision with root package name */
    TextView f48125n;

    /* renamed from: o  reason: collision with root package name */
    ProgressBar f48126o;

    /* renamed from: p  reason: collision with root package name */
    LinearLayout f48127p;

    /* renamed from: q  reason: collision with root package name */
    ImageView f48128q;

    /* renamed from: r  reason: collision with root package name */
    a f48129r;

    /* renamed from: s  reason: collision with root package name */
    private int f48130s;

    /* renamed from: t  reason: collision with root package name */
    private String f48131t;

    /* renamed from: u  reason: collision with root package name */
    private int f48132u;

    /* renamed from: v  reason: collision with root package name */
    ModGameArchivePathData f48133v;

    /* compiled from: ModDownloadDialog.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(z0 z0Var);

        void b(z0 z0Var);
    }

    public z0(@NonNull Context context) {
        super(context, R.style.Dialog);
        this.f48130s = 0;
        this.f48132u = 1;
    }

    private void A() {
        this.f48127p.setVisibility(8);
        this.f48123l.setVisibility(0);
        this.f48123l.setText("发现新版本，是否更新");
        this.f48121j.setText("忽略");
        this.f48122k.setText("立即更新");
        this.f48122k.setBackgroundResource(R.drawable.btn_mod_install);
    }

    private void B() {
        this.f48127p.setVisibility(0);
        this.f48123l.setVisibility(8);
        this.f48125n.setText("等待中");
        this.f48121j.setText("后台下载");
        this.f48122k.setText("等待中");
        this.f48122k.setBackgroundResource(R.drawable.btn_mod_stop);
    }

    private void m() {
        this.f48121j = (TextView) findViewById(R.id.tv_mod_opt_left);
        this.f48122k = (TextView) findViewById(R.id.tv_mod_opt_right);
        this.f48123l = (TextView) findViewById(R.id.tv_mod_title);
        this.f48124m = (TextView) findViewById(R.id.tv_mod_progress);
        this.f48126o = (ProgressBar) findViewById(R.id.pb_mod_progress);
        this.f48127p = (LinearLayout) findViewById(R.id.ll_mod_download);
        this.f48125n = (TextView) findViewById(R.id.tv_mod_status);
        this.f48121j.setOnClickListener(this);
        this.f48122k.setOnClickListener(this);
    }

    private void n() {
        this.f48122k = (TextView) findViewById(R.id.tv_mod_opt_right);
        this.f48128q = (ImageView) findViewById(R.id.iv_close);
        this.f48122k.setOnClickListener(this);
        this.f48128q.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.centerText);
        ImageView imageView = (ImageView) findViewById(R.id.centerImage);
        if (this.f48133v == null) {
            textView.setText("稳定流畅");
            imageView.setImageResource(R.drawable.ic_mod_stable);
            return;
        }
        textView.setText("云存档");
        imageView.setImageResource(R.drawable.ic_mod_cloud);
    }

    private void y() {
        this.f48127p.setVisibility(0);
        this.f48123l.setVisibility(8);
        this.f48125n.setText("下载中");
        this.f48121j.setText("后台下载");
        this.f48122k.setText("暂停");
        this.f48122k.setBackgroundResource(R.drawable.btn_mod_stop);
    }

    private void z(boolean z3) {
        this.f48127p.setVisibility(8);
        this.f48123l.setVisibility(0);
        if (z3) {
            this.f48123l.setText("启动标准版需安装游戏至本地");
        } else {
            this.f48123l.setText("启动增强版需\n安装游戏至虚拟机");
        }
        this.f48121j.setText("取消");
        this.f48122k.setText("立即安装");
        this.f48122k.setBackgroundResource(R.drawable.btn_mod_install);
    }

    public void C(int i2, boolean z3) {
        this.f48130s = i2;
        if (i2 == 0) {
            if (z3) {
                setContentView(R.layout.dialog_mod_download_install);
                m();
                z(z3);
                return;
            }
            setContentView(R.layout.dialog_mod_download_new);
            n();
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(getContext());
            Event event = Event.modDownloadTip;
            Ext gameId = new Ext().setGameId(this.f48131t);
            l4.K1(event, gameId.setPosition(this.f48132u + ""));
        } else if (i2 == 1) {
            setContentView(R.layout.dialog_mod_download_install);
            m();
            A();
        } else if (i2 == 2) {
            setContentView(R.layout.dialog_mod_download);
            m();
            y();
        } else if (i2 != 3) {
        } else {
            setContentView(R.layout.dialog_mod_download);
            m();
            B();
        }
    }

    public void D(DownloadTask downloadTask) {
        if (downloadTask != null) {
            this.f48126o.setProgress((int) downloadTask.getProgress());
            long parseDouble = (long) (Double.parseDouble(downloadTask.getShowSize()) * 1000.0d * 1000.0d);
            com.join.mgps.Util.u0.e("updateStatus: " + UtilsMy.a(parseDouble));
            TextView textView = this.f48124m;
            textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
            int status = downloadTask.getStatus();
            if (status != 2) {
                if (status != 3) {
                    if (status == 10) {
                        this.f48125n.setText("等待中");
                        this.f48122k.setText("等待中");
                        this.f48122k.setBackgroundResource(R.drawable.btn_mod_stop);
                        return;
                    } else if (status != 27) {
                        return;
                    }
                }
                this.f48125n.setText("暂停");
                this.f48122k.setText("继续");
                this.f48122k.setBackgroundResource(R.drawable.btn_mod_install);
                return;
            }
            this.f48125n.setText("下载中");
            this.f48122k.setText("暂停");
            this.f48122k.setBackgroundResource(R.drawable.btn_mod_stop);
        }
    }

    public int o() {
        return this.f48132u;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar;
        int id = view.getId();
        if (id == R.id.tv_mod_opt_left) {
            a aVar2 = this.f48129r;
            if (aVar2 != null) {
                aVar2.b(this);
            }
        } else if (id == R.id.tv_mod_opt_right) {
            a aVar3 = this.f48129r;
            if (aVar3 != null) {
                aVar3.a(this);
            }
        } else if (id != R.id.iv_close || (aVar = this.f48129r) == null) {
        } else {
            aVar.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.dialog.q, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        setOnShowListener(this);
    }

    public void onShow(DialogInterface dialogInterface) {
    }

    public void p(ModGameArchivePathData modGameArchivePathData) {
        this.f48133v = modGameArchivePathData;
    }

    public void q(String str) {
        this.f48123l.setText(str);
    }

    public void r(String str) {
        this.f48131t = str;
    }

    public void s(@DrawableRes int i2) {
        this.f48121j.setBackgroundResource(i2);
    }

    public void t(String str) {
        this.f48121j.setText(str);
    }

    public void u(a aVar) {
        this.f48129r = aVar;
    }

    public void v(int i2) {
        this.f48132u = i2;
    }

    public void w(@DrawableRes int i2) {
        this.f48122k.setBackgroundResource(i2);
    }

    public void x(String str) {
        this.f48122k.setText(str);
    }
}
