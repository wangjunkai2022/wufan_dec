package com.join.mgps.activity;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.FragmentTransaction;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.BaseFragmentActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.github.snowdream.android.app.downloader.b;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dialog.x;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.fragment.i3;
import com.join.mgps.fragment.j3;
import com.join.mgps.fragment.k3;
import com.join.mgps.fragment.l3;
import com.join.mgps.pref.PrefDef_;
import com.umeng.analytics.pro.ai;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import q.rorbin.badgeview.QBadgeView;
@EActivity(R.layout.activity_document_manage)
/* loaded from: classes.dex */
public class DocumentManageActivity extends BaseFragmentActivity {
    @Extra
    public static int D0 = 1;
    i3 A;
    i3 B;
    k3 C;
    k3 D;
    private AccountBean E;
    com.join.mgps.rpc.c F;
    LocalBroadcastManager I;
    e J;
    IntentFilter K;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f29508a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RelativeLayout f29509b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f29510c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ImageView f29511d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    RadioGroup f29512e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    RadioButton f29513f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    RadioButton f29514g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f29515h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f29516i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f29517j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    RadioGroup f29518k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    RadioButton f29519l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    RadioButton f29520m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    LinearLayout f29521n;

    /* renamed from: n0  reason: collision with root package name */
    private b.InterfaceC0098b f29522n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f29523o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    FrameLayout f29525p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    RelativeLayout f29527q;

    /* renamed from: q0  reason: collision with root package name */
    List<RomArchived> f29528q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    SimpleDraweeView f29529r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f29531s;

    /* renamed from: t0  reason: collision with root package name */
    private q.rorbin.badgeview.a f29534t0;
    @Pref

    /* renamed from: u  reason: collision with root package name */
    PrefDef_ f29535u;

    /* renamed from: v  reason: collision with root package name */
    com.github.snowdream.android.app.downloader.b f29537v;

    /* renamed from: v0  reason: collision with root package name */
    private TextView f29538v0;

    /* renamed from: w  reason: collision with root package name */
    Context f29539w;

    /* renamed from: x  reason: collision with root package name */
    com.join.mgps.dialog.x f29541x;
    @Extra

    /* renamed from: y  reason: collision with root package name */
    String f29543y;

    /* renamed from: y0  reason: collision with root package name */
    PopupWindow f29544y0;

    /* renamed from: z  reason: collision with root package name */
    ArchiveNumDataBean f29545z;

    /* renamed from: t  reason: collision with root package name */
    Fragment f29533t = null;
    int G = 1;
    int H = 0;

    /* renamed from: o0  reason: collision with root package name */
    int f29524o0 = 1;

    /* renamed from: p0  reason: collision with root package name */
    public boolean f29526p0 = false;

    /* renamed from: r0  reason: collision with root package name */
    public boolean f29530r0 = true;

    /* renamed from: s0  reason: collision with root package name */
    public boolean f29532s0 = true;

    /* renamed from: u0  reason: collision with root package name */
    boolean f29536u0 = true;

    /* renamed from: w0  reason: collision with root package name */
    int f29540w0 = 5;
    @SuppressLint({"HandlerLeak"})

    /* renamed from: x0  reason: collision with root package name */
    Handler f29542x0 = new c();

