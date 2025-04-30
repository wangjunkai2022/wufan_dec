package com.join.mgps.activity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.customview.DrawableDividerItemDecoration;
import com.join.mgps.customview.PaPaLinearLayoutManager;
import com.join.mgps.dto.GameTransferBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.ApWifiConnectedReceiver;
import com.join.mgps.receiver.NetWorkConnectedReceiver;
import com.join.mgps.receiver.WifiAPBroadcastReceiver;
import com.join.mgps.service.SocketClientService;
import com.join.mgps.service.SocketServerService;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.SystemService;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_game_transfer)
/* loaded from: classes.dex */
public class GameTransferActivity extends BaseActivity {
    private static final String C0 = "GameTransferActivity";
    public static final String D0;
    public static final String E0;
    public static final String F0;
    Iterator<DownloadTask> A;
    SparseArray<GameTransferBean> B;
    SparseArray<GameTransferBean> C;
    int D;
    Map<String, DownloadTask> E;
    @ViewById(R.id.game_transfer_title_txt)

    /* renamed from: a  reason: collision with root package name */
    TextView f31997a;
    @ViewById(R.id.game_transfer_right_phone_txt)

    /* renamed from: b  reason: collision with root package name */
    TextView f31998b;
    @ViewById(R.id.game_transfer_list_rv)

    /* renamed from: c  reason: collision with root package name */
    RecyclerView f31999c;
    @Bean

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.adapter.i2 f32000d;
    @ViewById(R.id.game_transfer_historyList_rv)

    /* renamed from: e  reason: collision with root package name */
    RecyclerView f32001e;
    @Bean

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.adapter.g2 f32002f;
    @ViewById(R.id.game_transfer_bottom_navigation_left_txt)

    /* renamed from: g  reason: collision with root package name */
    TextView f32003g;
    @ViewById(R.id.game_transfer_bottom_navigation_right_txt)

    /* renamed from: j  reason: collision with root package name */
    TextView f32006j;
    @ViewById(R.id.game_transfer_ok_btn)

    /* renamed from: k  reason: collision with root package name */
    Button f32007k;
    @ViewById(R.id.game_transfer_selected_num_txt)

    /* renamed from: l  reason: collision with root package name */
    TextView f32008l;
    @ViewById(R.id.game_transfer_list_choose_all_txt)

    /* renamed from: m  reason: collision with root package name */
    TextView f32009m;
    @ViewById(R.id.game_transfer_history_hint_rl)

    /* renamed from: o  reason: collision with root package name */
    RelativeLayout f32012o;

    /* renamed from: p  reason: collision with root package name */
    Context f32014p;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    int f32016q;

    /* renamed from: q0  reason: collision with root package name */
    List<DownloadTask> f32017q0;

    /* renamed from: r  reason: collision with root package name */
    long f32018r;

    /* renamed from: r0  reason: collision with root package name */
    List<DownloadTask> f32019r0;

    /* renamed from: s  reason: collision with root package name */
    com.join.mgps.socket.server.a f32020s;
    @SystemService

    /* renamed from: s0  reason: collision with root package name */
    PowerManager f32021s0;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.socket.client.a f32022t;

    /* renamed from: u  reason: collision with root package name */
    List<DownloadTask> f32024u;

    /* renamed from: v  reason: collision with root package name */
    List<DownloadTask> f32026v;

    /* renamed from: v0  reason: collision with root package name */
    com.join.mgps.socket.b f32027v0;

    /* renamed from: w  reason: collision with root package name */
    List<DownloadTask> f32028w;

    /* renamed from: w0  reason: collision with root package name */
    ApWifiConnectedReceiver f32029w0;

    /* renamed from: x  reason: collision with root package name */
    List<GameTransferBean> f32030x;

    /* renamed from: x0  reason: collision with root package name */
    NetWorkConnectedReceiver f32031x0;
    @Pref

    /* renamed from: y  reason: collision with root package name */
    PrefDef_ f32032y;

    /* renamed from: z  reason: collision with root package name */
    File f32034z;

    /* renamed from: h  reason: collision with root package name */
    final int f32004h = 1;

    /* renamed from: i  reason: collision with root package name */
    final int f32005i = 2;

    /* renamed from: n  reason: collision with root package name */
    boolean f32010n = false;
    ExecutorService F = Executors.newCachedThreadPool();
    e G = null;
    com.join.mgps.task.b H = null;
    Future I = null;
    com.join.mgps.task.d J = null;
    Future K = null;

    /* renamed from: n0  reason: collision with root package name */
    boolean f32011n0 = false;

    /* renamed from: o0  reason: collision with root package name */
    DownloadTask f32013o0 = null;

    /* renamed from: p0  reason: collision with root package name */
    String f32015p0 = null;

    /* renamed from: t0  reason: collision with root package name */
    PowerManager.WakeLock f32023t0 = null;

    /* renamed from: u0  reason: collision with root package name */
    Socket f32025u0 = null;

    /* renamed from: y0  reason: collision with root package name */
    int f32033y0 = 0;

    /* renamed from: z0  reason: collision with root package name */
    List<DownloadTask> f32035z0 = new ArrayList();
    ServiceConnection A0 = new a();
    com.join.mgps.customview.t B0 = null;

