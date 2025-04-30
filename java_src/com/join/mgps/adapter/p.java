package com.join.mgps.adapter;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DownloadCenterActivity;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.dto.DownloadCenterBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* compiled from: DownloadCenterAdapter.java */
/* loaded from: classes3.dex */
public class p extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    Activity f43069b;

    /* renamed from: c  reason: collision with root package name */
    ListView f43070c;

    /* renamed from: a  reason: collision with root package name */
    String f43068a = getClass().getSimpleName();

    /* renamed from: d  reason: collision with root package name */
    DownloadCenterBean f43071d = new DownloadCenterBean();

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43072a;

        a(DownloadTask downloadTask) {
            this.f43072a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int status = this.f43072a.getStatus();
            if (status == 5) {
                UtilsMy.f3(p.this.f43069b, this.f43072a, "1");
                return;
            }
            EMUUpdateTable eMUUpdateTable = null;
            if (status != 9) {
                if (status == 11) {
                    UtilsMy.j3(this.f43072a, p.this.f43069b);
                } else if (status != 42) {
                } else {
                    HashMap hashMap = new HashMap(1);
                    hashMap.put("crc_sign_id", this.f43072a.getCrc_link_type_val());
                    List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
                    if (h4 != null && h4.size() > 0) {
                        eMUUpdateTable = h4.get(0);
                    }
                    DownloadTask B = g1.f.G().B(this.f43072a.getCrc_link_type_val());
                    if (B != null) {
                        this.f43072a.setId(B.getId());
                    }
                    if (eMUUpdateTable != null) {
                        this.f43072a.setVer(eMUUpdateTable.getVer());
                        this.f43072a.setVer_name(eMUUpdateTable.getVer_name());
                        this.f43072a.setUrl(eMUUpdateTable.getDown_url_remote());
                        UtilsMy.w3(p.this.f43069b, this.f43072a);
                    }
                    p.this.notifyDataSetChanged();
                }
            } else if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
            } else if (UtilsMy.T0(p.this.f43069b, this.f43072a)) {
            } else {
                if (this.f43072a.getDown_status() == 5) {
                    UtilsMy.R0(p.this.f43069b, this.f43072a);
                    return;
                }
                TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
                HashMap hashMap2 = new HashMap(1);
                hashMap2.put("crc_sign_id", this.f43072a.getCrc_link_type_val());
                List<EMUUpdateTable> h5 = n1.q.o().h(hashMap2);
                if (h5 != null && h5.size() > 0) {
                    eMUUpdateTable = h5.get(0);
                }
                DownloadTask B2 = g1.f.G().B(this.f43072a.getCrc_link_type_val());
                if (B2 != null) {
                    this.f43072a.setId(B2.getId());
                }
                if (eMUUpdateTable != null) {
                    this.f43072a.setVer(eMUUpdateTable.getVer());
                    this.f43072a.setVer_name(eMUUpdateTable.getVer_name());
                    this.f43072a.setUrl(eMUUpdateTable.getDown_url_remote());
                    g1.f.G().m(this.f43072a);
                    UtilsMy.A0(g1.f.G().B(this.f43072a.getCrc_link_type_val()));
                    com.php25.PDownload.d.c(this.f43072a, p.this.f43069b);
                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    public class a0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43074a;

        a0(DownloadTask downloadTask) {
            this.f43074a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(p.this.f43069b, this.f43074a);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43076a;

        b(DownloadTask downloadTask) {
            this.f43076a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
                return;
            }
            int downloadType = this.f43076a.getDownloadType();
            if (downloadType != 0 && downloadType != 1) {
                if (downloadType != 2) {
                    return;
                }
                UtilsMy.z3(this.f43076a);
                return;
            }
            TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
            p.this.c(this.f43076a);
            EMUUpdateTable eMUUpdateTable = null;
            HashMap hashMap = new HashMap(1);
            hashMap.put("crc_sign_id", this.f43076a.getCrc_link_type_val());
            List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
            if (h4 != null && h4.size() > 0) {
                eMUUpdateTable = h4.get(0);
            }
            if (eMUUpdateTable != null) {
                this.f43076a.setVer(eMUUpdateTable.getVer());
                this.f43076a.setVer_name(eMUUpdateTable.getVer_name());
                this.f43076a.setUrl(eMUUpdateTable.getDown_url_remote());
                com.php25.PDownload.d.c(this.f43076a, p.this.f43069b);
                textView.setBackgroundResource(R.drawable.recom_green_butn);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    public class b0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43078a;

        b0(DownloadTask downloadTask) {
            this.f43078a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.php25.PDownload.d.h(this.f43078a);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43080a;

        c(DownloadTask downloadTask) {
            this.f43080a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f43080a;
            if (downloadTask == null || downloadTask.getGameZipPath() == null) {
                return;
            }
            if (new File(this.f43080a.getGameZipPath()).exists()) {
                UtilsMy.f3(p.this.f43069b, this.f43080a, "1");
                String str = p.this.f43068a;
                return;
            }
            com.php25.PDownload.d.c(this.f43080a, p.this.f43069b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    public class c0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43082a;

        c0(DownloadTask downloadTask) {
            this.f43082a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.php25.PDownload.d.k(p.this.f43069b, this.f43082a);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43084a;

        d(DownloadTask downloadTask) {
            this.f43084a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.c(this.f43084a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    public class d0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43086a;

        d0(DownloadTask downloadTask) {
            this.f43086a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.php25.PDownload.d.h(this.f43086a);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43088a;

        e(DownloadTask downloadTask) {
            this.f43088a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(p.this.f43069b, this.f43088a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    public class e0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43090a;

        e0(DownloadTask downloadTask) {
            this.f43090a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.php25.PDownload.d.c(this.f43090a, p.this.f43069b);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43092a;

        f(DownloadTask downloadTask) {
            this.f43092a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43092a.getFileType() == null || !this.f43092a.getFileType().equals(Dtype.chajian.name())) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(p.this.f43069b, this.f43092a);
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class f0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43094a;

        f0(DownloadTask downloadTask) {
            this.f43094a = downloadTask;
        }

        void a(Context context) {
            DownloadTask downloadTask = this.f43094a;
            if (downloadTask != null && (downloadTask.getStatus() == 3 || this.f43094a.getStatus() == 1 || this.f43094a.getStatus() == 6)) {
                com.php25.PDownload.d.c(this.f43094a, context);
            }
            String crc_link_type_val = this.f43094a.getCrc_link_type_val();
            com.join.mgps.Util.i2.a(context).b("已接入专属通道，加速成功！");
            UtilsMy.r3(context, crc_link_type_val);
            UtilsMy.O1(context, crc_link_type_val);
            g1.f.G().B(crc_link_type_val);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).K1(Event.CenterAccelerationDownload, new Ext().setGameId(this.f43094a.getCrc_link_type_val()));
            a(view.getContext());
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class g implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43096a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43097b;

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Dialog f43099a;

            a(Dialog dialog) {
                this.f43099a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f43099a.dismiss();
            }
        }

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f43101a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Dialog f43102b;

            b(boolean z3, Dialog dialog) {
                this.f43101a = z3;
                this.f43102b = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f43101a) {
                    com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(p.this.f43069b);
                    g gVar = g.this;
                    if (g02.c(p.this.f43069b, gVar.f43097b.getPackageName())) {
                        UtilsMy.A0(g.this.f43097b);
                        com.join.android.app.common.utils.a g03 = com.join.android.app.common.utils.a.g0(p.this.f43069b);
                        g gVar2 = g.this;
                        APKUtils.a k4 = g03.k(p.this.f43069b, gVar2.f43097b.getPackageName());
                        if (k4 != null) {
                            DownloadTask downloadTask = g.this.f43097b;
                            downloadTask.setVer(k4.d() + "");
                        }
                        UtilsMy.g2(g.this.f43097b, 5);
                        p.this.f43071d.getDownloadUpdateFiles().remove(g.this.f43097b);
                        p.this.notifyDataSetChanged();
                    } else {
                        g gVar3 = g.this;
                        p.this.c(gVar3.f43097b);
                        UtilsMy.D3(p.this.f43071d.getDownloadUpdateFiles());
                        p.this.notifyDataSetChanged();
                    }
                } else {
                    g gVar4 = g.this;
                    p.this.c(gVar4.f43097b);
                    UtilsMy.D3(p.this.f43071d.getDownloadUpdateFiles());
                    p.this.notifyDataSetChanged();
                }
                this.f43102b.dismiss();
            }
        }

        g(int i2, DownloadTask downloadTask) {
            this.f43096a = i2;
            this.f43097b = downloadTask;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            boolean z3;
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(p.this.f43069b, R.style.MyDialog);
            tVar.setContentView(R.layout.delete_center_dialog);
            Button button = (Button) tVar.findViewById(R.id.dialog_button_cancle);
            TextView textView = (TextView) tVar.findViewById(R.id.dialog_content);
            ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除任务");
            if (p.this.f43071d.getStayInstalledDownloadTasks() != null && p.this.f43071d.getStayInstalledDownloadTasks().size() != 0) {
                String fileType = p.this.f43071d.getStayInstalledDownloadTasks().size() > (this.f43096a - p.this.f43071d.getDownloadFiles().size()) + (-2) ? p.this.f43071d.getStayInstalledDownloadTasks().get((this.f43096a - p.this.f43071d.getDownloadFiles().size()) - 2).getFileType() : "";
                if (fileType != null && fileType.equals(Dtype.chajian.name())) {
                    if (com.join.android.app.common.utils.a.g0(p.this.f43069b).c(p.this.f43069b, this.f43097b.getPackageName())) {
                        textView.setText("你确定要删除该任务及已下载的安装包？");
                    }
                } else if (fileType != null && fileType.equals(Dtype.android.name())) {
                    if (com.join.android.app.common.utils.a.g0(p.this.f43069b).c(p.this.f43069b, this.f43097b.getPackageName())) {
                        textView.setText("你确定要删除该任务及已下载的安装包？");
                    }
                } else {
                    z3 = false;
                    textView.setText("你确定要删除该任务及已下载的安装包？");
                    button.setOnClickListener(new a(tVar));
                    Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
                    button2.setText("删除");
                    button2.setOnClickListener(new b(z3, tVar));
                    tVar.show();
                }
                z3 = true;
                textView.setText("你确定要删除该任务及已下载的安装包？");
                button.setOnClickListener(new a(tVar));
                Button button22 = (Button) tVar.findViewById(R.id.dialog_button_ok);
                button22.setText("删除");
                button22.setOnClickListener(new b(z3, tVar));
                tVar.show();
            }
            return true;
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43104a;

        g0(DownloadTask downloadTask) {
            this.f43104a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(p.this.f43069b, this.f43104a);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43106a;

        h(DownloadTask downloadTask) {
            this.f43106a = downloadTask;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00bb -> B:28:0x00be). Please submit an issue!!! */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int status = this.f43106a.getStatus();
            if (status != 5) {
                if (status == 9) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("tag_id", this.f43106a.getCrc_link_type_val());
                    List<EMUApkTable> h4 = n1.p.o().h(hashMap);
                    if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                        com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
                        return;
                    }
                    if (h4.size() > 0) {
                        p.this.j(h4.get(0));
                    }
                    p.this.f43071d.getDownloadUpdateFiles().remove(this.f43106a);
                    p.this.notifyDataSetChanged();
                    return;
                } else if (status != 11) {
                    return;
                }
            }
            try {
                if (new File(this.f43106a.getGameZipPath()).exists()) {
                    if (this.f43106a.getDown_type() != 2) {
                        com.join.android.app.common.utils.a.g0(p.this.f43069b).v(p.this.f43069b, this.f43106a.getGameZipPath());
                    } else {
                        com.join.android.app.common.servcie.a.e().q(p.this.f43069b, this.f43106a);
                    }
                } else {
                    com.php25.PDownload.d.a(this.f43106a);
                    this.f43106a.setStatus(0);
                    com.php25.PDownload.d.c(this.f43106a, p.this.f43069b);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class h0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43108a;

        h0(DownloadTask downloadTask) {
            this.f43108a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43108a.getFileType() == null || !this.f43108a.getFileType().equals(Dtype.chajian.name())) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(p.this.f43069b, this.f43108a);
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43110a;

        i(DownloadTask downloadTask) {
            this.f43110a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int status = this.f43110a.getStatus();
            if (status == 5) {
                UtilsMy.f3(p.this.f43069b, this.f43110a, "1");
                return;
            }
            EMUUpdateTable eMUUpdateTable = null;
            if (status != 9) {
                if (status == 11) {
                    UtilsMy.j3(this.f43110a, p.this.f43069b);
                } else if (status != 42) {
                } else {
                    HashMap hashMap = new HashMap(1);
                    hashMap.put("crc_sign_id", this.f43110a.getCrc_link_type_val());
                    List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
                    if (h4 != null && h4.size() > 0) {
                        eMUUpdateTable = h4.get(0);
                    }
                    DownloadTask B = g1.f.G().B(this.f43110a.getCrc_link_type_val());
                    if (B != null) {
                        this.f43110a.setId(B.getId());
                    }
                    if (eMUUpdateTable != null) {
                        this.f43110a.setVer(eMUUpdateTable.getVer());
                        this.f43110a.setVer_name(eMUUpdateTable.getVer_name());
                        this.f43110a.setUrl(eMUUpdateTable.getDown_url_remote());
                        UtilsMy.w3(p.this.f43069b, this.f43110a);
                    }
                    p.this.notifyDataSetChanged();
                }
            } else if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
            } else if (UtilsMy.T0(p.this.f43069b, this.f43110a)) {
            } else {
                if (this.f43110a.getDown_status() == 5) {
                    UtilsMy.R0(p.this.f43069b, this.f43110a);
                    return;
                }
                TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
                HashMap hashMap2 = new HashMap(1);
                hashMap2.put("crc_sign_id", this.f43110a.getCrc_link_type_val());
                List<EMUUpdateTable> h5 = n1.q.o().h(hashMap2);
                if (h5 != null && h5.size() > 0) {
                    eMUUpdateTable = h5.get(0);
                }
                DownloadTask B2 = g1.f.G().B(this.f43110a.getCrc_link_type_val());
                if (B2 != null) {
                    this.f43110a.setId(B2.getId());
                }
                if (eMUUpdateTable != null) {
                    this.f43110a.setVer(eMUUpdateTable.getVer());
                    this.f43110a.setVer_name(eMUUpdateTable.getVer_name());
                    this.f43110a.setUrl(eMUUpdateTable.getDown_url_remote());
                    g1.f.G().m(this.f43110a);
                    UtilsMy.A0(g1.f.G().B(this.f43110a.getCrc_link_type_val()));
                    com.php25.PDownload.d.c(this.f43110a, p.this.f43069b);
                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                }
                p.this.f43071d.getDownloadUpdateFiles().remove(this.f43110a);
                p.this.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class i0 implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43112a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43113b;

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Dialog f43115a;

            a(Dialog dialog) {
                this.f43115a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f43115a.dismiss();
            }
        }

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f43117a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Dialog f43118b;

            b(boolean z3, Dialog dialog) {
                this.f43117a = z3;
                this.f43118b = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f43117a) {
                    com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(p.this.f43069b);
                    i0 i0Var = i0.this;
                    if (g02.c(p.this.f43069b, i0Var.f43113b.getPackageName())) {
                        UtilsMy.A0(i0.this.f43113b);
                        com.join.android.app.common.utils.a g03 = com.join.android.app.common.utils.a.g0(p.this.f43069b);
                        i0 i0Var2 = i0.this;
                        APKUtils.a k4 = g03.k(p.this.f43069b, i0Var2.f43113b.getPackageName());
                        if (k4 != null) {
                            DownloadTask downloadTask = i0.this.f43113b;
                            downloadTask.setVer(k4.d() + "");
                        }
                        UtilsMy.g2(i0.this.f43113b, 5);
                        p.this.f43071d.getStayInstalledDownloadTasks().remove(i0.this.f43113b);
                        p.this.notifyDataSetChanged();
                    } else {
                        i0 i0Var3 = i0.this;
                        p.this.c(i0Var3.f43113b);
                        UtilsMy.D3(p.this.f43071d.getStayInstalledDownloadTasks());
                        p.this.notifyDataSetChanged();
                    }
                } else {
                    i0 i0Var4 = i0.this;
                    p.this.c(i0Var4.f43113b);
                    UtilsMy.D3(p.this.f43071d.getStayInstalledDownloadTasks());
                    p.this.notifyDataSetChanged();
                }
                this.f43118b.dismiss();
            }
        }

        i0(int i2, DownloadTask downloadTask) {
            this.f43112a = i2;
            this.f43113b = downloadTask;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(p.this.f43069b, R.style.MyDialog);
            tVar.setContentView(R.layout.delete_center_dialog);
            Button button = (Button) tVar.findViewById(R.id.dialog_button_cancle);
            TextView textView = (TextView) tVar.findViewById(R.id.dialog_content);
            ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除任务");
            if (p.this.f43071d.getStayInstalledDownloadTasks() != null && p.this.f43071d.getStayInstalledDownloadTasks().size() != 0) {
                String fileType = p.this.f43071d.getStayInstalledDownloadTasks().get((this.f43112a - p.this.f43071d.getDownloadFiles().size()) - 2).getFileType();
                boolean z3 = false;
                if (fileType != null && fileType.equals(Dtype.chajian.name())) {
                    if (com.join.android.app.common.utils.a.g0(p.this.f43069b).c(p.this.f43069b, this.f43113b.getPackageName())) {
                        textView.setText("你确定要删除该任务及已下载的安装包？");
                        z3 = true;
                    }
                    textView.setText("你确定要删除该任务及已下载的安装包？");
                    button.setOnClickListener(new a(tVar));
                    Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
                    button2.setText("删除");
                    button2.setOnClickListener(new b(z3, tVar));
                    tVar.show();
                } else {
                    if (fileType != null && fileType.equals(Dtype.android.name())) {
                        if (com.join.android.app.common.utils.a.g0(p.this.f43069b).c(p.this.f43069b, this.f43113b.getPackageName())) {
                            textView.setText("你确定要删除该任务及已下载的安装包？");
                        }
                        z3 = true;
                    }
                    textView.setText("你确定要删除该任务及已下载的安装包？");
                    button.setOnClickListener(new a(tVar));
                    Button button22 = (Button) tVar.findViewById(R.id.dialog_button_ok);
                    button22.setText("删除");
                    button22.setOnClickListener(new b(z3, tVar));
                    tVar.show();
                }
            }
            return true;
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43120a;

        j(DownloadTask downloadTask) {
            this.f43120a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
                return;
            }
            int downloadType = this.f43120a.getDownloadType();
            if (downloadType != 0 && downloadType != 1) {
                if (downloadType != 2) {
                    return;
                }
                UtilsMy.z3(this.f43120a);
                return;
            }
            TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
            p.this.c(this.f43120a);
            EMUUpdateTable eMUUpdateTable = null;
            HashMap hashMap = new HashMap(1);
            hashMap.put("crc_sign_id", this.f43120a.getCrc_link_type_val());
            List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
            if (h4 != null && h4.size() > 0) {
                eMUUpdateTable = h4.get(0);
            }
            if (eMUUpdateTable != null) {
                this.f43120a.setVer(eMUUpdateTable.getVer());
                this.f43120a.setVer_name(eMUUpdateTable.getVer_name());
                this.f43120a.setUrl(eMUUpdateTable.getDown_url_remote());
                com.php25.PDownload.d.c(this.f43120a, p.this.f43069b);
                textView.setBackgroundResource(R.drawable.recom_green_butn);
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class j0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43122a;

        j0(DownloadTask downloadTask) {
            this.f43122a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(this.f43122a.getUrl());
            IntentUtil.getInstance().intentActivity(p.this.f43069b, intentDateBean);
            UtilsMy.y3(p.this.f43069b, this.f43122a.getCrc_link_type_val());
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class k0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43125a;

        k0(DownloadTask downloadTask) {
            this.f43125a = downloadTask;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00a5 -> B:27:0x00a8). Please submit an issue!!! */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int status = this.f43125a.getStatus();
            if (status != 5) {
                if (status == 9) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("tag_id", this.f43125a.getCrc_link_type_val());
                    List<EMUApkTable> h4 = n1.p.o().h(hashMap);
                    if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                        com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
                        return;
                    } else if (h4.size() > 0) {
                        p.this.j(h4.get(0));
                        return;
                    } else {
                        return;
                    }
                } else if (status != 11) {
                    return;
                }
            }
            try {
                if (new File(this.f43125a.getGameZipPath()).exists()) {
                    if (com.join.android.app.common.utils.h.I(p.this.f43069b, this.f43125a, null)) {
                        UtilsMy.g2(this.f43125a, 5);
                    } else {
                        com.join.android.app.common.utils.a.g0(p.this.f43069b).v(p.this.f43069b, this.f43125a.getGameZipPath());
                    }
                } else {
                    com.php25.PDownload.d.a(this.f43125a);
                    this.f43125a.setStatus(0);
                    com.php25.PDownload.d.c(this.f43125a, p.this.f43069b);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43127a;

        l(DownloadTask downloadTask) {
            this.f43127a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f43127a;
            if (downloadTask == null || downloadTask.getGameZipPath() == null) {
                return;
            }
            if (new File(this.f43127a.getGameZipPath()).exists()) {
                UtilsMy.f3(p.this.f43069b, this.f43127a, "1");
                String str = p.this.f43068a;
                return;
            }
            com.php25.PDownload.d.c(this.f43127a, p.this.f43069b);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class l0 {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f43129a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f43130b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f43131c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43132d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43133e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f43134f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f43135g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f43136h;

        /* renamed from: i  reason: collision with root package name */
        public LinearLayout f43137i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f43138j;

        /* renamed from: k  reason: collision with root package name */
        RelativeLayout f43139k;

        l0() {
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43141a;

        m(DownloadTask downloadTask) {
            this.f43141a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.c(this.f43141a);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class m0 {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f43143a;

        /* renamed from: b  reason: collision with root package name */
        public ImageView f43144b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f43145c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43146d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43147e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f43148f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f43149g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f43150h;

        /* renamed from: i  reason: collision with root package name */
        public LinearLayout f43151i;

        /* renamed from: j  reason: collision with root package name */
        public ImageView f43152j;

        m0() {
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Dialog f43155a;

            a(Dialog dialog) {
                this.f43155a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f43155a.dismiss();
            }
        }

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Dialog f43157a;

            b(Dialog dialog) {
                this.f43157a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                n1.k.n().a();
                p.this.f43071d.setHistoryDownloadFiles(null);
                p.this.notifyDataSetChanged();
                ((DownloadCenterActivity) p.this.f43069b).P0();
                this.f43157a.dismiss();
            }
        }

        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(p.this.f43069b, R.style.MyDialog);
            tVar.setContentView(R.layout.delete_center_dialog);
            ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除任务");
            ((TextView) tVar.findViewById(R.id.dialog_content)).setText("你确定要清空所有下载历史？");
            ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new a(tVar));
            Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
            button.setText("清空历史");
            button.setOnClickListener(new b(tVar));
            tVar.show();
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class n0 {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43159a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f43160b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f43161c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f43162d;

        /* renamed from: e  reason: collision with root package name */
        private LinearLayout f43163e;

        n0() {
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (DownloadTask downloadTask : g1.f.G().w()) {
                if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("tag_id", downloadTask.getCrc_link_type_val());
                    List<EMUApkTable> h4 = n1.p.o().h(hashMap);
                    if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                        com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
                        return;
                    }
                    if (h4.size() > 0) {
                        UtilsMy.V0(h4.get(0), p.this.f43069b);
                    }
                    Iterator<DownloadTask> it2 = p.this.f43071d.getDownloadUpdateFiles().iterator();
                    while (it2 != null && it2.hasNext()) {
                        if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                            it2.remove();
                        }
                    }
                } else if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name())) {
                    if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                        com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
                        return;
                    }
                    EMUUpdateTable eMUUpdateTable = null;
                    HashMap hashMap2 = new HashMap(1);
                    hashMap2.put("crc_sign_id", downloadTask.getCrc_link_type_val());
                    List<EMUUpdateTable> h5 = n1.q.o().h(hashMap2);
                    if (h5 != null && h5.size() > 0) {
                        eMUUpdateTable = h5.get(0);
                    }
                    DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                    if (B != null) {
                        downloadTask.setId(B.getId());
                    }
                    if (eMUUpdateTable != null) {
                        downloadTask.setVer(eMUUpdateTable.getVer());
                        downloadTask.setVer_name(eMUUpdateTable.getVer_name());
                        downloadTask.setUrl(eMUUpdateTable.getDown_url_remote());
                        g1.f.G().m(downloadTask);
                        UtilsMy.A0(g1.f.G().B(downloadTask.getCrc_link_type_val()));
                        com.php25.PDownload.d.c(downloadTask, p.this.f43069b);
                    }
                    Iterator<DownloadTask> it3 = p.this.f43071d.getDownloadUpdateFiles().iterator();
                    while (it3 != null && it3.hasNext()) {
                        if (it3.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                            it3.remove();
                        }
                    }
                }
            }
            p.this.notifyDataSetChanged();
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    public class o0 {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f43166a;

        /* renamed from: b  reason: collision with root package name */
        public ImageView f43167b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f43168c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43169d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43170e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f43171f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f43172g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f43173h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f43174i;

        /* renamed from: j  reason: collision with root package name */
        public ProgressBar f43175j;

        /* renamed from: k  reason: collision with root package name */
        public ProgressBar f43176k;

        /* renamed from: l  reason: collision with root package name */
        public LinearLayout f43177l;

        /* renamed from: m  reason: collision with root package name */
        public View f43178m;

        /* renamed from: n  reason: collision with root package name */
        RelativeLayout f43179n;

        public o0() {
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* renamed from: com.join.mgps.adapter.p$p  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0181p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43181a;

        View$OnClickListenerC0181p(DownloadTask downloadTask) {
            this.f43181a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(p.this.f43069b, this.f43181a);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class p0 {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43183a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f43184b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f43185c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f43186d;

        /* renamed from: e  reason: collision with root package name */
        private LinearLayout f43187e;

        p0() {
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43189a;

        q(DownloadTask downloadTask) {
            this.f43189a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43189a.getFileType() == null || !this.f43189a.getFileType().equals(Dtype.chajian.name())) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(p.this.f43069b, this.f43189a);
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class q0 {

        /* renamed from: a  reason: collision with root package name */
        public TextView f43191a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f43192b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f43193c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f43194d;

        /* renamed from: e  reason: collision with root package name */
        private LinearLayout f43195e;

        q0() {
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class r implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43197a;

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Dialog f43199a;

            a(Dialog dialog) {
                this.f43199a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f43199a.dismiss();
            }
        }

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Dialog f43201a;

            b(Dialog dialog) {
                this.f43201a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DownloadHistoryTable p3 = n1.k.n().p(r.this.f43197a.getCrc_link_type_val());
                if (p3 != null) {
                    n1.k.n().delete((n1.k) p3);
                    p.this.f43071d.getHistoryDownloadFiles().remove(r.this.f43197a);
                    p.this.notifyDataSetChanged();
                    ((DownloadCenterActivity) p.this.f43069b).P0();
                }
                this.f43201a.dismiss();
            }
        }

        r(DownloadTask downloadTask) {
            this.f43197a = downloadTask;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(p.this.f43069b, R.style.MyDialog);
            tVar.setContentView(R.layout.delete_center_dialog);
            ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除任务");
            ((TextView) tVar.findViewById(R.id.dialog_content)).setText("你确定要删除该历史记录？");
            ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new a(tVar));
            Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
            button.setText("删除");
            button.setOnClickListener(new b(tVar));
            tVar.show();
            return true;
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43203a;

        s(DownloadTask downloadTask) {
            this.f43203a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int status = this.f43203a.getStatus();
            if (status == 5) {
                try {
                    if (new File(this.f43203a.getGameZipPath()).exists()) {
                        com.join.android.app.common.utils.a.g0(p.this.f43069b).v(p.this.f43069b, this.f43203a.getGameZipPath());
                    } else {
                        com.php25.PDownload.d.a(this.f43203a);
                        this.f43203a.setStatus(0);
                        com.php25.PDownload.d.c(this.f43203a, p.this.f43069b);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } else if (status != 9) {
            } else {
                HashMap hashMap = new HashMap();
                hashMap.put("tag_id", this.f43203a.getCrc_link_type_val());
                List<EMUApkTable> h4 = n1.p.o().h(hashMap);
                if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                    com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
                } else if (h4.size() > 0) {
                    p.this.f43071d.getHistoryDownloadFiles().remove(this.f43203a);
                    p.this.notifyDataSetChanged();
                    p.this.j(h4.get(0));
                }
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43205a;

        t(DownloadTask downloadTask) {
            this.f43205a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int status = this.f43205a.getStatus();
            if (status == 5) {
                UtilsMy.f3(p.this.f43069b, this.f43205a, "1");
                return;
            }
            EMUUpdateTable eMUUpdateTable = null;
            if (status != 9) {
                if (status == 11) {
                    UtilsMy.j3(this.f43205a, p.this.f43069b);
                } else if (status != 42) {
                } else {
                    HashMap hashMap = new HashMap(1);
                    hashMap.put("crc_sign_id", this.f43205a.getCrc_link_type_val());
                    List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
                    if (h4 != null && h4.size() > 0) {
                        eMUUpdateTable = h4.get(0);
                    }
                    DownloadTask B = g1.f.G().B(this.f43205a.getCrc_link_type_val());
                    if (B != null) {
                        this.f43205a.setId(B.getId());
                    }
                    if (eMUUpdateTable != null) {
                        this.f43205a.setVer(eMUUpdateTable.getVer());
                        this.f43205a.setVer_name(eMUUpdateTable.getVer_name());
                        this.f43205a.setUrl(eMUUpdateTable.getDown_url_remote());
                        UtilsMy.w3(p.this.f43069b, this.f43205a);
                    }
                    p.this.notifyDataSetChanged();
                }
            } else if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
            } else if (UtilsMy.T0(p.this.f43069b, this.f43205a)) {
            } else {
                if (this.f43205a.getDown_status() == 5) {
                    UtilsMy.R0(p.this.f43069b, this.f43205a);
                    return;
                }
                TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
                HashMap hashMap2 = new HashMap(1);
                hashMap2.put("crc_sign_id", this.f43205a.getCrc_link_type_val());
                List<EMUUpdateTable> h5 = n1.q.o().h(hashMap2);
                if (h5 != null && h5.size() > 0) {
                    eMUUpdateTable = h5.get(0);
                }
                DownloadTask B2 = g1.f.G().B(this.f43205a.getCrc_link_type_val());
                if (B2 != null) {
                    this.f43205a.setId(B2.getId());
                }
                if (eMUUpdateTable != null) {
                    this.f43205a.setVer(eMUUpdateTable.getVer());
                    this.f43205a.setVer_name(eMUUpdateTable.getVer_name());
                    this.f43205a.setUrl(eMUUpdateTable.getDown_url_remote());
                    g1.f.G().m(this.f43205a);
                    UtilsMy.A0(g1.f.G().B(this.f43205a.getCrc_link_type_val()));
                    p.this.f43071d.getHistoryDownloadFiles().remove(this.f43205a);
                    DownloadHistoryTable p3 = n1.k.n().p(this.f43205a.getCrc_link_type_val());
                    if (p3 != null) {
                        n1.k.n().delete((n1.k) p3);
                    }
                    p.this.notifyDataSetChanged();
                    ((DownloadCenterActivity) p.this.f43069b).P0();
                    com.php25.PDownload.d.c(this.f43205a, p.this.f43069b);
                    textView.setBackgroundResource(R.drawable.recom_green_butn);
                }
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43207a;

        u(DownloadTask downloadTask) {
            this.f43207a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.f.j(p.this.f43069b)) {
                com.join.mgps.Util.i2.a(p.this.f43069b).b("无网络连接");
                return;
            }
            int downloadType = this.f43207a.getDownloadType();
            if (downloadType != 0 && downloadType != 1) {
                if (downloadType != 2) {
                    return;
                }
                UtilsMy.z3(this.f43207a);
                return;
            }
            TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
            p.this.c(this.f43207a);
            EMUUpdateTable eMUUpdateTable = null;
            HashMap hashMap = new HashMap(1);
            hashMap.put("crc_sign_id", this.f43207a.getCrc_link_type_val());
            List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
            if (h4 != null && h4.size() > 0) {
                eMUUpdateTable = h4.get(0);
            }
            if (eMUUpdateTable != null) {
                this.f43207a.setVer(eMUUpdateTable.getVer());
                this.f43207a.setVer_name(eMUUpdateTable.getVer_name());
                this.f43207a.setUrl(eMUUpdateTable.getDown_url_remote());
                com.php25.PDownload.d.c(this.f43207a, p.this.f43069b);
                textView.setBackgroundResource(R.drawable.recom_green_butn);
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43209a;

        v(int i2) {
            this.f43209a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (p.this.f43071d.getDownloadFiles().size() == 0) {
                    return;
                }
                DownloadTask downloadTask = p.this.f43071d.getDownloadFiles().get(this.f43209a - 1);
                downloadTask.set_from_type(128);
                if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
                    IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(p.this.f43069b, downloadTask);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class w implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43211a;

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Dialog f43213a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ DownloadTask f43214b;

            a(Dialog dialog, DownloadTask downloadTask) {
                this.f43213a = dialog;
                this.f43214b = downloadTask;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f43213a.dismiss();
                if (this.f43214b.getStatus() == 12 || this.f43214b.getStatus() == 13 || this.f43214b.getStatus() == 5 || this.f43214b.getStatus() == 11) {
                    return;
                }
                com.php25.PDownload.d.c(this.f43214b, p.this.f43069b);
            }
        }

        /* compiled from: DownloadCenterAdapter.java */
        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f43216a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ DownloadTask f43217b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Dialog f43218c;

            b(boolean z3, DownloadTask downloadTask, Dialog dialog) {
                this.f43216a = z3;
                this.f43217b = downloadTask;
                this.f43218c = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f43216a) {
                    if (com.join.android.app.common.utils.a.g0(p.this.f43069b).c(p.this.f43069b, this.f43217b.getPackageName())) {
                        UtilsMy.A0(this.f43217b);
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(p.this.f43069b).k(p.this.f43069b, this.f43217b.getPackageName());
                        if (k4 != null) {
                            DownloadTask downloadTask = this.f43217b;
                            downloadTask.setVer(k4.d() + "");
                        }
                        UtilsMy.g2(this.f43217b, 5);
                        p.this.f43071d.getDownloadFiles().remove(this.f43217b);
                        p.this.notifyDataSetChanged();
                    } else {
                        p.this.a(this.f43217b);
                    }
                } else {
                    p.this.a(this.f43217b);
                }
                this.f43218c.dismiss();
            }
        }

        w(int i2) {
            this.f43211a = i2;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            DownloadTask downloadTask;
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(p.this.f43069b, R.style.MyDialog);
            tVar.setContentView(R.layout.delete_center_dialog);
            Button button = (Button) tVar.findViewById(R.id.dialog_button_cancle);
            Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
            ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除任务");
            button2.setText("删除");
            TextView textView = (TextView) tVar.findViewById(R.id.dialog_content);
            boolean z3 = false;
            if (p.this.f43071d.getDownloadFiles() != null && p.this.f43071d.getDownloadFiles().size() > 1) {
                if (p.this.f43071d.getDownloadFiles().size() > this.f43211a - 1) {
                    downloadTask = p.this.f43071d.getDownloadFiles().get(this.f43211a - 1);
                }
                downloadTask = null;
            } else {
                if (p.this.f43071d.getDownloadFiles() != null && p.this.f43071d.getDownloadFiles().size() > 0) {
                    downloadTask = p.this.f43071d.getDownloadFiles().get(0);
                }
                downloadTask = null;
            }
            if (downloadTask == null) {
                return true;
            }
            if (p.this.getCount() > this.f43211a - 1) {
                String fileType = downloadTask.getFileType();
                if (fileType != null && fileType.equals(Dtype.chajian.name())) {
                    if (com.join.android.app.common.utils.a.g0(p.this.f43069b).c(p.this.f43069b, downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                        textView.setText("你确定要删除该任务及已下载的本地文件？");
                        z3 = true;
                    }
                } else if (fileType != null && fileType.equals(Dtype.android.name())) {
                    if (com.join.android.app.common.utils.a.g0(p.this.f43069b).c(p.this.f43069b, downloadTask.getPackageName())) {
                        textView.setText("你确定要删除该任务及已下载的本地文件？");
                    }
                    z3 = true;
                }
            }
            textView.setText("你确定要删除该任务及已下载的本地文件？");
            button.setOnClickListener(new a(tVar, downloadTask));
            button2.setOnClickListener(new b(z3, downloadTask, tVar));
            if (downloadTask.getStatus() != 12 && downloadTask.getStatus() != 13) {
                com.php25.PDownload.d.h(downloadTask);
            }
            tVar.show();
            return true;
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43220a;

        x(DownloadTask downloadTask) {
            this.f43220a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f43220a;
            if (downloadTask == null || downloadTask.getGameZipPath() == null) {
                return;
            }
            if (new File(this.f43220a.getGameZipPath()).exists()) {
                UtilsMy.f3(p.this.f43069b, this.f43220a, "1");
                String str = p.this.f43068a;
                return;
            }
            com.php25.PDownload.d.c(this.f43220a, p.this.f43069b);
        }
    }

    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    class y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43222a;

        y(DownloadTask downloadTask) {
            this.f43222a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.c(this.f43222a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadCenterAdapter.java */
    /* loaded from: classes3.dex */
    public class z implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43224a;

        z(DownloadTask downloadTask) {
            this.f43224a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.a(this.f43224a);
            Activity activity = p.this.f43069b;
            Toast.makeText(activity, "删除应用程序   " + this.f43224a.getShowName(), 1).show();
        }
    }

    public p(Activity activity) {
        this.f43069b = activity;
    }

    private void e(DownloadTask downloadTask, o0 o0Var) {
        downloadTask.set_from_type(128);
        MyImageLoader.h(o0Var.f43166a, downloadTask.getPortraitURL());
        o0Var.f43168c.setText(downloadTask.getShowName());
        if (downloadTask.getGift_package_switch() == 1) {
            o0Var.f43167b.setVisibility(0);
        } else {
            o0Var.f43167b.setVisibility(8);
        }
        if (downloadTask.getRomType() != null && downloadTask.getFileType().equals(Dtype.chajian.name()) && com.join.mgps.Util.d2.h(downloadTask.getPortraitURL())) {
            o0Var.f43166a.setImageResource(R.drawable.papa_chajian_icon);
        }
        if (downloadTask.getSize() == 0) {
            downloadTask.setSize(g1.f.G().B(downloadTask.getCrc_link_type_val()).getSize());
        }
        o0Var.f43175j.setProgress((int) downloadTask.getProgress());
        StringBuilder sb = new StringBuilder();
        sb.append("progressBar=");
        sb.append(o0Var.f43175j.getProgress());
        sb.append(";name=");
        sb.append(downloadTask.getShowName());
        sb.append(downloadTask.getPath());
        sb.append(";");
        sb.append(downloadTask.getSize());
        o0Var.f43171f.setOnClickListener(new z(downloadTask));
        o0Var.f43173h.setOnClickListener(new a0(downloadTask));
        long parseDouble = (long) (Double.parseDouble(!TextUtils.isEmpty(downloadTask.getShowSize()) ? downloadTask.getShowSize() : "0") * 1024.0d * 1024.0d);
        TextView textView = o0Var.f43169d;
        textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
        if (downloadTask.getSize() == 0) {
            if (!TextUtils.isEmpty(downloadTask.getShowSize()) && !downloadTask.getShowSize().contains("-")) {
                o0Var.f43169d.setVisibility(0);
            } else {
                o0Var.f43169d.setVisibility(4);
            }
        } else if (downloadTask.getSize() <= 0) {
            o0Var.f43169d.setVisibility(4);
        } else {
            o0Var.f43169d.setVisibility(0);
        }
        if (downloadTask.getStatus() == 2) {
            o0Var.f43175j.setVisibility(0);
            o0Var.f43176k.setVisibility(8);
            UtilsMy.C3(downloadTask);
            o0Var.f43174i.setBackgroundResource(R.drawable.recom_blue_butn);
            o0Var.f43174i.setText("暂停");
            o0Var.f43174i.setTextColor(this.f43069b.getResources().getColor(R.color.app_blue_color));
            String speed = downloadTask.getSpeed();
            TextView textView2 = o0Var.f43170e;
            textView2.setText(speed + "/S");
            o0Var.f43175j.setProgress((int) downloadTask.getProgress());
            o0Var.f43179n.setOnClickListener(new b0(downloadTask));
        } else if (downloadTask.getStatus() == 27) {
            o0Var.f43174i.setText("暂停中");
        } else if (downloadTask.getStatus() == 12) {
            TextView textView3 = o0Var.f43169d;
            textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
            o0Var.f43170e.setText("解压中..");
            o0Var.f43175j.setVisibility(8);
            o0Var.f43176k.setVisibility(0);
            o0Var.f43176k.setProgress((int) downloadTask.getProgress());
            o0Var.f43179n.setOnClickListener(null);
            o0Var.f43174i.setBackgroundResource(R.drawable.extract);
            o0Var.f43174i.setText("解压中");
            o0Var.f43174i.setTextColor(this.f43069b.getResources().getColor(R.color.app_grey_color));
        } else if (downloadTask.getStatus() == 13) {
            TextView textView4 = o0Var.f43169d;
            textView4.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
            o0Var.f43170e.setText("请点击按钮重新解压");
            o0Var.f43175j.setVisibility(8);
            o0Var.f43176k.setVisibility(0);
            o0Var.f43176k.setProgress((int) downloadTask.getProgress());
            o0Var.f43174i.setBackgroundResource(R.drawable.reextract);
            o0Var.f43174i.setText("解压");
            o0Var.f43174i.setTextColor(this.f43069b.getResources().getColor(R.color.app_blue_color));
            o0Var.f43179n.setOnClickListener(new c0(downloadTask));
        } else if (downloadTask.getStatus() == 10) {
            o0Var.f43175j.setVisibility(0);
            o0Var.f43176k.setVisibility(8);
            o0Var.f43170e.setText("等待中");
            o0Var.f43174i.setBackgroundResource(R.drawable.recom_blue_butn);
            o0Var.f43174i.setText("等待");
            o0Var.f43174i.setTextColor(this.f43069b.getResources().getColor(R.color.app_blue_color));
            o0Var.f43179n.setOnClickListener(new d0(downloadTask));
        } else {
            o0Var.f43175j.setVisibility(0);
            o0Var.f43176k.setVisibility(8);
            o0Var.f43170e.setText("暂停中");
            o0Var.f43174i.setBackgroundResource(R.drawable.recom_blue_butn);
            o0Var.f43174i.setText("继续");
            o0Var.f43174i.setTextColor(this.f43069b.getResources().getColor(R.color.app_blue_color));
            o0Var.f43175j.setProgress((int) downloadTask.getProgress());
            o0Var.f43179n.setOnClickListener(new e0(downloadTask));
        }
    }

    public void a(DownloadTask downloadTask) {
        try {
            if (downloadTask.getStatus() == 9) {
                com.php25.PDownload.d.b(downloadTask);
            } else {
                com.php25.PDownload.d.a(downloadTask);
            }
            try {
                if (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name())) {
                    UtilsMy.delete(new File(com.join.mgps.Util.u.f27856o, downloadTask.getPackageName()));
                    UtilsMy.delete(new File(com.join.mgps.Util.u.f27857p, downloadTask.getPackageName()));
                    UtilsMy.delete(new File(downloadTask.getGameZipPath()));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f43071d.getDownloadFiles().remove(downloadTask);
            UtilsMy.D3(this.f43071d.getDownloadFiles());
            notifyDataSetChanged();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    boolean b(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return false;
        }
        if (UtilsMy.D1(this.f43069b, downloadTask.getCrc_link_type_val()) || new PrefDef_(this.f43069b).downloadSpeedUpGameSize().d().intValue() > downloadTask.getActual_size()) {
            return false;
        }
        return TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.chajian.name());
    }

    public void c(DownloadTask downloadTask) {
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name())) {
                UtilsMy.delete(new File(com.join.mgps.Util.u.f27856o, downloadTask.getPackageName()));
                UtilsMy.delete(new File(com.join.mgps.Util.u.f27857p, downloadTask.getPackageName()));
                UtilsMy.delete(new File(downloadTask.getGameZipPath()));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f43071d.getStayInstalledDownloadTasks().remove(downloadTask);
        notifyDataSetChanged();
    }

    public void d(List<DownloadTask> list, String str) {
        for (DownloadTask downloadTask : list) {
            if (downloadTask.getStatus() == 10) {
                if (downloadTask.getStatus() == 9 && downloadTask.getDownloadType() == 1) {
                    com.php25.PDownload.d.b(downloadTask);
                } else if (downloadTask.getStatus() != 5) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("downloadTask.getStatus()=");
                    sb.append(downloadTask.getStatus());
                    com.php25.PDownload.d.a(downloadTask);
                }
            }
        }
        for (DownloadTask downloadTask2 : list) {
            if (downloadTask2.getStatus() == 9 && downloadTask2.getDownloadType() == 1) {
                com.php25.PDownload.d.b(downloadTask2);
            } else if (downloadTask2.getStatus() != 5 && downloadTask2.getStatus() != 10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("downloadTask.getStatus()=");
                sb2.append(downloadTask2.getStatus());
                com.php25.PDownload.d.a(downloadTask2);
            }
        }
        if (str.equals("deleteFromRunning")) {
            this.f43071d.getDownloadFiles().clear();
        } else if (str.equals("deleteFromInstall")) {
            this.f43071d.getStayInstalledDownloadTasks().clear();
        }
        notifyDataSetChanged();
    }

    public DownloadCenterBean f() {
        return this.f43071d;
    }

    public ListView g() {
        return this.f43070c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int size = this.f43071d.getStayInstalledDownloadTasks().size();
        int size2 = this.f43071d.getDownloadFiles().size();
        return size + size2 + this.f43071d.getHistoryDownloadFiles().size() + this.f43071d.getDownloadUpdateFiles().size() + 4;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        if (i2 <= 0 || i2 > this.f43071d.getDownloadFiles().size()) {
            return null;
        }
        return this.f43071d.getDownloadFiles().get(i2 - 1);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 <= this.f43071d.getDownloadFiles().size()) {
            return 1;
        }
        if (i2 == this.f43071d.getDownloadFiles().size() + 1) {
            return 2;
        }
        if (i2 < this.f43071d.getDownloadFiles().size() + this.f43071d.getStayInstalledDownloadTasks().size() + 2) {
            return 3;
        }
        if (i2 == this.f43071d.getDownloadFiles().size() + this.f43071d.getStayInstalledDownloadTasks().size() + 2) {
            return 6;
        }
        if (i2 < this.f43071d.getDownloadFiles().size() + this.f43071d.getStayInstalledDownloadTasks().size() + 3 + this.f43071d.getDownloadUpdateFiles().size()) {
            return 7;
        }
        return i2 == ((this.f43071d.getDownloadFiles().size() + this.f43071d.getStayInstalledDownloadTasks().size()) + 3) + this.f43071d.getDownloadUpdateFiles().size() ? 4 : 5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0136: MOVE  (r11 I:??[OBJECT, ARRAY]) = (r12 I:??[OBJECT, ARRAY]), block:B:19:0x0135 */
    /* JADX WARN: Removed duplicated region for block: B:144:0x070b A[Catch: Exception -> 0x007c, TRY_LEAVE, TryCatch #0 {Exception -> 0x007c, blocks: (B:8:0x0034, B:59:0x02de, B:61:0x032d, B:62:0x0335, B:65:0x033e, B:67:0x0373, B:69:0x0379, B:70:0x0390, B:73:0x03a0, B:75:0x03e3, B:76:0x03eb, B:79:0x03fb, B:92:0x0498, B:94:0x04c0, B:96:0x04df, B:141:0x06fe, B:97:0x0513, B:99:0x0519, B:101:0x0529, B:103:0x053a, B:105:0x056b, B:107:0x0579, B:109:0x0587, B:118:0x05dd, B:116:0x059e, B:117:0x05be, B:108:0x057f, B:104:0x0543, B:119:0x05e9, B:121:0x05ef, B:123:0x05ff, B:135:0x0685, B:132:0x0619, B:133:0x0639, B:134:0x0659, B:136:0x0690, B:138:0x06c4, B:140:0x06f8, B:139:0x06ee, B:144:0x070b, B:157:0x07b4, B:159:0x07dc, B:161:0x07ec, B:163:0x07fd, B:165:0x082e, B:167:0x083c, B:169:0x084a, B:180:0x0930, B:168:0x0842, B:164:0x0806, B:170:0x087c, B:172:0x0882, B:174:0x0892, B:175:0x08c2, B:177:0x08f6, B:179:0x092a, B:178:0x0920, B:183:0x093d, B:185:0x098e, B:186:0x0996, B:189:0x099f, B:191:0x09f0, B:192:0x09f8, B:195:0x0a01, B:209:0x0ab4, B:211:0x0adc, B:213:0x0aec, B:215:0x0afd, B:217:0x0b2e, B:219:0x0b3c, B:221:0x0b4a, B:228:0x0b9c, B:251:0x0ca6, B:226:0x0b5d, B:227:0x0b7d, B:220:0x0b42, B:216:0x0b06, B:229:0x0ba8, B:231:0x0bae, B:233:0x0bbe, B:245:0x0c44, B:242:0x0bd8, B:243:0x0bf8, B:244:0x0c18, B:246:0x0c4f, B:248:0x0c83, B:250:0x0ca0, B:249:0x0c96, B:22:0x0145, B:32:0x01a1), top: B:261:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x093d A[Catch: Exception -> 0x007c, TryCatch #0 {Exception -> 0x007c, blocks: (B:8:0x0034, B:59:0x02de, B:61:0x032d, B:62:0x0335, B:65:0x033e, B:67:0x0373, B:69:0x0379, B:70:0x0390, B:73:0x03a0, B:75:0x03e3, B:76:0x03eb, B:79:0x03fb, B:92:0x0498, B:94:0x04c0, B:96:0x04df, B:141:0x06fe, B:97:0x0513, B:99:0x0519, B:101:0x0529, B:103:0x053a, B:105:0x056b, B:107:0x0579, B:109:0x0587, B:118:0x05dd, B:116:0x059e, B:117:0x05be, B:108:0x057f, B:104:0x0543, B:119:0x05e9, B:121:0x05ef, B:123:0x05ff, B:135:0x0685, B:132:0x0619, B:133:0x0639, B:134:0x0659, B:136:0x0690, B:138:0x06c4, B:140:0x06f8, B:139:0x06ee, B:144:0x070b, B:157:0x07b4, B:159:0x07dc, B:161:0x07ec, B:163:0x07fd, B:165:0x082e, B:167:0x083c, B:169:0x084a, B:180:0x0930, B:168:0x0842, B:164:0x0806, B:170:0x087c, B:172:0x0882, B:174:0x0892, B:175:0x08c2, B:177:0x08f6, B:179:0x092a, B:178:0x0920, B:183:0x093d, B:185:0x098e, B:186:0x0996, B:189:0x099f, B:191:0x09f0, B:192:0x09f8, B:195:0x0a01, B:209:0x0ab4, B:211:0x0adc, B:213:0x0aec, B:215:0x0afd, B:217:0x0b2e, B:219:0x0b3c, B:221:0x0b4a, B:228:0x0b9c, B:251:0x0ca6, B:226:0x0b5d, B:227:0x0b7d, B:220:0x0b42, B:216:0x0b06, B:229:0x0ba8, B:231:0x0bae, B:233:0x0bbe, B:245:0x0c44, B:242:0x0bd8, B:243:0x0bf8, B:244:0x0c18, B:246:0x0c4f, B:248:0x0c83, B:250:0x0ca0, B:249:0x0c96, B:22:0x0145, B:32:0x01a1), top: B:261:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x099f A[Catch: Exception -> 0x007c, TryCatch #0 {Exception -> 0x007c, blocks: (B:8:0x0034, B:59:0x02de, B:61:0x032d, B:62:0x0335, B:65:0x033e, B:67:0x0373, B:69:0x0379, B:70:0x0390, B:73:0x03a0, B:75:0x03e3, B:76:0x03eb, B:79:0x03fb, B:92:0x0498, B:94:0x04c0, B:96:0x04df, B:141:0x06fe, B:97:0x0513, B:99:0x0519, B:101:0x0529, B:103:0x053a, B:105:0x056b, B:107:0x0579, B:109:0x0587, B:118:0x05dd, B:116:0x059e, B:117:0x05be, B:108:0x057f, B:104:0x0543, B:119:0x05e9, B:121:0x05ef, B:123:0x05ff, B:135:0x0685, B:132:0x0619, B:133:0x0639, B:134:0x0659, B:136:0x0690, B:138:0x06c4, B:140:0x06f8, B:139:0x06ee, B:144:0x070b, B:157:0x07b4, B:159:0x07dc, B:161:0x07ec, B:163:0x07fd, B:165:0x082e, B:167:0x083c, B:169:0x084a, B:180:0x0930, B:168:0x0842, B:164:0x0806, B:170:0x087c, B:172:0x0882, B:174:0x0892, B:175:0x08c2, B:177:0x08f6, B:179:0x092a, B:178:0x0920, B:183:0x093d, B:185:0x098e, B:186:0x0996, B:189:0x099f, B:191:0x09f0, B:192:0x09f8, B:195:0x0a01, B:209:0x0ab4, B:211:0x0adc, B:213:0x0aec, B:215:0x0afd, B:217:0x0b2e, B:219:0x0b3c, B:221:0x0b4a, B:228:0x0b9c, B:251:0x0ca6, B:226:0x0b5d, B:227:0x0b7d, B:220:0x0b42, B:216:0x0b06, B:229:0x0ba8, B:231:0x0bae, B:233:0x0bbe, B:245:0x0c44, B:242:0x0bd8, B:243:0x0bf8, B:244:0x0c18, B:246:0x0c4f, B:248:0x0c83, B:250:0x0ca0, B:249:0x0c96, B:22:0x0145, B:32:0x01a1), top: B:261:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0a01 A[Catch: Exception -> 0x007c, TRY_LEAVE, TryCatch #0 {Exception -> 0x007c, blocks: (B:8:0x0034, B:59:0x02de, B:61:0x032d, B:62:0x0335, B:65:0x033e, B:67:0x0373, B:69:0x0379, B:70:0x0390, B:73:0x03a0, B:75:0x03e3, B:76:0x03eb, B:79:0x03fb, B:92:0x0498, B:94:0x04c0, B:96:0x04df, B:141:0x06fe, B:97:0x0513, B:99:0x0519, B:101:0x0529, B:103:0x053a, B:105:0x056b, B:107:0x0579, B:109:0x0587, B:118:0x05dd, B:116:0x059e, B:117:0x05be, B:108:0x057f, B:104:0x0543, B:119:0x05e9, B:121:0x05ef, B:123:0x05ff, B:135:0x0685, B:132:0x0619, B:133:0x0639, B:134:0x0659, B:136:0x0690, B:138:0x06c4, B:140:0x06f8, B:139:0x06ee, B:144:0x070b, B:157:0x07b4, B:159:0x07dc, B:161:0x07ec, B:163:0x07fd, B:165:0x082e, B:167:0x083c, B:169:0x084a, B:180:0x0930, B:168:0x0842, B:164:0x0806, B:170:0x087c, B:172:0x0882, B:174:0x0892, B:175:0x08c2, B:177:0x08f6, B:179:0x092a, B:178:0x0920, B:183:0x093d, B:185:0x098e, B:186:0x0996, B:189:0x099f, B:191:0x09f0, B:192:0x09f8, B:195:0x0a01, B:209:0x0ab4, B:211:0x0adc, B:213:0x0aec, B:215:0x0afd, B:217:0x0b2e, B:219:0x0b3c, B:221:0x0b4a, B:228:0x0b9c, B:251:0x0ca6, B:226:0x0b5d, B:227:0x0b7d, B:220:0x0b42, B:216:0x0b06, B:229:0x0ba8, B:231:0x0bae, B:233:0x0bbe, B:245:0x0c44, B:242:0x0bd8, B:243:0x0bf8, B:244:0x0c18, B:246:0x0c4f, B:248:0x0c83, B:250:0x0ca0, B:249:0x0c96, B:22:0x0145, B:32:0x01a1), top: B:261:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02de A[Catch: Exception -> 0x007c, TRY_ENTER, TryCatch #0 {Exception -> 0x007c, blocks: (B:8:0x0034, B:59:0x02de, B:61:0x032d, B:62:0x0335, B:65:0x033e, B:67:0x0373, B:69:0x0379, B:70:0x0390, B:73:0x03a0, B:75:0x03e3, B:76:0x03eb, B:79:0x03fb, B:92:0x0498, B:94:0x04c0, B:96:0x04df, B:141:0x06fe, B:97:0x0513, B:99:0x0519, B:101:0x0529, B:103:0x053a, B:105:0x056b, B:107:0x0579, B:109:0x0587, B:118:0x05dd, B:116:0x059e, B:117:0x05be, B:108:0x057f, B:104:0x0543, B:119:0x05e9, B:121:0x05ef, B:123:0x05ff, B:135:0x0685, B:132:0x0619, B:133:0x0639, B:134:0x0659, B:136:0x0690, B:138:0x06c4, B:140:0x06f8, B:139:0x06ee, B:144:0x070b, B:157:0x07b4, B:159:0x07dc, B:161:0x07ec, B:163:0x07fd, B:165:0x082e, B:167:0x083c, B:169:0x084a, B:180:0x0930, B:168:0x0842, B:164:0x0806, B:170:0x087c, B:172:0x0882, B:174:0x0892, B:175:0x08c2, B:177:0x08f6, B:179:0x092a, B:178:0x0920, B:183:0x093d, B:185:0x098e, B:186:0x0996, B:189:0x099f, B:191:0x09f0, B:192:0x09f8, B:195:0x0a01, B:209:0x0ab4, B:211:0x0adc, B:213:0x0aec, B:215:0x0afd, B:217:0x0b2e, B:219:0x0b3c, B:221:0x0b4a, B:228:0x0b9c, B:251:0x0ca6, B:226:0x0b5d, B:227:0x0b7d, B:220:0x0b42, B:216:0x0b06, B:229:0x0ba8, B:231:0x0bae, B:233:0x0bbe, B:245:0x0c44, B:242:0x0bd8, B:243:0x0bf8, B:244:0x0c18, B:246:0x0c4f, B:248:0x0c83, B:250:0x0ca0, B:249:0x0c96, B:22:0x0145, B:32:0x01a1), top: B:261:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x033e A[Catch: Exception -> 0x007c, TryCatch #0 {Exception -> 0x007c, blocks: (B:8:0x0034, B:59:0x02de, B:61:0x032d, B:62:0x0335, B:65:0x033e, B:67:0x0373, B:69:0x0379, B:70:0x0390, B:73:0x03a0, B:75:0x03e3, B:76:0x03eb, B:79:0x03fb, B:92:0x0498, B:94:0x04c0, B:96:0x04df, B:141:0x06fe, B:97:0x0513, B:99:0x0519, B:101:0x0529, B:103:0x053a, B:105:0x056b, B:107:0x0579, B:109:0x0587, B:118:0x05dd, B:116:0x059e, B:117:0x05be, B:108:0x057f, B:104:0x0543, B:119:0x05e9, B:121:0x05ef, B:123:0x05ff, B:135:0x0685, B:132:0x0619, B:133:0x0639, B:134:0x0659, B:136:0x0690, B:138:0x06c4, B:140:0x06f8, B:139:0x06ee, B:144:0x070b, B:157:0x07b4, B:159:0x07dc, B:161:0x07ec, B:163:0x07fd, B:165:0x082e, B:167:0x083c, B:169:0x084a, B:180:0x0930, B:168:0x0842, B:164:0x0806, B:170:0x087c, B:172:0x0882, B:174:0x0892, B:175:0x08c2, B:177:0x08f6, B:179:0x092a, B:178:0x0920, B:183:0x093d, B:185:0x098e, B:186:0x0996, B:189:0x099f, B:191:0x09f0, B:192:0x09f8, B:195:0x0a01, B:209:0x0ab4, B:211:0x0adc, B:213:0x0aec, B:215:0x0afd, B:217:0x0b2e, B:219:0x0b3c, B:221:0x0b4a, B:228:0x0b9c, B:251:0x0ca6, B:226:0x0b5d, B:227:0x0b7d, B:220:0x0b42, B:216:0x0b06, B:229:0x0ba8, B:231:0x0bae, B:233:0x0bbe, B:245:0x0c44, B:242:0x0bd8, B:243:0x0bf8, B:244:0x0c18, B:246:0x0c4f, B:248:0x0c83, B:250:0x0ca0, B:249:0x0c96, B:22:0x0145, B:32:0x01a1), top: B:261:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x03a0 A[Catch: Exception -> 0x007c, TryCatch #0 {Exception -> 0x007c, blocks: (B:8:0x0034, B:59:0x02de, B:61:0x032d, B:62:0x0335, B:65:0x033e, B:67:0x0373, B:69:0x0379, B:70:0x0390, B:73:0x03a0, B:75:0x03e3, B:76:0x03eb, B:79:0x03fb, B:92:0x0498, B:94:0x04c0, B:96:0x04df, B:141:0x06fe, B:97:0x0513, B:99:0x0519, B:101:0x0529, B:103:0x053a, B:105:0x056b, B:107:0x0579, B:109:0x0587, B:118:0x05dd, B:116:0x059e, B:117:0x05be, B:108:0x057f, B:104:0x0543, B:119:0x05e9, B:121:0x05ef, B:123:0x05ff, B:135:0x0685, B:132:0x0619, B:133:0x0639, B:134:0x0659, B:136:0x0690, B:138:0x06c4, B:140:0x06f8, B:139:0x06ee, B:144:0x070b, B:157:0x07b4, B:159:0x07dc, B:161:0x07ec, B:163:0x07fd, B:165:0x082e, B:167:0x083c, B:169:0x084a, B:180:0x0930, B:168:0x0842, B:164:0x0806, B:170:0x087c, B:172:0x0882, B:174:0x0892, B:175:0x08c2, B:177:0x08f6, B:179:0x092a, B:178:0x0920, B:183:0x093d, B:185:0x098e, B:186:0x0996, B:189:0x099f, B:191:0x09f0, B:192:0x09f8, B:195:0x0a01, B:209:0x0ab4, B:211:0x0adc, B:213:0x0aec, B:215:0x0afd, B:217:0x0b2e, B:219:0x0b3c, B:221:0x0b4a, B:228:0x0b9c, B:251:0x0ca6, B:226:0x0b5d, B:227:0x0b7d, B:220:0x0b42, B:216:0x0b06, B:229:0x0ba8, B:231:0x0bae, B:233:0x0bbe, B:245:0x0c44, B:242:0x0bd8, B:243:0x0bf8, B:244:0x0c18, B:246:0x0c4f, B:248:0x0c83, B:250:0x0ca0, B:249:0x0c96, B:22:0x0145, B:32:0x01a1), top: B:261:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x03fb A[Catch: Exception -> 0x007c, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x007c, blocks: (B:8:0x0034, B:59:0x02de, B:61:0x032d, B:62:0x0335, B:65:0x033e, B:67:0x0373, B:69:0x0379, B:70:0x0390, B:73:0x03a0, B:75:0x03e3, B:76:0x03eb, B:79:0x03fb, B:92:0x0498, B:94:0x04c0, B:96:0x04df, B:141:0x06fe, B:97:0x0513, B:99:0x0519, B:101:0x0529, B:103:0x053a, B:105:0x056b, B:107:0x0579, B:109:0x0587, B:118:0x05dd, B:116:0x059e, B:117:0x05be, B:108:0x057f, B:104:0x0543, B:119:0x05e9, B:121:0x05ef, B:123:0x05ff, B:135:0x0685, B:132:0x0619, B:133:0x0639, B:134:0x0659, B:136:0x0690, B:138:0x06c4, B:140:0x06f8, B:139:0x06ee, B:144:0x070b, B:157:0x07b4, B:159:0x07dc, B:161:0x07ec, B:163:0x07fd, B:165:0x082e, B:167:0x083c, B:169:0x084a, B:180:0x0930, B:168:0x0842, B:164:0x0806, B:170:0x087c, B:172:0x0882, B:174:0x0892, B:175:0x08c2, B:177:0x08f6, B:179:0x092a, B:178:0x0920, B:183:0x093d, B:185:0x098e, B:186:0x0996, B:189:0x099f, B:191:0x09f0, B:192:0x09f8, B:195:0x0a01, B:209:0x0ab4, B:211:0x0adc, B:213:0x0aec, B:215:0x0afd, B:217:0x0b2e, B:219:0x0b3c, B:221:0x0b4a, B:228:0x0b9c, B:251:0x0ca6, B:226:0x0b5d, B:227:0x0b7d, B:220:0x0b42, B:216:0x0b06, B:229:0x0ba8, B:231:0x0bae, B:233:0x0bbe, B:245:0x0c44, B:242:0x0bd8, B:243:0x0bf8, B:244:0x0c18, B:246:0x0c4f, B:248:0x0c83, B:250:0x0ca0, B:249:0x0c96, B:22:0x0145, B:32:0x01a1), top: B:261:0x0023 }] */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r28, android.view.View r29, android.view.ViewGroup r30) {
        /*
            Method dump skipped, instructions count: 3257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.p.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 8;
    }

    public void h(String str) {
    }

    public void i(ListView listView) {
        this.f43070c = listView;
    }

    void j(EMUApkTable eMUApkTable) {
        DownloadTask V = g1.f.G().V(Integer.parseInt(eMUApkTable.getTag_id()));
        if (V != null && com.join.android.app.common.utils.h.i(eMUApkTable)) {
            com.join.android.app.common.utils.h.e(eMUApkTable, V);
        }
        UtilsMy.V0(eMUApkTable, this.f43069b);
    }
}