    /* renamed from: z0  reason: collision with root package name */
    boolean f29546z0 = false;
    boolean A0 = false;
    boolean B0 = false;
    Map<String, CloudListDataBean> C0 = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements x.c {
        a() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x xVar) {
            xVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements x.c {
        b() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x xVar) {
            DocumentManageActivity.this.f29537v.i();
            xVar.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class c extends Handler {
        c() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 != 3) {
                if (i2 != 4) {
                    return;
                }
                DocumentManageActivity.this.f29542x0.removeMessages(3);
                return;
            }
            TextView textView = DocumentManageActivity.this.f29538v0;
            textView.setText(DocumentManageActivity.this.f29540w0 + ai.az);
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i4 = documentManageActivity.f29540w0 + (-1);
            documentManageActivity.f29540w0 = i4;
            if (i4 < 0) {
                documentManageActivity.f29544y0.dismiss();
                return;
            }
            Message message2 = new Message();
            message2.what = 3;
            DocumentManageActivity.this.f29542x0.sendMessageDelayed(message2, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements b.InterfaceC0098b {
        d() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onError(String str) {
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i2 = documentManageActivity.H + 1;
            documentManageActivity.H = i2;
            if (documentManageActivity.G == i2) {
                documentManageActivity.f29541x.dismiss();
            }
            DocumentManageActivity.this.f29537v.l(str);
            CloudListDataBean cloudListDataBean = DocumentManageActivity.this.C0.get(str);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            cloudListDataBean.setStatus(6);
            eVar.f(cloudListDataBean);
            eVar.j(6);
            org.greenrobot.eventbus.c.f().o(eVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onFinish(String str) {
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            if (documentManageActivity.G == documentManageActivity.H) {
                documentManageActivity.f29541x.dismiss();
            }
            DocumentManageActivity documentManageActivity2 = DocumentManageActivity.this;
            int i2 = documentManageActivity2.G;
            if (i2 == documentManageActivity2.H && i2 > 1) {
                DocumentManageActivity.this.I.sendBroadcast(new Intent("com.join.mgps.activity.quitManage"));
            }
            DocumentManageActivity documentManageActivity3 = DocumentManageActivity.this;
            documentManageActivity3.H++;
            documentManageActivity3.f29537v.l(str);
            CloudListDataBean cloudListDataBean = DocumentManageActivity.this.C0.get(str);
            if (cloudListDataBean == null) {
                return;
            }
            if (cloudListDataBean.getArchiveFilePath().contains(com.join.mgps.Util.u.f27849h)) {
                DocumentManageActivity.this.I0(cloudListDataBean);
                return;
            }
            CloudDownRecoderTable cloudDownRecoderTable = new CloudDownRecoderTable();
            cloudDownRecoderTable.setGameId(DocumentManageActivity.this.f29543y);
            cloudDownRecoderTable.setFilePath(cloudListDataBean.getArchiveFilePath());
            cloudDownRecoderTable.setFileName(cloudListDataBean.getArchiveFileName());
            cloudDownRecoderTable.setMd5(cloudListDataBean.getFileMd5());
            n1.i.o().k(cloudDownRecoderTable);
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            cloudListDataBean.setStatus(0);
            eVar.f(cloudListDataBean);
            eVar.j(0);
            org.greenrobot.eventbus.c.f().o(eVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onProgress(String str, int i2, String str2) {
            CloudListDataBean cloudListDataBean = DocumentManageActivity.this.C0.get(str);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            cloudListDataBean.setStatus(3);
            eVar.f(cloudListDataBean);
            eVar.j(3);
            eVar.g(str2);
            eVar.i(i2);
            eVar.h(UtilsMy.d((cloudListDataBean.getFileSize() * i2) / 100) + net.lingala.zip4j.util.e.F0 + UtilsMy.d(cloudListDataBean.getFileSize()) + "K");
            org.greenrobot.eventbus.c.f().o(eVar);
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i4 = documentManageActivity.G;
            if (i4 > 1) {
                if (i4 != 0) {
                    documentManageActivity.f29541x.c(DocumentManageActivity.this.H + net.lingala.zip4j.util.e.F0 + DocumentManageActivity.this.G, eVar.b(), eVar.d());
                    return;
                }
                return;
            }
            com.join.mgps.dialog.x xVar = documentManageActivity.f29541x;
            if (xVar != null) {
                xVar.c(eVar.c(), eVar.b() + "/S", eVar.d());
            }
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onStart(String str) {
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i2 = documentManageActivity.G;
            if (i2 == 1 || i2 == 0) {
                return;
            }
            com.join.mgps.dialog.x xVar = documentManageActivity.f29541x;
            xVar.c(DocumentManageActivity.this.H + net.lingala.zip4j.util.e.F0 + DocumentManageActivity.this.G, "0K", 100 / DocumentManageActivity.this.G);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onStop(String str) {
            DocumentManageActivity documentManageActivity = DocumentManageActivity.this;
            int i2 = documentManageActivity.H + 1;
            documentManageActivity.H = i2;
            if (documentManageActivity.G == i2) {
                documentManageActivity.f29541x.dismiss();
            }
            DocumentManageActivity.this.f29537v.l(str);
            CloudListDataBean cloudListDataBean = DocumentManageActivity.this.C0.get(str);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            cloudListDataBean.setStatus(6);
            eVar.f(cloudListDataBean);
            eVar.j(6);
            org.greenrobot.eventbus.c.f().o(eVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onWait(String str) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void updateSize(String str, long j4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends BroadcastReceiver {
        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DocumentManageActivity.this.B0 = false;
        }
    }

    public static long G0(String str, String str2) {
        try {
            return new SimpleDateFormat(str2).parse(str).getTime();
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0L;
        }
    }

    private ArchiveColudArgs K0() {
        if (this.E == null) {
            return RequestBeanUtil.getInstance(this.f29539w).getArchiveNum("", "", this.f29543y);
        }
        RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this.f29539w);
        return requestBeanUtil.getArchiveNum(this.E.getUid() + "", this.E.getToken(), this.f29543y);
    }

    private void O0() {
        this.f29537v = com.github.snowdream.android.app.downloader.b.e();
        d dVar = new d();
        this.f29522n0 = dVar;
        this.f29537v.m(dVar);
        this.f29537v.i();
    }

    private boolean P0() {
        return getWindow().getDecorView().getVisibility() == 0;
    }

    private void b1(int i2) {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        N0(beginTransaction);
        Bundle bundle = new Bundle();
        bundle.putString("gameid", this.f29543y);
        bundle.putInt("type", i2);
        if (i2 == 1) {
            i3 i3Var = this.A;
            if (i3Var == null) {
                j3 j3Var = new j3();
                this.A = j3Var;
                j3Var.setArguments(bundle);
                beginTransaction.add(R.id.frag, this.A);
            } else {
                beginTransaction.show(i3Var);
            }
        } else if (i2 == 2) {
            i3 i3Var2 = this.B;
            if (i3Var2 == null) {
                j3 j3Var2 = new j3();
                this.B = j3Var2;
                j3Var2.setArguments(bundle);
                beginTransaction.add(R.id.frag, this.B);
            } else {
                beginTransaction.show(i3Var2);
            }
        } else if (i2 == 3) {
            k3 k3Var = this.C;
            if (k3Var == null) {
                l3 l3Var = new l3();
                this.C = l3Var;
                l3Var.setArguments(bundle);
                beginTransaction.add(R.id.frag, this.C);
            } else {
                beginTransaction.show(k3Var);
            }
        } else {
            k3 k3Var2 = this.D;
            if (k3Var2 == null) {
                l3 l3Var2 = new l3();
                this.D = l3Var2;
                l3Var2.setArguments(bundle);
                beginTransaction.add(R.id.frag, this.D);
            } else {
                beginTransaction.show(k3Var2);
            }
        }
        beginTransaction.commitAllowingStateLoss();
    }

    public static boolean checkDeviceHasNavigationBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", q.a.f73954a);
        boolean z3 = false;
        boolean z4 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z3 = "0".equals(str) ? true : z4;
            }
            return z3;
        } catch (Exception unused) {
            return z4;
        }
    }

    public void D0() {
        this.f29513f.setTextColor(getResources().getColor(R.color.archive_txt));
        this.f29514g.setTextColor(getResources().getColor(R.color.archive_txt));
        this.f29519l.setTextColor(getResources().getColor(R.color.archive_txt));
        this.f29520m.setTextColor(getResources().getColor(R.color.archive_txt));
        this.f29513f.setBackgroundResource(R.drawable.archive_local);
        this.f29514g.setBackgroundResource(R.drawable.archive_local);
        this.f29519l.setBackgroundResource(R.drawable.archive_local);
        this.f29520m.setBackgroundResource(R.drawable.archive_local);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        if (!this.B0) {
            finish();
        }
        if (Q0()) {
            com.join.mgps.va.overmind.e.p().g();
        }
    }

    void H0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(CloudListDataBean cloudListDataBean) {
        DownloadTask B = g1.f.G().B(this.f29543y);
        String v3 = UtilsMy.v3(B.getGameZipPath());
        String w12 = UtilsMy.w1(Integer.parseInt(B.getPlugin_num()));
        File file = new File(com.join.mgps.Util.u.f27845d);
        StringBuilder sb = new StringBuilder();
        sb.append(file.getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append("papa91");
        sb.append(str);
        sb.append(w12);
        sb.append(str);
        String sb2 = sb.toString();
        String substring = v3.substring(v3.lastIndexOf(47) + 1, v3.length());
        File file2 = new File(sb2 + substring);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        String str2 = new String(sb2 + substring + str + cloudListDataBean.getArchiveFileName());
        if (new File(cloudListDataBean.getArchiveFilePath()).exists()) {
            boolean c4 = com.join.mgps.Util.g0.c(cloudListDataBean.getArchiveFilePath(), str2);
            J0(cloudListDataBean.getArchiveCover(), file2.getAbsolutePath() + str, cloudListDataBean.getArchiveFileName() + ".png");
            if (c4) {
                UtilsMy.delete(new File(cloudListDataBean.getArchiveFilePath()));
                cloudListDataBean.setArchiveFilePath(str2);
            }
            g1(cloudListDataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(String str, String str2, String str3) {
        File file;
        File file2 = null;
        try {
            File file3 = new File(str2);
            if (!file3.exists()) {
                file3.mkdirs();
            }
            file = new File(str2 + str3);
        } catch (Exception e4) {
            e = e4;
        }
        try {
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            file.createNewFile();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoInput(true);
            if (httpURLConnection.getResponseCode() == 200) {
                InputStream inputStream = httpURLConnection.getInputStream();
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        inputStream.close();
                        fileOutputStream.close();
                        return;
                    }
                }
            } else if (file.exists()) {
                UtilsMy.delete(file);
            }
        } catch (Exception e5) {
            e = e5;
            file2 = file;
            try {
                e.printStackTrace();
                if (file2 == null || !file2.exists()) {
                    return;
                }
                UtilsMy.delete(file2);
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        try {
            ArchiveNumDataBean f4 = this.F.f(K0().getArgs());
            this.f29545z = f4;
            if (f4 == null || f4.getCode() != 600) {
                return;
            }
            if (this.f29545z.getData_info().getTitle() != null) {
                MApplication.E = true;
                MApplication.F = this.f29545z.getData_info().getTitle();
                MApplication.G = this.f29545z.getData_info().getPid();
                M0();
            }
            if (this.f29545z.getData_info().getHasNoComment() == 1) {
                showRedPoint();
            }
            this.f29535u.getArchiveCoinPref().g(Integer.valueOf(this.f29545z.getData_info().getArchiveCoin()));
            this.f29535u.cloudVipLink().g(this.f29545z.getData_info().getVipLink());
            DownloadTask B = g1.f.G().B(this.f29543y);
            if (B != null) {
                this.f29528q0 = com.join.mgps.Util.f0.m(B.getPlugin_num(), B.getGameZipPath());
                if (B.getPlugin_num().equals("31")) {
                    boolean z3 = false;
                    boolean z4 = false;
                    for (RomArchived romArchived : this.f29528q0) {
                        if (romArchived.getFileName().contains("_v2")) {
                            z3 = true;
                        } else {
                            z4 = true;
                        }
                    }
                    Iterator<RomArchived> it2 = this.f29528q0.iterator();
                    while (it2.hasNext()) {
                        RomArchived next = it2.next();
                        if (z4 && !z3) {
                            this.f29530r0 = false;
                            if (!com.join.mgps.Util.j1.a(B.getPackageName())) {
                                it2.remove();
                            }
                        } else if (z4 && z3) {
                            if (com.join.mgps.Util.j1.a(B.getPackageName())) {
                                this.f29532s0 = false;
                                if (next.getFileName().contains("_v2")) {
                                    it2.remove();
                                }
                            } else if (!next.getFileName().contains("_v2")) {
                                it2.remove();
                            }
                        }
                    }
                }
                if (B.getPlugin_num().equals("33")) {
                    RomArchived romArchived2 = null;
                    long j4 = 0;
                    for (RomArchived romArchived3 : this.f29528q0) {
                        long G0 = G0(romArchived3.getArchivedTime(), "MM月dd日 HH:mm");
                        if (j4 == 0) {
                            romArchived2 = romArchived3;
                            j4 = G0;
                        }
                        if (j4 > G0) {
                            romArchived2 = romArchived3;
                            j4 = G0;
                        }
                    }
                    if (romArchived2 != null && romArchived2.getFileName().contains("vba")) {
                        a1(true);
                    }
                }
                List<RomArchived> list = this.f29528q0;
                if (list != null) {
                    f1(list.size());
                    return;
                } else {
                    f1(0);
                    return;
                }
            }
            f1(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void M0() {
        k3 k3Var = this.C;
        if (k3Var != null) {
            k3Var.M();
        }
    }

    public void N0(FragmentTransaction fragmentTransaction) {
        i3 i3Var = this.A;
        if (i3Var != null) {
            fragmentTransaction.hide(i3Var);
        }
        i3 i3Var2 = this.B;
        if (i3Var2 != null) {
            fragmentTransaction.hide(i3Var2);
        }
        k3 k3Var = this.C;
        if (k3Var != null) {
            fragmentTransaction.hide(k3Var);
        }
        k3 k3Var2 = this.D;
        if (k3Var2 != null) {
            fragmentTransaction.hide(k3Var2);
        }
    }

    public boolean Q0() {
        return D0 == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
        if (this.B0) {
            return;
        }
        this.B0 = true;
        this.f29523o.setText("批量模式");
        this.I.sendBroadcast(new Intent("com.join.mgps.activity.joinManage"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        if (this.B0) {
            return;
        }
        if (!com.join.android.app.common.utils.f.j(this.f29539w)) {
            com.join.mgps.Util.i2.a(this.f29539w).b("无网络链接");
            return;
        }
        AccountBean accountBean = this.E;
        if (accountBean != null && accountBean.getUid() != 0 && !AccountUtil_.getInstance_(this.f29539w).isTourist()) {
            D0();
            H0();
            d1(4);
            this.f29521n.setVisibility(8);
            this.f29520m.setBackgroundResource(R.drawable.archive_bg_left);
            this.f29520m.setTextColor(getResources().getColor(R.color.white));
            b1(4);
            hideRedPoint();
            ArchiveNumDataBean archiveNumDataBean = this.f29545z;
            if (archiveNumDataBean == null || archiveNumDataBean.getData_info() == null || this.f29545z.getData_info().getHasNoComment() != 1) {
                return;
            }
            this.f29545z.getData_info().setHasNoComment(0);
            return;
        }
        IntentUtil.getInstance().goLogin(this.f29539w);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        if (this.B0) {
            return;
        }
        if (!com.join.android.app.common.utils.f.j(this.f29539w)) {
            com.join.mgps.Util.i2.a(this.f29539w).b("无网络链接");
            return;
        }
        AccountBean accountBean = this.E;
        if (accountBean != null && accountBean.getUid() != 0 && !AccountUtil_.getInstance_(this.f29539w).isTourist()) {
            H0();
            d1(1);
            D0();
            this.f29521n.setVisibility(0);
            this.f29514g.setBackgroundResource(R.drawable.archive_bg_left);
            this.f29514g.setTextColor(getResources().getColor(R.color.white));
            b1(1);
            return;
        }
        IntentUtil.getInstance().goLogin(this.f29539w);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        if (this.B0) {
            return;
        }
        H0();
        d1(2);
        D0();
        this.f29521n.setVisibility(0);
        this.f29513f.setBackgroundResource(R.drawable.archive_bg_left);
        this.f29513f.setTextColor(getResources().getColor(R.color.white));
        b1(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    @RequiresApi(api = 21)
    public void V0() {
        if (this.B0) {
            return;
        }
        if (!com.join.android.app.common.utils.f.j(this.f29539w)) {
            com.join.mgps.Util.i2.a(this.f29539w).b("无网络链接");
            return;
        }
        H0();
        d1(3);
        D0();
        this.f29521n.setVisibility(8);
        this.f29519l.setBackgroundResource(R.drawable.archive_bg_left);
        this.f29519l.setTextColor(getResources().getColor(R.color.white));
        b1(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65477g0})
    public void W0(Intent intent) {
        if (P0()) {
            this.G = 1;
            this.H = 1;
            CloudListDataBean cloudListDataBean = (CloudListDataBean) intent.getSerializableExtra("downCloud");
            this.C0.put(cloudListDataBean.getArchiveFile(), cloudListDataBean);
            cloudListDataBean.setStatus(3);
            this.f29537v.b(new com.github.snowdream.android.app.downloader.c(cloudListDataBean.getArchiveFile(), cloudListDataBean.getArchiveFileName(), new File(cloudListDataBean.getArchiveFilePath()).getParent() + File.separator, cloudListDataBean.getFileSize()));
            org.greenrobot.eventbus.c.f().o(cloudListDataBean);
            this.f29541x.show();
            this.f29541x.c("1/" + UtilsMy.d(cloudListDataBean.getFileSize()) + "K", "0", 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.cloud.downCloud.all"})
    public void X0(Intent intent) {
        if (P0()) {
            List<CloudListDataBean> list = (List) intent.getSerializableExtra("downClouds");
            this.G = list.size();
            this.f29541x.show();
            this.f29541x.c("1/" + list.size(), "0K", 1);
            this.H = 1;
            if (this.G != 0) {
                this.f29541x.c("1/" + list.size(), "0K", 100 / this.G);
            }
            for (CloudListDataBean cloudListDataBean : list) {
                this.C0.put(cloudListDataBean.getArchiveFile(), cloudListDataBean);
                String archiveFileName = cloudListDataBean.getArchiveFileName();
                StringBuilder sb = new StringBuilder();
                sb.append(com.join.mgps.Util.u.f27849h);
                String str = File.separator;
                sb.append(str);
                sb.append(cloudListDataBean.getArchiveFileName());
                cloudListDataBean.setArchiveFilePath(sb.toString());
                cloudListDataBean.setStatus(3);
                this.f29537v.b(new com.github.snowdream.android.app.downloader.c(cloudListDataBean.getArchiveFile(), archiveFileName, new File(cloudListDataBean.getArchiveFilePath()).getParent() + str, cloudListDataBean.getFileSize()));
                org.greenrobot.eventbus.c.f().o(cloudListDataBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Y0() {
        if (this.B0) {
            return;
        }
        if (!this.f29546z0) {
            this.f29511d.setBackgroundResource(R.drawable.archive_up);
            this.f29513f.setVisibility(8);
            this.f29514g.setVisibility(8);
            this.f29546z0 = true;
            return;
        }
        D0();
        H0();
        d1(2);
        this.f29521n.setVisibility(0);
        this.f29513f.setBackgroundResource(R.drawable.archive_bg_left);
        this.f29513f.setTextColor(getResources().getColor(R.color.white));
        b1(2);
        this.f29511d.setBackgroundResource(R.drawable.archive_down);
        this.f29513f.setVisibility(0);
        this.f29514g.setVisibility(0);
        this.f29546z0 = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        if (this.B0) {
            return;
        }
        if (!com.join.android.app.common.utils.f.j(this.f29539w)) {
            com.join.mgps.Util.i2.a(this.f29539w).b("无网络链接");
        } else if (!this.A0) {
            this.f29517j.setBackgroundResource(R.drawable.archive_up);
            this.f29518k.setVisibility(8);
            this.A0 = true;
            hideRedPoint();
        } else {
            D0();
            this.f29518k.setVisibility(0);
            this.f29521n.setVisibility(8);
            H0();
            d1(3);
            this.f29517j.setBackgroundResource(R.drawable.archive_down);
            this.f29519l.setBackgroundResource(R.drawable.archive_bg_left);
            this.f29519l.setTextColor(getResources().getColor(R.color.white));
            b1(3);
            ArchiveNumDataBean archiveNumDataBean = this.f29545z;
            if (archiveNumDataBean != null && archiveNumDataBean.getData_info() != null && this.f29545z.getData_info().getHasNoComment() == 1) {
                showRedPoint();
            }
            this.f29517j.setBackgroundResource(R.drawable.archive_down);
            this.f29518k.setVisibility(0);
            this.A0 = false;
        }
    }

    public void a1(boolean z3) {
        this.f29526p0 = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29539w = this;
        this.f29509b.setVisibility(0);
        this.f29515h.setVisibility(0);
        this.E = AccountUtil_.getInstance_(this).getAccountData();
        this.f29518k.setVisibility(8);
        this.J = new e();
        IntentFilter intentFilter = new IntentFilter();
        this.K = intentFilter;
        intentFilter.addAction("com.join.mgps.activity.quitManage");
        this.I = LocalBroadcastManager.getInstance(this.f29539w);
        this.F = com.join.mgps.rpc.impl.b.k();
        this.f29511d.setBackgroundResource(R.drawable.archive_down);
        this.I.registerReceiver(this.J, this.K);
        int dimension = (int) getResources().getDimension(R.dimen.wdp27);
        getResources().getDimension(R.dimen.wdp343);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((((int) getResources().getDimension(R.dimen.wdp916)) * (getResources().getDisplayMetrics().heightPixels - (dimension * 2))) / ((int) getResources().getDimension(R.dimen.wdp667)), -1);
        layoutParams.leftMargin = dimension;
        layoutParams.topMargin = dimension;
        layoutParams.bottomMargin = dimension;
        this.f29527q.setLayoutParams(layoutParams);
        D0();
        this.f29513f.setBackgroundResource(R.drawable.archive_bg_left);
        D0();
        this.f29518k.setVisibility(0);
        this.f29521n.setVisibility(8);
        this.f29517j.setBackgroundResource(R.drawable.archive_down);
        this.f29519l.setBackgroundResource(R.drawable.archive_bg_left);
        this.f29519l.setTextColor(getResources().getColor(R.color.white));
        b1(3);
        L0();
        O0();
        this.f29541x = new com.join.mgps.dialog.x(this, R.style.HKDialogLoading).f("存档下载中").e("取消下载").b("后台运行").d(new b()).a(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.wufun.cloud.showDownDialog"})
    public void c1() {
        if (this.f29537v.g() > 0) {
            this.f29541x.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d1(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e1(ArchiveNumDataBean archiveNumDataBean) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1(int i2) {
        try {
            this.f29529r.setImageURI(this.f29545z.getData_info().getBgImg());
            TextView textView = this.f29510c;
            textView.setText(i2 + "个");
            TextView textView2 = this.f29516i;
            textView2.setText(this.f29545z.getData_info().getMarketNum() + "个");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(CloudListDataBean cloudListDataBean) {
        com.join.mgps.event.e eVar = new com.join.mgps.event.e();
        cloudListDataBean.setStatus(0);
        eVar.f(cloudListDataBean);
        eVar.j(0);
        org.greenrobot.eventbus.c.f().o(eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideRedPoint() {
        q.rorbin.badgeview.a aVar = this.f29534t0;
        if (aVar != null) {
            aVar.hide(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        b.InterfaceC0098b interfaceC0098b;
        super.onDestroy();
        H0();
        com.github.snowdream.android.app.downloader.b bVar = this.f29537v;
        if (bVar != null && (interfaceC0098b = this.f29522n0) != null) {
            bVar.j(interfaceC0098b);
        }
        this.I.unregisterReceiver(this.J);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.e eVar) {
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            if (Q0()) {
                com.join.mgps.va.overmind.e.p().g();
            }
            if (this.B0) {
                return true;
            }
            finish();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        O0();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        super.onWindowFocusChanged(z3);
        if (z3 && this.f29524o0 == 2 && this.f29536u0) {
            this.f29536u0 = false;
            d1(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRedPoint() {
        this.f29534t0 = new QBadgeView(this.f29539w).c(this.f29531s).q(-1).u(4.0f, true).g(SupportMenu.CATEGORY_MASK).v(getResources().getDimensionPixelSize(R.dimen.wdp20), false).o(8388693).l(-1);
    }
}
