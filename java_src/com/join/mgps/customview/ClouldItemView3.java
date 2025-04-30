package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dialog.y;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CloudListDataBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.CContext;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class ClouldItemView3 extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    CloudDownButn f45213a;

    /* renamed from: b  reason: collision with root package name */
    SimpleDraweeView f45214b;

    /* renamed from: c  reason: collision with root package name */
    TextView f45215c;

    /* renamed from: d  reason: collision with root package name */
    TextView f45216d;

    /* renamed from: e  reason: collision with root package name */
    TextView f45217e;

    /* renamed from: f  reason: collision with root package name */
    TextView f45218f;

    /* renamed from: g  reason: collision with root package name */
    TextView f45219g;

    /* renamed from: h  reason: collision with root package name */
    TextView f45220h;

    /* renamed from: i  reason: collision with root package name */
    Context f45221i;

    /* renamed from: j  reason: collision with root package name */
    View f45222j;

    /* renamed from: k  reason: collision with root package name */
    com.facebook.imagepipeline.core.g f45223k;

    /* renamed from: l  reason: collision with root package name */
    DownloadTask f45224l;

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f45225m;

    /* renamed from: n  reason: collision with root package name */
    LinearLayout f45226n;

    /* renamed from: o  reason: collision with root package name */
    private q.rorbin.badgeview.a f45227o;

    /* renamed from: p  reason: collision with root package name */
    CloudListDataBean f45228p;

    /* renamed from: q  reason: collision with root package name */
    String f45229q;

    /* renamed from: r  reason: collision with root package name */
    int f45230r;

    /* renamed from: s  reason: collision with root package name */
    boolean f45231s;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.listener.c f45232t;

    /* renamed from: u  reason: collision with root package name */
    String[] f45233u;

    /* renamed from: v  reason: collision with root package name */
    boolean f45234v;

    /* renamed from: w  reason: collision with root package name */
    boolean f45235w;

    /* renamed from: x  reason: collision with root package name */
    boolean f45236x;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45237a;

        a(PopupWindow popupWindow) {
            this.f45237a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f45237a.dismiss();
            ClouldItemView3 clouldItemView3 = ClouldItemView3.this;
            int i2 = clouldItemView3.f45230r;
            if (i2 == 1) {
                clouldItemView3.f45232t.t(clouldItemView3.f45228p, 1);
            } else if (i2 == 2) {
                clouldItemView3.f45232t.t(clouldItemView3.f45228p, 2);
            } else if (i2 == 3) {
                clouldItemView3.f45232t.t(clouldItemView3.f45228p, 3);
            } else if (i2 == 4) {
                clouldItemView3.f45232t.E(clouldItemView3.f45228p, 4);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45239a;

        b(PopupWindow popupWindow) {
            this.f45239a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView3 clouldItemView3 = ClouldItemView3.this;
            clouldItemView3.f45232t.E(clouldItemView3.f45228p, 1);
            this.f45239a.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45241a;

        c(PopupWindow popupWindow) {
            this.f45241a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView3 clouldItemView3 = ClouldItemView3.this;
            clouldItemView3.f45232t.E(clouldItemView3.f45228p, 2);
            this.f45241a.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45243a;

        d(PopupWindow popupWindow) {
            this.f45243a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView3 clouldItemView3 = ClouldItemView3.this;
            clouldItemView3.f45232t.E(clouldItemView3.f45228p, 3);
            this.f45243a.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class e implements y.e {
        e() {
        }

        @Override // com.join.mgps.dialog.y.e
        public void a(com.join.mgps.dialog.y yVar) {
            com.papa.sim.statistic.p.l(ClouldItemView3.this.getContext()).K1(Event.VipArchive_buy_page, new Ext().setGameId(ClouldItemView3.this.f45229q));
            IntentUtil.getInstance().goShareWebActivity(ClouldItemView3.this.getContext(), ClouldItemView3.this.getVipUrl());
            yVar.dismiss();
        }
    }

    public ClouldItemView3(Context context) {
        super(context);
        this.f45231s = false;
        this.f45233u = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45234v = false;
        this.f45235w = true;
        this.f45236x = true;
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
            for (String str2 : this.f45233u) {
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
        this.f45222j = LayoutInflater.from(context).inflate(R.layout.cloud_list_item3, this);
        this.f45221i = context;
        this.f45223k = Fresco.getImagePipeline();
        this.f45213a = (CloudDownButn) this.f45222j.findViewById(R.id.downButton);
        this.f45214b = (SimpleDraweeView) this.f45222j.findViewById(R.id.simv);
        this.f45215c = (TextView) this.f45222j.findViewById(R.id.tv_name);
        this.f45216d = (TextView) this.f45222j.findViewById(R.id.shape);
        this.f45217e = (TextView) this.f45222j.findViewById(R.id.backUp);
        this.f45218f = (TextView) this.f45222j.findViewById(R.id.authorname);
        this.f45219g = (TextView) this.f45222j.findViewById(R.id.tvcouldnum);
        this.f45225m = (LinearLayout) this.f45222j.findViewById(R.id.ll_vip);
        this.f45226n = (LinearLayout) this.f45222j.findViewById(R.id.ll_info);
        this.f45220h = (TextView) this.f45222j.findViewById(R.id.tvgoodpraisenum);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getVipUrl() {
        String str = "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId=" + this.f45229q;
        com.join.mgps.listener.c cVar = this.f45232t;
        if (cVar != null) {
            String q3 = cVar.q();
            if (d2.i(q3)) {
                if (q3.contains("?")) {
                    return q3 + "&gameId=" + this.f45229q;
                }
                return q3 + "?gameId=" + this.f45229q;
            }
            return q3;
        }
        return str;
    }

    void d() {
        q.rorbin.badgeview.a aVar = this.f45227o;
        if (aVar != null) {
            aVar.hide(false);
        }
    }

    void f() {
        View inflate = LayoutInflater.from(this.f45221i).inflate(R.layout.popuwin_localarchive, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, true);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        ((TextView) inflate.findViewById(R.id.tv_delect)).setOnClickListener(new a(popupWindow));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.backUp) {
            if (!this.f45231s) {
                this.f45232t.m(this.f45228p);
            }
            com.papa.sim.statistic.p.l(getContext()).V0(Event.backupLocalArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45229q);
        } else if (id != R.id.downButton) {
            if (id != R.id.shape) {
                return;
            }
            if (!this.f45231s) {
                this.f45232t.y(this.f45228p);
            }
            com.papa.sim.statistic.p.l(getContext()).V0(Event.shareArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45229q);
        } else if (this.f45231s) {
        } else {
            int status = this.f45228p.getStatus();
            if (status != 0) {
                switch (status) {
                    case 2:
                        Intent intent = new Intent("com.wufun.cloud.showUploadDialog");
                        intent.putExtra("fileMd5", this.f45228p.getFileMd5());
                        getContext().sendBroadcast(intent);
                        return;
                    case 3:
                        Intent intent2 = new Intent("com.wufun.cloud.game.main.showDownDialog");
                        intent2.putExtra("fileMd5", this.f45228p.getFileMd5());
                        getContext().sendBroadcast(intent2);
                        return;
                    case 4:
                    case 5:
                    case 7:
                        break;
                    case 6:
                        DownloadTask B = g1.f.G().B(this.f45229q);
                        String archiveFileName = this.f45228p.getArchiveFileName();
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
                            } else if (this.f45234v && !archiveFileName.contains("vba")) {
                                i2.a(getContext()).b("当前系统版本无法运行该存档");
                                return;
                            } else if (!this.f45234v && archiveFileName.contains("vba")) {
                                i2.a(getContext()).b("当前系统版本无法运行该存档");
                                return;
                            }
                        }
                        int i2 = this.f45230r;
                        if (i2 != 3 && i2 != 4) {
                            com.papa.sim.statistic.p.l(getContext()).V0(Event.downloadCloudArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45229q);
                        } else {
                            com.papa.sim.statistic.p.l(getContext()).V0(Event.makeStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45229q);
                        }
                        int i4 = this.f45230r;
                        if (i4 == 3 || i4 == 4) {
                            if (!this.f45235w) {
                                i2.a(getContext()).b("本地为v1核心不能下载v2核心存档");
                                return;
                            } else if (!this.f45236x) {
                                i2.a(getContext()).b("本地有双核心PGM游戏不能下载存档");
                                return;
                            }
                        }
                        if (i4 == 1) {
                            this.f45232t.s(this.f45228p, false);
                            return;
                        } else {
                            this.f45232t.s(this.f45228p, true);
                            return;
                        }
                    default:
                        return;
                }
            }
            if (this.f45228p.getIsVip() == 1 && !b()) {
                new com.join.mgps.dialog.y(this.f45221i, R.style.HKDialogLoading).g("获取须知").d("本存档是悟饭平台VIP会员所享内容，请开通VIP会员后使用").b("开通VIP会员").a(new e()).show();
                com.papa.sim.statistic.p.l(getContext()).K1(Event.VipArchive_popup_page, new Ext().setGameId(this.f45229q));
                return;
            }
            String archiveFilePath = this.f45228p.getArchiveFilePath();
            if (this.f45224l.getPlugin_num().equals("33")) {
                String c5 = c(this.f45224l.getPackageName());
                if (c5 != null) {
                    if (c5.equals("VBA") && !archiveFilePath.contains("vba")) {
                        i2.a(getContext()).b("当前系统版本无法运行该存档");
                        return;
                    } else if (c5.equals(CContext.SCENE_GBA) && archiveFilePath.contains("vba")) {
                        i2.a(getContext()).b("当前系统版本无法运行该存档");
                        return;
                    }
                } else if (this.f45234v && !archiveFilePath.contains("vba")) {
                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                    return;
                } else if (!this.f45234v && archiveFilePath.contains("vba")) {
                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                    return;
                }
            }
            UtilsMy.l(this.f45224l, getContext(), archiveFilePath);
            int i5 = this.f45230r;
            if (i5 != 3 && i5 != 4) {
                com.papa.sim.statistic.p.l(getContext()).V0(Event.startMeArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45229q);
            } else {
                com.papa.sim.statistic.p.l(getContext()).V0(Event.startStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45229q);
            }
            this.f45232t.p(this.f45228p);
        }
    }

    public void setCloudItemListener(com.join.mgps.listener.c cVar) {
        this.f45232t = cVar;
    }

    public void setData(String str, CloudListDataBean cloudListDataBean, int i2, int i4, boolean z3, boolean z4, com.join.mgps.listener.c cVar) {
        boolean z5;
        this.f45229q = str;
        this.f45230r = i2;
        this.f45231s = z3;
        this.f45224l = g1.f.G().B(str);
        this.f45228p = cloudListDataBean;
        MyImageLoader.h(this.f45214b, cloudListDataBean.getAvatar());
        if (i2 == 2) {
            this.f45217e.setVisibility(0);
        } else {
            this.f45217e.setVisibility(8);
        }
        if (i2 != 3 && i2 != 4) {
            this.f45215c.setText(cloudListDataBean.getArchiveName());
            this.f45216d.setVisibility(0);
        } else {
            this.f45216d.setVisibility(8);
            this.f45215c.setText(cloudListDataBean.getArchiveDesc());
            this.f45218f.setText(cloudListDataBean.getNickname());
            TextView textView = this.f45219g;
            textView.setText(cloudListDataBean.getDownNum() + "");
            TextView textView2 = this.f45220h;
            textView2.setText(cloudListDataBean.getHighComment() + "");
            if (this.f45224l.getPlugin_num().equals("33")) {
                String archiveFileName = cloudListDataBean.getArchiveFileName();
                String c4 = c(this.f45224l.getPackageName());
                if (c4 != null) {
                    if (c4.equals("VBA") && !archiveFileName.contains("vba")) {
                        TextView textView3 = this.f45220h;
                        textView3.setText(cloudListDataBean.getHighComment() + " 不兼容");
                    } else if (c4.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                        TextView textView4 = this.f45220h;
                        textView4.setText(cloudListDataBean.getHighComment() + " 不兼容");
                    }
                } else if (this.f45234v && !archiveFileName.contains("vba")) {
                    TextView textView5 = this.f45220h;
                    textView5.setText(cloudListDataBean.getHighComment() + " 不兼容");
                } else if (!this.f45234v && archiveFileName.contains("vba")) {
                    TextView textView6 = this.f45220h;
                    textView6.setText(cloudListDataBean.getHighComment() + " 不兼容");
                }
            }
        }
        if (!z3) {
            this.f45213a.setOnClickListener(this);
            this.f45217e.setOnClickListener(this);
            this.f45216d.setOnClickListener(this);
        }
        if (i2 == 1) {
            this.f45213a.setStatu(cloudListDataBean.getStatus());
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
                    this.f45228p.setArchiveFilePath(next.getFilePath());
                    z5 = true;
                    break;
                }
            }
            if (z5) {
                this.f45213a.setStatu(0);
                this.f45228p.setStatus(0);
            } else {
                this.f45213a.setStatu(this.f45228p.getStatus());
            }
        } else if (i2 == 2) {
            this.f45213a.setStatu(0);
            int status = this.f45228p.getStatus();
            if (status != 0) {
                if (status == 7) {
                    this.f45217e.setText("备份中");
                    this.f45217e.setClickable(true);
                } else if (status != 4) {
                    if (status == 5) {
                        this.f45217e.setText("已备份");
                        this.f45217e.setClickable(false);
                    }
                }
            }
            this.f45217e.setText("备份");
            this.f45217e.setClickable(true);
        } else {
            this.f45213a.setStatu(6);
        }
        if (this.f45228p.getIsVip() == 1) {
            setBackgroundResource(R.drawable.bg_cloud_list_item3);
            this.f45213a.setTextColor(Color.parseColor("#FFD5BC"));
            this.f45213a.setBackgroundResource(R.drawable.shape_cloud_down_vip);
            this.f45225m.setVisibility(0);
            this.f45226n.setVisibility(8);
            return;
        }
        setBackgroundColor(Color.parseColor("#8F0A1521"));
        this.f45213a.setTextColor(Color.parseColor("#FFFFFF"));
        this.f45213a.setBackgroundResource(R.drawable.shape_cloud_down_normal);
        this.f45225m.setVisibility(8);
        this.f45226n.setVisibility(0);
    }

    public void setGBAType(boolean z3) {
        this.f45234v = z3;
    }

    public void setPGN(boolean z3, boolean z4) {
        this.f45235w = z3;
        this.f45236x = z4;
    }

    void setPoPoWindow2(boolean z3) {
        View inflate = LayoutInflater.from(this.f45221i).inflate(R.layout.popuwin_localarchive2, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, true);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        ((TextView) inflate.findViewById(R.id.good)).setOnClickListener(new b(popupWindow));
        ((TextView) inflate.findViewById(R.id.introduce)).setOnClickListener(new c(popupWindow));
        ((TextView) inflate.findViewById(R.id.plagiarize)).setOnClickListener(new d(popupWindow));
    }

    public ClouldItemView3(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45231s = false;
        this.f45233u = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45234v = false;
        this.f45235w = true;
        this.f45236x = true;
        e(context);
    }

    public ClouldItemView3(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45231s = false;
        this.f45233u = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45234v = false;
        this.f45235w = true;
        this.f45236x = true;
        e(context);
    }
}
