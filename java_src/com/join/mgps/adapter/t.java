package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dto.LoadWarCenterBean;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: FightAdapter.java */
/* loaded from: classes3.dex */
public class t extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    private Context f43936b;

    /* renamed from: a  reason: collision with root package name */
    String f43935a = getClass().getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private Map<String, DownloadTask> f43937c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private List<FightMainTable> f43938d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f43939e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f43940f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f43941g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f43942h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f43943i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f43944j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private List<WarMatchAndLocalTable> f43945k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private LoadWarCenterBean f43946l = new LoadWarCenterBean();

    /* renamed from: m  reason: collision with root package name */
    private int f43947m = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f43948n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f43949o = 0;

    /* renamed from: p  reason: collision with root package name */
    private int f43950p = 0;

    /* renamed from: q  reason: collision with root package name */
    private int f43951q = 0;

    /* renamed from: r  reason: collision with root package name */
    private int f43952r = 0;

    /* renamed from: s  reason: collision with root package name */
    private int f43953s = 0;

    /* renamed from: t  reason: collision with root package name */
    private int f43954t = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43955a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43956b;

        a(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43955a = downloadTask;
            this.f43956b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43955a, this.f43956b.getDown_status());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43958a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43959b;

        b(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43958a = downloadTask;
            this.f43959b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43958a, this.f43959b.getDown_status());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43961a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43962b;

        c(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43961a = downloadTask;
            this.f43962b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43961a, this.f43962b.getDown_status());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43964a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43965b;

        d(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43964a = downloadTask;
            this.f43965b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43964a, this.f43965b.getDown_status());
        }
    }

    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43967a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FightMainTable f43968b;

        e(DownloadTask downloadTask, FightMainTable fightMainTable) {
            this.f43967a = downloadTask;
            this.f43968b = fightMainTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f43967a;
            if (downloadTask != null) {
                if (downloadTask.getStatus() == 5) {
                    t.this.d(this.f43967a, this.f43968b.getDown_status());
                } else {
                    IntentUtil.getInstance().goGameDetialActivity(t.this.f43936b, this.f43967a.getCrc_link_type_val(), this.f43967a.getGame_info_tpl_type(), this.f43967a.getSp_tpl_two_position(), 0);
                }
            }
        }
    }

    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FightMainTable f43970a;

        f(FightMainTable fightMainTable) {
            this.f43970a = fightMainTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(this.f43970a.getJump_type());
            intentDateBean.setLink_type(this.f43970a.getLink_type());
            intentDateBean.setLink_type_val(this.f43970a.getLink_type_val());
            intentDateBean.setTpl_type(this.f43970a.getTpl_type());
            intentDateBean.setCrc_link_type_val(this.f43970a.getCrc_link_type_val());
            IntentUtil.getInstance().intentActivity(t.this.f43936b, intentDateBean);
        }
    }

    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43972a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FightMainTable f43973b;

        g(DownloadTask downloadTask, FightMainTable fightMainTable) {
            this.f43972a = downloadTask;
            this.f43973b = fightMainTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f43972a;
            if (downloadTask != null) {
                if (downloadTask.getStatus() == 5) {
                    t.this.d(this.f43972a, this.f43973b.getDown_status());
                } else {
                    IntentUtil.getInstance().goGameDetialActivity(t.this.f43936b, this.f43972a.getCrc_link_type_val(), this.f43972a.getGame_info_tpl_type(), this.f43972a.getSp_tpl_two_position(), 0);
                }
            }
        }
    }

    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FightMainTable f43975a;

        h(FightMainTable fightMainTable) {
            this.f43975a = fightMainTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(this.f43975a.getJump_type());
            intentDateBean.setLink_type(this.f43975a.getLink_type());
            intentDateBean.setLink_type_val(this.f43975a.getLink_type_val());
            intentDateBean.setTpl_type(this.f43975a.getTpl_type());
            intentDateBean.setCrc_link_type_val(this.f43975a.getCrc_link_type_val());
            IntentUtil.getInstance().intentActivity(t.this.f43936b, intentDateBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43977a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43978b;

        i(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43977a = downloadTask;
            this.f43978b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43977a, this.f43978b.getDown_status());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43980a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43981b;

        j(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43980a = downloadTask;
            this.f43981b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43980a, this.f43981b.getDown_status());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43983a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43984b;

        k(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43983a = downloadTask;
            this.f43984b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43983a, this.f43984b.getDown_status());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43986a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43987b;

        l(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43986a = downloadTask;
            this.f43987b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43986a, this.f43987b.getDown_status());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43989a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f43990b;

        m(DownloadTask downloadTask, WarMatchAndLocalTable warMatchAndLocalTable) {
            this.f43989a = downloadTask;
            this.f43990b = warMatchAndLocalTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.g(this.f43989a, this.f43990b.getDown_status());
        }
    }

    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    public class n {
        public ProgressBar A;
        public ProgressBar B;
        public ProgressBar C;
        public ProgressBar D;
        TextView E;
        TextView F;
        TextView G;

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f43992a;

        /* renamed from: b  reason: collision with root package name */
        LinearLayout f43993b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f43994c;

        /* renamed from: d  reason: collision with root package name */
        SimpleDraweeView f43995d;

        /* renamed from: e  reason: collision with root package name */
        SimpleDraweeView f43996e;

        /* renamed from: f  reason: collision with root package name */
        SimpleDraweeView f43997f;

        /* renamed from: g  reason: collision with root package name */
        ImageView f43998g;

        /* renamed from: h  reason: collision with root package name */
        ImageView f43999h;

        /* renamed from: i  reason: collision with root package name */
        ImageView f44000i;

        /* renamed from: j  reason: collision with root package name */
        ImageView f44001j;

        /* renamed from: k  reason: collision with root package name */
        ImageView f44002k;

        /* renamed from: l  reason: collision with root package name */
        ImageView f44003l;

        /* renamed from: m  reason: collision with root package name */
        LinearLayout f44004m;

        /* renamed from: n  reason: collision with root package name */
        LinearLayout f44005n;

        /* renamed from: o  reason: collision with root package name */
        LinearLayout f44006o;

        /* renamed from: p  reason: collision with root package name */
        TextView f44007p;

        /* renamed from: q  reason: collision with root package name */
        TextView f44008q;

        /* renamed from: r  reason: collision with root package name */
        TextView f44009r;

        /* renamed from: s  reason: collision with root package name */
        public TextView f44010s;

        /* renamed from: t  reason: collision with root package name */
        public TextView f44011t;

        /* renamed from: u  reason: collision with root package name */
        public TextView f44012u;

        /* renamed from: v  reason: collision with root package name */
        public TextView f44013v;

        /* renamed from: w  reason: collision with root package name */
        public TextView f44014w;

        /* renamed from: x  reason: collision with root package name */
        public TextView f44015x;

        /* renamed from: y  reason: collision with root package name */
        public ProgressBar f44016y;

        /* renamed from: z  reason: collision with root package name */
        public ProgressBar f44017z;

        public n() {
        }
    }

    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    class o {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f44018a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f44019b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f44020c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f44021d;

        /* renamed from: e  reason: collision with root package name */
        RelativeLayout f44022e;

        o() {
        }
    }

    /* compiled from: FightAdapter.java */
    /* loaded from: classes3.dex */
    class p {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f44024a;

        /* renamed from: b  reason: collision with root package name */
        TextView f44025b;

        /* renamed from: c  reason: collision with root package name */
        TextView f44026c;

        p() {
        }
    }

    public t(Fragment fragment) {
        this.f43936b = fragment.getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(DownloadTask downloadTask, int i2) {
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.n0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        UtilsMy.c3(this.f43936b, downloadTask);
                        return;
                    } else if (status != 6) {
                        if (status != 7) {
                            switch (status) {
                                case 9:
                                    int downloadType = downloadTask.getDownloadType();
                                    if (downloadType != 0 && downloadType != 1) {
                                        if (downloadType != 2) {
                                            return;
                                        }
                                        UtilsMy.z3(downloadTask);
                                        return;
                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                        return;
                                    } else {
                                        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                        if (UtilsMy.T0(this.f43936b, downloadTask)) {
                                            return;
                                        }
                                        if (i2 == 5) {
                                            UtilsMy.R0(this.f43936b, downloadTask);
                                            return;
                                        }
                                        downloadTask.setId(B.getId());
                                        EMUUpdateTable n4 = n1.q.o().n(downloadTask.getCrc_link_type_val());
                                        downloadTask.setVer(n4.getVer());
                                        downloadTask.setVer_name(n4.getVer_name());
                                        com.php25.PDownload.d.b(downloadTask);
                                        com.php25.PDownload.d.c(downloadTask, this.f43936b);
                                        return;
                                    }
                                case 10:
                                    break;
                                case 11:
                                    UtilsMy.j3(downloadTask, this.f43936b);
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                }
                com.php25.PDownload.d.c(downloadTask, this.f43936b);
                return;
            }
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(this.f43936b);
            a4.b(downloadTask.getShowName() + "正在下载");
            return;
        }
        com.join.mgps.Util.i2 a5 = com.join.mgps.Util.i2.a(this.f43936b);
        a5.b(downloadTask.getShowName() + "开始下载");
        if (UtilsMy.n0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(this.f43936b, downloadTask.getCrc_link_type_val());
        } else if (UtilsMy.T0(this.f43936b, downloadTask)) {
        } else {
            if (i2 == 5) {
                UtilsMy.R0(this.f43936b, downloadTask);
            } else {
                UtilsMy.F0(this.f43936b, downloadTask, downloadTask.getTp_down_url(), downloadTask.getOther_down_switch(), downloadTask.getCdn_down_switch());
            }
        }
    }

    private Map<String, DownloadTask> e(int i2, int i4, List<WarMatchAndLocalTable> list) {
        DownloadTask downloadTask;
        DownloadTask downloadTask2;
        DownloadTask downloadTask3;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        int i5 = (i2 - (i4 + 1)) * 3;
        try {
            WarMatchAndLocalTable warMatchAndLocalTable = list.get(i5);
            if (this.f43937c.containsKey(warMatchAndLocalTable.getCrc_link_type_val()) && (downloadTask3 = this.f43937c.get(warMatchAndLocalTable.getCrc_link_type_val())) != null) {
                concurrentHashMap.put("Left", downloadTask3);
            }
            int i6 = i5 + 1;
            if (i6 < list.size()) {
                WarMatchAndLocalTable warMatchAndLocalTable2 = list.get(i6);
                if (this.f43937c.containsKey(warMatchAndLocalTable2.getCrc_link_type_val()) && (downloadTask2 = this.f43937c.get(warMatchAndLocalTable2.getCrc_link_type_val())) != null) {
                    concurrentHashMap.put("Mid", downloadTask2);
                }
            }
            int i7 = i5 + 2;
            if (i7 < list.size()) {
                WarMatchAndLocalTable warMatchAndLocalTable3 = list.get(i7);
                if (this.f43937c.containsKey(warMatchAndLocalTable3.getCrc_link_type_val()) && (downloadTask = this.f43937c.get(warMatchAndLocalTable3.getCrc_link_type_val())) != null) {
                    concurrentHashMap.put("Right", downloadTask);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return concurrentHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            int status = downloadTask.getStatus();
            if (UtilsMy.n0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
                status = 43;
            }
            switch (status) {
                case 0:
                    if (UtilsMy.n0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
                        UtilsMy.m3(this.f43936b, downloadTask.getCrc_link_type_val());
                        return;
                    } else if (UtilsMy.T0(this.f43936b, downloadTask)) {
                        return;
                    } else {
                        if (i2 == 5) {
                            UtilsMy.R0(this.f43936b, downloadTask);
                            return;
                        } else {
                            UtilsMy.F0(this.f43936b, downloadTask, downloadTask.getTp_down_url(), downloadTask.getOther_down_switch(), downloadTask.getCdn_down_switch());
                            return;
                        }
                    }
                case 1:
                case 3:
                case 6:
                    com.php25.PDownload.d.c(downloadTask, this.f43936b);
                    return;
                case 2:
                case 10:
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                case 4:
                case 8:
                default:
                    return;
                case 5:
                    if (downloadTask.getGameZipPath() != null) {
                        if (new File(downloadTask.getGameZipPath()).exists()) {
                            UtilsMy.c3(this.f43936b, downloadTask);
                            return;
                        }
                        com.php25.PDownload.d.a(downloadTask);
                        com.php25.PDownload.d.c(downloadTask, this.f43936b);
                        downloadTask.setStatus(3);
                        return;
                    }
                    return;
                case 7:
                    com.php25.PDownload.d.c(downloadTask, this.f43936b);
                    return;
                case 9:
                    int downloadType = downloadTask.getDownloadType();
                    if (downloadType != 0 && downloadType != 1) {
                        if (downloadType != 2) {
                            return;
                        }
                        UtilsMy.z3(downloadTask);
                        return;
                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                        return;
                    } else {
                        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                        if (UtilsMy.T0(this.f43936b, downloadTask)) {
                            return;
                        }
                        if (i2 == 5) {
                            UtilsMy.R0(this.f43936b, downloadTask);
                            return;
                        }
                        downloadTask.setId(B.getId());
                        EMUUpdateTable n4 = n1.q.o().n(downloadTask.getCrc_link_type_val());
                        downloadTask.setVer(n4.getVer());
                        downloadTask.setVer_name(n4.getVer_name());
                        com.php25.PDownload.d.b(downloadTask);
                        com.php25.PDownload.d.c(downloadTask, this.f43936b);
                        return;
                    }
                case 11:
                    UtilsMy.j3(downloadTask, this.f43936b);
                    return;
            }
        }
    }

    public LoadWarCenterBean f() {
        return this.f43946l;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43954t;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        if (getItemViewType(i2) == 2) {
            int i4 = this.f43948n;
            if (i4 > 0 && i2 <= i4 + ((this.f43940f.size() + 2) / 3)) {
                return e(i2, this.f43948n, this.f43940f);
            }
            int i5 = this.f43949o;
            if (i5 > 0 && i2 <= i5 + ((this.f43941g.size() + 2) / 3)) {
                return e(i2, this.f43949o, this.f43941g);
            }
            int i6 = this.f43950p;
            if (i6 > 0 && i2 <= i6 + ((this.f43942h.size() + 2) / 3)) {
                return e(i2, this.f43950p, this.f43942h);
            }
            int i7 = this.f43951q;
            if (i7 > 0 && i2 <= i7 + ((this.f43943i.size() + 2) / 3)) {
                return e(i2, this.f43951q, this.f43943i);
            }
            int i8 = this.f43952r;
            if (i8 > 0 && i2 <= i8 + ((this.f43944j.size() + 2) / 3)) {
                return e(i2, this.f43952r, this.f43944j);
            }
            int i9 = this.f43953s;
            if (i9 > 0 && i2 <= i9 + ((this.f43945k.size() + 2) / 3)) {
                return e(i2, this.f43953s, this.f43945k);
            }
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        int i4 = this.f43948n;
        if (i2 < i4) {
            return 0;
        }
        return (i2 == i4 || i2 == this.f43949o || i2 == this.f43950p || i2 == this.f43951q || i2 == this.f43952r || i2 == this.f43953s) ? 1 : 2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        o oVar;
        n nVar;
        o oVar2;
        n nVar2;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(i2);
            sb.append(";total=");
            sb.append(getCount());
            int itemViewType = getItemViewType(i2);
            p pVar = null;
            if (view == null) {
                if (itemViewType == 0) {
                    o oVar3 = new o();
                    view = LayoutInflater.from(this.f43936b).inflate(R.layout.fight_hot_game_item, (ViewGroup) null);
                    oVar3.f44018a = (SimpleDraweeView) view.findViewById(R.id.fightImgLeft);
                    oVar3.f44019b = (SimpleDraweeView) view.findViewById(R.id.fightImgRight);
                    oVar3.f44020c = (ImageView) view.findViewById(R.id.fightIconLeft);
                    oVar3.f44021d = (ImageView) view.findViewById(R.id.fightIconRight);
                    oVar3.f44022e = (RelativeLayout) view.findViewById(R.id.fightLayoutRight);
                    view.setTag(oVar3);
                    oVar2 = oVar3;
                    nVar2 = null;
                } else if (itemViewType == 1) {
                    p pVar2 = new p();
                    view = LayoutInflater.from(this.f43936b).inflate(R.layout.fight_type_title, (ViewGroup) null);
                    pVar2.f44025b = (TextView) view.findViewById(R.id.fightTitle);
                    pVar2.f44026c = (TextView) view.findViewById(R.id.fightSubTitle);
                    pVar2.f44024a = (LinearLayout) view.findViewById(R.id.linearLayoutMFight);
                    view.setTag(pVar2);
                    nVar2 = null;
                    pVar = pVar2;
                    oVar2 = null;
                } else if (itemViewType != 2) {
                    oVar2 = null;
                    nVar2 = null;
                } else {
                    nVar2 = new n();
                    view = LayoutInflater.from(this.f43936b).inflate(R.layout.fight_game_item, (ViewGroup) null);
                    nVar2.f43992a = (LinearLayout) view.findViewById(R.id.fightLayoutLeft);
                    nVar2.f43993b = (LinearLayout) view.findViewById(R.id.fightLayoutMid);
                    nVar2.f43994c = (LinearLayout) view.findViewById(R.id.fightLayoutRight);
                    nVar2.f43995d = (SimpleDraweeView) view.findViewById(R.id.fightImgLeft);
                    nVar2.f43996e = (SimpleDraweeView) view.findViewById(R.id.fightImgMid);
                    nVar2.f43997f = (SimpleDraweeView) view.findViewById(R.id.fightImgRight);
                    nVar2.f43998g = (ImageView) view.findViewById(R.id.statusImgLeft);
                    nVar2.f43999h = (ImageView) view.findViewById(R.id.statusImgMid);
                    nVar2.f44000i = (ImageView) view.findViewById(R.id.statusImgRight);
                    nVar2.f44001j = (ImageView) view.findViewById(R.id.tagImgLeft);
                    nVar2.f44002k = (ImageView) view.findViewById(R.id.tagImgMid);
                    nVar2.f44003l = (ImageView) view.findViewById(R.id.tagImgRight);
                    nVar2.f44004m = (LinearLayout) view.findViewById(R.id.downloadStatusLeft);
                    nVar2.f44005n = (LinearLayout) view.findViewById(R.id.downloadStatusMid);
                    nVar2.f44006o = (LinearLayout) view.findViewById(R.id.downloadStatusRight);
                    nVar2.f44007p = (TextView) view.findViewById(R.id.statusBtnLeft);
                    nVar2.f44008q = (TextView) view.findViewById(R.id.statusBtnMid);
                    nVar2.f44009r = (TextView) view.findViewById(R.id.statusBtnRight);
                    nVar2.f44010s = (TextView) view.findViewById(R.id.appSizeTvLeft);
                    nVar2.f44011t = (TextView) view.findViewById(R.id.appSizeTvMid);
                    nVar2.f44012u = (TextView) view.findViewById(R.id.appSizeTvRight);
                    nVar2.f44013v = (TextView) view.findViewById(R.id.speedTvLeft);
                    nVar2.f44014w = (TextView) view.findViewById(R.id.speedTvMid);
                    nVar2.f44015x = (TextView) view.findViewById(R.id.speedTvRight);
                    nVar2.E = (TextView) view.findViewById(R.id.fightNameTvLeft);
                    nVar2.F = (TextView) view.findViewById(R.id.fightNameTvMid);
                    nVar2.G = (TextView) view.findViewById(R.id.fightNameIvRight);
                    nVar2.f44016y = (ProgressBar) view.findViewById(R.id.progressBarZipLeft);
                    nVar2.f44017z = (ProgressBar) view.findViewById(R.id.progressBarZipMid);
                    nVar2.A = (ProgressBar) view.findViewById(R.id.progressBarZipRight);
                    nVar2.B = (ProgressBar) view.findViewById(R.id.progressBarLeft);
                    nVar2.C = (ProgressBar) view.findViewById(R.id.progressBarMid);
                    nVar2.D = (ProgressBar) view.findViewById(R.id.progressBarRight);
                    view.setTag(nVar2);
                    oVar2 = null;
                }
                oVar = oVar2;
                nVar = nVar2;
            } else if (itemViewType == 0) {
                oVar = (o) view.getTag();
                nVar = null;
            } else if (itemViewType == 1) {
                oVar = null;
                pVar = (p) view.getTag();
                nVar = null;
            } else if (itemViewType != 2) {
                nVar = null;
                oVar = null;
            } else {
                nVar = (n) view.getTag();
                oVar = null;
            }
            if (itemViewType == 0) {
                List<FightMainTable> list = this.f43938d;
                if (list != null && list.size() > 0) {
                    int i4 = i2 * 2;
                    FightMainTable fightMainTable = this.f43938d.get(i4);
                    if (com.join.mgps.Util.d2.i(fightMainTable.getPic_remote())) {
                        MyImageLoader.f(oVar.f44018a, R.drawable.main_normal_icon, fightMainTable.getPic_remote(), MyImageLoader.C(this.f43936b));
                    } else {
                        oVar.f44018a.setImageDrawable(this.f43936b.getResources().getDrawable(R.drawable.main_normal_icon));
                    }
                    if (fightMainTable.getLink_type() == 1) {
                        if (this.f43937c.containsKey(fightMainTable.getCrc_link_type_val())) {
                            DownloadTask downloadTask = this.f43937c.get(fightMainTable.getCrc_link_type_val());
                            if (downloadTask != null && downloadTask.getStatus() == 5) {
                                oVar.f44020c.setVisibility(0);
                            } else {
                                oVar.f44020c.setVisibility(8);
                            }
                            UtilsMy.Z0(downloadTask, fightMainTable);
                            oVar.f44018a.setOnClickListener(new e(downloadTask, fightMainTable));
                        } else {
                            oVar.f44020c.setVisibility(8);
                        }
                    } else {
                        oVar.f44018a.setOnClickListener(new f(fightMainTable));
                    }
                    int i5 = i4 + 1;
                    if (i5 < this.f43938d.size()) {
                        oVar.f44022e.setVisibility(0);
                        oVar.f44019b.setImageDrawable(this.f43936b.getResources().getDrawable(R.drawable.main_normal_icon));
                        FightMainTable fightMainTable2 = this.f43938d.get(i5);
                        if (com.join.mgps.Util.d2.i(fightMainTable2.getPic_remote())) {
                            MyImageLoader.f(oVar.f44019b, R.drawable.main_normal_icon, fightMainTable2.getPic_remote(), MyImageLoader.C(this.f43936b));
                        } else {
                            oVar.f44018a.setImageDrawable(this.f43936b.getResources().getDrawable(R.drawable.main_normal_icon));
                        }
                        if (fightMainTable2.getLink_type() == 1) {
                            DownloadTask downloadTask2 = this.f43937c.get(fightMainTable2.getCrc_link_type_val());
                            if (downloadTask2 != null && downloadTask2.getStatus() == 5) {
                                oVar.f44021d.setVisibility(0);
                            } else {
                                oVar.f44021d.setVisibility(8);
                            }
                            UtilsMy.Z0(downloadTask2, fightMainTable);
                            oVar.f44019b.setOnClickListener(new g(downloadTask2, fightMainTable));
                        } else {
                            oVar.f44019b.setOnClickListener(new h(fightMainTable2));
                        }
                    } else {
                        oVar.f44022e.setVisibility(4);
                    }
                }
            } else if (itemViewType == 1) {
                int i6 = this.f43948n;
                if (i6 == i2) {
                    pVar.f44024a.setVisibility(0);
                    List<WarMatchAndLocalTable> list2 = this.f43940f;
                    if (list2 != null && list2.size() > 0) {
                        pVar.f44025b.setText(this.f43940f.get(0).getMain_title());
                        pVar.f44026c.setText(this.f43940f.get(0).getMain_sub_title());
                    }
                } else {
                    int i7 = this.f43949o;
                    if (i7 == i2) {
                        pVar.f44024a.setVisibility(0);
                        List<WarMatchAndLocalTable> list3 = this.f43941g;
                        if (list3 != null && list3.size() > 0) {
                            pVar.f44025b.setText(this.f43941g.get(0).getMain_title());
                            pVar.f44026c.setText(this.f43941g.get(0).getMain_sub_title());
                        }
                    } else {
                        int i8 = this.f43950p;
                        if (i8 == i2) {
                            pVar.f44024a.setVisibility(0);
                            List<WarMatchAndLocalTable> list4 = this.f43942h;
                            if (list4 != null && list4.size() > 0) {
                                pVar.f44025b.setText(this.f43942h.get(0).getMain_title());
                                pVar.f44026c.setText(this.f43942h.get(0).getMain_sub_title());
                            }
                        } else {
                            int i9 = this.f43951q;
                            if (i9 == i2) {
                                pVar.f44024a.setVisibility(0);
                                List<WarMatchAndLocalTable> list5 = this.f43943i;
                                if (list5 != null && list5.size() > 0) {
                                    pVar.f44025b.setText(this.f43943i.get(0).getMain_title());
                                    pVar.f44026c.setText(this.f43943i.get(0).getMain_sub_title());
                                }
                            } else {
                                int i10 = this.f43952r;
                                if (i10 == i2) {
                                    pVar.f44024a.setVisibility(0);
                                    List<WarMatchAndLocalTable> list6 = this.f43944j;
                                    if (list6 != null && list6.size() > 0) {
                                        pVar.f44025b.setText(this.f43944j.get(0).getMain_title());
                                        pVar.f44026c.setText(this.f43944j.get(0).getMain_sub_title());
                                    }
                                } else {
                                    int i11 = this.f43953s;
                                    if (i11 == i2) {
                                        pVar.f44024a.setVisibility(0);
                                        List<WarMatchAndLocalTable> list7 = this.f43945k;
                                        if (list7 != null && list7.size() > 0) {
                                            pVar.f44025b.setText(this.f43945k.get(0).getMain_title());
                                            pVar.f44026c.setText(this.f43945k.get(0).getMain_sub_title());
                                        }
                                    } else if (i6 == 0 || i7 == 0 || i8 == 0 || i9 == 0 || i10 == 0 || i11 == 0) {
                                        pVar.f44024a.setVisibility(8);
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (itemViewType == 2) {
                int i12 = this.f43948n;
                if (i12 > 0 && i2 <= i12 + ((this.f43940f.size() + 2) / 3)) {
                    i(i2, this.f43948n, this.f43940f, nVar);
                }
                int i13 = this.f43949o;
                if (i13 > 0 && i2 <= i13 + ((this.f43941g.size() + 2) / 3)) {
                    i(i2, this.f43949o, this.f43941g, nVar);
                }
                int i14 = this.f43950p;
                if (i14 > 0 && i2 <= i14 + ((this.f43942h.size() + 2) / 3)) {
                    i(i2, this.f43950p, this.f43942h, nVar);
                }
                int i15 = this.f43951q;
                if (i15 > 0 && i2 <= i15 + ((this.f43943i.size() + 2) / 3)) {
                    i(i2, this.f43951q, this.f43943i, nVar);
                }
                int i16 = this.f43952r;
                if (i16 > 0 && i2 <= i16 + ((this.f43944j.size() + 2) / 3)) {
                    i(i2, this.f43952r, this.f43944j, nVar);
                }
                int i17 = this.f43953s;
                if (i17 > 0 && i2 <= i17 + ((this.f43945k.size() + 2) / 3)) {
                    i(i2, this.f43953s, this.f43945k, nVar);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 4;
    }

    public void h(LoadWarCenterBean loadWarCenterBean) {
        this.f43946l = loadWarCenterBean;
        this.f43937c = loadWarCenterBean.getDownloadTasksMap();
        this.f43938d = this.f43946l.getFightMainTables();
        this.f43939e = this.f43946l.getWaradInfoDataBeans();
        this.f43940f = this.f43946l.getHotGameInfoDataBeans();
        this.f43941g = this.f43946l.getPkGameInfoDataBeans();
        this.f43942h = this.f43946l.getPkPassInfoDataBeans();
        this.f43943i = this.f43946l.getPkMatchingInfoDataBeans();
        this.f43944j = this.f43946l.getPkLocalInfoDataBeans();
        this.f43945k = this.f43946l.getPkRoomInfoDataBeans();
        this.f43954t = 0;
        for (int i2 = 0; i2 < 7; i2++) {
            switch (i2) {
                case 0:
                    List<FightMainTable> list = this.f43938d;
                    if (list != null && list.size() > 0) {
                        int size = this.f43954t + ((this.f43938d.size() + 1) / 2);
                        this.f43948n = size;
                        this.f43947m = size;
                        this.f43954t = size;
                        break;
                    }
                    break;
                case 1:
                    List<WarMatchAndLocalTable> list2 = this.f43940f;
                    if (list2 != null && list2.size() > 0) {
                        int size2 = this.f43954t + 1 + ((this.f43940f.size() + 2) / 3);
                        this.f43949o = size2;
                        this.f43954t = size2;
                        break;
                    } else {
                        this.f43948n = 0;
                        break;
                    }
                case 2:
                    List<WarMatchAndLocalTable> list3 = this.f43941g;
                    if (list3 != null && list3.size() > 0) {
                        int size3 = this.f43954t + 1 + ((this.f43941g.size() + 2) / 3);
                        this.f43950p = size3;
                        this.f43954t = size3;
                        break;
                    } else {
                        this.f43949o = 0;
                        break;
                    }
                case 3:
                    List<WarMatchAndLocalTable> list4 = this.f43942h;
                    if (list4 != null && list4.size() > 0) {
                        int size4 = this.f43954t + 1 + ((this.f43942h.size() + 2) / 3);
                        this.f43951q = size4;
                        this.f43954t = size4;
                        break;
                    } else {
                        this.f43950p = 0;
                        break;
                    }
                case 4:
                    List<WarMatchAndLocalTable> list5 = this.f43943i;
                    if (list5 != null && list5.size() > 0) {
                        int size5 = this.f43954t + 1 + ((this.f43943i.size() + 2) / 3);
                        this.f43952r = size5;
                        this.f43954t = size5;
                        break;
                    } else {
                        this.f43951q = 0;
                        break;
                    }
                    break;
                case 5:
                    List<WarMatchAndLocalTable> list6 = this.f43944j;
                    if (list6 != null && list6.size() > 0) {
                        int size6 = this.f43954t + 1 + ((this.f43944j.size() + 2) / 3);
                        this.f43953s = size6;
                        this.f43954t = size6;
                        break;
                    } else {
                        this.f43952r = 0;
                        break;
                    }
                    break;
                case 6:
                    List<WarMatchAndLocalTable> list7 = this.f43945k;
                    if (list7 != null && list7.size() > 0) {
                        this.f43954t = this.f43954t + 1 + ((this.f43945k.size() + 2) / 3);
                        break;
                    } else {
                        this.f43953s = 0;
                        break;
                    }
                    break;
            }
        }
        notifyDataSetChanged();
    }

    void i(int i2, int i4, List<WarMatchAndLocalTable> list, n nVar) {
        DownloadTask downloadTask;
        int i5 = i4 + 1;
        if (i2 < i5) {
            return;
        }
        int i6 = (i2 - i5) * 3;
        WarMatchAndLocalTable warMatchAndLocalTable = list.get(i6);
        if (this.f43937c.containsKey(warMatchAndLocalTable.getCrc_link_type_val()) && (downloadTask = this.f43937c.get(warMatchAndLocalTable.getCrc_link_type_val())) != null) {
            UtilsMy.a1(downloadTask, warMatchAndLocalTable);
            if (com.join.mgps.Util.d2.i(downloadTask.getFight_screenshot_pic())) {
                MyImageLoader.f(nVar.f43995d, R.drawable.main_normal_icon, downloadTask.getFight_screenshot_pic(), MyImageLoader.C(this.f43936b));
            } else {
                MyImageLoader.f(nVar.f43995d, R.drawable.main_normal_icon, downloadTask.getScreenshot_pic(), MyImageLoader.C(this.f43936b));
            }
            nVar.E.setText(downloadTask.getShowName());
            if (downloadTask.getStatus() == 5) {
                nVar.f44004m.setVisibility(8);
                nVar.f43998g.setVisibility(8);
                nVar.f44001j.setVisibility(0);
                nVar.f43992a.setOnClickListener(new i(downloadTask, warMatchAndLocalTable));
            } else if (downloadTask.getStatus() != 7 && downloadTask.getStatus() != 0) {
                nVar.f44004m.setVisibility(0);
                nVar.f43998g.setVisibility(0);
                nVar.f44001j.setVisibility(8);
                nVar.f44007p.setOnClickListener(new k(downloadTask, warMatchAndLocalTable));
                long parseDouble = (long) (Double.parseDouble(warMatchAndLocalTable.getAppSize()) * 1024.0d * 1024.0d);
                int status = downloadTask.getStatus();
                if (status == 2) {
                    nVar.f44007p.setBackgroundResource(R.drawable.fight_blue_butn);
                    nVar.f44007p.setText("暂停");
                    TextView textView = nVar.f44010s;
                    textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    TextView textView2 = nVar.f44013v;
                    textView2.setText(downloadTask.getSpeed() + "/S");
                    nVar.B.setVisibility(0);
                    nVar.f44016y.setVisibility(8);
                    nVar.B.setProgress((int) downloadTask.getProgress());
                } else if (status == 3 || status == 6) {
                    nVar.f44007p.setBackgroundResource(R.drawable.fight_blue_butn);
                    nVar.f44007p.setText("继续");
                    TextView textView3 = nVar.f44010s;
                    textView3.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    nVar.f44013v.setText("暂停中");
                    nVar.B.setVisibility(0);
                    nVar.f44016y.setVisibility(8);
                    nVar.B.setProgress((int) downloadTask.getProgress());
                } else if (status == 27) {
                    nVar.f44007p.setText("暂停中");
                } else if (status == 9) {
                    nVar.f44007p.setBackgroundResource(R.drawable.fight_green_butn);
                    nVar.f44007p.setText("更新");
                    nVar.f44010s.setVisibility(8);
                    nVar.f44013v.setVisibility(8);
                    nVar.B.setVisibility(8);
                    nVar.f44016y.setVisibility(8);
                } else if (status == 10) {
                    nVar.f44007p.setBackgroundResource(R.drawable.fight_blue_butn);
                    nVar.f44007p.setText("等待");
                    TextView textView4 = nVar.f44010s;
                    textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    nVar.f44013v.setText("等待中");
                    nVar.B.setVisibility(0);
                    nVar.f44016y.setVisibility(8);
                    nVar.B.setProgress((int) downloadTask.getProgress());
                } else if (status == 12) {
                    nVar.f44007p.setBackgroundResource(R.drawable.fight_grey_butn);
                    nVar.f44007p.setText("解压中");
                    TextView textView5 = nVar.f44010s;
                    textView5.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    nVar.f44013v.setText("解压中..");
                    nVar.B.setVisibility(8);
                    nVar.f44016y.setVisibility(0);
                    nVar.f44016y.setProgress((int) downloadTask.getProgress());
                } else if (status == 13) {
                    nVar.f44007p.setBackgroundResource(R.drawable.fight_blue_butn);
                    nVar.f44007p.setText("解压");
                    TextView textView6 = nVar.f44010s;
                    textView6.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    nVar.f44013v.setText("点击重新解压");
                    nVar.B.setVisibility(8);
                    nVar.f44016y.setVisibility(0);
                    nVar.f44016y.setProgress((int) downloadTask.getProgress());
                }
            } else {
                nVar.f44004m.setVisibility(8);
                nVar.f43998g.setVisibility(8);
                nVar.f44001j.setVisibility(8);
                nVar.f43992a.setOnClickListener(new j(downloadTask, warMatchAndLocalTable));
            }
        }
        int i7 = i6 + 1;
        if (i7 < list.size()) {
            nVar.f43993b.setVisibility(0);
            WarMatchAndLocalTable warMatchAndLocalTable2 = list.get(i7);
            DownloadTask downloadTask2 = this.f43937c.get(warMatchAndLocalTable2.getCrc_link_type_val());
            if (downloadTask2 != null) {
                if (com.join.mgps.Util.d2.i(downloadTask2.getFight_screenshot_pic())) {
                    MyImageLoader.f(nVar.f43996e, R.drawable.main_normal_icon, downloadTask2.getFight_screenshot_pic(), MyImageLoader.C(this.f43936b));
                } else {
                    MyImageLoader.f(nVar.f43996e, R.drawable.main_normal_icon, downloadTask2.getScreenshot_pic(), MyImageLoader.C(this.f43936b));
                }
                long parseDouble2 = (long) (Double.parseDouble(warMatchAndLocalTable2.getAppSize()) * 1024.0d * 1024.0d);
                nVar.F.setText(downloadTask2.getShowName());
                if (downloadTask2.getStatus() == 5) {
                    nVar.f44005n.setVisibility(8);
                    nVar.f43999h.setVisibility(8);
                    nVar.f44002k.setVisibility(0);
                    nVar.f43993b.setOnClickListener(new l(downloadTask2, warMatchAndLocalTable));
                } else if (downloadTask2.getStatus() != 7 && downloadTask2.getStatus() != 0) {
                    nVar.f44005n.setVisibility(0);
                    nVar.f43999h.setVisibility(0);
                    nVar.f44002k.setVisibility(8);
                    nVar.f44008q.setOnClickListener(new a(downloadTask2, warMatchAndLocalTable));
                    int status2 = downloadTask2.getStatus();
                    if (status2 == 2) {
                        nVar.f44008q.setBackgroundResource(R.drawable.fight_blue_butn);
                        nVar.f44008q.setText("暂停");
                        TextView textView7 = nVar.f44011t;
                        textView7.setText(UtilsMy.a(downloadTask2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble2));
                        TextView textView8 = nVar.f44014w;
                        textView8.setText(downloadTask2.getSpeed() + "/S");
                        nVar.C.setVisibility(0);
                        nVar.f44017z.setVisibility(8);
                        nVar.C.setProgress((int) downloadTask2.getProgress());
                    } else if (status2 == 3 || status2 == 6) {
                        nVar.f44008q.setBackgroundResource(R.drawable.fight_blue_butn);
                        nVar.f44008q.setText("继续");
                        TextView textView9 = nVar.f44011t;
                        textView9.setText(UtilsMy.a(downloadTask2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble2));
                        nVar.f44014w.setText("暂停中");
                        nVar.C.setVisibility(0);
                        nVar.f44017z.setVisibility(8);
                        nVar.C.setProgress((int) downloadTask2.getProgress());
                    } else if (status2 == 27) {
                        nVar.f44008q.setText("暂停中");
                    } else if (status2 == 9) {
                        nVar.f44008q.setBackgroundResource(R.drawable.fight_green_butn);
                        nVar.f44008q.setText("更新");
                        nVar.f44011t.setVisibility(8);
                        nVar.f44014w.setVisibility(8);
                        nVar.C.setVisibility(8);
                        nVar.f44017z.setVisibility(8);
                    } else if (status2 == 10) {
                        nVar.f44008q.setBackgroundResource(R.drawable.fight_blue_butn);
                        nVar.f44008q.setText("等待");
                        TextView textView10 = nVar.f44011t;
                        textView10.setText(UtilsMy.a(downloadTask2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble2));
                        nVar.f44014w.setText("等待中");
                        nVar.C.setVisibility(0);
                        nVar.f44017z.setVisibility(8);
                        nVar.C.setProgress((int) downloadTask2.getProgress());
                    } else if (status2 == 12) {
                        nVar.f44008q.setBackgroundResource(R.drawable.fight_grey_butn);
                        nVar.f44008q.setText("解压中");
                        TextView textView11 = nVar.f44011t;
                        textView11.setText(UtilsMy.a(parseDouble2) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble2));
                        nVar.f44014w.setText("解压中..");
                        nVar.C.setVisibility(8);
                        nVar.f44017z.setVisibility(0);
                        nVar.f44017z.setProgress((int) downloadTask2.getProgress());
                    } else if (status2 == 13) {
                        nVar.f44008q.setBackgroundResource(R.drawable.fight_blue_butn);
                        nVar.f44008q.setText("解压");
                        TextView textView12 = nVar.f44011t;
                        textView12.setText(UtilsMy.a(parseDouble2) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble2));
                        nVar.f44014w.setText("点击重新解压");
                        nVar.C.setVisibility(8);
                        nVar.f44017z.setVisibility(0);
                        nVar.f44017z.setProgress((int) downloadTask2.getProgress());
                    }
                } else {
                    nVar.f44005n.setVisibility(8);
                    nVar.f43999h.setVisibility(8);
                    nVar.f44002k.setVisibility(8);
                    nVar.f43993b.setOnClickListener(new m(downloadTask2, warMatchAndLocalTable));
                }
            }
        } else {
            nVar.f43993b.setVisibility(4);
        }
        int i8 = i6 + 2;
        if (i8 < list.size()) {
            nVar.f43994c.setVisibility(0);
            WarMatchAndLocalTable warMatchAndLocalTable3 = list.get(i8);
            DownloadTask downloadTask3 = this.f43937c.get(warMatchAndLocalTable3.getCrc_link_type_val());
            if (downloadTask3 != null) {
                if (com.join.mgps.Util.d2.i(downloadTask3.getFight_screenshot_pic())) {
                    MyImageLoader.f(nVar.f43997f, R.drawable.main_normal_icon, downloadTask3.getFight_screenshot_pic(), MyImageLoader.C(this.f43936b));
                } else {
                    MyImageLoader.f(nVar.f43997f, R.drawable.main_normal_icon, downloadTask3.getScreenshot_pic(), MyImageLoader.C(this.f43936b));
                }
                long parseDouble3 = (long) (Double.parseDouble(warMatchAndLocalTable3.getAppSize()) * 1024.0d * 1024.0d);
                nVar.G.setText(downloadTask3.getShowName());
                if (downloadTask3.getStatus() == 5) {
                    nVar.f44006o.setVisibility(8);
                    nVar.f44000i.setVisibility(8);
                    nVar.f44003l.setVisibility(0);
                    nVar.f43994c.setOnClickListener(new b(downloadTask3, warMatchAndLocalTable));
                    return;
                } else if (downloadTask3.getStatus() != 7 && downloadTask3.getStatus() != 0) {
                    nVar.f44006o.setVisibility(0);
                    nVar.f44000i.setVisibility(0);
                    nVar.f44003l.setVisibility(8);
                    nVar.f44009r.setOnClickListener(new d(downloadTask3, warMatchAndLocalTable));
                    int status3 = downloadTask3.getStatus();
                    if (status3 == 2) {
                        nVar.f44009r.setBackgroundResource(R.drawable.fight_blue_butn);
                        nVar.f44009r.setText("暂停");
                        TextView textView13 = nVar.f44012u;
                        textView13.setText(UtilsMy.a(downloadTask3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble3));
                        TextView textView14 = nVar.f44015x;
                        textView14.setText(downloadTask3.getSpeed() + "/S");
                        nVar.D.setVisibility(0);
                        nVar.A.setVisibility(8);
                        nVar.D.setProgress((int) downloadTask3.getProgress());
                        return;
                    } else if (status3 == 3 || status3 == 6) {
                        nVar.f44009r.setBackgroundResource(R.drawable.fight_blue_butn);
                        nVar.f44009r.setText("继续");
                        TextView textView15 = nVar.f44012u;
                        textView15.setText(UtilsMy.a(downloadTask3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble3));
                        nVar.f44015x.setText("暂停中");
                        nVar.D.setVisibility(0);
                        nVar.A.setVisibility(8);
                        nVar.D.setProgress((int) downloadTask3.getProgress());
                        return;
                    } else if (status3 == 27) {
                        nVar.f44009r.setText("暂停中");
                        return;
                    } else if (status3 == 9) {
                        nVar.f44009r.setBackgroundResource(R.drawable.fight_green_butn);
                        nVar.f44009r.setText("更新");
                        nVar.f44012u.setVisibility(8);
                        nVar.f44015x.setVisibility(8);
                        nVar.D.setVisibility(8);
                        nVar.A.setVisibility(8);
                        return;
                    } else if (status3 == 10) {
                        nVar.f44009r.setBackgroundResource(R.drawable.fight_blue_butn);
                        nVar.f44009r.setText("等待");
                        TextView textView16 = nVar.f44012u;
                        textView16.setText(UtilsMy.a(downloadTask3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble3));
                        nVar.f44015x.setText("等待中");
                        nVar.D.setVisibility(0);
                        nVar.A.setVisibility(8);
                        nVar.D.setProgress((int) downloadTask3.getProgress());
                        return;
                    } else if (status3 == 12) {
                        nVar.f44009r.setBackgroundResource(R.drawable.fight_grey_butn);
                        nVar.f44009r.setText("解压中");
                        TextView textView17 = nVar.f44012u;
                        textView17.setText(UtilsMy.a(parseDouble3) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble3));
                        nVar.f44015x.setText("解压中..");
                        nVar.D.setVisibility(8);
                        nVar.A.setVisibility(0);
                        nVar.A.setProgress((int) downloadTask3.getProgress());
                        return;
                    } else if (status3 != 13) {
                        return;
                    } else {
                        nVar.f44009r.setBackgroundResource(R.drawable.fight_blue_butn);
                        nVar.f44009r.setText("解压");
                        TextView textView18 = nVar.f44012u;
                        textView18.setText(UtilsMy.a(parseDouble3) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble3));
                        nVar.f44015x.setText("点击重新解压");
                        nVar.D.setVisibility(8);
                        nVar.A.setVisibility(0);
                        nVar.A.setProgress((int) downloadTask3.getProgress());
                        return;
                    }
                } else {
                    nVar.f44006o.setVisibility(8);
                    nVar.f44000i.setVisibility(8);
                    nVar.f44003l.setVisibility(8);
                    nVar.f43994c.setOnClickListener(new c(downloadTask3, warMatchAndLocalTable));
                    return;
                }
            }
            return;
        }
        nVar.f43994c.setVisibility(4);
    }
}
