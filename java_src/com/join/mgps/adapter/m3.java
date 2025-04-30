package com.join.mgps.adapter;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.MyGameManagerActivity;
import com.join.mgps.activity.MyGameUpdateManagerActivity_;
import com.join.mgps.activity.mygame.MyGameGuesslikeActivity_;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: MyGameAdapter.java */
/* loaded from: classes3.dex */
public class m3 extends BaseAdapter {

    /* renamed from: h  reason: collision with root package name */
    public static final int f42833h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final int f42834i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f42835j = 2;

    /* renamed from: k  reason: collision with root package name */
    public static final int f42836k = 3;

    /* renamed from: l  reason: collision with root package name */
    public static final int f42837l = 4;

    /* renamed from: a  reason: collision with root package name */
    Context f42838a;

    /* renamed from: b  reason: collision with root package name */
    String f42839b = "";

    /* renamed from: c  reason: collision with root package name */
    boolean f42840c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f42841d = false;

    /* renamed from: e  reason: collision with root package name */
    int f42842e = -1;

    /* renamed from: f  reason: collision with root package name */
    List<f> f42843f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    e f42844g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f42845a;

        a(DownloadTask downloadTask) {
            this.f42845a = downloadTask;
        }

        void a(Context context) {
            DownloadTask downloadTask = this.f42845a;
            if (downloadTask != null && (downloadTask.getStatus() == 3 || this.f42845a.getStatus() == 1 || this.f42845a.getStatus() == 6)) {
                com.php25.PDownload.d.c(this.f42845a, context);
            }
            String crc_link_type_val = this.f42845a.getCrc_link_type_val();
            com.join.mgps.Util.i2.a(context).b("已接入专属通道，加速成功！");
            UtilsMy.r3(context, crc_link_type_val);
            UtilsMy.O1(context, crc_link_type_val);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.p.l(view.getContext()).K1(Event.CenterAccelerationDownload, new Ext());
            a(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f42847a;

        b(View view) {
            this.f42847a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f42847a.setVisibility(8);
            m3.this.f42842e = -1;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f42847a.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public class c extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f42849a;

        c(DownloadTask downloadTask) {
            this.f42849a = downloadTask;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            UtilsMy.delete(new File(com.join.mgps.Util.u.f27856o, this.f42849a.getPackageName()));
            UtilsMy.delete(new File(com.join.mgps.Util.u.f27857p, this.f42849a.getPackageName()));
            UtilsMy.delete(new File(this.f42849a.getGameZipPath()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        DownloadTask f42851a;

        public d(DownloadTask downloadTask) {
            this.f42851a = downloadTask;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r6) {
            /*
                Method dump skipped, instructions count: 714
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.m3.d.onClick(android.view.View):void");
        }
    }

    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public interface e {
        void I(String str);

        void K(String str);

        void Y(String str);

        void n(String str);

        void s0(DownloadTask downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public class g {

        /* renamed from: a  reason: collision with root package name */
        public TextView f42856a;

        g() {
        }
    }

    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public class h {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f42858a;

        /* renamed from: b  reason: collision with root package name */
        public ProgressBar f42859b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42860c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42861d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f42862e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f42863f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f42864g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f42865h;

        /* renamed from: i  reason: collision with root package name */
        public View f42866i;

        /* renamed from: j  reason: collision with root package name */
        public View f42867j;

        /* renamed from: k  reason: collision with root package name */
        public View f42868k;

        /* renamed from: l  reason: collision with root package name */
        public View f42869l;

        public h() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public class i {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f42871a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f42872b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f42873c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42874d;

        i() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public class j {

        /* renamed from: a  reason: collision with root package name */
        public TextView f42876a;

        j() {
        }
    }

    public m3(Context context) {
        this.f42838a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(DownloadTask downloadTask, View view) {
        e eVar = this.f42844g;
        if (eVar != null) {
            eVar.Y(downloadTask.getCrc_link_type_val());
        } else if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(this.f42838a, downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(DownloadTask downloadTask, View view) {
        e eVar = this.f42844g;
        if (eVar != null) {
            eVar.I(downloadTask.getCrc_link_type_val());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(boolean z3, DownloadTask downloadTask, Dialog dialog, View view) {
        if (z3) {
            if (com.join.android.app.common.utils.a.g0(this.f42838a).c(this.f42838a, downloadTask.getPackageName())) {
                com.join.android.app.common.utils.a.g0(this.f42838a).c0(this.f42838a, downloadTask.getPackageName());
            } else {
                l(downloadTask);
                UtilsMy.C3(downloadTask);
                notifyDataSetChanged();
            }
        } else {
            l(downloadTask);
            UtilsMy.C3(downloadTask);
            notifyDataSetChanged();
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean E(final DownloadTask downloadTask, View view) {
        e eVar = this.f42844g;
        if (eVar != null) {
            eVar.K(downloadTask.getCrc_link_type_val());
            return true;
        }
        final com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f42838a, R.style.MyDialog);
        tVar.setContentView(R.layout.delete_center_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) tVar.findViewById(R.id.dialog_content);
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除游戏");
        final boolean z3 = false;
        String fileType = downloadTask.getFileType();
        if (fileType != null && fileType.equals(Dtype.android.name())) {
            if (com.join.android.app.common.utils.a.g0(this.f42838a).c(this.f42838a, downloadTask.getPackageName())) {
                textView.setText("你确定要卸载该游戏？");
                button.setText("卸载");
            } else {
                textView.setText("你确定要删除该游戏？");
                button.setText("删除");
            }
            z3 = true;
        } else {
            textView.setText("你确定要删除该游戏及文件？");
            button.setText("删除");
        }
        ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                tVar.dismiss();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m3.this.D(z3, downloadTask, tVar, view2);
            }
        });
        tVar.show();
        return true;
    }

    private View p(int i2, View view, ViewGroup viewGroup) {
        g gVar;
        if (view != null) {
            gVar = (g) view.getTag();
        } else {
            g gVar2 = new g();
            View inflate = LayoutInflater.from(this.f42838a).inflate(R.layout.fragment_my_game_item_footer, viewGroup, false);
            gVar2.f42856a = (TextView) inflate.findViewById(R.id.count);
            inflate.setTag(gVar2);
            gVar = gVar2;
            view = inflate;
        }
        int intValue = ((Integer) getItem(i2)).intValue();
        TextView textView = gVar.f42856a;
        textView.setText("共" + intValue + "款游戏");
        return view;
    }

    private View q(int i2, View view, ViewGroup viewGroup) {
        h hVar;
        if (view != null) {
            hVar = (h) view.getTag();
        } else {
            h hVar2 = new h();
            View inflate = LayoutInflater.from(this.f42838a).inflate(R.layout.fragment_my_game_item_game, viewGroup, false);
            hVar2.f42858a = (SimpleDraweeView) inflate.findViewById(R.id.icon);
            hVar2.f42868k = inflate.findViewById(R.id.notOpen);
            hVar2.f42859b = (ProgressBar) inflate.findViewById(R.id.progressBar);
            hVar2.f42860c = (TextView) inflate.findViewById(R.id.desc);
            hVar2.f42861d = (TextView) inflate.findViewById(R.id.speedUp);
            hVar2.f42862e = (TextView) inflate.findViewById(R.id.addShortcut);
            hVar2.f42863f = (TextView) inflate.findViewById(R.id.install);
            hVar2.f42864g = (TextView) inflate.findViewById(R.id.name);
            hVar2.f42865h = (TextView) inflate.findViewById(R.id.count);
            hVar2.f42866i = inflate.findViewById(R.id.more);
            hVar2.f42867j = inflate.findViewById(R.id.focus);
            hVar2.f42869l = inflate;
            inflate.setTag(hVar2);
            hVar = hVar2;
            view = inflate;
        }
        final DownloadTask downloadTask = (DownloadTask) getItem(i2);
        if (downloadTask == null) {
            return view;
        }
        MyImageLoader.h(hVar.f42858a, downloadTask.getPortraitURL());
        hVar.f42864g.setText(downloadTask.getShowName());
        int status = downloadTask.getStatus();
        if (status == 8) {
            hVar.f42859b.setProgress((int) downloadTask.getProgress());
        } else {
            hVar.f42859b.setProgress(0);
        }
        if (status == 5) {
            if (downloadTask.isOpen()) {
                hVar.f42868k.setVisibility(8);
            } else {
                hVar.f42868k.setVisibility(0);
            }
        } else {
            hVar.f42868k.setVisibility(8);
        }
        if (this.f42840c) {
            if (!TextUtils.isEmpty(this.f42839b) && this.f42839b.equals(downloadTask.getCrc_link_type_val())) {
                this.f42842e = i2;
                Q(hVar.f42867j);
                this.f42840c = false;
            } else {
                hVar.f42867j.setVisibility(8);
                hVar.f42867j.clearAnimation();
            }
        } else if (this.f42842e != i2) {
            hVar.f42867j.setVisibility(8);
            hVar.f42867j.clearAnimation();
        }
        L(hVar, downloadTask);
        if (i2 < this.f42843f.size() && this.f42843f.get(i2).f42855c) {
            hVar.f42861d.setVisibility(8);
            hVar.f42865h.setVisibility(8);
            hVar.f42862e.setVisibility(0);
            hVar.f42862e.setText("添加桌面");
            hVar.f42862e.setBackgroundResource(R.drawable.recom_grey_butn);
            hVar.f42862e.setTextColor(-7763575);
            hVar.f42862e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.g3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    m3.this.w(downloadTask, view2);
                }
            });
        } else if (k(downloadTask)) {
            hVar.f42862e.setVisibility(8);
            hVar.f42861d.setVisibility(0);
            int X0 = UtilsMy.X0(this.f42838a, downloadTask.getCrc_link_type_val());
            if (X0 > 0) {
                hVar.f42865h.setVisibility(0);
                TextView textView = hVar.f42865h;
                textView.setText(X0 + "");
            } else {
                hVar.f42865h.setVisibility(8);
            }
            hVar.f42861d.setOnClickListener(new a(downloadTask));
        } else {
            hVar.f42861d.setVisibility(8);
            hVar.f42865h.setVisibility(8);
            hVar.f42862e.setVisibility(8);
        }
        return view;
    }

    private View r(int i2, View view, ViewGroup viewGroup) {
        final i iVar;
        if (view != null) {
            iVar = (i) view.getTag();
        } else {
            i iVar2 = new i();
            View inflate = LayoutInflater.from(this.f42838a).inflate(R.layout.fragment_my_game_item_guess_like, viewGroup, false);
            iVar2.f42871a = (SimpleDraweeView) inflate.findViewById(R.id.icon1);
            iVar2.f42872b = (SimpleDraweeView) inflate.findViewById(R.id.icon2);
            iVar2.f42873c = (SimpleDraweeView) inflate.findViewById(R.id.icon3);
            iVar2.f42874d = (TextView) inflate.findViewById(R.id.count);
            inflate.setTag(iVar2);
            iVar = iVar2;
            view = inflate;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.d3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m3.this.x(view2);
            }
        });
        if (getItem(i2) == null) {
            return view;
        }
        DataGameListBean dataGameListBean = (DataGameListBean) getItem(i2);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.h3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m3.this.y(iVar, view2);
            }
        });
        List<GamedownRecomendItemBean> gameList = dataGameListBean.getGameList();
        SimpleDraweeView[] simpleDraweeViewArr = {iVar.f42873c, iVar.f42872b, iVar.f42871a};
        for (int i4 = 0; i4 < 3; i4++) {
            if (i4 >= gameList.size()) {
                simpleDraweeViewArr[i4].setVisibility(8);
            } else {
                simpleDraweeViewArr[i4].setVisibility(0);
                MyImageLoader.h(simpleDraweeViewArr[i4], gameList.get(i4).getIco_remote());
            }
        }
        if ((gameList != null ? dataGameListBean.getGameCount() : 0) > 3 && this.f42841d) {
            iVar.f42874d.setVisibility(0);
        } else {
            iVar.f42874d.setVisibility(8);
        }
        return view;
    }

    private View s(int i2, View view, ViewGroup viewGroup) {
        h hVar;
        if (view != null) {
            hVar = (h) view.getTag();
        } else {
            h hVar2 = new h();
            View inflate = LayoutInflater.from(this.f42838a).inflate(R.layout.fragment_my_game_item_plug, viewGroup, false);
            hVar2.f42858a = (SimpleDraweeView) inflate.findViewById(R.id.icon);
            hVar2.f42859b = (ProgressBar) inflate.findViewById(R.id.progressBar);
            hVar2.f42860c = (TextView) inflate.findViewById(R.id.desc);
            hVar2.f42861d = (TextView) inflate.findViewById(R.id.speedUp);
            hVar2.f42863f = (TextView) inflate.findViewById(R.id.install);
            hVar2.f42864g = (TextView) inflate.findViewById(R.id.name);
            hVar2.f42866i = inflate.findViewById(R.id.more);
            hVar2.f42869l = inflate;
            inflate.setTag(hVar2);
            hVar = hVar2;
            view = inflate;
        }
        DownloadTask downloadTask = (DownloadTask) getItem(i2);
        if (downloadTask == null) {
            return view;
        }
        MyImageLoader.h(hVar.f42858a, downloadTask.getPortraitURL());
        hVar.f42864g.setText(downloadTask.getShowName());
        if (downloadTask.getStatus() == 8) {
            hVar.f42859b.setProgress((int) downloadTask.getProgress());
        } else {
            hVar.f42859b.setProgress(0);
        }
        L(hVar, downloadTask);
        return view;
    }

    private View t(int i2, View view, ViewGroup viewGroup) {
        j jVar;
        if (view != null) {
            jVar = (j) view.getTag();
        } else {
            j jVar2 = new j();
            View inflate = LayoutInflater.from(this.f42838a).inflate(R.layout.fragment_my_game_item_update, viewGroup, false);
            jVar2.f42876a = (TextView) inflate.findViewById(R.id.count);
            inflate.setTag(jVar2);
            jVar = jVar2;
            view = inflate;
        }
        int intValue = ((Integer) getItem(i2)).intValue();
        TextView textView = jVar.f42876a;
        textView.setText(intValue + "款游戏需更新");
        view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.j3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m3.z(view2);
            }
        });
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(DownloadTask downloadTask, View view) {
        e eVar = this.f42844g;
        if (eVar != null) {
            eVar.s0(downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(View view) {
        MyGameGuesslikeActivity_.intent(view.getContext()).start();
        Context context = this.f42838a;
        if (context instanceof MGMainActivity) {
            com.papa.sim.statistic.p.l(context).K1(Event.onclickTabGuessuLike, new Ext());
        }
        Context context2 = this.f42838a;
        if (context2 instanceof MyGameManagerActivity) {
            com.papa.sim.statistic.p.l(context2).K1(Event.onclickCentreGuessuLike, new Ext());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(i iVar, View view) {
        MyGameGuesslikeActivity_.intent(view.getContext()).start();
        Context context = this.f42838a;
        if (context instanceof MGMainActivity) {
            com.papa.sim.statistic.p.l(context).K1(Event.onclickTabGuessuLike, new Ext());
        }
        Context context2 = this.f42838a;
        if (context2 instanceof MyGameManagerActivity) {
            com.papa.sim.statistic.p.l(context2).K1(Event.onclickCentreGuessuLike, new Ext());
        }
        this.f42841d = false;
        iVar.f42874d.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z(View view) {
        MyGameUpdateManagerActivity_.k1(view.getContext()).start();
    }

    void G() {
        List<DownloadTask> T = g1.f.G().T(this.f42838a);
        DownloadTask downloadTask = null;
        if (T != null && T.size() > 0) {
            long j4 = 0;
            for (DownloadTask downloadTask2 : T) {
                if (j4 == 0 || j4 < downloadTask2.getFinishTime()) {
                    j4 = downloadTask2.getFinishTime();
                    downloadTask = downloadTask2;
                }
            }
            if (downloadTask != null) {
                this.f42839b = downloadTask.getCrc_link_type_val();
                return;
            }
            return;
        }
        List<DownloadTask> d4 = g1.f.G().d();
        Iterator<DownloadTask> it2 = d4.iterator();
        while (it2.hasNext()) {
            if (it2.next().getCrc_link_type_val().length() <= 3) {
                it2.remove();
            }
        }
        long j5 = 0;
        for (DownloadTask downloadTask3 : d4) {
            if (downloadTask3.getStatus() == 5 && (j5 == 0 || j5 < downloadTask3.getOpenTime())) {
                j5 = downloadTask3.getOpenTime();
                downloadTask = downloadTask3;
            }
        }
        if (downloadTask != null) {
            this.f42839b = downloadTask.getCrc_link_type_val();
        } else {
            this.f42839b = "";
        }
    }

    void H(TextView textView, DownloadTask downloadTask) {
        if (downloadTask == null || !UtilsMy.e0(downloadTask.getTipBeans())) {
            return;
        }
        boolean c4 = com.join.android.app.common.utils.a.g0(this.f42838a).c(this.f42838a, downloadTask.getPackageName());
        if (UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            c4 = false;
        }
        if (c4) {
            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f42838a).k(this.f42838a, downloadTask.getPackageName());
            if (com.join.mgps.Util.d2.i(downloadTask.getVer()) && k4.d() < Integer.parseInt(downloadTask.getVer())) {
                textView.setBackgroundResource(R.drawable.recom_green_butn);
                textView.setText("更新");
                textView.setTextColor(-9263087);
            } else {
                textView.setBackgroundResource(R.drawable.recom_maincolor_butn);
                textView.setText(this.f42838a.getResources().getString(R.string.download_status_finished));
                textView.setTextColor(-688602);
            }
        } else {
            textView.setBackgroundResource(R.drawable.recom_green_butn);
            int down_status = downloadTask.getDown_status();
            textView.setEnabled(true);
            textView.setTextColor(-12802819);
            boolean z3 = UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0;
            if (down_status == 3 && !z3) {
                textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
                textView.setTextSize(2, 12.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
            } else if (down_status == 2 && !z3) {
                textView.setText("即将开放");
                textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
                textView.setTextColor(-7763575);
                textView.setEnabled(false);
                textView.setBackgroundResource(R.drawable.recom_grey_butn);
            } else {
                if (downloadTask.getPay_game_amount() > 0) {
                    Resources resources = textView.getResources();
                    textView.setText(resources.getString(R.string.pay_game_amount, com.join.mgps.Util.d2.l(downloadTask.getPay_game_amount()) + ""));
                } else {
                    textView.setText(textView.getResources().getString(R.string.download_status_download));
                }
                textView.setTextSize(2, 13.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
            }
        }
        textView.setOnClickListener(new d(downloadTask));
    }

    public void I(boolean z3) {
        this.f42840c = z3;
    }

    public void J(boolean z3) {
        this.f42841d = z3;
    }

    void K(TextView textView, int i2) {
        if (textView == null) {
            return;
        }
        if (i2 < 1) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        Resources resources = textView.getResources();
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) textView.getLayoutParams();
        if (i2 < 10) {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = resources.getDimensionPixelOffset(R.dimen.wdp32);
            ((ViewGroup.MarginLayoutParams) layoutParams).height = resources.getDimensionPixelOffset(R.dimen.wdp32);
            textView.setLayoutParams(layoutParams);
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.mygame_big_round);
            textView.setPadding(0, 0, 0, 1);
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = resources.getDimensionPixelOffset(R.dimen.wdp32);
            textView.setGravity(17);
            textView.setLayoutParams(layoutParams);
            textView.setCompoundDrawables(null, null, null, null);
            textView.setBackgroundResource(R.drawable.message_round1);
            int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.wdp10);
            textView.setPadding(dimensionPixelOffset, 0, dimensionPixelOffset, 1);
        }
        textView.setText(i2 + "");
    }

    void L(h hVar, final DownloadTask downloadTask) {
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (status == 8) {
            TextView textView = hVar.f42860c;
            textView.setText(downloadTask.getProgress() + "% · " + downloadTask.getSpeed());
        } else if (status == 12) {
            hVar.f42860c.setText("解压中...");
        } else if (status != 13) {
            String q12 = UtilsMy.q1(downloadTask);
            if (downloadTask.getSp_tag_info() != null && downloadTask.getSp_tag_info().getModel() != null) {
                q12 = downloadTask.getSp_tag_info().getModel().getName();
            }
            hVar.f42860c.setText(q12);
            hVar.f42860c.setTextColor(Color.parseColor("#FFA8A8A8"));
        } else {
            hVar.f42860c.setText("解压失败");
            hVar.f42860c.setTextColor(Color.parseColor("#FFFF4D4D"));
        }
        hVar.f42869l.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m3.this.A(downloadTask, view);
            }
        });
        hVar.f42866i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.f3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m3.this.B(downloadTask, view);
            }
        });
        hVar.f42869l.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.join.mgps.adapter.k3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean E;
                E = m3.this.E(downloadTask, view);
                return E;
            }
        });
        N(hVar, downloadTask);
    }

    void M(TextView textView, DownloadTask downloadTask) {
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getPlugin_num())) {
            return;
        }
        String plugin_num = downloadTask.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            textView.setBackgroundResource(R.drawable.recom_blue_butn);
            textView.setText("开始");
            textView.setTextColor(this.f42838a.getResources().getColor(R.color.app_blue_color));
            textView.setOnClickListener(new d(downloadTask));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void N(com.join.mgps.adapter.m3.h r14, com.github.snowdream.android.app.downloader.DownloadTask r15) {
        /*
            Method dump skipped, instructions count: 870
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.m3.N(com.join.mgps.adapter.m3$h, com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    public void O(List<f> list) {
        if (list == null) {
            return;
        }
        this.f42843f.clear();
        if (list.size() > 0) {
            this.f42843f.addAll(list);
        }
    }

    public void P(e eVar) {
        this.f42844g = eVar;
    }

    public void Q(View view) {
        if (view == null) {
            return;
        }
        final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(2000L);
        alphaAnimation.setAnimationListener(new b(view));
        view.setAnimation(alphaAnimation);
        view.postDelayed(new Runnable() { // from class: com.join.mgps.adapter.l3
            @Override // java.lang.Runnable
            public final void run() {
                alphaAnimation.start();
            }
        }, 150L);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42843f.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        if (i2 < this.f42843f.size()) {
            return this.f42843f.get(i2).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return i2 < this.f42843f.size() ? this.f42843f.get(i2).b() : super.getItemViewType(i2);
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == 0) {
            return t(i2, view, viewGroup);
        }
        if (itemViewType == 1) {
            return r(i2, view, viewGroup);
        }
        if (itemViewType == 2) {
            return q(i2, view, viewGroup);
        }
        if (itemViewType == 4) {
            return s(i2, view, viewGroup);
        }
        if (itemViewType == 3) {
            return p(i2, view, viewGroup);
        }
        return null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 5;
    }

    boolean k(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return false;
        }
        if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 3) {
            if (UtilsMy.D1(this.f42838a, downloadTask.getCrc_link_type_val()) || new PrefDef_(this.f42838a).downloadSpeedUpGameSize().d().intValue() > downloadTask.getActual_size()) {
                return false;
            }
            return TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.chajian.name());
        }
        return false;
    }

    public void l(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (!TextUtils.isEmpty(downloadTask.getRomType()) && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
                new c(downloadTask).start();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        m(downloadTask);
    }

    public void m(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        try {
            Iterator<f> it2 = this.f42843f.iterator();
            while (it2.hasNext()) {
                f next = it2.next();
                if (next.b() == 2 && ((DownloadTask) next.a()).getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    it2.remove();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        notifyDataSetChanged();
    }

    public List<f> n() {
        if (this.f42843f == null) {
            this.f42843f = new ArrayList();
        }
        return this.f42843f;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        G();
        super.notifyDataSetChanged();
    }

    public e o() {
        return this.f42844g;
    }

    public boolean u() {
        return this.f42840c;
    }

    public boolean v() {
        return this.f42841d;
    }

    /* compiled from: MyGameAdapter.java */
    /* loaded from: classes3.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        int f42853a;

        /* renamed from: b  reason: collision with root package name */
        Object f42854b;

        /* renamed from: c  reason: collision with root package name */
        boolean f42855c;

        public f(int i2, Object obj) {
            this.f42853a = i2;
            this.f42854b = obj;
        }

        public Object a() {
            return this.f42854b;
        }

        public int b() {
            return this.f42853a;
        }

        public boolean c() {
            return this.f42855c;
        }

        public void d(boolean z3) {
            this.f42855c = z3;
        }

        public void e(Object obj) {
            this.f42854b = obj;
        }

        public void f(int i2) {
            this.f42853a = i2;
        }

        public f(int i2, Object obj, boolean z3) {
            this.f42853a = i2;
            this.f42854b = obj;
            this.f42855c = z3;
        }
    }
}
