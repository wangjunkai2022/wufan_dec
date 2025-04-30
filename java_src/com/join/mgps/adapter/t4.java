package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EverdayNewGameActivity;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.PapaMainV2Fragment;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.HorizontalRecyclerView;
import com.join.mgps.customview.RecyclerviewViewpager;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.MgpapaMainItemBean;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.PAPAItemTitle2;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import com.psk.eventmodule.StatFactory;
import java.util.ArrayList;
import java.util.List;
/* compiled from: PapaMainV2Adapter.java */
/* loaded from: classes3.dex */
public class t4 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int A = 20;
    public static final int B = 21;
    public static final int C = 22;
    public static final int D = 23;
    public static final int E = 24;
    public static final int F = 25;
    public static final int G = 26;
    public static final int H = 27;
    public static final int I = 28;
    public static final int J = 29;
    public static final int K = 30;
    public static final int L = 31;
    public static final int M = 32;
    public static final int N = 33;
    public static final int O = 34;
    public static final int P = 35;
    public static final int Q = 36;
    public static final int R = 37;
    public static final int S = 38;
    public static final int T = 39;

    /* renamed from: h  reason: collision with root package name */
    public static final int f44140h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final int f44141i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f44142j = 2;

    /* renamed from: k  reason: collision with root package name */
    public static final int f44143k = 3;

    /* renamed from: l  reason: collision with root package name */
    public static final int f44144l = 4;

    /* renamed from: m  reason: collision with root package name */
    public static final int f44145m = 5;

    /* renamed from: n  reason: collision with root package name */
    public static final int f44146n = 6;

    /* renamed from: o  reason: collision with root package name */
    public static final int f44147o = 7;

    /* renamed from: p  reason: collision with root package name */
    public static final int f44148p = 8;

    /* renamed from: q  reason: collision with root package name */
    public static final int f44149q = 9;

    /* renamed from: r  reason: collision with root package name */
    public static final int f44150r = 10;

    /* renamed from: s  reason: collision with root package name */
    public static final int f44151s = 11;

    /* renamed from: t  reason: collision with root package name */
    public static final int f44152t = 12;

    /* renamed from: u  reason: collision with root package name */
    public static final int f44153u = 13;

    /* renamed from: v  reason: collision with root package name */
    public static final int f44154v = 14;

    /* renamed from: w  reason: collision with root package name */
    public static final int f44155w = 15;

    /* renamed from: x  reason: collision with root package name */
    public static final int f44156x = 16;

    /* renamed from: y  reason: collision with root package name */
    public static final int f44157y = 18;

    /* renamed from: z  reason: collision with root package name */
    public static final int f44158z = 19;

    /* renamed from: a  reason: collision with root package name */
    private List<MgpapaMainItemBean> f44159a;

    /* renamed from: b  reason: collision with root package name */
    private Context f44160b;

    /* renamed from: c  reason: collision with root package name */
    private Fragment f44161c;

    /* renamed from: d  reason: collision with root package name */
    private o1.e f44162d;

    /* renamed from: e  reason: collision with root package name */
    private com.join.android.app.component.video.c f44163e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.customview.d0 f44164f;

    /* renamed from: g  reason: collision with root package name */
    private i f44165g = null;

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class a implements BaseQuickAdapter.i {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f44166a;

        a(List list) {
            this.f44166a = list;
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.i
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
            int i4;
            t4 t4Var = t4.this;
            t4Var.I("2-" + (i2 + 1));
            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) this.f44166a.get(i2);
            IntentDateBean intentDataBean = homeBeanDTO.getIntentDataBean();
            try {
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (com.join.mgps.Util.d2.i(intentDataBean.getLink_type_val())) {
                i4 = Integer.parseInt(intentDataBean.getLink_type_val());
                if (intentDataBean.getLink_type() != 3 && intentDataBean.getJump_type() == 31) {
                    com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(1));
                } else if (intentDataBean.getLink_type() != 3 && intentDataBean.getJump_type() == 2 && i4 == 1) {
                    com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(2));
                } else {
                    intentDataBean.setExt1(homeBeanDTO.getSub_title());
                    IntentUtil.getInstance().intentActivity(t4.this.f44160b, intentDataBean);
                }
                t4.this.M(null);
            }
            i4 = 1;
            if (intentDataBean.getLink_type() != 3) {
            }
            if (intentDataBean.getLink_type() != 3) {
            }
            intentDataBean.setExt1(homeBeanDTO.getSub_title());
            IntentUtil.getInstance().intentActivity(t4.this.f44160b, intentDataBean);
            t4.this.M(null);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44168a;

        b(int i2) {
            this.f44168a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t4.this.f44163e.y(this.f44168a);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f44170a;

        c(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f44170a = homeBeanDTO;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(t4.this.f44160b, this.f44170a.getIntentDataBean());
            t4.this.M(this.f44170a.getPosition());
            t4.this.J(this.f44170a.getPosition());
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f44172a;

        d(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f44172a = homeBeanDTO;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(t4.this.f44160b, this.f44172a.getIntentDataBean());
            t4.this.M(this.f44172a.getPosition());
            t4.this.J(this.f44172a.getPosition());
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class e extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f44174a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ m f44175b;

        e(List list, m mVar) {
            this.f44174a = list;
            this.f44175b = mVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            t4.this.G(this.f44174a, this.f44175b.f44227b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class f implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f44177a;

        f(List list) {
            this.f44177a = list;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (t4.this.f44165g != null) {
                t4.this.f44165g.b(i2, this.f44177a);
            }
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class g extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f44179a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p f44180b;

        g(List list, p pVar) {
            this.f44179a = list;
            this.f44180b = pVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            t4.this.H(this.f44179a, this.f44180b.f44237a);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    public static class h extends PagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<Fragment> f44182a;

        /* renamed from: b  reason: collision with root package name */
        private FragmentManager f44183b;

        public h(FragmentManager fragmentManager, List<Fragment> list) {
            this.f44183b = fragmentManager;
            this.f44182a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(@NonNull ViewGroup viewGroup, int i2, @NonNull Object obj) {
            viewGroup.removeView(this.f44182a.get(i2).getView());
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f44182a.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @NonNull
        public Object instantiateItem(@NonNull ViewGroup viewGroup, int i2) {
            Fragment fragment = this.f44182a.get(i2);
            if (!fragment.isAdded()) {
                FragmentTransaction beginTransaction = this.f44183b.beginTransaction();
                beginTransaction.add(fragment, fragment.getClass().getSimpleName());
                beginTransaction.commitAllowingStateLoss();
                this.f44183b.executePendingTransactions();
            }
            if (fragment.getView().getParent() == null) {
                viewGroup.addView(fragment.getView());
            }
            return fragment.getView();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
            return view == obj;
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    public interface i {
        void a(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO);

        void b(int i2, List<List<PAPAHomeBeanV7.HomeBeanDTO>> list);

        void c(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO);
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    public class j extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ConstraintLayout f44184a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f44185b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f44186c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f44187d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f44188e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f44189f;

        /* renamed from: g  reason: collision with root package name */
        public ProgressBar f44190g;

        /* renamed from: h  reason: collision with root package name */
        public ProgressBar f44191h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f44192i;

        /* renamed from: j  reason: collision with root package name */
        public FrameLayout f44193j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f44194k;

        /* renamed from: l  reason: collision with root package name */
        public SimpleDraweeView f44195l;

        /* renamed from: m  reason: collision with root package name */
        public FrameLayout f44196m;

        /* renamed from: n  reason: collision with root package name */
        public ProgressBar f44197n;

        public j(@NonNull View view) {
            super(view);
            this.f44184a = (ConstraintLayout) view.findViewById(R.id.root);
            this.f44185b = (SimpleDraweeView) view.findViewById(R.id.ivGameIcon);
            this.f44186c = (TextView) view.findViewById(R.id.tvGameName);
            this.f44187d = (LinearLayout) view.findViewById(R.id.llInfo);
            this.f44188e = (TextView) view.findViewById(R.id.appSize);
            this.f44189f = (TextView) view.findViewById(R.id.loding_info);
            this.f44190g = (ProgressBar) view.findViewById(R.id.progressBarZip);
            this.f44191h = (ProgressBar) view.findViewById(R.id.progressBar);
            this.f44192i = (TextView) view.findViewById(R.id.tvGameTags);
            this.f44193j = (FrameLayout) view.findViewById(R.id.flBtn);
            this.f44194k = (TextView) view.findViewById(R.id.tvBtn);
            this.f44195l = (SimpleDraweeView) view.findViewById(R.id.bannerView);
            this.f44196m = (FrameLayout) view.findViewById(R.id.videoContner);
            this.f44197n = (ProgressBar) view.findViewById(R.id.loading_progress);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class k extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private RecyclerView f44199a;

        public k(@NonNull View view) {
            super(view);
            this.f44199a = (RecyclerView) view.findViewById(R.id.rvFastEntry);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    public class l extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ConstraintLayout f44201a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f44202b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f44203c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f44204d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f44205e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f44206f;

        /* renamed from: g  reason: collision with root package name */
        public ProgressBar f44207g;

        /* renamed from: h  reason: collision with root package name */
        public ProgressBar f44208h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f44209i;

        /* renamed from: j  reason: collision with root package name */
        public FrameLayout f44210j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f44211k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f44212l;

        /* renamed from: m  reason: collision with root package name */
        public ConstraintLayout f44213m;

        /* renamed from: n  reason: collision with root package name */
        public SimpleDraweeView f44214n;

        /* renamed from: o  reason: collision with root package name */
        public TextView f44215o;

        /* renamed from: p  reason: collision with root package name */
        public LinearLayout f44216p;

        /* renamed from: q  reason: collision with root package name */
        public TextView f44217q;

        /* renamed from: r  reason: collision with root package name */
        public TextView f44218r;

        /* renamed from: s  reason: collision with root package name */
        public ProgressBar f44219s;

        /* renamed from: t  reason: collision with root package name */
        public ProgressBar f44220t;

        /* renamed from: u  reason: collision with root package name */
        public TextView f44221u;

        /* renamed from: v  reason: collision with root package name */
        public FrameLayout f44222v;

        /* renamed from: w  reason: collision with root package name */
        public TextView f44223w;

        /* renamed from: x  reason: collision with root package name */
        public ProgressBar f44224x;

        public l(@NonNull View view) {
            super(view);
            this.f44201a = (ConstraintLayout) view.findViewById(R.id.item1);
            this.f44202b = (SimpleDraweeView) view.findViewById(R.id.ivGamePic1);
            this.f44203c = (TextView) view.findViewById(R.id.tvGameName1);
            this.f44204d = (LinearLayout) view.findViewById(R.id.llInfo1);
            this.f44205e = (TextView) view.findViewById(R.id.appSize1);
            this.f44206f = (TextView) view.findViewById(R.id.loding_info1);
            this.f44207g = (ProgressBar) view.findViewById(R.id.progressBarZip1);
            this.f44208h = (ProgressBar) view.findViewById(R.id.progressBar1);
            this.f44209i = (TextView) view.findViewById(R.id.tvGameTags1);
            this.f44210j = (FrameLayout) view.findViewById(R.id.flBtn1);
            this.f44211k = (TextView) view.findViewById(R.id.tvBtn1);
            this.f44212l = (ProgressBar) view.findViewById(R.id.loading_progress1);
            this.f44213m = (ConstraintLayout) view.findViewById(R.id.item2);
            this.f44214n = (SimpleDraweeView) view.findViewById(R.id.ivGamePic2);
            this.f44215o = (TextView) view.findViewById(R.id.tvGameName2);
            this.f44216p = (LinearLayout) view.findViewById(R.id.llInfo2);
            this.f44217q = (TextView) view.findViewById(R.id.appSize2);
            this.f44218r = (TextView) view.findViewById(R.id.loding_info2);
            this.f44219s = (ProgressBar) view.findViewById(R.id.progressBarZip2);
            this.f44220t = (ProgressBar) view.findViewById(R.id.progressBar2);
            this.f44221u = (TextView) view.findViewById(R.id.tvGameTags2);
            this.f44222v = (FrameLayout) view.findViewById(R.id.flBtn2);
            this.f44223w = (TextView) view.findViewById(R.id.tvBtn2);
            this.f44224x = (ProgressBar) view.findViewById(R.id.loading_progress2);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class m extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private FrameLayout f44226a;

        /* renamed from: b  reason: collision with root package name */
        private HorizontalRecyclerView f44227b;

        public m(@NonNull View view) {
            super(view);
            this.f44227b = (HorizontalRecyclerView) view.findViewById(R.id.recyclerView);
            this.f44226a = (FrameLayout) view.findViewById(R.id.flRoot);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class n extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f44229a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f44230b;

        public n(@NonNull View view) {
            super(view);
            this.f44229a = (TextView) view.findViewById(R.id.tvTitle);
            this.f44230b = (TextView) view.findViewById(R.id.tvSubTitle);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class o extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private ConstraintLayout f44232a;

        /* renamed from: b  reason: collision with root package name */
        private SlidingTabLayout6 f44233b;

        /* renamed from: c  reason: collision with root package name */
        private RecyclerviewViewpager f44234c;

        /* renamed from: d  reason: collision with root package name */
        private LinearLayout f44235d;

        public o(@NonNull View view) {
            super(view);
            this.f44232a = (ConstraintLayout) view.findViewById(R.id.root);
            this.f44233b = (SlidingTabLayout6) view.findViewById(R.id.tabLayout);
            this.f44234c = (RecyclerviewViewpager) view.findViewById(R.id.viewPager);
            this.f44235d = (LinearLayout) view.findViewById(R.id.moreLayout);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    public class p extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView f44237a;

        public p(@NonNull View view) {
            super(view);
            this.f44237a = (RecyclerView) view.findViewById(R.id.recyclerView);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class q extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f44239a;

        public q(@NonNull View view) {
            super(view);
            this.f44239a = (TextView) view.findViewById(R.id.spacingView);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class r extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f44241a;

        public r(@NonNull View view) {
            super(view);
            this.f44241a = view.findViewById(R.id.line);
        }
    }

    /* compiled from: PapaMainV2Adapter.java */
    /* loaded from: classes3.dex */
    class s extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private View f44243a;

        /* renamed from: b  reason: collision with root package name */
        private RelativeLayout f44244b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44245c;

        /* renamed from: d  reason: collision with root package name */
        private SimpleDraweeView f44246d;

        /* renamed from: e  reason: collision with root package name */
        private RelativeLayout f44247e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f44248f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f44249g;

        /* renamed from: h  reason: collision with root package name */
        private SimpleDraweeView f44250h;

        /* renamed from: i  reason: collision with root package name */
        private RelativeLayout f44251i;

        /* renamed from: j  reason: collision with root package name */
        private TextView f44252j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f44253k;

        /* renamed from: l  reason: collision with root package name */
        private LinearLayout f44254l;

        public s(@NonNull View view) {
            super(view);
            this.f44243a = view.findViewById(R.id.gradientView);
            this.f44244b = (RelativeLayout) view.findViewById(R.id.rlDailyDiscovery);
            this.f44245c = (TextView) view.findViewById(R.id.fight_appname);
            this.f44246d = (SimpleDraweeView) view.findViewById(R.id.fightapp_image);
            this.f44247e = (RelativeLayout) view.findViewById(R.id.rlDzg);
            this.f44248f = (TextView) view.findViewById(R.id.tvDzg);
            this.f44249g = (TextView) view.findViewById(R.id.tvDzgSub);
            this.f44250h = (SimpleDraweeView) view.findViewById(R.id.ivDzg);
            this.f44251i = (RelativeLayout) view.findViewById(R.id.rlDailyNew);
            this.f44252j = (TextView) view.findViewById(R.id.tvDialyNew);
            this.f44253k = (TextView) view.findViewById(R.id.tvDailyNewCount);
            this.f44254l = (LinearLayout) view.findViewById(R.id.llDailyNewIcon);
        }
    }

    public t4(Context context, Fragment fragment, List<MgpapaMainItemBean> list, com.join.android.app.component.video.c cVar, o1.e eVar) {
        this.f44160b = context;
        this.f44161c = fragment;
        this.f44163e = cVar;
        this.f44162d = eVar;
        this.f44159a = list == null ? new ArrayList<>() : list;
        setHasStableIds(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(List list, BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        PAPAHomeBeanV7.NgSelectionDTO ngSelectionDTO = (PAPAHomeBeanV7.NgSelectionDTO) list.get(i2);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(ngSelectionDTO.getId());
        if (intentDateBean.getExtBean() == null) {
            intentDateBean.setExtBean(new ExtBean());
        }
        intentDateBean.getExtBean().setFrom(String.valueOf(ngSelectionDTO.get_from()));
        intentDateBean.getExtBean().set_from_type(ngSelectionDTO.get_from_type());
        IntentUtil.getInstance().intentActivity(this.f44160b, intentDateBean);
        M(ngSelectionDTO.getPosition());
        J(ngSelectionDTO.getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(View view) {
        com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(1));
        M(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(List list, BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        IntentUtil.getInstance().intentActivity(this.f44160b, ((PAPAHomeBeanV7.HomeBeanDTO) list.get(i2)).getIntentDataBean());
        M(((PAPAHomeBeanV7.HomeBeanDTO) list.get(i2)).getPosition());
        J(((PAPAHomeBeanV7.HomeBeanDTO) list.get(i2)).getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(List list, int i2, BaseQuickAdapter baseQuickAdapter, View view, int i4) {
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) list.get(i4);
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        try {
            ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.loading_progress);
            TextView textView = (TextView) view.findViewById(R.id.tvBtn);
            progressBar.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
            textView.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        i iVar = this.f44165g;
        if (iVar != null) {
            iVar.a(i2, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, ProgressBar progressBar, TextView textView, int i2, View view) {
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        progressBar.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
        textView.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        i iVar = this.f44165g;
        if (iVar != null) {
            iVar.a(i2, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f44160b, homeBeanDTO.getIntentDataBean());
        K(homeBeanDTO);
        M(homeBeanDTO.getPosition());
        J(homeBeanDTO.getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(List<PAPAHomeBeanV7.NgSelectionDTO> list, RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManager;
        if (recyclerView == null || list == null || (linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager()) == null) {
            return;
        }
        int findLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        for (int i2 = 0; i2 <= Math.min(findLastCompletelyVisibleItemPosition, list.size() - 1); i2++) {
            if (!list.get(i2).isHasExposure()) {
                Ext ext = new Ext();
                ext.setPage("home");
                ext.setFrom("204");
                ext.setGameId(list.get(i2).getId());
                ext.setPosition(list.get(i2).getPosition());
                com.papa.sim.statistic.p.l(this.f44160b).h0(Event.expGameAdPage, ext, list.get(i2).getId());
                list.get(i2).setHasExposure(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(List<PAPAHomeBeanV7.HomeBeanDTO> list, RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManager;
        if (recyclerView == null || list == null || (linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager()) == null) {
            return;
        }
        int findLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        for (int i2 = 0; i2 <= Math.min(findLastCompletelyVisibleItemPosition, list.size() - 1); i2++) {
            if (!list.get(i2).isHasExposure()) {
                Ext ext = new Ext();
                ext.setPage("home");
                ext.setFrom("206");
                ext.setGameId(u(list.get(i2)));
                ext.setPosition(list.get(i2).getPosition());
                com.papa.sim.statistic.p.l(this.f44160b).h0(Event.expGameAdPage, ext, u(list.get(i2)));
                list.get(i2).setHasExposure(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(String str) {
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.f44160b);
        String name = ExtFrom.home.name();
        l4.s(name, "22-" + str, AccountUtil_.getInstance_(this.f44160b).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(String str) {
        com.papa.sim.statistic.p.l(this.f44160b).s(ExtFrom.home.name(), str, AccountUtil_.getInstance_(this.f44160b).getUid());
    }

    private void K(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        String str;
        if (homeBeanDTO == null || homeBeanDTO.getG_info() == null || homeBeanDTO.getPosition() == null || homeBeanDTO.getG_info().getPosition_path() == null) {
            return;
        }
        String[] split = homeBeanDTO.getPosition().split("-");
        String str2 = "";
        if (split.length <= 2) {
            str = "0";
        } else if (!"22".equals(split[0])) {
            return;
        } else {
            if ("4".equals(split[1])) {
                str2 = "大家都在玩";
            } else if ("13".equals(split[1])) {
                str2 = "最新网游";
            }
            str = split[2];
        }
        String str3 = str;
        String str4 = str2;
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        StatFactory.Companion.getInstance(this.f44160b).sendEvent(new StatFactory.VolcanoEvent(com.psk.eventmodule.Event.click, homeBeanDTO.getG_info().getId(), new StatFactory.SpmData("wufun", "home", str4, str3, false), homeBeanDTO.getG_info().getPosition_path(), UtilsMy.G1(homeBeanDTO.getG_info().getTag_id())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(String str) {
        Fragment fragment = this.f44161c;
        if (fragment instanceof PapaMainV2Fragment) {
            ((PapaMainV2Fragment) fragment).s1(str);
        }
    }

    private void O(l lVar, final PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, boolean z3, final int i2) {
        if (lVar == null) {
            return;
        }
        ConstraintLayout constraintLayout = z3 ? lVar.f44201a : lVar.f44213m;
        SimpleDraweeView simpleDraweeView = z3 ? lVar.f44202b : lVar.f44214n;
        TextView textView = z3 ? lVar.f44203c : lVar.f44215o;
        TextView textView2 = z3 ? lVar.f44209i : lVar.f44221u;
        FrameLayout frameLayout = z3 ? lVar.f44210j : lVar.f44222v;
        TextView textView3 = z3 ? lVar.f44211k : lVar.f44223w;
        LinearLayout linearLayout = z3 ? lVar.f44204d : lVar.f44216p;
        TextView textView4 = z3 ? lVar.f44205e : lVar.f44217q;
        TextView textView5 = z3 ? lVar.f44206f : lVar.f44218r;
        ProgressBar progressBar = z3 ? lVar.f44207g : lVar.f44219s;
        ProgressBar progressBar2 = z3 ? lVar.f44208h : lVar.f44220t;
        final ProgressBar progressBar3 = z3 ? lVar.f44212l : lVar.f44224x;
        MyImageLoader.i(simpleDraweeView, homeBeanDTO.getBig_pic(), r.c.f12144g);
        PAPAHomeBeanV7.GInfoDTO g_info = homeBeanDTO.getG_info();
        textView.setText(g_info == null ? homeBeanDTO.getTitle() : g_info.getName());
        textView3.setVisibility(0);
        progressBar3.setVisibility(4);
        if (g_info != null && !TextUtils.isEmpty(g_info.getTag_name())) {
            StringBuilder sb = new StringBuilder();
            String[] split = g_info.getTag_name().split(",");
            for (int i4 = 0; i4 < split.length; i4++) {
                sb.append(split[i4]);
                sb.append(" | ");
                if (i4 >= 1) {
                    break;
                }
            }
            textView2.setText(sb.substring(0, sb.length() - 3));
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.m4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                t4.this.F(homeBeanDTO, view);
            }
        });
        final TextView textView6 = textView3;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.p4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                t4.this.E(homeBeanDTO, progressBar3, textView6, i2, view);
            }
        });
        update(homeBeanDTO, textView, textView2, frameLayout, textView3, linearLayout, textView4, textView5, progressBar, progressBar2);
    }

    private void P(TextView textView, LinearLayout linearLayout, ProgressBar progressBar, ProgressBar progressBar2, boolean z3, boolean z4) {
        if (z3) {
            textView.setVisibility(0);
            linearLayout.setVisibility(8);
            progressBar.setVisibility(8);
            progressBar2.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        textView.setVisibility(8);
        if (z4) {
            progressBar2.setVisibility(0);
            progressBar.setVisibility(8);
            return;
        }
        progressBar.setVisibility(0);
        progressBar2.setVisibility(8);
    }

    private String u(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        if (homeBeanDTO == null || homeBeanDTO.getG_info() == null) {
            return null;
        }
        if (!TextUtils.isEmpty(homeBeanDTO.getG_info().getId()) && !TextUtils.equals(homeBeanDTO.getG_info().getId(), "0")) {
            return homeBeanDTO.getG_info().getId();
        }
        return homeBeanDTO.getG_info().getMod_id();
    }

    private void update(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, TextView textView, TextView textView2, FrameLayout frameLayout, TextView textView3, LinearLayout linearLayout, TextView textView4, TextView textView5, ProgressBar progressBar, ProgressBar progressBar2) {
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        long size = downloadTask != null ? downloadTask.getSize() : 0L;
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                textView3.setText("开始");
                textView.setVisibility(8);
                return;
            }
        }
        if (downloadTask == null) {
            P(textView2, linearLayout, progressBar2, progressBar, true, false);
            textView3.setText("获取");
            if (gameBean == null) {
                return;
            }
            if (UtilsMy.e0(gameBean.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.f44160b).c(this.f44160b, gameBean.getPackageName()) && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f44160b).k(this.f44160b, gameBean.getPackageName());
                    if (com.join.mgps.Util.d2.i(gameBean.getVer()) && k4.d() < Integer.parseInt(gameBean.getVer())) {
                        textView3.setText("更新");
                        return;
                    } else {
                        textView3.setText("启动");
                        return;
                    }
                }
                UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.t2(textView3, frameLayout, gameBean);
                return;
            }
            UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
            UtilsMy.t2(textView3, frameLayout, gameBean);
            return;
        }
        int status = downloadTask.getStatus();
        if (gameBean != null && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                textView3.setText("暂停");
                return;
            } else if (status == 48) {
                textView3.setText("安装中");
                P(textView2, linearLayout, progressBar2, progressBar, true, false);
                return;
            } else if (status != 2) {
                if (status != 3) {
                    if (status != 5) {
                        if (status != 6) {
                            if (status != 7) {
                                if (status != 42) {
                                    if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                textView3.setText("更新");
                                                P(textView2, linearLayout, progressBar2, progressBar, true, false);
                                                return;
                                            case 10:
                                                textView3.setText("等待");
                                                P(textView2, linearLayout, progressBar2, progressBar, false, false);
                                                textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                try {
                                                    progressBar2.setProgress((int) downloadTask.getProgress());
                                                } catch (Exception e4) {
                                                    e4.printStackTrace();
                                                }
                                                textView5.setText("等待中");
                                                return;
                                            case 11:
                                                textView3.setText("安装");
                                                P(textView2, linearLayout, progressBar2, progressBar, true, false);
                                                return;
                                            case 12:
                                                P(textView2, linearLayout, progressBar2, progressBar, false, true);
                                                textView4.setText(UtilsMy.f(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                textView5.setText("解压中..");
                                                progressBar.setProgress((int) downloadTask.getProgress());
                                                textView3.setText("解压中");
                                                return;
                                            case 13:
                                                P(textView2, linearLayout, progressBar2, progressBar, false, true);
                                                textView4.setText(UtilsMy.f(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                textView5.setText("点击重新解压");
                                                progressBar.setProgress((int) downloadTask.getProgress());
                                                textView3.setText("解压");
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    textView3.setText("启动");
                    P(textView2, linearLayout, progressBar2, progressBar, true, true);
                    return;
                }
                textView3.setText("继续");
                P(textView2, linearLayout, progressBar2, progressBar, false, false);
                try {
                    if (downloadTask.getSize() == 0) {
                        textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                    } else {
                        textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                    }
                    progressBar2.setProgress((int) downloadTask.getProgress());
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                textView5.setText("暂停中");
                return;
            } else {
                UtilsMy.C3(downloadTask);
                textView3.setText("暂停");
                P(textView2, linearLayout, progressBar2, progressBar, false, false);
                if (downloadTask.getSize() == 0) {
                    textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                } else {
                    textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                }
                progressBar2.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                textView5.setText(speed + "/S");
                return;
            }
        }
        textView3.setText("获取");
        UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
        UtilsMy.t2(textView3, frameLayout, gameBean);
        P(textView2, linearLayout, progressBar2, progressBar, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f44160b, homeBeanDTO.getIntentDataBean());
        M(null);
        I("3-1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(View view) {
        this.f44160b.startActivity(new Intent(this.f44160b, EverdayNewGameActivity.class));
        M(null);
        I("3-3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f44160b, homeBeanDTO.getIntentDataBean());
        M(null);
        I("3-2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, j jVar, int i2, View view) {
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        jVar.f44197n.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
        jVar.f44194k.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        i iVar = this.f44165g;
        if (iVar != null) {
            iVar.a(i2, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f44160b, homeBeanDTO.getIntentDataBean());
        M(homeBeanDTO.getPosition());
        J(homeBeanDTO.getPosition());
    }

    public void L(List<MgpapaMainItemBean> list) {
        this.f44159a = list;
        notifyDataSetChanged();
    }

    public void N(i iVar) {
        this.f44165g = iVar;
    }

    public List<MgpapaMainItemBean> getData() {
        List<MgpapaMainItemBean> list = this.f44159a;
        return list == null ? new ArrayList() : list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f44159a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return this.f44159a.get(i2).hashCode();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        List<MgpapaMainItemBean> list;
        if (i2 >= 0 && (list = this.f44159a) != null && list.size() > i2) {
            return this.f44159a.get(i2).getShowtype();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, final int i2) {
        List<MgpapaMainItemBean> list;
        if (i2 < 0 || (list = this.f44159a) == null || list.size() <= i2) {
            return;
        }
        int itemViewType = getItemViewType(i2);
        MgpapaMainItemBean mgpapaMainItemBean = this.f44159a.get(i2);
        int i4 = 0;
        switch (itemViewType) {
            case 26:
                s sVar = (s) viewHolder;
                PAPAHomeBeanV7.TopChannelDTO topChannelDTO = (PAPAHomeBeanV7.TopChannelDTO) mgpapaMainItemBean.getObject();
                if (topChannelDTO != null) {
                    if (topChannelDTO.getDiscover() != null) {
                        final PAPAHomeBeanV7.HomeBeanDTO discover = topChannelDTO.getDiscover();
                        MyImageLoader.h(sVar.f44246d, discover.getBig_pic());
                        sVar.f44245c.setText(discover.getTitle());
                        sVar.f44244b.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.o4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                t4.this.v(discover, view);
                            }
                        });
                    }
                    if (topChannelDTO.getTheNew() != null) {
                        PAPAHomeBeanV7.TheNewDTO theNew = topChannelDTO.getTheNew();
                        TextView textView = sVar.f44253k;
                        textView.setText(theNew.getCount() + "款");
                        sVar.f44251i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.k4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                t4.this.w(view);
                            }
                        });
                        List<PAPAHomeBeanV7.ListDTO> list2 = theNew.getList();
                        if (list2 != null && list2.size() > 0) {
                            sVar.f44254l.removeAllViews();
                            for (PAPAHomeBeanV7.ListDTO listDTO : list2) {
                                View inflate = LayoutInflater.from(this.f44160b).inflate(R.layout.mgpapa_home_item_new_icon, (ViewGroup) null);
                                MyImageLoader.h((SimpleDraweeView) inflate.findViewById(R.id.newIcon), listDTO.getIco());
                                sVar.f44254l.addView(inflate);
                            }
                        }
                    }
                    if (topChannelDTO.getBroadcast() != null) {
                        final PAPAHomeBeanV7.HomeBeanDTO broadcast = topChannelDTO.getBroadcast();
                        sVar.f44248f.setText(broadcast.getTitle());
                        sVar.f44249g.setText(broadcast.getSub_title());
                        MyImageLoader.h(sVar.f44250h, broadcast.getBig_pic());
                        sVar.f44247e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.l4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                t4.this.x(broadcast, view);
                            }
                        });
                    }
                    String bg_color = topChannelDTO.getBg_color();
                    if (TextUtils.isEmpty(bg_color)) {
                        bg_color = "#F7F8F9";
                    }
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(0);
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
                    gradientDrawable.setColors(new int[]{Color.parseColor(bg_color), Color.parseColor("#F7F8F9")});
                    gradientDrawable.setGradientType(0);
                    sVar.f44243a.setBackground(gradientDrawable);
                    return;
                }
                return;
            case 27:
                k kVar = (k) viewHolder;
                List list3 = (List) mgpapaMainItemBean.getObject();
                if (list3 != null) {
                    if (kVar.f44199a.getAdapter() == null || !(kVar.f44199a.getAdapter() instanceof com.join.mgps.adapter.s)) {
                        kVar.f44199a.setNestedScrollingEnabled(false);
                        kVar.f44199a.setHasFixedSize(true);
                        com.join.mgps.adapter.s sVar2 = new com.join.mgps.adapter.s(list3);
                        kVar.f44199a.setLayoutManager(new GridLayoutManager(this.f44160b, 5));
                        kVar.f44199a.setAdapter(sVar2);
                        sVar2.setOnItemClickListener(new a(list3));
                        return;
                    }
                    com.join.mgps.adapter.s sVar3 = (com.join.mgps.adapter.s) kVar.f44199a.getAdapter();
                    if (list3.equals(sVar3.getData())) {
                        return;
                    }
                    sVar3.setNewData(list3);
                    return;
                }
                return;
            case 28:
            case 34:
            case 37:
            case 38:
                l lVar = (l) viewHolder;
                List list4 = (List) mgpapaMainItemBean.getObject();
                if (list4 == null || list4.size() < 2) {
                    return;
                }
                O(lVar, (PAPAHomeBeanV7.HomeBeanDTO) list4.get(0), true, i2);
                O(lVar, (PAPAHomeBeanV7.HomeBeanDTO) list4.get(1), false, i2);
                return;
            case 29:
            case 36:
                final j jVar = (j) viewHolder;
                final PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                PAPAHomeBeanV7.GInfoDTO g_info = homeBeanDTO.getG_info();
                if (g_info != null) {
                    MyImageLoader.h(jVar.f44185b, g_info.getIco());
                    jVar.f44186c.setText(g_info.getName());
                    if (!TextUtils.isEmpty(g_info.getTag_name())) {
                        StringBuilder sb = new StringBuilder();
                        String[] split = g_info.getTag_name().split(",");
                        for (int i5 = 0; i5 < split.length; i5++) {
                            sb.append(split[i5]);
                            sb.append(" | ");
                            if (i5 >= 1) {
                                jVar.f44192i.setText(sb.substring(0, sb.length() - 3));
                            }
                        }
                        jVar.f44192i.setText(sb.substring(0, sb.length() - 3));
                    }
                }
                if (com.join.mgps.Util.d2.i(homeBeanDTO.getV_url())) {
                    int i6 = i2 + 1;
                    MyImageLoader.d(jVar.f44195l, R.drawable.banner_normal_icon, homeBeanDTO.getBig_pic());
                    jVar.f44195l.setTag(Integer.valueOf(i6));
                    c.k kVar2 = new c.k(i6, homeBeanDTO.getV_url(), homeBeanDTO.getBig_pic(), homeBeanDTO.getIntentDataBean());
                    kVar2.g(homeBeanDTO.getPosition());
                    this.f44163e.d(i6, kVar2, new boolean[0]);
                    jVar.f44196m.setOnClickListener(new b(i6));
                } else {
                    jVar.f44195l.setTag(null);
                    jVar.f44195l.setVisibility(0);
                    MyImageLoader.d(jVar.f44195l, R.drawable.banner_normal_icon, homeBeanDTO.getBig_pic());
                }
                jVar.f44196m.setOnClickListener(new c(homeBeanDTO));
                jVar.f44195l.setOnClickListener(new d(homeBeanDTO));
                jVar.f44193j.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.q4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        t4.this.y(homeBeanDTO, jVar, i2, view);
                    }
                });
                jVar.f44184a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.n4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        t4.this.z(homeBeanDTO, view);
                    }
                });
                jVar.f44194k.setVisibility(0);
                jVar.f44197n.setVisibility(4);
                update(homeBeanDTO, jVar.f44186c, jVar.f44192i, jVar.f44193j, jVar.f44194k, jVar.f44187d, jVar.f44188e, jVar.f44189f, jVar.f44190g, jVar.f44191h);
                return;
            case 30:
                m mVar = (m) viewHolder;
                final List list5 = (List) mgpapaMainItemBean.getObject();
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f44160b, 0, false);
                linearLayoutManager.setInitialPrefetchItemCount(5);
                l2 l2Var = new l2(list5);
                l2Var.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.mgps.adapter.s4
                    @Override // com.join.mgps.base.BaseQuickAdapter.i
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i7) {
                        t4.this.A(list5, baseQuickAdapter, view, i7);
                    }
                });
                mVar.f44227b.setHasFixedSize(true);
                mVar.f44227b.setItemViewCacheSize(10);
                mVar.f44227b.setNestedScrollingEnabled(false);
                mVar.f44227b.setLayoutManager(linearLayoutManager);
                mVar.f44227b.setAdapter(l2Var);
                mVar.f44227b.addOnScrollListener(new e(list5, mVar));
                return;
            case 31:
                n nVar = (n) viewHolder;
                PAPAItemTitle2 pAPAItemTitle2 = (PAPAItemTitle2) mgpapaMainItemBean.getObject();
                if (pAPAItemTitle2 != null) {
                    nVar.f44229a.setText(pAPAItemTitle2.getTitle());
                    nVar.f44230b.setText(pAPAItemTitle2.getSubTitle());
                    nVar.f44230b.setVisibility(TextUtils.isEmpty(pAPAItemTitle2.getSubTitle()) ? 8 : 0);
                    return;
                }
                return;
            case 32:
                o oVar = (o) viewHolder;
                PAPAHomeBeanV7.RankingListDTO rankingListDTO = (PAPAHomeBeanV7.RankingListDTO) mgpapaMainItemBean.getObject();
                if (rankingListDTO == null || TextUtils.isEmpty(rankingListDTO.getTxt()) || rankingListDTO.getList() == null) {
                    oVar.f44232a.setVisibility(8);
                    return;
                }
                oVar.f44232a.setVisibility(0);
                List<List<PAPAHomeBeanV7.HomeBeanDTO>> list6 = rankingListDTO.getList();
                com.join.mgps.customview.d0 d0Var = this.f44164f;
                if (d0Var == null) {
                    String[] split2 = rankingListDTO.getTxt().split(",");
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    while (i4 < Math.min(split2.length, list6.size())) {
                        if (!TextUtils.isEmpty(split2[i4]) && list6.get(i4) != null) {
                            arrayList.add(split2[i4]);
                            arrayList2.add(com.join.mgps.fragment.m4.b0(true, split2[i4], list6.get(i4), i4 + 20501));
                        }
                        i4++;
                    }
                    com.join.mgps.customview.d0 d0Var2 = new com.join.mgps.customview.d0(this.f44161c.getChildFragmentManager(), arrayList2, arrayList);
                    this.f44164f = d0Var2;
                    d0Var2.d(arrayList2, arrayList);
                    oVar.f44234c.setAdapter(this.f44164f);
                    oVar.f44234c.setOffscreenPageLimit(3);
                    oVar.f44233b.setViewPager(oVar.f44234c);
                    oVar.f44235d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            t4.this.B(view);
                        }
                    });
                    oVar.f44234c.addOnPageChangeListener(new f(list6));
                    return;
                }
                ArrayList<Fragment> c4 = d0Var.c();
                while (i4 < Math.min(c4.size(), list6.size())) {
                    ((com.join.mgps.fragment.m4) c4.get(i4)).j0(list6.get(i4));
                    i4++;
                }
                return;
            case 33:
                q qVar = (q) viewHolder;
                float floatValue = ((Float) mgpapaMainItemBean.getObject()).floatValue();
                ViewGroup.LayoutParams layoutParams = qVar.f44239a.getLayoutParams();
                layoutParams.height = (int) floatValue;
                qVar.f44239a.setLayoutParams(layoutParams);
                if (TextUtils.isEmpty(mgpapaMainItemBean.getMoreType2()) || floatValue > 1.0f) {
                    qVar.f44239a.setBackgroundColor(0);
                    return;
                }
                try {
                    qVar.f44239a.setBackgroundColor(Color.parseColor(mgpapaMainItemBean.getMoreType2()));
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            case 35:
                p pVar = (p) viewHolder;
                final List list7 = (List) mgpapaMainItemBean.getObject();
                if (list7 == null || list7.size() <= 0) {
                    return;
                }
                if (pVar.f44237a.getAdapter() != null && (pVar.f44237a.getAdapter() instanceof m2) && ((m2) pVar.f44237a.getAdapter()).getData().equals(list7)) {
                    ((m2) pVar.f44237a.getAdapter()).setNewData(list7);
                    return;
                }
                LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this.f44160b, 0, false);
                m2 m2Var = new m2(list7);
                ((SimpleItemAnimator) pVar.f44237a.getItemAnimator()).setSupportsChangeAnimations(false);
                pVar.f44237a.setHasFixedSize(true);
                pVar.f44237a.setLayoutManager(linearLayoutManager2);
                pVar.f44237a.setAdapter(m2Var);
                m2Var.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.mgps.adapter.j4
                    @Override // com.join.mgps.base.BaseQuickAdapter.i
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i7) {
                        t4.this.C(list7, baseQuickAdapter, view, i7);
                    }
                });
                m2Var.setOnItemChildClickListener(new BaseQuickAdapter.g() { // from class: com.join.mgps.adapter.r4
                    @Override // com.join.mgps.base.BaseQuickAdapter.g
                    public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i7) {
                        t4.this.D(list7, i2, baseQuickAdapter, view, i7);
                    }
                });
                pVar.f44237a.addOnScrollListener(new g(list7, pVar));
                return;
            default:
                return;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        switch (i2) {
            case 26:
                return new s(LayoutInflater.from(this.f44160b).inflate(R.layout.mgpapa_localfight_include_v2, viewGroup, false));
            case 27:
                return new k(LayoutInflater.from(this.f44160b).inflate(R.layout.mgpapa_fast_entry_item, viewGroup, false));
            case 28:
            case 34:
            case 37:
            case 38:
                return new l(LayoutInflater.from(this.f44160b).inflate(R.layout.papamain_gamelist_grid_layout, viewGroup, false));
            case 29:
            case 36:
                return new j(LayoutInflater.from(this.f44160b).inflate(R.layout.papamain_video_game, viewGroup, false));
            case 30:
                return new m(LayoutInflater.from(this.f44160b).inflate(R.layout.papamain_item_game_news, viewGroup, false));
            case 31:
                return new n(LayoutInflater.from(this.f44160b).inflate(R.layout.papamain_item_title_layout_v2, viewGroup, false));
            case 32:
                return new o(LayoutInflater.from(this.f44160b).inflate(R.layout.home_rank_layout_v2, viewGroup, false));
            case 33:
                return new q(LayoutInflater.from(this.f44160b).inflate(R.layout.papamain_item_spacing_layout, viewGroup, false));
            case 35:
                return new p(LayoutInflater.from(this.f44160b).inflate(R.layout.papamain_item_recommend_style2, viewGroup, false));
            case 39:
                return new r(LayoutInflater.from(this.f44160b).inflate(R.layout.mgpapa_home_underline, viewGroup, false));
            default:
                return null;
        }
    }

    public MgpapaMainItemBean t(int i2) {
        List<MgpapaMainItemBean> list = this.f44159a;
        if (list == null || list.size() <= i2) {
            return null;
        }
        return this.f44159a.get(i2);
    }
}
