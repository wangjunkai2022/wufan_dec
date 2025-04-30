package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dialog.y;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CloudListDataBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.CContext;
import com.papa91.arc.util.StringUtils;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
import q.rorbin.badgeview.QBadgeView;
import q.rorbin.badgeview.a;
/* loaded from: classes3.dex */
public class ClouldItemView2 extends LinearLayout implements View.OnClickListener {
    boolean A;
    boolean B;

    /* renamed from: a  reason: collision with root package name */
    CloudDownButn f45170a;

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f45171b;

    /* renamed from: c  reason: collision with root package name */
    SimpleDraweeView f45172c;

    /* renamed from: d  reason: collision with root package name */
    TextView f45173d;

    /* renamed from: e  reason: collision with root package name */
    TextView f45174e;

    /* renamed from: f  reason: collision with root package name */
    TextView f45175f;

    /* renamed from: g  reason: collision with root package name */
    TextView f45176g;

    /* renamed from: h  reason: collision with root package name */
    TextView f45177h;

    /* renamed from: i  reason: collision with root package name */
    TextView f45178i;

    /* renamed from: j  reason: collision with root package name */
    TextView f45179j;

    /* renamed from: k  reason: collision with root package name */
    ImageView f45180k;

    /* renamed from: l  reason: collision with root package name */
    Context f45181l;

    /* renamed from: m  reason: collision with root package name */
    View f45182m;

    /* renamed from: n  reason: collision with root package name */
    TextView f45183n;

    /* renamed from: o  reason: collision with root package name */
    com.facebook.imagepipeline.core.g f45184o;

    /* renamed from: p  reason: collision with root package name */
    DownloadTask f45185p;

    /* renamed from: q  reason: collision with root package name */
    LinearLayout f45186q;

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f45187r;

    /* renamed from: s  reason: collision with root package name */
    private q.rorbin.badgeview.a f45188s;

    /* renamed from: t  reason: collision with root package name */
    CloudListDataBean f45189t;

    /* renamed from: u  reason: collision with root package name */
    String f45190u;

    /* renamed from: v  reason: collision with root package name */
    int f45191v;

    /* renamed from: w  reason: collision with root package name */
    boolean f45192w;

    /* renamed from: x  reason: collision with root package name */
    com.join.mgps.listener.c f45193x;

    /* renamed from: y  reason: collision with root package name */
    String[] f45194y;

    /* renamed from: z  reason: collision with root package name */
    boolean f45195z;

    /* loaded from: classes3.dex */
    class a implements a.InterfaceC0496a {
        a() {
        }

