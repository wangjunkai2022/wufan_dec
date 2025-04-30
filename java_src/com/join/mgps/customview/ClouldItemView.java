package com.join.mgps.customview;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
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
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dto.CloudListDataBean;
import com.papa.sim.statistic.Event;
import com.papa91.arc.CContext;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class ClouldItemView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    CloudDownButn f45134a;

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f45135b;

    /* renamed from: c  reason: collision with root package name */
    SimpleDraweeView f45136c;

    /* renamed from: d  reason: collision with root package name */
    TextView f45137d;

    /* renamed from: e  reason: collision with root package name */
    TextView f45138e;

    /* renamed from: f  reason: collision with root package name */
    TextView f45139f;

    /* renamed from: g  reason: collision with root package name */
    TextView f45140g;

    /* renamed from: h  reason: collision with root package name */
    TextView f45141h;

    /* renamed from: i  reason: collision with root package name */
    TextView f45142i;

    /* renamed from: j  reason: collision with root package name */
    Context f45143j;

    /* renamed from: k  reason: collision with root package name */
    View f45144k;

    /* renamed from: l  reason: collision with root package name */
    com.facebook.imagepipeline.core.g f45145l;

    /* renamed from: m  reason: collision with root package name */
    DownloadTask f45146m;

    /* renamed from: n  reason: collision with root package name */
    CloudListDataBean f45147n;

    /* renamed from: o  reason: collision with root package name */
    String f45148o;

    /* renamed from: p  reason: collision with root package name */
    int f45149p;

    /* renamed from: q  reason: collision with root package name */
    boolean f45150q;

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.listener.c f45151r;

    /* renamed from: s  reason: collision with root package name */
    String[] f45152s;

    /* renamed from: t  reason: collision with root package name */
    boolean f45153t;

    /* renamed from: u  reason: collision with root package name */
    boolean f45154u;

    /* renamed from: v  reason: collision with root package name */
    boolean f45155v;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f45156a;

        a(boolean z3) {
            this.f45156a = z3;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView.this.setPoPoWindow2(this.f45156a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f45158a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f45159b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f45160c;

        b(boolean z3, int i2, int i4) {
            this.f45158a = z3;
            this.f45159b = i2;
            this.f45160c = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f45158a) {
                return;
            }
            int i2 = this.f45159b;
            if (i2 == 1 || i2 == 2) {
                ClouldItemView.this.c();
            } else if (i2 == 3) {
                if (this.f45160c == 4) {
                    ClouldItemView.this.c();
                }
            } else if (i2 == 4) {
                ClouldItemView.this.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45162a;

        c(PopupWindow popupWindow) {
            this.f45162a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f45162a.dismiss();
            ClouldItemView clouldItemView = ClouldItemView.this;
            int i2 = clouldItemView.f45149p;
            if (i2 == 1) {
                clouldItemView.f45151r.t(clouldItemView.f45147n, 1);
            } else if (i2 == 2) {
                clouldItemView.f45151r.t(clouldItemView.f45147n, 2);
            } else if (i2 == 3) {
                clouldItemView.f45151r.t(clouldItemView.f45147n, 3);
            } else if (i2 == 4) {
                clouldItemView.f45151r.E(clouldItemView.f45147n, 4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45164a;

        d(PopupWindow popupWindow) {
            this.f45164a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView clouldItemView = ClouldItemView.this;
            clouldItemView.f45151r.E(clouldItemView.f45147n, 1);
            this.f45164a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45166a;

        e(PopupWindow popupWindow) {
            this.f45166a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView clouldItemView = ClouldItemView.this;
            clouldItemView.f45151r.E(clouldItemView.f45147n, 2);
            this.f45166a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f45168a;

        f(PopupWindow popupWindow) {
            this.f45168a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClouldItemView clouldItemView = ClouldItemView.this;
            clouldItemView.f45151r.E(clouldItemView.f45147n, 3);
            this.f45168a.dismiss();
        }
    }

    public ClouldItemView(Context context) {
        super(context);
        this.f45150q = false;
        this.f45152s = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45153t = false;
        this.f45154u = true;
        this.f45155v = true;
        b(context);
    }

    private String a(String str) {
        if (Build.VERSION.SDK_INT < 23 && !str.endsWith("kdygmyhbs3")) {
            if (str.startsWith("kdyg")) {
                return CContext.SCENE_GBA;
            }
            for (String str2 : this.f45152s) {
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

    private void b(Context context) {
        this.f45144k = LayoutInflater.from(context).inflate(R.layout.cloud_list_item, this);
        this.f45143j = context;
        this.f45145l = Fresco.getImagePipeline();
        this.f45134a = (CloudDownButn) this.f45144k.findViewById(R.id.downButton);
        this.f45135b = (LinearLayout) this.f45144k.findViewById(R.id.iv_more);
        this.f45136c = (SimpleDraweeView) this.f45144k.findViewById(R.id.simv);
        this.f45137d = (TextView) this.f45144k.findViewById(R.id.tv_name);
        this.f45138e = (TextView) this.f45144k.findViewById(R.id.tv_time);
        this.f45139f = (TextView) this.f45144k.findViewById(R.id.shape);
        this.f45140g = (TextView) this.f45144k.findViewById(R.id.backUp);
        this.f45141h = (TextView) this.f45144k.findViewById(R.id.tv_good);
        this.f45142i = (TextView) this.f45144k.findViewById(R.id.tv_evalute);
    }

    void c() {
        View inflate = LayoutInflater.from(this.f45143j).inflate(R.layout.popuwin_localarchive, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, true);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        popupWindow.showAsDropDown(this.f45135b, (int) (-this.f45143j.getResources().getDimension(R.dimen.wdp150)), (int) (-this.f45143j.getResources().getDimension(R.dimen.wdp80)));
        ((TextView) inflate.findViewById(R.id.tv_delect)).setOnClickListener(new c(popupWindow));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.backUp) {
            if (!this.f45150q) {
                this.f45151r.m(this.f45147n);
            }
            com.papa.sim.statistic.p.l(getContext()).V0(Event.backupLocalArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45148o);
        } else if (id != R.id.downButton) {
            if (id != R.id.shape) {
                return;
            }
            if (!this.f45150q) {
                this.f45151r.y(this.f45147n);
            }
            com.papa.sim.statistic.p.l(getContext()).V0(Event.shareArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45148o);
        } else if (this.f45150q) {
        } else {
            int status = this.f45147n.getStatus();
            if (status != 0) {
                switch (status) {
                    case 2:
                        Intent intent = new Intent("com.wufun.cloud.showUploadDialog");
                        intent.putExtra("fileMd5", this.f45147n.getFileMd5());
                        getContext().sendBroadcast(intent);
                        return;
                    case 3:
                        Intent intent2 = new Intent("com.wufun.cloud.showDownDialog");
                        intent2.putExtra("fileMd5", this.f45147n.getFileMd5());
                        getContext().sendBroadcast(intent2);
                        return;
                    case 4:
                    case 5:
                    case 7:
                        break;
                    case 6:
                        DownloadTask B = g1.f.G().B(this.f45148o);
                        String archiveFileName = this.f45147n.getArchiveFileName();
                        if (B.getPlugin_num().equals("33")) {
                            String a4 = a(B.getPackageName());
                            if (a4 != null) {
                                if (a4.equals("VBA") && !archiveFileName.contains("vba")) {
                                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                                    return;
                                } else if (a4.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                                    return;
                                }
                            } else if (this.f45153t && !archiveFileName.contains("vba")) {
                                i2.a(getContext()).b("当前系统版本无法运行该存档");
                                return;
                            } else if (!this.f45153t && archiveFileName.contains("vba")) {
                                i2.a(getContext()).b("当前系统版本无法运行该存档");
                                return;
                            }
                        }
                        int i2 = this.f45149p;
                        if (i2 != 3 && i2 != 4) {
                            com.papa.sim.statistic.p.l(getContext()).V0(Event.downloadCloudArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45148o);
                        } else {
                            com.papa.sim.statistic.p.l(getContext()).V0(Event.makeStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45148o);
                        }
                        int i4 = this.f45149p;
                        if (i4 == 3 || i4 == 4) {
                            if (!this.f45154u) {
                                i2.a(getContext()).b("本地为v1核心不能下载v2核心存档");
                                return;
                            } else if (!this.f45155v) {
                                i2.a(getContext()).b("本地有双核心PGM游戏不能下载存档");
                                return;
                            }
                        }
                        if (i4 == 1) {
                            this.f45151r.s(this.f45147n, false);
                            return;
                        } else {
                            this.f45151r.s(this.f45147n, true);
                            return;
                        }
                    default:
                        return;
                }
            }
            String archiveFilePath = this.f45147n.getArchiveFilePath();
            if (this.f45146m.getPlugin_num().equals("33")) {
                String a5 = a(this.f45146m.getPackageName());
                if (a5 != null) {
                    if (a5.equals("VBA") && !archiveFilePath.contains("vba")) {
                        i2.a(getContext()).b("当前系统版本无法运行该存档");
                        return;
                    } else if (a5.equals(CContext.SCENE_GBA) && archiveFilePath.contains("vba")) {
                        i2.a(getContext()).b("当前系统版本无法运行该存档");
                        return;
                    }
                } else if (this.f45153t && !archiveFilePath.contains("vba")) {
                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                    return;
                } else if (!this.f45153t && archiveFilePath.contains("vba")) {
                    i2.a(getContext()).b("当前系统版本无法运行该存档");
                    return;
                }
            }
            UtilsMy.l(this.f45146m, getContext(), archiveFilePath);
            int i5 = this.f45149p;
            if (i5 != 3 && i5 != 4) {
                com.papa.sim.statistic.p.l(getContext()).V0(Event.startMeArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45148o);
            } else {
                com.papa.sim.statistic.p.l(getContext()).V0(Event.startStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f45148o);
            }
            this.f45151r.p(this.f45147n);
        }
    }

    public void setCloudItemListener(com.join.mgps.listener.c cVar) {
        this.f45151r = cVar;
    }

    public void setData(String str, CloudListDataBean cloudListDataBean, int i2, int i4, boolean z3, boolean z4, com.join.mgps.listener.c cVar) {
        this.f45148o = str;
        this.f45149p = i2;
        this.f45150q = z3;
        this.f45146m = g1.f.G().B(str);
        this.f45147n = cloudListDataBean;
        if (cloudListDataBean.getArchiveCover().startsWith("file://")) {
            Uri parse = Uri.parse(cloudListDataBean.getArchiveCover());
            this.f45145l.h(parse);
            this.f45145l.f(parse);
            this.f45145l.e(parse);
            this.f45136c.setImageURI(parse);
        } else {
            MyImageLoader.h(this.f45136c, cloudListDataBean.getArchiveCover());
        }
        if (i2 == 3 && i4 == 4) {
            TextView textView = this.f45138e;
            textView.setText(cloudListDataBean.getAddTime() + "上传");
        } else {
            this.f45138e.setText(cloudListDataBean.getAddTime());
        }
        if (i2 == 2) {
            this.f45140g.setVisibility(0);
        } else {
            this.f45140g.setVisibility(8);
        }
        if (i2 != 3 && i2 != 4) {
            this.f45141h.setVisibility(8);
            this.f45137d.setText(cloudListDataBean.getArchiveName());
            this.f45141h.setVisibility(8);
            this.f45139f.setVisibility(0);
        } else {
            this.f45139f.setVisibility(8);
            this.f45137d.setText(cloudListDataBean.getArchiveDesc());
            this.f45141h.setVisibility(0);
            TextView textView2 = this.f45141h;
            textView2.setText(cloudListDataBean.getHighRate() + "%好评");
            if (this.f45146m.getPlugin_num().equals("33")) {
                String archiveFileName = cloudListDataBean.getArchiveFileName();
                String a4 = a(this.f45146m.getPackageName());
                if (a4 != null) {
                    if (a4.equals("VBA") && !archiveFileName.contains("vba")) {
                        TextView textView3 = this.f45138e;
                        textView3.setText(cloudListDataBean.getAddTime() + " 不兼容");
                    } else if (a4.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                        TextView textView4 = this.f45138e;
                        textView4.setText(cloudListDataBean.getAddTime() + " 不兼容");
                    }
                } else if (this.f45153t && !archiveFileName.contains("vba")) {
                    TextView textView5 = this.f45138e;
                    textView5.setText(cloudListDataBean.getAddTime() + " 不兼容");
                } else if (!this.f45153t && archiveFileName.contains("vba")) {
                    TextView textView6 = this.f45138e;
                    textView6.setText(cloudListDataBean.getAddTime() + " 不兼容");
                }
            }
        }
        this.f45142i.setVisibility(8);
        if (i2 == 3) {
            if (i4 != 4) {
                this.f45135b.setVisibility(4);
            } else {
                this.f45135b.setVisibility(0);
            }
            this.f45142i.setVisibility(8);
        } else if (i2 == 4) {
            this.f45142i.setVisibility(0);
        } else {
            this.f45135b.setVisibility(0);
        }
        this.f45142i.setOnClickListener(new a(z4));
        this.f45135b.setOnClickListener(new b(z3, i2, i4));
        if (!z3) {
            this.f45134a.setOnClickListener(this);
            this.f45140g.setOnClickListener(this);
            this.f45139f.setOnClickListener(this);
        }
        boolean z5 = true;
        if (i2 == 1) {
            this.f45134a.setStatu(cloudListDataBean.getStatus());
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
                    this.f45147n.setArchiveFilePath(next.getFilePath());
                    break;
                }
            }
            if (z5) {
                this.f45134a.setStatu(0);
                this.f45147n.setStatus(0);
                return;
            }
            this.f45134a.setStatu(this.f45147n.getStatus());
        } else if (i2 == 2) {
            this.f45134a.setStatu(0);
            int status = this.f45147n.getStatus();
            if (status != 0) {
                if (status == 7) {
                    this.f45140g.setText("备份中");
                    this.f45140g.setClickable(true);
                    return;
                } else if (status != 4) {
                    if (status != 5) {
                        return;
                    }
                    this.f45140g.setText("已备份");
                    this.f45140g.setClickable(false);
                    return;
                }
            }
            this.f45140g.setText("备份");
            this.f45140g.setClickable(true);
        } else {
            this.f45134a.setStatu(6);
        }
    }

    public void setGBAType(boolean z3) {
        this.f45153t = z3;
    }

    public void setPGN(boolean z3, boolean z4) {
        this.f45154u = z3;
        this.f45155v = z4;
    }

    void setPoPoWindow2(boolean z3) {
        View inflate = LayoutInflater.from(this.f45143j).inflate(R.layout.popuwin_localarchive2, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, true);
        TextView textView = (TextView) inflate.findViewById(R.id.good);
        TextView textView2 = (TextView) inflate.findViewById(R.id.introduce);
        TextView textView3 = (TextView) inflate.findViewById(R.id.plagiarize);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        int[] iArr = new int[2];
        this.f45135b.getLocationOnScreen(iArr);
        if (z3) {
            popupWindow.showAtLocation(this.f45135b, 0, iArr[0] - ((int) this.f45143j.getResources().getDimension(R.dimen.wdp250)), iArr[1]);
        } else {
            popupWindow.showAtLocation(this.f45135b, 0, iArr[0] - ((int) this.f45143j.getResources().getDimension(R.dimen.wdp250)), iArr[1]);
        }
        textView.setOnClickListener(new d(popupWindow));
        textView2.setOnClickListener(new e(popupWindow));
        textView3.setOnClickListener(new f(popupWindow));
    }

    public ClouldItemView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45150q = false;
        this.f45152s = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45153t = false;
        this.f45154u = true;
        this.f45155v = true;
        b(context);
    }

    public ClouldItemView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45150q = false;
        this.f45152s = new String[]{"ftsc3", "lkrexe2", "lkrexe3"};
        this.f45153t = false;
        this.f45154u = true;
        this.f45155v = true;
        b(context);
    }
}