    /* loaded from: classes3.dex */
    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder instanceof SocketClientService.a) {
                GameTransferActivity.this.f32025u0 = ((SocketClientService.a) iBinder).getSocket();
            } else if (iBinder instanceof SocketServerService.a) {
                GameTransferActivity.this.f32025u0 = ((SocketServerService.a) iBinder).getSocket();
            }
            GameTransferActivity.this.h1();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity.this.P0();
            GameTransferActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity.this.P0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private boolean f32039a = true;

        /* renamed from: b  reason: collision with root package name */
        File f32040b;

        /* renamed from: c  reason: collision with root package name */
        long f32041c;

        /* renamed from: d  reason: collision with root package name */
        String f32042d;

        public d(File file, long j4, String str) {
            this.f32040b = file;
            this.f32041c = j4;
            this.f32042d = str;
        }

        public void a(boolean z3) {
            this.f32039a = z3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f32039a) {
                try {
                    File file = this.f32040b;
                    if (file != null) {
                        long n12 = UtilsMy.n1(file);
                        StringBuilder sb = new StringBuilder();
                        sb.append("zip currentSize =");
                        sb.append(n12);
                        long j4 = this.f32041c * 2;
                        long j5 = 0;
                        if (j4 != 0 && n12 != 0) {
                            j5 = (n12 * 100) / j4;
                        }
                        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(5, this.f32042d, j5));
                        Thread.sleep(1000L);
                    }
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f32044a = true;

        e() {
        }

        public void a(boolean z3) {
            this.f32044a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f32044a) {
                try {
                    Thread.sleep(1000L);
                    long currentTimeMillis = System.currentTimeMillis() - GameTransferActivity.this.f32018r;
                    String unused = GameTransferActivity.C0;
                    StringBuilder sb = new StringBuilder();
                    sb.append("onTick: 间隔");
                    sb.append(currentTimeMillis);
                    if (currentTimeMillis > com.join.mgps.data.c.f47286a) {
                        String unused2 = GameTransferActivity.C0;
                        this.f32044a = false;
                        GameTransferActivity.this.finish();
                    }
                } catch (InterruptedException e4) {
                    Thread.currentThread().interrupt();
                    e4.printStackTrace();
                }
            }
        }
    }

    static {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        D0 = absolutePath;
        E0 = absolutePath + "/Android/obb";
        F0 = absolutePath + "/Android/data";
    }

    private void B1(DownloadTask downloadTask) {
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(6, downloadTask.getCrc_link_type_val()));
        downloadTask.setStatus(12);
        g1.f.G().k(downloadTask);
        UtilsMy.g2(downloadTask, 12);
        new com.join.mgps.task.e(downloadTask, this.f32014p, true).start();
    }

    private void C1(DownloadTask downloadTask) {
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(6, downloadTask.getCrc_link_type_val()));
        UtilsMy.g2(downloadTask, 12);
        new com.join.mgps.task.h(downloadTask, this.f32014p, com.join.mgps.Util.u.f27846e + downloadTask.getRomType() + "/roms").start();
    }

    private void E0(GameTransferBean gameTransferBean) {
        DownloadTask downloadTask = this.E.get(gameTransferBean.getId());
        downloadTask.setPath(gameTransferBean.getFilePath());
        String fileType = downloadTask.getFileType();
        if (Dtype.android.name().equals(fileType)) {
            if (com.join.android.app.common.utils.a.g0(this.f32014p).k(this.f32014p, downloadTask.getPackageName()).d() >= Integer.parseInt(downloadTask.getVer())) {
                UtilsMy.delete(new File(downloadTask.getPath()));
                return;
            }
            DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
            if (B != null) {
                downloadTask.setId(B.getId());
                return;
            }
            downloadTask.set_from_type(1);
            if (Dtype.androiddata.name().equals(downloadTask.getRomType())) {
                B1(downloadTask);
            } else if (Dtype.androidobb.name().equals(downloadTask.getRomType())) {
                B1(downloadTask);
            } else {
                downloadTask.setStatus(11);
                downloadTask.setGameZipPath(downloadTask.getPath());
                g1.f.G().k(downloadTask);
                UtilsMy.g2(downloadTask, 11);
                org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(7, downloadTask.getCrc_link_type_val()));
            }
        } else if (Dtype.apk.name().equals(fileType)) {
            DownloadTask B2 = g1.f.G().B(downloadTask.getCrc_link_type_val());
            if (B2 != null) {
                downloadTask.setId(B2.getId());
                return;
            }
            downloadTask.setStatus(12);
            g1.f.G().k(downloadTask);
            C1(downloadTask);
        } else if (Dtype.chajian.name().equals(fileType)) {
            downloadTask.setStatus(11);
            downloadTask.setGameZipPath(downloadTask.getPath());
            DownloadTask B3 = g1.f.G().B(downloadTask.getCrc_link_type_val());
            if (B3 != null) {
                downloadTask.setId(B3.getId());
            }
            g1.f.G().k(downloadTask);
            this.f32028w.add(downloadTask);
            UtilsMy.g2(downloadTask, 11);
            org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(7, downloadTask.getCrc_link_type_val()));
        }
    }

    private boolean J0(DownloadTask downloadTask) {
        long c4 = com.join.mgps.Util.q1.c(this.f32034z.getAbsolutePath());
        long parseLong = downloadTask.getUnzip_size() != null ? Long.parseLong(downloadTask.getUnzip_size()) : 0L;
        if (parseLong == 0) {
            parseLong = Float.parseFloat(downloadTask.getShowSize()) * 1000.0f * 1000.0f;
        }
        if (parseLong > c4) {
            toast("存储空间不足传输失败");
            return false;
        }
        return true;
    }

    private boolean K0(DownloadTask downloadTask) {
        long c4 = com.join.mgps.Util.q1.c(this.f32034z.getAbsolutePath());
        long parseLong = downloadTask.getUnzip_size() != null ? Long.parseLong(downloadTask.getUnzip_size()) : 0L;
        if (parseLong == 0) {
            parseLong = Float.parseFloat(downloadTask.getShowSize()) * 1000.0f * 1000.0f;
        }
        String fileType = downloadTask.getFileType();
        if (!Dtype.android.name().equals(fileType) ? !(!Dtype.apk.name().equals(fileType) && !Dtype.chajian.name().equals(fileType)) : !(!Dtype.androiddata.name().equals(downloadTask.getRomType()) && !Dtype.androidobb.name().equals(downloadTask.getRomType()) && !Dtype.androidobbdata.name().equals(downloadTask.getRomType()))) {
            parseLong *= 2;
        }
        if (parseLong > c4) {
            toast("存储空间不足传输失败");
            return false;
        }
        return true;
    }

    private String M1(DownloadTask downloadTask) {
        return O1(downloadTask, F0 + File.separator + downloadTask.getPackageName());
    }

    private void N0(DownloadTask downloadTask) {
        for (RomArchived romArchived : com.join.mgps.Util.f0.l(downloadTask.getPlugin_num(), downloadTask.getGameZipPath())) {
            String archivedPath = romArchived.getArchivedPath();
            String archivedImagePath = romArchived.getArchivedImagePath();
            if (com.join.mgps.Util.d2.i(archivedPath)) {
                File file = new File(archivedPath);
                if (file.exists()) {
                    com.join.mgps.Util.g0.c(archivedPath, new File(downloadTask.getGameZipPath()).getParent() + File.separator + file.getName());
                }
            }
            if (com.join.mgps.Util.d2.i(archivedImagePath)) {
                File file2 = new File(archivedImagePath);
                if (file2.exists()) {
                    com.join.mgps.Util.g0.c(archivedImagePath, new File(downloadTask.getGameZipPath()).getParent() + File.separator + file2.getName());
                }
            }
        }
    }

    private String N1(DownloadTask downloadTask) {
        return O1(downloadTask, E0 + File.separator + downloadTask.getPackageName());
    }

    private String O1(DownloadTask downloadTask, String str) {
        File file;
        long parseFloat;
        d dVar;
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(5, downloadTask.getCrc_link_type_val()));
        if (this.f32013o0.getStatus() == 11) {
            file = new File(this.f32013o0.getGameZipPath());
        } else {
            try {
                file = new File(getPackageManager().getApplicationInfo(downloadTask.getPackageName(), 0).sourceDir);
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                file = null;
            }
        }
        File file2 = new File(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(file2);
        arrayList.add(file);
        File file3 = new File(this.f32034z.getAbsolutePath() + File.separator + downloadTask.getPackageName() + ".zip");
        if (!file3.exists()) {
            new File(file3.getParent()).mkdirs();
        }
        if (!file3.exists()) {
            try {
                file3.createNewFile();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
        String showSize = downloadTask.getShowSize();
        try {
            try {
                if (com.join.mgps.Util.d2.i(showSize)) {
                    try {
                        parseFloat = Float.parseFloat(showSize) * 1000.0f * 1000.0f;
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                    dVar = new d(file3, parseFloat, downloadTask.getCrc_link_type_val());
                    dVar.start();
                    com.join.mgps.Util.s2.l(arrayList, file3);
                    dVar.a(false);
                    return file3.getAbsolutePath();
                }
                dVar.start();
                com.join.mgps.Util.s2.l(arrayList, file3);
                dVar.a(false);
                return file3.getAbsolutePath();
            } catch (Throwable th) {
                dVar.a(false);
                throw th;
            }
        } catch (Exception e7) {
            e7.printStackTrace();
            org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(8, downloadTask.getCrc_link_type_val()));
            UtilsMy.delete(file3);
            dVar.a(false);
            return "";
        }
        parseFloat = 0;
        dVar = new d(file3, parseFloat, downloadTask.getCrc_link_type_val());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        if (this.f32011n0) {
            String uid = AccountUtil_.getInstance_(this).getUid();
            DownloadTask downloadTask = this.f32013o0;
            com.papa.sim.statistic.p.l(this).k0(downloadTask != null ? downloadTask.getCrc_link_type_val() : "", uid);
        }
        com.join.mgps.customview.t tVar = this.B0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.B0.dismiss();
    }

    private String P1(DownloadTask downloadTask) {
        long parseFloat;
        d dVar;
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(5, downloadTask.getCrc_link_type_val()));
        File parentFile = new File(downloadTask.getGameZipPath()).getParentFile();
        File file = new File(this.f32034z.getAbsolutePath() + File.separator + parentFile.getName() + ".zip");
        if (!file.exists()) {
            new File(file.getParent()).mkdirs();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        String showSize = downloadTask.getShowSize();
        try {
            try {
                if (com.join.mgps.Util.d2.i(showSize)) {
                    try {
                        parseFloat = Float.parseFloat(showSize) * 1000.0f * 1000.0f;
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    N0(downloadTask);
                    dVar = new d(file, parseFloat, downloadTask.getCrc_link_type_val());
                    dVar.start();
                    com.join.mgps.Util.s2.j(parentFile, file);
                    dVar.a(false);
                    return file.getAbsolutePath();
                }
                dVar.start();
                com.join.mgps.Util.s2.j(parentFile, file);
                dVar.a(false);
                return file.getAbsolutePath();
            } catch (Throwable th) {
                dVar.a(false);
                throw th;
            }
        } catch (Exception e6) {
            e6.printStackTrace();
            org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(8, downloadTask.getCrc_link_type_val()));
            UtilsMy.delete(file);
            dVar.a(false);
            return "";
        }
        parseFloat = 0;
        N0(downloadTask);
        dVar = new d(file, parseFloat, downloadTask.getCrc_link_type_val());
    }

    private DownloadTask V0(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            return null;
        }
        int i2 = 0;
        while (true) {
            List<DownloadTask> list = this.f32024u;
            if (list == null || i2 >= list.size()) {
                return null;
            }
            DownloadTask downloadTask = this.f32024u.get(i2);
            if (downloadTask.getCrc_link_type_val().equals(str)) {
                downloadTask.set_from_type(1);
                return downloadTask;
            }
            i2++;
        }
    }

    private DownloadTask W0(int i2) {
        List<DownloadTask> list = this.f32024u;
        if (list == null) {
            return null;
        }
        return list.get(i2);
    }

    private void z1(File file, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.join.mgps.socket.entity.d dVar = new com.join.mgps.socket.entity.d();
        dVar.f(downloadTask.getPackageName() + com.join.mgps.Util.g0.f27568a + com.join.mgps.Util.g0.n(file.getAbsolutePath()));
        dVar.g(file.getAbsolutePath());
        dVar.h(file.length());
        dVar.i(downloadTask.getCrc_link_type_val());
        com.join.mgps.Util.u0.e(C0, "transferFile: 文件名称" + dVar.a());
        downloadTask.setSize(file.length());
        this.f32027v0.j(dVar);
        com.papa.sim.statistic.p.l(this).n0(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(this).getUid());
    }

    void A1() {
        NetWorkConnectedReceiver netWorkConnectedReceiver = this.f32031x0;
        if (netWorkConnectedReceiver != null) {
            unregisterReceiver(netWorkConnectedReceiver);
        }
        ApWifiConnectedReceiver apWifiConnectedReceiver = this.f32029w0;
        if (apWifiConnectedReceiver != null) {
            unregisterReceiver(apWifiConnectedReceiver);
        }
    }

    void D1() {
        if (this.B == null || this.f32026v == null) {
            return;
        }
        SparseArray<GameTransferBean> c4 = this.f32000d.c();
        int size = this.f32026v.size();
        StringBuilder sb = new StringBuilder();
        sb.append("updateGameFileStatu2Waiting: size");
        sb.append(size);
        for (int i2 = 0; i2 < size; i2++) {
            int Z0 = Z0(this.f32026v.get(i2).getCrc_link_type_val());
            GameTransferBean gameTransferBean = c4.get(Z0);
            gameTransferBean.setTransferStatus(1);
            gameTransferBean.setSelectedTransfer(false);
            c4.setValueAt(Z0, gameTransferBean);
            this.f32030x.add(gameTransferBean);
        }
        this.f32000d.l(true);
        this.f32000d.notifyDataSetChanged();
        r1();
        this.D -= this.f32026v.size();
    }

    void E1(boolean z3) {
        com.join.mgps.adapter.i2 i2Var = this.f32000d;
        if (i2Var == null) {
            return;
        }
        SparseArray<GameTransferBean> c4 = i2Var.c();
        int size = c4.size();
        for (int i2 = 0; i2 < size; i2++) {
            GameTransferBean gameTransferBean = c4.get(i2);
            if (!this.f32030x.contains(gameTransferBean)) {
                StringBuilder sb = new StringBuilder();
                sb.append("updateGameListCheckStatus: index:::");
                sb.append(i2);
                sb.append(":::checked:::");
                sb.append(z3);
                gameTransferBean.setSelectedTransfer(z3);
                c4.setValueAt(i2, gameTransferBean);
                if (z3) {
                    DownloadTask V0 = V0(gameTransferBean.getId());
                    if (!this.f32026v.contains(V0)) {
                        this.f32026v.add(V0);
                    }
                } else {
                    o1(gameTransferBean);
                }
            }
        }
        this.f32000d.notifyDataSetChanged();
        List<DownloadTask> list = this.f32026v;
        if (list != null) {
            int size2 = list.size();
            s1(this.f32026v.size());
            if (size2 > 0) {
                this.f32007k.setEnabled(true);
            } else {
                this.f32007k.setEnabled(false);
            }
        }
    }

    void F1(String str, int i2) {
        if (str == null) {
            return;
        }
        SparseArray<GameTransferBean> c4 = this.f32000d.c();
        int size = c4.size();
        for (int i4 = 0; i4 < size; i4++) {
            GameTransferBean valueAt = c4.valueAt(i4);
            if (valueAt.getId().equals(str)) {
                valueAt.setTransferStatus(i2);
                c4.setValueAt(i4, valueAt);
                this.f32000d.notifyItemChanged(i4);
                return;
            }
        }
    }

    void G1(String str, int i2) {
        if (str == null) {
            return;
        }
        SparseArray<GameTransferBean> c4 = this.f32002f.c();
        int size = c4.size();
        for (int i4 = 0; i4 < size; i4++) {
            GameTransferBean valueAt = c4.valueAt(i4);
            if (valueAt.getId().equals(str)) {
                valueAt.setTransferStatus(i2);
                c4.setValueAt(i4, valueAt);
                this.f32002f.notifyItemChanged(i4);
                return;
            }
        }
    }

    public void H0(SparseArray<GameTransferBean> sparseArray) {
        int size = this.B.size();
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            this.B.put(size + i2, sparseArray.get(sparseArray.keyAt(i2)));
        }
    }

    void H1() {
        String str = this.f32015p0;
        if (str == null || com.join.mgps.Util.d2.h(str)) {
            return;
        }
        int c12 = c1(this.f32015p0);
        SparseArray<GameTransferBean> c4 = this.f32002f.c();
        if (c12 == -1 || c12 >= c4.size()) {
            return;
        }
        GameTransferBean gameTransferBean = c4.get(c12);
        gameTransferBean.setProgerss(100);
        gameTransferBean.setTransferStatus(9);
        gameTransferBean.setSelectedTransfer(false);
        c4.setValueAt(c12, gameTransferBean);
        this.f32002f.notifyItemChanged(c12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(DownloadTask downloadTask) {
        if (Dtype.apk.name().equals(downloadTask.getFileType())) {
            com.join.mgps.Util.f0.f(downloadTask.getGameZipPath(), downloadTask.getPackageName(), Integer.parseInt(downloadTask.getPlugin_num()));
        }
    }

    void I1() {
        DownloadTask downloadTask = this.f32013o0;
        if (downloadTask == null || this.f32000d == null) {
            return;
        }
        int Z0 = Z0(downloadTask.getCrc_link_type_val());
        SparseArray<GameTransferBean> c4 = this.f32000d.c();
        if (Z0 != -1 && Z0 < c4.size()) {
            GameTransferBean gameTransferBean = c4.get(Z0);
            com.papa.sim.statistic.p.l(this).o0(gameTransferBean.getId(), AccountUtil_.getInstance_(this).getUid());
            gameTransferBean.setProgerss(100);
            gameTransferBean.setTransferStatus(3);
            gameTransferBean.setSelectedTransfer(false);
            c4.setValueAt(Z0, gameTransferBean);
            this.f32000d.notifyItemChanged(Z0);
            this.f32027v0.q();
            w1();
            return;
        }
        this.f32027v0.q();
        w1();
    }

    void J1(String str) {
        if (str == null) {
            return;
        }
        int c12 = c1(str);
        this.f32002f.c().valueAt(c12).setTransferStatus(4);
        this.f32002f.notifyItemChanged(c12);
    }

    void K1(String str) {
        if (str == null) {
            return;
        }
        int Z0 = Z0(str);
        if (Z0 < 0) {
            w1();
            return;
        }
        SparseArray<GameTransferBean> c4 = this.f32000d.c();
        GameTransferBean gameTransferBean = c4.get(Z0);
        gameTransferBean.setTransferStatus(4);
        c4.setValueAt(Z0, gameTransferBean);
        this.f32000d.notifyItemChanged(Z0);
        w1();
    }

    void L0(String str) {
        int Y0;
        String b12;
        if (str == null || com.join.mgps.Util.d2.h(str)) {
            return;
        }
        String[] split = str.split(":");
        if (split.length != 3) {
            return;
        }
        String str2 = split[0];
        this.f32015p0 = str2;
        String str3 = split[1];
        String str4 = split[2];
        Dtype dtype = Dtype.chajian;
        if (dtype.name().equals(str4)) {
            Y0 = d1(this.f32015p0);
        } else {
            Y0 = Y0(this.f32015p0);
        }
        DownloadTask downloadTask = this.E.get(this.f32015p0);
        if (!K0(downloadTask)) {
            J1(str2);
            this.f32027v0.e(str2);
        } else if (Y0 == -1) {
            if (!Dtype.android.name().equals(str4)) {
                this.f32027v0.i();
            } else if (downloadTask != null) {
                String packageName = downloadTask.getPackageName();
                if (com.join.android.app.common.utils.a.g0(this.f32014p).c(this.f32014p, packageName)) {
                    g1.f.G().k(downloadTask);
                    UtilsMy.g2(g1.f.G().B(this.f32015p0), 5);
                    if (Integer.parseInt(str3) > com.join.android.app.common.utils.a.g0(this.f32014p).k(this.f32014p, packageName).d()) {
                        this.f32027v0.i();
                        return;
                    } else {
                        this.f32027v0.h();
                        return;
                    }
                }
                this.f32027v0.i();
            } else {
                this.f32027v0.i();
            }
        } else {
            if (dtype.name().equals(str4)) {
                b12 = e1(Y0);
            } else {
                b12 = b1(this.f32015p0);
            }
            if (Integer.parseInt(str3) > Integer.parseInt(b12)) {
                this.f32027v0.i();
            } else {
                this.f32027v0.h();
            }
        }
    }

    synchronized void L1() {
        SparseArray<GameTransferBean> c4 = this.f32000d.c();
        if (this.f32011n0) {
            List<GameTransferBean> list = this.f32030x;
            int size = list != null ? list.size() : 0;
            int i2 = 0;
            for (int i4 = 0; c4 != null && i4 < c4.size(); i4++) {
                GameTransferBean gameTransferBean = c4.get(i4);
                if (gameTransferBean != null && gameTransferBean.getTransferStatus() == 3) {
                    i2++;
                }
            }
            if (size > 0 && i2 < size) {
                Button button = this.f32007k;
                button.setText(String.format("已完成 %s/%s", i2 + "", size + ""));
            } else {
                this.f32007k.setText(R.string.game_transfer_transfer_ok);
            }
        } else {
            l1();
            this.f32007k.setText(R.string.game_transfer_transfer_ok);
        }
        v1();
    }

    void M0(String str) {
        if (str != null) {
            this.f32035z0.addAll((ArrayList) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ArrayList.class, DownloadTask.class)));
        }
    }

    public void O0(String str) {
        if (str == null || !str.contains(this.f32034z.getAbsolutePath())) {
            return;
        }
        com.join.mgps.task.b bVar = new com.join.mgps.task.b(str);
        this.H = bVar;
        this.I = this.F.submit(bVar);
    }

    void Q0(com.join.mgps.socket.entity.c cVar) {
        if (cVar == null) {
            return;
        }
        int c12 = c1(cVar.f52106x);
        GameTransferBean valueAt = this.f32002f.c().valueAt(c12);
        valueAt.setTransferStatus(cVar.f52104v);
        valueAt.setFilePath(cVar.f52102t);
        int i2 = cVar.f52104v;
        if (i2 == 2) {
            valueAt.setProgerss(cVar.f52103u);
            this.f32002f.notifyItemChanged(c12);
        } else if (i2 == 3) {
            this.f32002f.notifyItemChanged(c12);
            E0(valueAt);
        } else if (i2 != 4) {
        } else {
            this.f32002f.notifyItemChanged(c12);
        }
    }

    void R0(com.join.mgps.socket.entity.c cVar) {
        if (cVar == null) {
            return;
        }
        int Z0 = Z0(cVar.f52106x);
        if (Z0 < 0) {
            int i2 = cVar.f52104v;
            if (i2 == 4 || i2 == 3) {
                w1();
                return;
            }
            return;
        }
        SparseArray<GameTransferBean> c4 = this.f32000d.c();
        GameTransferBean gameTransferBean = c4.get(Z0);
        gameTransferBean.setTransferStatus(cVar.f52104v);
        c4.setValueAt(Z0, gameTransferBean);
        int i4 = cVar.f52104v;
        if (i4 == 2) {
            gameTransferBean.setProgerss(cVar.f52103u);
            this.f32000d.notifyItemChanged(Z0);
        } else if (i4 != 3) {
            if (i4 != 4) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("SendFile:;;;;Failed index");
            sb.append(Z0);
            sb.append(":::名称::::");
            sb.append(gameTransferBean.getGameName());
            this.f32000d.notifyItemChanged(Z0);
            O0(cVar.f52102t);
            w1();
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SendFile:;;;;Success index");
            sb2.append(Z0);
            sb2.append(":::名称::::");
            sb2.append(gameTransferBean.getGameName());
            String uid = AccountUtil_.getInstance_(this).getUid();
            com.papa.sim.statistic.p.l(this).o0(gameTransferBean.getId(), uid);
            this.f32000d.notifyItemChanged(Z0);
            O0(cVar.f52102t);
            w1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void S0() {
        init();
        initData();
        initView();
        org.greenrobot.eventbus.c.f().t(this);
    }

    GameTransferBean T0(DownloadTask downloadTask, int i2) {
        if (downloadTask == null) {
            return null;
        }
        GameTransferBean gameTransferBean = new GameTransferBean();
        gameTransferBean.setId(downloadTask.getCrc_link_type_val());
        gameTransferBean.setGameName(downloadTask.getShowName());
        gameTransferBean.setFileType(downloadTask.getFileType());
        gameTransferBean.setTransferStatus(i2);
        gameTransferBean.setFilePath(downloadTask.getPath());
        gameTransferBean.setSize(downloadTask.getShowSize());
        gameTransferBean.setIconUrl(downloadTask.getPortraitURL());
        return gameTransferBean;
    }

    void U0() {
        List<DownloadTask> list;
        if (this.f32026v == null || (list = this.f32028w) == null) {
            return;
        }
        for (DownloadTask downloadTask : list) {
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            Iterator<DownloadTask> it2 = this.f32026v.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                String romType = it2.next().getRomType();
                if (romType != null && romType.equals(crc_link_type_val)) {
                    File file = null;
                    try {
                        file = new File(getPackageManager().getApplicationInfo(downloadTask.getPackageName(), 0).sourceDir);
                    } catch (PackageManager.NameNotFoundException e4) {
                        e4.printStackTrace();
                    }
                    if (file != null && file.exists()) {
                        this.f32017q0.add(downloadTask);
                    }
                }
            }
        }
    }

    void X0() {
        this.E.clear();
        for (DownloadTask downloadTask : this.f32035z0) {
            this.E.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        SparseArray sparseArray = new SparseArray();
        for (int i2 = 0; i2 < this.f32035z0.size(); i2++) {
            StringBuilder sb = new StringBuilder();
            sb.append("getDownloadTask: 名称");
            sb.append(this.f32035z0.get(i2).getName());
            sparseArray.put(i2, T0(this.f32035z0.get(i2), 1));
        }
        this.f32002f.a(sparseArray);
        this.f32000d.l(true);
        this.f32000d.notifyDataSetChanged();
        this.f32035z0.clear();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getDownloadTask: 传输记录");
        sb2.append(this.f32002f.c().size());
    }

    int Y0(String str) {
        List<DownloadTask> list;
        if (str == null || (list = this.f32024u) == null) {
            return -1;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            DownloadTask downloadTask = this.f32024u.get(i2);
            if (downloadTask != null && str.equals(downloadTask.getCrc_link_type_val())) {
                return i2;
            }
        }
        return -1;
    }

    int Z0(String str) {
        com.join.mgps.adapter.i2 i2Var;
        if (str == null || (i2Var = this.f32000d) == null) {
            return -1;
        }
        SparseArray<GameTransferBean> c4 = i2Var.c();
        int size = c4.size();
        for (int i2 = 0; i2 < size; i2++) {
            GameTransferBean gameTransferBean = c4.get(i2);
            if (gameTransferBean != null && str.equals(gameTransferBean.getId())) {
                return i2;
            }
        }
        return -1;
    }

    String a1(int i2) {
        List<DownloadTask> list = this.f32024u;
        if (list == null || list.size() < i2) {
            return null;
        }
        return this.f32024u.get(i2).getVer();
    }

    String b1(String str) {
        DownloadTask V0 = V0(str);
        return V0 != null ? V0.getVer() : "";
    }

    void bindService() {
        Intent intent;
        int i2 = this.f32016q;
        if (i2 == 2) {
            intent = new Intent(this, SocketServerService.class);
        } else {
            intent = i2 == 1 ? new Intent(this, SocketClientService.class) : null;
        }
        bindService(intent, this.A0, 1);
    }

    int c1(String str) {
        SparseArray<GameTransferBean> c4 = this.f32002f.c();
        for (int i2 = 0; i2 < c4.size(); i2++) {
            GameTransferBean gameTransferBean = c4.get(i2);
            if (gameTransferBean != null && str.equals(gameTransferBean.getId())) {
                return i2;
            }
        }
        return -1;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void canApClientConnect(List<com.join.mgps.event.d> list) {
        if (list == null) {
            return;
        }
        if (list.size() == 0) {
            int i2 = this.f32033y0 + 1;
            this.f32033y0 = i2;
            if (i2 > 1) {
                finish();
                return;
            }
            return;
        }
        this.f32033y0 = 0;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void chooseSendFileEvent(GameTransferBean gameTransferBean) {
        if (gameTransferBean == null || this.f32024u == null) {
            return;
        }
        String id = gameTransferBean.getId();
        if (gameTransferBean.isSelectedTransfer()) {
            this.f32026v.add(V0(id));
            if (this.f32026v.size() == this.D) {
                this.f32010n = true;
                this.f32009m.setSelected(true);
            }
        } else {
            o1(gameTransferBean);
            if (this.f32010n) {
                this.f32010n = false;
                this.f32009m.setSelected(false);
            }
        }
        List<DownloadTask> list = this.f32026v;
        if (list != null) {
            s1(list.size());
        }
        l1();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void connectedEvent(String str) {
        if (str.equals(com.join.mgps.socket.entity.b.f52088h)) {
            finish();
        }
    }

    int d1(String str) {
        List<DownloadTask> list;
        if (str == null || (list = this.f32028w) == null) {
            return -1;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            DownloadTask downloadTask = this.f32028w.get(i2);
            if (downloadTask != null) {
                boolean equals = str.equals(downloadTask.getCrc_link_type_val());
                StringBuilder sb = new StringBuilder();
                sb.append("getPlugTaskListIndex: 是否存在");
                sb.append(equals);
                if (equals) {
                    return i2;
                }
            }
        }
        return -1;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void dialogEvent(String str) {
        if (str.equals("ok")) {
            finish();
        }
    }

    String e1(int i2) {
        List<DownloadTask> list = this.f32028w;
        if (list == null || list.size() < i2) {
            return null;
        }
        return this.f32028w.get(i2).getVer();
    }

    void f1() {
        if (this.f32024u != null) {
            for (int i2 = 0; i2 < this.f32024u.size(); i2++) {
                this.B.put(i2, T0(this.f32024u.get(i2), -1));
            }
        }
    }

    void g1() {
        this.f31999c.addItemDecoration(new DrawableDividerItemDecoration(getResources().getDrawable(R.drawable.recyclerview_horizontal_divider), true, false));
        this.f31999c.getItemAnimator().setChangeDuration(0L);
        this.f31999c.setHasFixedSize(true);
        this.f31999c.setOverScrollMode(2);
        PaPaLinearLayoutManager paPaLinearLayoutManager = new PaPaLinearLayoutManager(this);
        paPaLinearLayoutManager.setOrientation(1);
        this.f31999c.setLayoutManager(paPaLinearLayoutManager);
        this.f32000d.h(this.B);
        this.f31999c.setAdapter(this.f32000d);
        this.f32001e.addItemDecoration(new DrawableDividerItemDecoration(getResources().getDrawable(R.drawable.recyclerview_horizontal_divider), true, false));
        this.f32001e.getItemAnimator().setChangeDuration(0L);
        this.f32001e.setHasFixedSize(true);
        this.f32001e.setOverScrollMode(2);
        PaPaLinearLayoutManager paPaLinearLayoutManager2 = new PaPaLinearLayoutManager(this);
        paPaLinearLayoutManager2.setOrientation(1);
        this.f32001e.setLayoutManager(paPaLinearLayoutManager2);
        this.f32002f.h(this.C);
        this.f32001e.setAdapter(this.f32002f);
    }

    void h1() {
        if (this.f32025u0 == null) {
            return;
        }
        int i2 = this.f32016q;
        if (i2 == 2) {
            this.f32020s = new com.join.mgps.socket.server.a(this.f32014p, this.f32025u0);
        } else if (i2 == 1) {
            this.f32022t = new com.join.mgps.socket.client.a(this.f32014p, this.f32025u0);
        }
        this.f32018r = System.currentTimeMillis();
        j1();
    }

    void i1() {
        com.join.mgps.task.d dVar = new com.join.mgps.task.d(this.f32014p, true, 2000L);
        this.J = dVar;
        this.K = this.F.submit(dVar);
    }

    void init() {
        this.f32014p = getApplicationContext();
        this.f32027v0 = com.join.mgps.socket.b.d();
        File file = new File(com.join.mgps.Util.q1.h(this.f32014p));
        this.f32034z = file;
        if (!file.exists()) {
            this.f32034z.mkdirs();
        }
        PowerManager.WakeLock newWakeLock = this.f32021s0.newWakeLock(268435482, "My Lock");
        this.f32023t0 = newWakeLock;
        newWakeLock.acquire();
        bindService();
    }

    void initData() {
        this.f32024u = g1.f.G().N(null);
        this.f32028w = g1.f.G().I();
        this.f32026v = new ArrayList();
        this.f32017q0 = new ArrayList();
        this.f32019r0 = new ArrayList();
        this.E = new HashMap();
        this.f32030x = new ArrayList();
        this.B = new SparseArray<>();
        f1();
        this.D = this.f32024u.size();
        this.C = new SparseArray<>();
    }

    void initView() {
        g1();
        int i2 = this.f32016q;
        if (i2 == 2) {
            k1(2);
            m1();
            i1();
        } else if (i2 == 1) {
            k1(1);
            n1();
            this.f32027v0.f();
        }
    }

    void j1() {
        e eVar = new e();
        this.G = eVar;
        this.I = this.F.submit(eVar);
    }

    void k1(int i2) {
        if (i2 == 1) {
            if (this.f32003g.isTextSelectable()) {
                return;
            }
            this.f32003g.setSelected(true);
            this.f32006j.setSelected(false);
            this.f31999c.setVisibility(0);
            this.f32001e.setVisibility(8);
            this.f32007k.setVisibility(0);
            this.f32009m.setVisibility(0);
            this.f32008l.setVisibility(0);
            this.f32012o.setVisibility(8);
        } else if (i2 != 2 || this.f32006j.isTextSelectable()) {
        } else {
            this.f32006j.setSelected(true);
            this.f32003g.setSelected(false);
            this.f31999c.setVisibility(8);
            this.f32001e.setVisibility(0);
            this.f32007k.setVisibility(8);
            this.f32009m.setVisibility(8);
            this.f32008l.setVisibility(8);
            if (this.f32032y.showHistroyHint().d().booleanValue()) {
                this.f32012o.setVisibility(0);
            }
        }
    }

    void l1() {
        if (this.f32011n0) {
            return;
        }
        if (this.f32026v.size() > 0) {
            this.f32007k.setEnabled(true);
        } else {
            this.f32007k.setEnabled(false);
        }
    }

    void m1() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(WifiAPBroadcastReceiver.f51466b);
        intentFilter.addAction("android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED");
        ApWifiConnectedReceiver apWifiConnectedReceiver = new ApWifiConnectedReceiver();
        this.f32029w0 = apWifiConnectedReceiver;
        registerReceiver(apWifiConnectedReceiver, intentFilter);
    }

    void n1() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        NetWorkConnectedReceiver netWorkConnectedReceiver = new NetWorkConnectedReceiver();
        this.f32031x0 = netWorkConnectedReceiver;
        registerReceiver(netWorkConnectedReceiver, intentFilter);
    }

    public void o1(GameTransferBean gameTransferBean) {
        if (gameTransferBean == null || this.f32026v == null) {
            return;
        }
        String id = gameTransferBean.getId();
        for (DownloadTask downloadTask : this.f32026v) {
            if (downloadTask.getCrc_link_type_val().equals(id)) {
                downloadTask.set_from_type(0);
                this.f32026v.remove(downloadTask);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.game_transfer_bottom_navigation_left_txt, R.id.game_transfer_bottom_navigation_right_txt, R.id.game_transfer_ok_btn, R.id.game_transfer_list_hint_close_img, R.id.game_transfer_list_choose_all_txt, R.id.game_transfer_back_img})
    public void onClick(View view) {
        com.join.mgps.socket.client.a aVar;
        switch (view.getId()) {
            case R.id.game_transfer_back_img /* 2131297685 */:
                u1();
                return;
            case R.id.game_transfer_bottom_navigation_left_txt /* 2131297688 */:
                k1(1);
                return;
            case R.id.game_transfer_bottom_navigation_right_txt /* 2131297689 */:
                k1(2);
                return;
            case R.id.game_transfer_list_choose_all_txt /* 2131297698 */:
                if (this.f32011n0) {
                    return;
                }
                boolean z3 = !this.f32010n;
                this.f32010n = z3;
                this.f32009m.setSelected(z3);
                E1(this.f32010n);
                return;
            case R.id.game_transfer_list_hint_close_img /* 2131297699 */:
                this.f32032y.edit().J2().b(false).a();
                this.f32012o.setVisibility(8);
                return;
            case R.id.game_transfer_ok_btn /* 2131297703 */:
                StringBuilder sb = new StringBuilder();
                sb.append("onClick: +时候可用");
                sb.append(this.f32007k.isEnabled());
                if (!this.f32011n0) {
                    if (this.f32016q == 1 && (aVar = this.f32022t) != null) {
                        aVar.f();
                    }
                    this.f32011n0 = true;
                    this.f32007k.setEnabled(false);
                    D1();
                    return;
                }
                toast("请等待当前传输完成");
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.socket.server.a aVar = this.f32020s;
        if (aVar != null) {
            aVar.b();
        }
        com.join.mgps.socket.client.a aVar2 = this.f32022t;
        if (aVar2 != null) {
            aVar2.b();
        }
        stopService();
        this.f32027v0.b();
        org.greenrobot.eventbus.c.f().y(this);
        if (this.f32016q == 2) {
            com.join.mgps.Util.f.i(this.f32014p).f();
            WifiUtils.getInstance(this.f32014p).openWifi(this.f32014p);
        }
        y1();
        x1();
        A1();
        PowerManager.WakeLock wakeLock = this.f32023t0;
        if (wakeLock != null) {
            wakeLock.release();
        }
        ExecutorService executorService = this.F;
        if (executorService != null && !executorService.isShutdown()) {
            this.F.shutdownNow();
        }
        com.join.mgps.customview.t tVar = this.B0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.B0.dismiss();
        this.B0 = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        if (lVar.c() != 5) {
            return;
        }
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.s(9, a4.getCrc_link_type_val()));
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            u1();
            return false;
        }
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSocketReceiverEvent(com.join.mgps.socket.entity.a aVar) {
        com.join.mgps.socket.client.a aVar2;
        if (aVar == null) {
            return;
        }
        this.f32018r = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append("onSocketReceiverEvent: ");
        sb.append(this.f32018r);
        if (aVar instanceof com.join.mgps.socket.entity.c) {
            com.join.mgps.socket.entity.c cVar = (com.join.mgps.socket.entity.c) aVar;
            int i2 = cVar.f52105w;
            if (i2 == 0) {
                R0(cVar);
            } else if (i2 == 1) {
                Q0(cVar);
            }
        } else if (aVar instanceof com.join.mgps.socket.entity.g) {
            String str = ((com.join.mgps.socket.entity.g) aVar).f52118s;
            if (str.equals(com.join.mgps.socket.entity.a.f52067f)) {
                if (this.f32016q == 2) {
                    this.f32027v0.k();
                }
            } else if (str.startsWith(com.join.mgps.socket.entity.a.f52068g)) {
                this.f31998b.setText(str.substring(5));
                int i4 = this.f32016q;
                if (i4 == 2) {
                    this.f32027v0.f();
                } else if (i4 == 1) {
                    this.f32022t.e();
                }
            } else if (str.startsWith(com.join.mgps.socket.entity.a.f52074m)) {
                if (this.f32016q == 1) {
                    this.f32022t.f();
                }
                int indexOf = str.indexOf(":");
                int parseInt = Integer.parseInt(str.substring(5, indexOf));
                M0(str.substring(indexOf + 1));
                if (this.f32035z0.size() == parseInt) {
                    X0();
                    this.f32027v0.g();
                } else {
                    this.f32027v0.a();
                }
                this.f32007k.setEnabled(false);
                this.f32011n0 = true;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onSocketReceiverEvent: 是否可用");
                sb2.append(this.f32007k.isEnabled());
            } else if (str.equals(com.join.mgps.socket.entity.a.f52076o)) {
                w1();
            } else if (str.startsWith(com.join.mgps.socket.entity.a.f52078q)) {
                J1(str.substring(8));
            } else if (str.startsWith(com.join.mgps.socket.entity.a.f52079r)) {
                K1(str.substring(8));
            } else if (str.startsWith(com.join.mgps.socket.entity.a.f52070i)) {
                L0(str.substring(5));
            } else if (str.equals(com.join.mgps.socket.entity.a.f52071j)) {
                q1();
            } else if (str.equals(com.join.mgps.socket.entity.a.f52072k)) {
                I1();
            } else if (str.equals(com.join.mgps.socket.entity.a.f52073l)) {
                H1();
            } else if (str.equals(com.join.mgps.socket.entity.a.f52077p)) {
                if (this.f32016q == 1 && (aVar2 = this.f32022t) != null) {
                    aVar2.e();
                }
                this.f32011n0 = false;
                this.f32007k.setEnabled(true);
                this.f32000d.l(this.f32011n0);
                this.f32000d.notifyDataSetChanged();
            }
        }
    }

    public void p1(int i2) {
        if (i2 > this.B.size()) {
            return;
        }
        if (i2 == this.B.size() - 1) {
            this.B.remove(i2);
            return;
        }
        SparseArray<GameTransferBean> sparseArray = this.B;
        while (i2 < sparseArray.size() - 1) {
            int i4 = i2 + 1;
            this.B.put(i2, sparseArray.get(i4));
            i2 = i4;
        }
        this.B.remove(this.B.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00dd  */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void q1() {
        /*
            r5 = this;
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.f32013o0
            if (r0 != 0) goto L5
            return
        L5:
            java.lang.String r0 = r0.getFileType()
            r1 = 0
            com.join.mgps.enums.Dtype r2 = com.join.mgps.enums.Dtype.android
            java.lang.String r2 = r2.name()
            boolean r2 = r2.equals(r0)
            r3 = 0
            if (r2 == 0) goto L90
            com.join.mgps.enums.Dtype r0 = com.join.mgps.enums.Dtype.androiddata
            java.lang.String r0 = r0.name()
            com.github.snowdream.android.app.downloader.DownloadTask r2 = r5.f32013o0
            java.lang.String r2 = r2.getRomType()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L3b
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.f32013o0
            java.lang.String r0 = r5.M1(r0)
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            boolean r0 = com.join.mgps.Util.d2.h(r0)
            if (r0 == 0) goto Ldb
            return
        L3b:
            com.join.mgps.enums.Dtype r0 = com.join.mgps.enums.Dtype.androidobb
            java.lang.String r0 = r0.name()
            com.github.snowdream.android.app.downloader.DownloadTask r2 = r5.f32013o0
            java.lang.String r2 = r2.getRomType()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L5f
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.f32013o0
            java.lang.String r0 = r5.N1(r0)
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            boolean r0 = com.join.mgps.Util.d2.h(r0)
            if (r0 == 0) goto Ldb
            return
        L5f:
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.f32013o0
            int r0 = r0.getStatus()
            r2 = 11
            if (r0 != r2) goto L75
            java.io.File r1 = new java.io.File
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.f32013o0
            java.lang.String r0 = r0.getPath()
            r1.<init>(r0)
            goto Ldb
        L75:
            java.io.File r0 = new java.io.File     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            android.content.pm.PackageManager r2 = r5.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            com.github.snowdream.android.app.downloader.DownloadTask r4 = r5.f32013o0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            java.lang.String r4 = r4.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo(r4, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            java.lang.String r2 = r2.sourceDir     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            r0.<init>(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8b
            goto Ld5
        L8b:
            r0 = move-exception
            r0.printStackTrace()
            goto Ldb
        L90:
            com.join.mgps.enums.Dtype r2 = com.join.mgps.enums.Dtype.apk
            java.lang.String r2 = r2.name()
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto Lb4
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.f32013o0
            r0.getRomType()
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.f32013o0
            java.lang.String r0 = r5.P1(r0)
            boolean r1 = com.join.mgps.Util.d2.h(r0)
            if (r1 == 0) goto Lae
            return
        Lae:
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            goto Ldb
        Lb4:
            com.join.mgps.enums.Dtype r2 = com.join.mgps.enums.Dtype.chajian
            java.lang.String r2 = r2.name()
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto Ldb
            java.io.File r0 = new java.io.File     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Ld7
            android.content.pm.PackageManager r2 = r5.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Ld7
            com.github.snowdream.android.app.downloader.DownloadTask r4 = r5.f32013o0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Ld7
            java.lang.String r4 = r4.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Ld7
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo(r4, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Ld7
            java.lang.String r2 = r2.sourceDir     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Ld7
            r0.<init>(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Ld7
        Ld5:
            r1 = r0
            goto Ldb
        Ld7:
            r0 = move-exception
            r0.printStackTrace()
        Ldb:
            if (r1 == 0) goto Le9
            boolean r0 = r1.exists()
            if (r0 == 0) goto Le9
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.f32013o0
            r5.z1(r1, r0)
            goto Lfd
        Le9:
            org.greenrobot.eventbus.c r0 = org.greenrobot.eventbus.c.f()
            com.join.mgps.event.s r1 = new com.join.mgps.event.s
            r2 = 8
            com.github.snowdream.android.app.downloader.DownloadTask r3 = r5.f32013o0
            java.lang.String r3 = r3.getCrc_link_type_val()
            r1.<init>(r2, r3)
            r0.o(r1)
        Lfd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.GameTransferActivity.q1():void");
    }

    void r1() {
        U0();
        this.f32019r0.addAll(this.f32026v);
        this.f32019r0.addAll(this.f32017q0);
        this.f32027v0.n(this.f32019r0);
        this.f32026v.clear();
        this.f32017q0.clear();
        this.A = this.f32019r0.iterator();
    }

    void s1(int i2) {
        this.f32008l.setText(getResources().getString(R.string.choose_game_num, Integer.valueOf(i2)));
    }

    void stopService() {
        Intent intent;
        unbindService(this.A0);
        int i2 = this.f32016q;
        if (i2 == 2) {
            intent = new Intent(this, SocketServerService.class);
        } else {
            intent = i2 == 1 ? new Intent(this, SocketClientService.class) : null;
        }
        stopService(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t1() {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this, R.style.MyDialog);
        this.B0 = tVar;
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) this.B0.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.B0.findViewById(R.id.dialog_button_ok);
        ((TextView) this.B0.findViewById(R.id.tip_title)).setText("提示");
        ((TextView) this.B0.findViewById(R.id.dialog_content)).setText("退出会中断连接及正在进行的传输，确认退出吗？");
        ((TextView) this.B0.findViewById(R.id.dialog_desci)).setVisibility(8);
        button.setText("确认");
        button2.setText("取消");
        button.setOnClickListener(new b());
        button2.setOnClickListener(new c());
        com.join.mgps.customview.t tVar2 = this.B0;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.B0.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toast(String str) {
        com.join.mgps.Util.i2.a(this.f32014p).b(str);
    }

    void u1() {
        t1();
    }

    void v1() {
        try {
            SparseArray<GameTransferBean> c4 = this.f32000d.c();
            SparseArray<GameTransferBean> sparseArray = new SparseArray<>();
            if (c4 != null) {
                for (int i2 = 0; i2 < c4.size(); i2++) {
                    GameTransferBean gameTransferBean = c4.get(i2);
                    if (gameTransferBean.getTransferStatus() == 3) {
                        sparseArray.put(i2, gameTransferBean);
                        p1(i2);
                    }
                }
                H0(sparseArray);
                this.f32000d.notifyDataSetChanged();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void w1() {
        com.join.mgps.socket.client.a aVar;
        if (this.A.hasNext()) {
            DownloadTask next = this.A.next();
            this.f32013o0 = next;
            String crc_link_type_val = next.getCrc_link_type_val();
            String ver = this.f32013o0.getVer();
            String fileType = this.f32013o0.getFileType();
            if (J0(this.f32013o0)) {
                this.f32027v0.m(crc_link_type_val + ":" + ver + ":" + fileType);
            } else {
                this.f32027v0.l(crc_link_type_val);
                K1(crc_link_type_val);
            }
        } else {
            if (this.f32016q == 1 && (aVar = this.f32022t) != null) {
                aVar.e();
            }
            this.f32027v0.o();
            this.f32011n0 = false;
            this.f32000d.l(false);
            this.f32000d.notifyDataSetChanged();
            this.f32019r0.clear();
        }
        L1();
    }

    void x1() {
        Future future;
        if (this.J == null || (future = this.K) == null || future.isCancelled()) {
            return;
        }
        this.J.d(false);
        this.K.cancel(true);
    }

    void y1() {
        e eVar = this.G;
        if (eVar == null || this.I == null) {
            return;
        }
        eVar.a(false);
        this.I.cancel(true);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void zipEvent(com.join.mgps.event.s sVar) {
        if (sVar == null) {
            return;
        }
        String str = sVar.f48202b;
        this.f32018r = System.currentTimeMillis();
        switch (sVar.f48201a) {
            case 5:
                F1(str, 5);
                this.f32027v0.p();
                return;
            case 6:
                G1(str, 6);
                return;
            case 7:
                G1(str, 7);
                return;
            case 8:
                G1(str, 8);
                return;
            case 9:
                G1(str, 9);
                DownloadTask downloadTask = this.E.get(str);
                I0(downloadTask);
                O0(downloadTask.getPath());
                return;
            default:
                return;
        }
    }
}