        @Override // q.rorbin.badgeview.a.InterfaceC0496a
        public void a(int i2, q.rorbin.badgeview.a aVar, View view) {
            if (i2 == 4) {
                aVar.hide(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f45197a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f45198b;

        b(CloudListDataBean cloudListDataBean, boolean z3) {
            this.f45197a = cloudListDataBean;
            this.f45198b = z3;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView2.this.d();
            this.f45197a.setIsComment(1);
            ClouldItemView2.this.setPoPoWindow2(this.f45198b);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f45200a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f45201b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f45202c;

        c(boolean z3, int i2, int i4) {
            this.f45200a = z3;
            this.f45201b = i2;
            this.f45202c = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f45200a) {
                return;
            }
            int i2 = this.f45201b;
            if (i2 == 1 || i2 == 2) {
                ClouldItemView2.this.f();
            } else if (i2 == 3) {
                if (this.f45202c == 4) {
                    ClouldItemView2.this.f();
                }
            } else if (i2 == 4) {
                ClouldItemView2.this.f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45204a;

        d(PopupWindow popupWindow) {
            this.f45204a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f45204a.dismiss();
            ClouldItemView2 clouldItemView2 = ClouldItemView2.this;
            int i2 = clouldItemView2.f45191v;
            if (i2 == 1) {
                clouldItemView2.f45193x.t(clouldItemView2.f45189t, 1);
            } else if (i2 == 2) {
                clouldItemView2.f45193x.t(clouldItemView2.f45189t, 2);
            } else if (i2 == 3) {
                clouldItemView2.f45193x.t(clouldItemView2.f45189t, 3);
            } else if (i2 == 4) {
                clouldItemView2.f45193x.E(clouldItemView2.f45189t, 4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45206a;

        e(PopupWindow popupWindow) {
            this.f45206a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView2 clouldItemView2 = ClouldItemView2.this;
            clouldItemView2.f45193x.E(clouldItemView2.f45189t, 1);
            this.f45206a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45208a;

        f(PopupWindow popupWindow) {
            this.f45208a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView2 clouldItemView2 = ClouldItemView2.this;
            clouldItemView2.f45193x.E(clouldItemView2.f45189t, 2);
            this.f45208a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45210a;

        g(PopupWindow popupWindow) {
            this.f45210a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView2 clouldItemView2 = ClouldItemView2.this;
            clouldItemView2.f45193x.E(clouldItemView2.f45189t, 3);
            this.f45210a.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class h implements y.e {
        h() {
        }

        @Override // com.join.mgps.dialog.y.e
        public void a(com.join.mgps.dialog.y yVar) {
            com.papa.sim.statistic.p.l(ClouldItemView2.this.getContext()).K1(Event.VipArchive_buy_emulator, new Ext().setGameId(ClouldItemView2.this.f45190u));
            IntentUtil.getInstance().goShareWebActivity(ClouldItemView2.this.getContext(), ClouldItemView2.this.getVipUrl());
            yVar.dismiss();
        }
    }

    public ClouldItemView2(Context context) {
        super(context);
        this.f45192w = false;
        this.f45194y = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45195z = false;
        this.A = true;
        this.B = true;
        e(context);
    }

    private boolean b() {
        AccountBean accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        return accountData != null && (accountData.getVip_level() > 0 || accountData.getSvip_level() > 0);
    }

    private String c(String str) {
        if (Build.VERSION.SDK_INT < 23 && !str.endsWith("kdygmyhbs3")) {
            if (str.startsWith("kdyg")) {
                return CContext.SCENE_GBA;
            }
            for (String str2 : this.f45194y) {
                if (str.endsWith(str2)) {
                    return CContext.SCENE_GBA;
                }
            }
            Date date = null;
            Date date2 = null;
            for (int i2 = 0; i2 <= 100; i2++) {
                File file = new File(str + com.join.mgps.Util.g0.f27568a + i2);
                if (file.exists()) {
                    Date date3 = new Date(file.lastModified());
                    if (date2 == null || date3.after(date2)) {
                        date2 = date3;
                    }
                }
            }
            for (int i4 = 0; i4 <= 100; i4++) {
                File file2 = new File(str + "vba." + i4);
                if (file2.exists()) {
                    Date date4 = new Date(file2.lastModified());
                    if (date == null || date4.after(date)) {
                        date = date4;
                    }
                }
            }
            return (date2 == null || date == null) ? date2 == null ? "VBA" : CContext.SCENE_GBA : date2.after(date) ? CContext.SCENE_GBA : "VBA";
        }
        return "VBA";
    }

    @SuppressLint({"WrongViewCast"})
    private void e(Context context) {
        this.f45182m = LayoutInflater.from(context).inflate(R.layout.cloud_list_item2, this);
        this.f45181l = context;
        this.f45184o = Fresco.getImagePipeline();
        this.f45170a = (CloudDownButn) this.f45182m.findViewById(R.id.downButton);
        this.f45171b = (LinearLayout) this.f45182m.findViewById(R.id.iv_more);
        this.f45172c = (SimpleDraweeView) this.f45182m.findViewById(R.id.simv);
        this.f45173d = (TextView) this.f45182m.findViewById(R.id.tv_name);
        this.f45174e = (TextView) this.f45182m.findViewById(R.id.shape);
        this.f45175f = (TextView) this.f45182m.findViewById(R.id.backUp);
        this.f45176g = (TextView) this.f45182m.findViewById(R.id.authorname);
        this.f45180k = (ImageView) this.f45182m.findViewById(R.id.ivgoodauthor);
        this.f45183n = (TextView) this.f45182m.findViewById(R.id.goodauthor);
        this.f45178i = (TextView) this.f45182m.findViewById(R.id.tvcouldnum);
        this.f45179j = (TextView) this.f45182m.findViewById(R.id.tvgoodpraisenum);
        this.f45177h = (TextView) this.f45182m.findViewById(R.id.tv_evalute);
        this.f45186q = (LinearLayout) this.f45182m.findViewById(R.id.ll_vip);
        this.f45187r = (LinearLayout) this.f45182m.findViewById(R.id.ll_info);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getVipUrl() {
        String str = "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId=" + this.f45190u;
        com.join.mgps.listener.c cVar = this.f45193x;
        if (cVar != null) {
            String q3 = cVar.q();
            if (StringUtils.isNotEmpty(q3)) {
                if (q3.contains("?")) {
                    return q3 + "&gameId=" + this.f45190u;
                }
                return q3 + "?gameId=" + this.f45190u;
            }
            return q3;
        }
        return str;
    }

    void d() {
        q.rorbin.badgeview.a aVar = this.f45188s;
        if (aVar != null) {
            aVar.hide(false);
        }
    }

    void f() {
        View inflate = LayoutInflater.from(this.f45181l).inflate(R.layout.popuwin_localarchive, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, true);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        popupWindow.showAsDropDown(this.f45171b, (int) (-this.f45181l.getResources().getDimension(R.dimen.wdp150)), (int) (-this.f45181l.getResources().getDimension(R.dimen.wdp80)));
        ((TextView) inflate.findViewById(R.id.tv_delect)).setOnClickListener(new d(popupWindow));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.backUp) {
            if (!this.f45192w) {
                this.f45193x.m(this.f45189t);
            }
            com.papa.sim.statistic.p.l(getContext()).V0(Event.backupLocalArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45190u);
        } else if (id != R.id.downButton) {
            if (id != R.id.shape) {
                return;
            }
            if (!this.f45192w) {
                this.f45193x.y(this.f45189t);
            }
            com.papa.sim.statistic.p.l(getContext()).V0(Event.shareArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45190u);
        } else if (this.f45192w) {
        } else {
            int status = this.f45189t.getStatus();
            if (status != 0) {
                switch (status) {
                    case 2:
                        Intent intent = new Intent("com.wufun.cloud.showUploadDialog");
                        intent.putExtra("fileMd5", this.f45189t.getFileMd5());
                        getContext().sendBroadcast(intent);
                        return;
                    case 3:
                        Intent intent2 = new Intent("com.wufun.cloud.showDownDialog");
                        intent2.putExtra("fileMd5", this.f45189t.getFileMd5());
                        getContext().sendBroadcast(intent2);
                        return;
                    case 4:
                    case 5:
                    case 7:
                        break;
                    case 6:
                        DownloadTask B = g1.f.G().B(this.f45190u);
                        String archiveFileName = this.f45189t.getArchiveFileName();
                        if (B.getPlugin_num().equals("33")) {
                            String c4 = c(B.getPackageName());
                            if (c4 != null) {
                                if (c4.equals("VBA") && !archiveFileName.contains("vba")) {
                                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                                    return;
                                } else if (c4.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                                    return;
                                }
                            } else if (this.f45195z && !archiveFileName.contains("vba")) {
                                i2.a(getContext()).b("当前系统版本无法运行该存档");
                                return;
                            } else if (!this.f45195z && archiveFileName.contains("vba")) {
                                i2.a(getContext()).b("当前系统版本无法运行该存档");
                                return;
                            }
                        }
                        int i2 = this.f45191v;
                        if (i2 != 3 && i2 != 4) {
                            com.papa.sim.statistic.p.l(getContext()).V0(Event.downloadCloudArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45190u);
                        } else {
                            com.papa.sim.statistic.p.l(getContext()).V0(Event.makeStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45190u);
                        }
                        int i4 = this.f45191v;
                        if (i4 == 3 || i4 == 4) {
                            if (!this.A) {
                                i2.a(getContext()).b("本地为v1核心不能下载v2核心存档");
                                return;
                            } else if (!this.B) {
                                i2.a(getContext()).b("本地有双核心PGM游戏不能下载存档");
                                return;
                            }
                        }
                        if (i4 == 1) {
                            this.f45193x.s(this.f45189t, false);
                            return;
                        } else {
                            this.f45193x.s(this.f45189t, true);
                            return;
                        }
                    default:
                        return;
                }
            }
            if (this.f45189t.getIsVip() == 1 && !b()) {
                new com.join.mgps.dialog.y(this.f45181l, R.style.HKDialogLoading).g("获取须知").d("本存档是悟饭平台VIP会员所享内容，请开通VIP会员后使用").b("开通VIP会员").a(new h()).show();
                com.papa.sim.statistic.p.l(getContext()).K1(Event.VipArchive_popup_emulator, new Ext().setGameId(this.f45190u));
                return;
            }
            String archiveFilePath = this.f45189t.getArchiveFilePath();
            if (this.f45185p.getPlugin_num().equals("33")) {
                String c5 = c(this.f45185p.getPackageName());
                if (c5 != null) {
                    if (c5.equals("VBA") && !archiveFilePath.contains("vba")) {
                        i2.a(getContext()).b("当前系统版本无法运行该存档");
                        return;
                    } else if (c5.equals(CContext.SCENE_GBA) && archiveFilePath.contains("vba")) {
                        i2.a(getContext()).b("当前系统版本无法运行该存档");
                        return;
                    }
                } else if (this.f45195z && !archiveFilePath.contains("vba")) {
                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                    return;
                } else if (!this.f45195z && archiveFilePath.contains("vba")) {
                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                    return;
                }
            }
            UtilsMy.l(this.f45185p, getContext(), archiveFilePath);
            int i5 = this.f45191v;
            if (i5 != 3 && i5 != 4) {
                com.papa.sim.statistic.p.l(getContext()).V0(Event.startMeArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45190u);
            } else {
                com.papa.sim.statistic.p.l(getContext()).V0(Event.startStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45190u);
            }
            this.f45193x.p(this.f45189t);
        }
    }

    public void setCloudItemListener(com.join.mgps.listener.c cVar) {
        this.f45193x = cVar;
    }

    public void setData(String str, CloudListDataBean cloudListDataBean, int i2, int i4, boolean z3, boolean z4, com.join.mgps.listener.c cVar) {
        boolean z5;
        this.f45190u = str;
        this.f45191v = i2;
        this.f45192w = z3;
        this.f45185p = g1.f.G().B(str);
        this.f45189t = cloudListDataBean;
        if (cloudListDataBean.getArchiveCover().startsWith("file://")) {
            Uri parse = Uri.parse(cloudListDataBean.getArchiveCover());
            this.f45184o.h(parse);
            this.f45184o.f(parse);
            this.f45184o.e(parse);
            this.f45172c.setImageURI(parse);
        } else {
            MyImageLoader.h(this.f45172c, cloudListDataBean.getArchiveCover());
        }
        if (i2 == 2) {
            this.f45175f.setVisibility(0);
        } else {
            this.f45175f.setVisibility(8);
        }
        if (i2 != 3 && i2 != 4) {
            this.f45173d.setText(cloudListDataBean.getArchiveName());
            this.f45174e.setVisibility(0);
        } else {
            this.f45174e.setVisibility(8);
            this.f45173d.setText(cloudListDataBean.getArchiveDesc());
            this.f45176g.setText(cloudListDataBean.getNickname());
            if (cloudListDataBean.getTag() != null && !cloudListDataBean.getTag().equals("")) {
                this.f45180k.setVisibility(0);
                this.f45183n.setText(cloudListDataBean.getTag());
                this.f45183n.setVisibility(0);
            } else {
                this.f45180k.setVisibility(8);
                this.f45183n.setText(cloudListDataBean.getTag());
                this.f45183n.setVisibility(8);
            }
            TextView textView = this.f45178i;
            textView.setText(cloudListDataBean.getDownNum() + "");
            TextView textView2 = this.f45179j;
            textView2.setText(cloudListDataBean.getHighComment() + "");
            if (this.f45185p.getPlugin_num().equals("33")) {
                String archiveFileName = cloudListDataBean.getArchiveFileName();
                String c4 = c(this.f45185p.getPackageName());
                if (c4 != null) {
                    if (c4.equals("VBA") && !archiveFileName.contains("vba")) {
                        TextView textView3 = this.f45179j;
                        textView3.setText(cloudListDataBean.getHighComment() + " 不兼容");
                    } else if (c4.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                        TextView textView4 = this.f45179j;
                        textView4.setText(cloudListDataBean.getHighComment() + " 不兼容");
                    }
                } else if (this.f45195z && !archiveFileName.contains("vba")) {
                    TextView textView5 = this.f45179j;
                    textView5.setText(cloudListDataBean.getHighComment() + " 不兼容");
                } else if (!this.f45195z && archiveFileName.contains("vba")) {
                    TextView textView6 = this.f45179j;
                    textView6.setText(cloudListDataBean.getHighComment() + " 不兼容");
                }
            }
        }
        this.f45177h.setVisibility(8);
        if (i2 == 3) {
            if (i4 != 4) {
                this.f45171b.setVisibility(4);
            } else {
                this.f45171b.setVisibility(0);
            }
            this.f45177h.setVisibility(8);
        } else if (i2 == 4) {
            this.f45177h.setVisibility(0);
            if (cloudListDataBean.getIsComment() == 0) {
                q.rorbin.badgeview.a aVar = this.f45188s;
                if (aVar != null) {
                    aVar.hide(false);
                }
                this.f45188s = new QBadgeView(this.f45181l).c(this.f45177h).q(-1).u(3.0f, true).g(SupportMenu.CATEGORY_MASK).v(getResources().getDimensionPixelSize(R.dimen.wdp2), false).o(8388693).l(-1).i(new a());
            } else if (cloudListDataBean.getIsComment() == 1) {
                d();
            }
        } else {
            this.f45171b.setVisibility(0);
        }
        this.f45177h.setOnClickListener(new b(cloudListDataBean, z4));
        this.f45171b.setOnClickListener(new c(z3, i2, i4));
        if (!z3) {
            this.f45170a.setOnClickListener(this);
            this.f45175f.setOnClickListener(this);
            this.f45174e.setOnClickListener(this);
        }
        if (i2 == 1) {
            this.f45170a.setStatu(cloudListDataBean.getStatus());
        } else if (i2 == 3 || i2 == 4) {
            Iterator<CloudDownRecoderTable> it2 = n1.i.o().n(str).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z5 = false;
                    break;
                }
                CloudDownRecoderTable next = it2.next();
                if (!new File(next.getFilePath()).exists()) {
                    n1.i.o().delete((n1.i) next);
                } else if (next.getMd5().equals(cloudListDataBean.getFileMd5())) {
                    this.f45189t.setArchiveFilePath(next.getFilePath());
                    z5 = true;
                    break;
                }
            }
            if (z5) {
                this.f45170a.setStatu(0);
                this.f45189t.setStatus(0);
            } else {
                this.f45170a.setStatu(this.f45189t.getStatus());
            }
        } else if (i2 == 2) {
            this.f45170a.setStatu(0);
            int status = this.f45189t.getStatus();
            if (status != 0) {
                if (status == 7) {
                    this.f45175f.setText("备份中");
                    this.f45175f.setClickable(true);
                } else if (status != 4) {
                    if (status == 5) {
                        this.f45175f.setText("已备份");
                        this.f45175f.setClickable(false);
                    }
                }
            }
            this.f45175f.setText("备份");
            this.f45175f.setClickable(true);
        } else {
            this.f45170a.setStatu(6);
        }
        if (this.f45189t.getIsVip() == 1) {
            setBackgroundResource(R.drawable.bg_cloud_list_item2);
            this.f45170a.setTextColor(Color.parseColor("#ADADF1"));
            this.f45186q.setVisibility(0);
            this.f45187r.setVisibility(8);
            return;
        }
        setBackgroundColor(Color.parseColor("#800A1521"));
        this.f45170a.setTextColor(Color.parseColor("#9FABB7"));
        this.f45186q.setVisibility(8);
        this.f45187r.setVisibility(0);
    }

    public void setGBAType(boolean z3) {
        this.f45195z = z3;
    }

    public void setPGN(boolean z3, boolean z4) {
        this.A = z3;
        this.B = z4;
    }

    void setPoPoWindow2(boolean z3) {
        View inflate = LayoutInflater.from(this.f45181l).inflate(R.layout.popuwin_localarchive2, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, true);
        TextView textView = (TextView) inflate.findViewById(R.id.good);
        TextView textView2 = (TextView) inflate.findViewById(R.id.introduce);
        TextView textView3 = (TextView) inflate.findViewById(R.id.plagiarize);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        int[] iArr = new int[2];
        this.f45171b.getLocationOnScreen(iArr);
        if (z3) {
            popupWindow.showAtLocation(this.f45171b, 0, iArr[0] - ((int) this.f45181l.getResources().getDimension(R.dimen.wdp250)), iArr[1]);
        } else {
            popupWindow.showAtLocation(this.f45171b, 0, iArr[0] - ((int) this.f45181l.getResources().getDimension(R.dimen.wdp250)), iArr[1]);
        }
        textView.setOnClickListener(new e(popupWindow));
        textView2.setOnClickListener(new f(popupWindow));
        textView3.setOnClickListener(new g(popupWindow));
    }

    public ClouldItemView2(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45192w = false;
        this.f45194y = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45195z = false;
        this.A = true;
        this.B = true;
        e(context);
    }

    public ClouldItemView2(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45192w = false;
        this.f45194y = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45195z = false;
        this.A = true;
        this.B = true;
        e(context);
    }
}
