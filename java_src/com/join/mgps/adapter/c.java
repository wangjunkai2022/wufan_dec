package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.SimulatorAreaActivity_;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.InformationListDataBean;
import com.join.mgps.dto.TodayWufunBroadcast;
import com.join.mgps.dto.TodayWufunEmuClassify;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ChoiceAdapter.java */
/* loaded from: classes3.dex */
public class c extends RecyclerView.Adapter {

    /* renamed from: f  reason: collision with root package name */
    public static final int f41366f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static final int f41367g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f41368h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f41369i = 3;

    /* renamed from: j  reason: collision with root package name */
    public static final int f41370j = 4;

    /* renamed from: k  reason: collision with root package name */
    public static final int f41371k = 5;

    /* renamed from: l  reason: collision with root package name */
    public static final int f41372l = 6;

    /* renamed from: m  reason: collision with root package name */
    public static final int f41373m = 7;

    /* renamed from: n  reason: collision with root package name */
    public static final int f41374n = 8;

    /* renamed from: o  reason: collision with root package name */
    public static final int f41375o = 9;

    /* renamed from: p  reason: collision with root package name */
    public static final int f41376p = 10;

    /* renamed from: q  reason: collision with root package name */
    public static final int f41377q = 11;

    /* renamed from: r  reason: collision with root package name */
    public static final int f41378r = 12;

    /* renamed from: s  reason: collision with root package name */
    public static final int f41379s = 13;

    /* renamed from: t  reason: collision with root package name */
    public static final int f41380t = 14;

    /* renamed from: u  reason: collision with root package name */
    public static final int f41381u = 15;

    /* renamed from: v  reason: collision with root package name */
    public static final int f41382v = 16;

    /* renamed from: w  reason: collision with root package name */
    public static final int f41383w = 17;

    /* renamed from: a  reason: collision with root package name */
    private final Context f41384a;

    /* renamed from: b  reason: collision with root package name */
    List<i0> f41385b;

    /* renamed from: c  reason: collision with root package name */
    private int f41386c;

    /* renamed from: d  reason: collision with root package name */
    r f41387d;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f41388e = 18;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41389a;

        a(i0 i0Var) {
            this.f41389a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c.this.j((BannerBean) this.f41389a.a());
            com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((BannerBean) this.f41389a.a()).getCrc_link_type_val(), "todayButton", this.f41389a.e(), "精选专题");
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class a0 extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public View[] f41391b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView[] f41392c;

        /* renamed from: d  reason: collision with root package name */
        public TextView[] f41393d;

        /* renamed from: e  reason: collision with root package name */
        public TextView[] f41394e;

        public a0(View view) {
            super(view);
            this.f41391b = new View[3];
            this.f41392c = new SimpleDraweeView[3];
            this.f41393d = new TextView[3];
            this.f41394e = new TextView[3];
            View findViewById = view.findViewById(R.id.item1);
            View findViewById2 = view.findViewById(R.id.item2);
            View findViewById3 = view.findViewById(R.id.item3);
            View[] viewArr = this.f41391b;
            int i2 = 0;
            viewArr[0] = findViewById;
            viewArr[1] = findViewById2;
            viewArr[2] = findViewById3;
            while (true) {
                View[] viewArr2 = this.f41391b;
                if (i2 >= viewArr2.length) {
                    return;
                }
                this.f41392c[i2] = (SimpleDraweeView) viewArr2[i2].findViewById(R.id.cover);
                this.f41393d[i2] = (TextView) this.f41391b[i2].findViewById(R.id.name);
                this.f41394e[i2] = (TextView) this.f41391b[i2].findViewById(R.id.desc);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41396a;

        b(i0 i0Var) {
            this.f41396a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41396a.a() == null) {
                return;
            }
            c.this.h(((TodayWufunBroadcast) this.f41396a.a()).getGame_id(), ((TodayWufunBroadcast) this.f41396a.a()).getTpl_type(), ((TodayWufunBroadcast) this.f41396a.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f41396a.a()).get_from_type());
            com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((TodayWufunBroadcast) this.f41396a.a()).getGame_id(), "todayButton", this.f41396a.e(), "新游预约");
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class b0 extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41398b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41399c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41400d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41401e;

        public b0(View view) {
            super(view);
            this.f41398b = (SimpleDraweeView) view.findViewById(R.id.cover);
            this.f41399c = (TextView) view.findViewById(R.id.name);
            this.f41400d = (TextView) view.findViewById(R.id.desc);
            this.f41401e = (TextView) view.findViewById(R.id.date);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* renamed from: com.join.mgps.adapter.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class View$OnClickListenerC0178c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41403a;

        View$OnClickListenerC0178c(i0 i0Var) {
            this.f41403a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(c.this.f41384a, (String) this.f41403a.a());
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class c0 extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public View f41405b;

        public c0(View view) {
            super(view);
            this.f41405b = view.findViewById(R.id.more);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f41407a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TodayWufunEmuClassify f41408b;

        d(ViewGroup viewGroup, TodayWufunEmuClassify todayWufunEmuClassify) {
            this.f41407a = viewGroup;
            this.f41408b = todayWufunEmuClassify;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (int i2 = 0; i2 < this.f41407a.getChildCount(); i2++) {
                this.f41407a.getChildAt(i2).setSelected(false);
            }
            view.setSelected(true);
            c.this.B(this.f41408b);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class d0 extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41410b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f41411c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41412d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41413e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f41414f;

        public d0(View view) {
            super(view);
            this.f41410b = (SimpleDraweeView) view.findViewById(R.id.cover);
            this.f41411c = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.f41412d = (TextView) view.findViewById(R.id.name);
            this.f41413e = (TextView) view.findViewById(R.id.desc);
            this.f41414f = (TextView) view.findViewById(R.id.rank);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BannerBean f41416a;

        e(BannerBean bannerBean) {
            this.f41416a = bannerBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(view.getContext(), this.f41416a.getIntentDataBean());
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class e0 extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41418b;

        public e0(View view) {
            super(view);
            this.f41418b = (SimpleDraweeView) view.findViewById(R.id.cover);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41420a;

        f(i0 i0Var) {
            this.f41420a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41420a.a() == null) {
                return;
            }
            c.this.h(((TodayWufunBroadcast) this.f41420a.a()).getGame_id(), ((TodayWufunBroadcast) this.f41420a.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f41420a.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f41420a.a()).get_from_type());
            com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((TodayWufunBroadcast) this.f41420a.a()).getGame_id(), "eidtButton", this.f41420a.e(), "编辑推荐");
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class f0 extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f41422b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41423c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41424d;

        public f0(View view) {
            super(view);
            this.f41422b = (TextView) view.findViewById(R.id.name);
            this.f41423c = (TextView) view.findViewById(R.id.desc);
            this.f41424d = (TextView) view.findViewById(R.id.rank);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41426a;

        g(i0 i0Var) {
            this.f41426a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41426a.a() == null) {
                return;
            }
            c.this.h(((TodayWufunBroadcast) this.f41426a.a()).getGame_id(), ((TodayWufunBroadcast) this.f41426a.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f41426a.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f41426a.a()).get_from_type());
            com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((TodayWufunBroadcast) this.f41426a.a()).getGame_id(), "adButton", this.f41426a.e(), "广告赞助");
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class g0 extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public final TextView f41428b;

        /* renamed from: c  reason: collision with root package name */
        public final View f41429c;

        public g0(View view) {
            super(view);
            this.f41428b = (TextView) view.findViewById(R.id.title);
            this.f41429c = view.findViewById(R.id.divider);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41431a;

        h(i0 i0Var) {
            this.f41431a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41431a.a() == null) {
                return;
            }
            c.this.h(((TodayWufunBroadcast) this.f41431a.a()).getGame_id(), ((TodayWufunBroadcast) this.f41431a.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f41431a.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f41431a.a()).get_from_type());
            com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((TodayWufunBroadcast) this.f41431a.a()).getGame_id(), "adButton", this.f41431a.e(), "广告赞助");
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class h0 extends RecyclerView.ViewHolder {
        public h0(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41434a;

        i(i0 i0Var) {
            this.f41434a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41434a.a() == null) {
                return;
            }
            c.this.h(((TodayWufunBroadcast) this.f41434a.a()).getGame_id(), ((TodayWufunBroadcast) this.f41434a.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f41434a.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f41434a.a()).get_from_type());
            if (this.f41434a.f() <= 7) {
                com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((TodayWufunBroadcast) this.f41434a.a()).getGame_id(), "todayButton", this.f41434a.e(), "每日发现游戏");
            }
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public static class i0<T> {

        /* renamed from: a  reason: collision with root package name */
        int f41436a;

        /* renamed from: b  reason: collision with root package name */
        T f41437b;

        /* renamed from: c  reason: collision with root package name */
        private int f41438c;

        /* renamed from: d  reason: collision with root package name */
        private int f41439d;

        /* renamed from: e  reason: collision with root package name */
        private int f41440e;

        /* renamed from: f  reason: collision with root package name */
        private int f41441f;

        /* renamed from: g  reason: collision with root package name */
        private String f41442g = "";

        public i0(int i2, T t3) {
            this.f41436a = i2;
            this.f41437b = t3;
        }

        public T a() {
            return this.f41437b;
        }

        public int b() {
            return this.f41438c;
        }

        public int c() {
            return this.f41440e;
        }

        public int d() {
            return this.f41439d;
        }

        public String e() {
            return this.f41442g;
        }

        public int f() {
            return this.f41441f;
        }

        public int g() {
            return this.f41436a;
        }

        public void h(T t3) {
            this.f41437b = t3;
        }

        public i0 i(int i2) {
            this.f41438c = i2;
            return this;
        }

        public i0 j(int i2) {
            this.f41440e = i2;
            return this;
        }

        public i0 k(int i2) {
            this.f41439d = i2;
            return this;
        }

        public i0 l(String str) {
            this.f41442g = str;
            return this;
        }

        public i0 m(int i2) {
            this.f41441f = i2;
            return this;
        }

        public void n(int i2) {
            this.f41436a = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41443a;

        j(i0 i0Var) {
            this.f41443a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41443a.a() == null) {
                return;
            }
            c.this.h(((TodayWufunBroadcast) this.f41443a.a()).getGame_id(), ((TodayWufunBroadcast) this.f41443a.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f41443a.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f41443a.a()).get_from_type());
            if (this.f41443a.f() <= 7) {
                com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((TodayWufunBroadcast) this.f41443a.a()).getGame_id(), "todayButton", this.f41443a.e(), "每日发现游戏");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41445a;

        k(i0 i0Var) {
            this.f41445a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41445a.a() == null) {
                return;
            }
            c.this.i(((InformationListDataBean) this.f41445a.a()).getInfo_id());
            if (this.f41445a.f() <= 7) {
                com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((InformationListDataBean) this.f41445a.a()).getGame_id(), "todayButton", this.f41445a.e(), "大总管播报");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f41447a;

        l(i0 i0Var) {
            this.f41447a = i0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41447a.a() == null) {
                return;
            }
            c.this.i(((InformationListDataBean) this.f41447a.a()).getInfo_id());
            if (this.f41447a.f() <= 7) {
                com.papa.sim.statistic.p.l(c.this.f41384a).c2(AccountUtil_.getInstance_(c.this.f41384a).getUid(), ((InformationListDataBean) this.f41447a.a()).getGame_id(), "todayButton", this.f41447a.e(), "大总管播报");
            }
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class m extends h0 {
        public m(View view) {
            super(view);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class n extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41450b;

        public n(View view) {
            super(view);
            this.f41450b = (SimpleDraweeView) view.findViewById(R.id.cover);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class o extends h0 {
        public o(View view) {
            super(view);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public static class p {

        /* renamed from: a  reason: collision with root package name */
        public TextView f41453a;
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public static class q {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f41454a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f41455b;
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public static class r extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        TodayWufunEmuClassify f41456a = new TodayWufunEmuClassify();

        /* renamed from: b  reason: collision with root package name */
        Context f41457b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChoiceAdapter.java */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SimulatorAreaActivity_.Y0(r.this.f41457b).b(r.this.f41456a.getId()).a(r.this.f41456a.getName()).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChoiceAdapter.java */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TodayWufunBroadcast f41459a;

            b(TodayWufunBroadcast todayWufunBroadcast) {
                this.f41459a = todayWufunBroadcast;
            }

            public void a(String str, String str2, int i2, int i4) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(1);
                intentDateBean.setCrc_link_type_val(str);
                intentDateBean.setTpl_type(str2);
                intentDateBean.setJump_type(i2);
                ExtBean extBean = new ExtBean();
                extBean.set_from_type(i4);
                intentDateBean.setExtBean(extBean);
                IntentUtil.getInstance().intentActivity(r.this.f41457b, intentDateBean);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a(this.f41459a.getGame_id(), this.f41459a.getTpl_type(), this.f41459a.getSp_tpl_two_position(), this.f41459a.get_from_type());
            }
        }

        public r(Context context) {
            this.f41457b = context;
        }

        private View a(int i2, View view, ViewGroup viewGroup) {
            p pVar;
            try {
                if (view != null) {
                    pVar = (p) view.getTag();
                } else {
                    pVar = new p();
                    view = LayoutInflater.from(this.f41457b).inflate(R.layout.choice_item_classify_all, (ViewGroup) null);
                    pVar.f41453a = (TextView) view.findViewById(R.id.count);
                    view.setTag(pVar);
                }
                pVar.f41453a.setText(this.f41456a.getGame_count());
                view.setOnClickListener(new a());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }

        private View c(int i2, View view, ViewGroup viewGroup) {
            q qVar;
            TodayWufunBroadcast item;
            try {
                if (view != null) {
                    qVar = (q) view.getTag();
                } else {
                    qVar = new q();
                    view = LayoutInflater.from(this.f41457b).inflate(R.layout.choice_item_classify_game, (ViewGroup) null);
                    qVar.f41455b = (TextView) view.findViewById(R.id.name);
                    qVar.f41454a = (SimpleDraweeView) view.findViewById(R.id.icon);
                    view.setTag(qVar);
                }
                item = getItem(i2);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (item == null) {
                return view;
            }
            MyImageLoader.j(qVar.f41454a, item.getGame_ico(), MyImageLoader.z(this.f41457b));
            qVar.f41455b.setText(item.getGame_name());
            view.setOnClickListener(new b(item));
            return view;
        }

        public TodayWufunEmuClassify b() {
            return this.f41456a;
        }

        @Override // android.widget.Adapter
        /* renamed from: d */
        public TodayWufunBroadcast getItem(int i2) {
            TodayWufunEmuClassify todayWufunEmuClassify = this.f41456a;
            if (todayWufunEmuClassify == null || todayWufunEmuClassify.getGame_list() == null || i2 >= this.f41456a.getGame_list().size()) {
                return null;
            }
            return this.f41456a.getGame_list().get(i2);
        }

        public void e(TodayWufunEmuClassify todayWufunEmuClassify) {
            this.f41456a = todayWufunEmuClassify;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            TodayWufunEmuClassify todayWufunEmuClassify = this.f41456a;
            if (todayWufunEmuClassify == null || todayWufunEmuClassify.getGame_list() == null) {
                return 1;
            }
            return this.f41456a.getGame_list().size() + 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return i2 == getCount() - 1 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (getItemViewType(i2) == 0) {
                return c(i2, view, viewGroup);
            }
            return getItemViewType(i2) == 1 ? a(i2, view, viewGroup) : view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class s extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f41461b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41462c;

        public s(View view) {
            super(view);
            this.f41461b = (TextView) view.findViewById(R.id.date);
            this.f41462c = (TextView) view.findViewById(R.id.week);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class t extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41464b;

        public t(View view) {
            super(view);
            this.f41464b = (SimpleDraweeView) view.findViewById(R.id.cover);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class u extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41466b;

        public u(View view) {
            super(view);
            this.f41466b = (SimpleDraweeView) view.findViewById(R.id.cover);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class v extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41468b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41469c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41470d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41471e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f41472f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f41473g;

        public v(View view) {
            super(view);
            this.f41468b = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.f41469c = (TextView) view.findViewById(R.id.name);
            this.f41470d = (TextView) view.findViewById(R.id.from);
            this.f41471e = (TextView) view.findViewById(R.id.fromFlag);
            this.f41472f = (TextView) view.findViewById(R.id.rank);
            this.f41473g = (TextView) view.findViewById(R.id.desc);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class w extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f41475b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41476c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41477d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41478e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f41479f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f41480g;

        public w(View view) {
            super(view);
            this.f41475b = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.f41476c = (TextView) view.findViewById(R.id.name);
            this.f41477d = (TextView) view.findViewById(R.id.from);
            this.f41478e = (TextView) view.findViewById(R.id.fromFlag);
            this.f41479f = (TextView) view.findViewById(R.id.rank);
            this.f41480g = (TextView) view.findViewById(R.id.desc);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class x extends h0 {
        public x(View view) {
            super(view);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class y extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public GridView f41483b;

        public y(View view) {
            super(view);
            this.f41483b = (GridView) view.findViewById(R.id.gridView);
        }
    }

    /* compiled from: ChoiceAdapter.java */
    /* loaded from: classes3.dex */
    public class z extends h0 {

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f41485b;

        public z(View view) {
            super(view);
            this.f41485b = (LinearLayout) view.findViewById(R.id.classifies);
        }
    }

    public c(Context context, List<i0> list) {
        this.f41384a = context;
        D(list);
    }

    private void A(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        g0 g0Var = (g0) viewHolder;
        if (i0Var.d() == 1) {
            g0Var.f41428b.setText("来自你的浏览推荐");
            g0Var.f41429c.setVisibility(8);
        }
        if (i0Var.d() == 2) {
            g0Var.f41428b.setText("来自广告赞助");
            g0Var.f41429c.setVisibility(0);
            return;
        }
        g0Var.f41428b.setText("来自编辑推荐");
        g0Var.f41429c.setVisibility(8);
    }

    private RoundingParams b(Context context) {
        return new RoundingParams();
    }

    private RoundingParams f(Context context) {
        RoundingParams roundingParams = new RoundingParams();
        float dimension = context.getResources().getDimension(R.dimen.mg_forum_avatar_round_width);
        roundingParams.q(dimension, dimension, 0.0f, 0.0f);
        return roundingParams;
    }

    private void k(RecyclerView.ViewHolder viewHolder, int i2) {
    }

    private void l(n nVar, int i2) {
        if (nVar == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        MyImageLoader.j(nVar.f41450b, ((BannerBean) i0Var.a()).getPic_remote(), MyImageLoader.z(this.f41384a));
        nVar.f41450b.setOnClickListener(new a(i0Var));
    }

    private void m(RecyclerView.ViewHolder viewHolder, int i2) {
    }

    private void n(s sVar, int i2) {
        if (sVar == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        sVar.f41461b.setText(com.join.android.app.common.utils.c.h("yyyy年MM月dd日", Long.valueOf(((Long) i0Var.a()).longValue() * 1000)));
        sVar.f41462c.setText(com.join.android.app.common.utils.c.f(((Long) i0Var.a()).longValue() * 1000));
    }

    private void o(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder == null) {
            return;
        }
        t tVar = (t) viewHolder;
        i0 i0Var = (i0) getItem(i2);
        if (i0Var == null || i0Var.a() == null) {
            return;
        }
        MyImageLoader.h(tVar.f41464b, ((InformationListDataBean) i0Var.a()).getMaterial());
        viewHolder.itemView.setOnClickListener(new k(i0Var));
    }

    private void p(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder == null) {
            return;
        }
        u uVar = (u) viewHolder;
        i0 i0Var = (i0) getItem(i2);
        if (i0Var == null || i0Var.a() == null) {
            return;
        }
        MyImageLoader.h(uVar.f41466b, ((TodayWufunBroadcast) i0Var.a()).getPic());
        viewHolder.itemView.setOnClickListener(new i(i0Var));
    }

    private void q(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder == null) {
            return;
        }
        v vVar = (v) viewHolder;
        i0 i0Var = (i0) getItem(i2);
        if (i0Var == null || i0Var.a() == null) {
            return;
        }
        vVar.f41469c.setText(((InformationListDataBean) i0Var.a()).getGame_name());
        vVar.f41473g.setText(((InformationListDataBean) i0Var.a()).getTitle());
        if (((InformationListDataBean) i0Var.a()).getScore_count() > 0.0f) {
            vVar.f41472f.setVisibility(0);
            TextView textView = vVar.f41472f;
            textView.setText(((InformationListDataBean) i0Var.a()).getScore_count() + "");
        } else {
            vVar.f41472f.setVisibility(8);
        }
        viewHolder.itemView.setOnClickListener(new l(i0Var));
    }

    private void r(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder == null) {
            return;
        }
        w wVar = (w) viewHolder;
        i0 i0Var = (i0) getItem(i2);
        if (i0Var == null || i0Var.a() == null) {
            return;
        }
        MyImageLoader.j(wVar.f41475b, ((TodayWufunBroadcast) i0Var.a()).getIco_remote(), MyImageLoader.z(this.f41384a));
        wVar.f41476c.setText(((TodayWufunBroadcast) i0Var.a()).getGame_name());
        wVar.f41480g.setText(((TodayWufunBroadcast) i0Var.a()).getTitle());
        if (((TodayWufunBroadcast) i0Var.a()).getScore_count() > 0.0f) {
            wVar.f41479f.setVisibility(0);
            TextView textView = wVar.f41479f;
            textView.setText(((TodayWufunBroadcast) i0Var.a()).getScore_count() + "");
        } else {
            wVar.f41479f.setVisibility(8);
        }
        viewHolder.itemView.setOnClickListener(new j(i0Var));
    }

    private void s(y yVar, int i2) {
        if (yVar == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        if (i0Var.a() == null) {
            return;
        }
        if (yVar.f41483b.getAdapter() == null) {
            if (this.f41387d == null) {
                this.f41387d = new r(this.f41384a);
            }
            yVar.f41483b.setAdapter((ListAdapter) this.f41387d);
        }
        this.f41387d.e((TodayWufunEmuClassify) i0Var.a());
        this.f41387d.notifyDataSetChanged();
    }

    private void t(z zVar, int i2) {
        if (zVar == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        if (i0Var.a() == null) {
            return;
        }
        View view = new View(this.f41384a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f41384a.getResources().getDimensionPixelSize(R.dimen.wdp2), this.f41384a.getResources().getDimensionPixelOffset(R.dimen.wdp24));
        view.setBackgroundResource(R.drawable.shape_choice_classify_divider);
        zVar.f41485b.removeAllViews();
        for (int i4 = 0; i4 < ((List) i0Var.a()).size(); i4++) {
            TextView textView = (TextView) LayoutInflater.from(this.f41384a).inflate(R.layout.choice_item_classify_type, (ViewGroup) null);
            textView.setText(((TodayWufunEmuClassify) ((List) i0Var.a()).get(i4)).getName());
            if (i4 > 0) {
                View view2 = new View(this.f41384a);
                view2.setLayoutParams(layoutParams);
                view2.setBackgroundResource(R.drawable.shape_choice_classify_divider);
                zVar.f41485b.addView(view2);
            }
            if (this.f41386c == ((TodayWufunEmuClassify) ((List) i0Var.a()).get(i4)).getId()) {
                textView.setSelected(true);
                B((TodayWufunEmuClassify) ((List) i0Var.a()).get(i4));
            }
            zVar.f41485b.addView(textView);
            E(zVar.f41485b, textView, (TodayWufunEmuClassify) ((List) i0Var.a()).get(i4));
        }
    }

    private void u(a0 a0Var, int i2) {
        if (a0Var == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        if (i0Var.a() == null) {
            return;
        }
        for (int i4 = 0; i4 < ((List) i0Var.a()).size() && i4 < 3; i4++) {
            BannerBean bannerBean = (BannerBean) ((List) i0Var.a()).get(i4);
            a0Var.f41393d[i4].setText(bannerBean.getTitle());
            a0Var.f41394e[i4].setText(bannerBean.getLabel());
            MyImageLoader.j(a0Var.f41392c[i4], bannerBean.getPic_remote(), f(this.f41384a));
            a0Var.f41391b[i4].setOnClickListener(new e(bannerBean));
        }
    }

    private void v(b0 b0Var, int i2) {
        if (b0Var == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        MyImageLoader.j(b0Var.f41398b, ((TodayWufunBroadcast) i0Var.a()).getGame_img(), MyImageLoader.z(this.f41384a));
        b0Var.f41399c.setText(((TodayWufunBroadcast) i0Var.a()).getGame_name());
        b0Var.f41400d.setText(((TodayWufunBroadcast) i0Var.a()).getGame_desc());
        b0Var.f41401e.setText(this.f41384a.getResources().getString(R.string.choice_order_date, ((TodayWufunBroadcast) i0Var.a()).getOnline_time()));
        b0Var.itemView.setOnClickListener(new b(i0Var));
    }

    private void w(c0 c0Var, int i2) {
        if (c0Var == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        if (TextUtils.isEmpty((CharSequence) i0Var.a())) {
            c0Var.f41405b.setVisibility(8);
            return;
        }
        c0Var.f41405b.setVisibility(0);
        c0Var.f41405b.setOnClickListener(new View$OnClickListenerC0178c(i0Var));
    }

    private void x(d0 d0Var, int i2) {
        if (d0Var == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        if (i0Var.a() == null) {
            return;
        }
        MyImageLoader.d(d0Var.f41410b, R.color.choice_recommand_bg, ((TodayWufunBroadcast) i0Var.a()).getGame_img());
        MyImageLoader.j(d0Var.f41411c, ((TodayWufunBroadcast) i0Var.a()).getIco_remote(), MyImageLoader.z(this.f41384a));
        d0Var.f41413e.setText(((TodayWufunBroadcast) i0Var.a()).getGame_desc());
        d0Var.f41412d.setText(((TodayWufunBroadcast) i0Var.a()).getGame_name());
        if (((TodayWufunBroadcast) i0Var.a()).getScore_count() > 0.0f) {
            d0Var.f41414f.setVisibility(0);
            TextView textView = d0Var.f41414f;
            textView.setText(((TodayWufunBroadcast) i0Var.a()).getScore_count() + "");
        } else {
            d0Var.f41414f.setVisibility(8);
        }
        d0Var.itemView.setOnClickListener(new f(i0Var));
    }

    private void y(e0 e0Var, int i2) {
        if (e0Var == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        if (i0Var.a() != null) {
            MyImageLoader.h(e0Var.f41418b, ((TodayWufunBroadcast) i0Var.a()).getGame_img());
            e0Var.itemView.setOnClickListener(new g(i0Var));
        }
    }

    private void z(f0 f0Var, int i2) {
        if (f0Var == null) {
            return;
        }
        i0 i0Var = (i0) getItem(i2);
        if (i0Var.a() != null) {
            f0Var.f41423c.setText(((TodayWufunBroadcast) i0Var.a()).getGame_desc());
            f0Var.f41422b.setText(((TodayWufunBroadcast) i0Var.a()).getGame_name());
            if (((TodayWufunBroadcast) i0Var.a()).getScore_count() > 0.0f) {
                f0Var.f41424d.setVisibility(0);
                TextView textView = f0Var.f41424d;
                textView.setText(((TodayWufunBroadcast) i0Var.a()).getScore_count() + "");
            } else {
                f0Var.f41424d.setVisibility(8);
            }
            f0Var.itemView.setOnClickListener(new h(i0Var));
        }
    }

    public void B(TodayWufunEmuClassify todayWufunEmuClassify) {
        this.f41386c = todayWufunEmuClassify.getId();
        if (this.f41387d == null && this.f41384a != null) {
            this.f41387d = new r(this.f41384a);
        }
        r rVar = this.f41387d;
        if (rVar != null) {
            rVar.e(todayWufunEmuClassify);
            this.f41387d.notifyDataSetChanged();
        }
    }

    public void C(int i2) {
        this.f41386c = i2;
    }

    public void D(List<i0> list) {
        if (this.f41385b == null) {
            this.f41385b = new ArrayList();
        }
        this.f41385b.clear();
        this.f41385b.addAll(list);
    }

    public void E(ViewGroup viewGroup, View view, TodayWufunEmuClassify todayWufunEmuClassify) {
        if (view == null || todayWufunEmuClassify == null) {
            return;
        }
        view.setOnClickListener(new d(viewGroup, todayWufunEmuClassify));
    }

    public int c() {
        List<i0> list = this.f41385b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public int d() {
        return this.f41386c;
    }

    public String e(TextView textView, String str, int i2) {
        float measureText = textView.getPaint().measureText(str);
        int i4 = this.f41384a.getResources().getDisplayMetrics().widthPixels;
        float measuredWidth = measureText / textView.getMeasuredWidth();
        double d4 = i2;
        Double.isNaN(d4);
        double d5 = d4 + 0.5d;
        if (measuredWidth > d5) {
            StringBuilder sb = new StringBuilder();
            double length = str.length() / measuredWidth;
            Double.isNaN(length);
            sb.append(str.substring(0, (int) (length / d5)));
            sb.append("...");
            return sb.toString();
        }
        return str;
    }

    public int g() {
        return this.f41388e;
    }

    public Object getItem(int i2) {
        List<i0> list = this.f41385b;
        if (list != null) {
            return list.get(i2);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        List<i0> list = this.f41385b;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f41385b.get(i2).g();
    }

    public void h(String str, String str2, int i2, int i4) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(str);
        intentDateBean.setTpl_type(str2);
        intentDateBean.setJump_type(i2);
        ExtBean extBean = new ExtBean();
        extBean.set_from_type(i4);
        intentDateBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this.f41384a, intentDateBean);
    }

    public void i(String str) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(6);
        intentDateBean.setLink_type_val(str);
        IntentUtil.getInstance().intentActivity(this.f41384a, intentDateBean);
    }

    void j(BannerBean bannerBean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(bannerBean.getLink_type());
        intentDateBean.setCrc_link_type_val(bannerBean.getCrc_link_type_val());
        intentDateBean.setTpl_type(bannerBean.getTpl_type());
        intentDateBean.setJump_type(bannerBean.getJump_type());
        intentDateBean.setLink_type_val(bannerBean.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.f41384a, intentDateBean);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder == null) {
            return;
        }
        int itemViewType = getItemViewType(i2);
        if (itemViewType == 1) {
            A(viewHolder, i2);
        } else if (itemViewType == 2) {
            x((d0) viewHolder, i2);
        } else if (itemViewType == 3) {
            y((e0) viewHolder, i2);
        } else if (itemViewType == 4) {
            z((f0) viewHolder, i2);
        } else if (itemViewType == 5) {
            n((s) viewHolder, i2);
        } else if (itemViewType == 6) {
            p(viewHolder, i2);
        } else if (itemViewType == 7) {
            r(viewHolder, i2);
        } else if (itemViewType == 13) {
            o(viewHolder, i2);
        } else if (itemViewType == 14) {
            q(viewHolder, i2);
        } else if (itemViewType == 8) {
            m(viewHolder, i2);
        } else if (itemViewType == 9) {
            l((n) viewHolder, i2);
        } else if (itemViewType == 10) {
            w((c0) viewHolder, i2);
        } else if (itemViewType == 11) {
            v((b0) viewHolder, i2);
        } else if (itemViewType == 12) {
            k(viewHolder, i2);
        } else if (itemViewType == 15) {
            u((a0) viewHolder, i2);
        } else if (itemViewType == 16) {
            t((z) viewHolder, i2);
        } else if (itemViewType == 17) {
            s((y) viewHolder, i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        if (i2 == 1) {
            return new g0(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_recommand_title, viewGroup, false));
        }
        if (i2 == 2) {
            return new d0(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_recommand_1_cover, viewGroup, false));
        }
        if (i2 == 3) {
            return new e0(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_recommand_2_cover, viewGroup, false));
        }
        if (i2 == 4) {
            return new f0(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_recommand_2_footer, viewGroup, false));
        }
        if (i2 == 5) {
            return new s(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_date_line, viewGroup, false));
        }
        if (i2 == 6) {
            return new u(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_day_game_cover, viewGroup, false));
        }
        if (i2 == 7) {
            return new w(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_day_game_footer, viewGroup, false));
        }
        if (i2 == 13) {
            return new t(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_day_game_cover2, viewGroup, false));
        }
        if (i2 == 14) {
            return new v(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_day_game_footer2, viewGroup, false));
        }
        if (i2 == 8) {
            return new o(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_choice_top, viewGroup, false));
        }
        if (i2 == 9) {
            return new n(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_choice_cover, viewGroup, false));
        }
        if (i2 == 10) {
            return new c0(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_order_top, viewGroup, false));
        }
        if (i2 == 11) {
            return new b0(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_order_main, viewGroup, false));
        }
        if (i2 == 12) {
            return new m(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_choice_bottom, viewGroup, false));
        }
        if (i2 == 0) {
            return new x(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_divider, viewGroup, false));
        }
        if (i2 == 15) {
            return new a0(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_game_classify, viewGroup, false));
        }
        if (i2 == 16) {
            return new z(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_game_classify_type, viewGroup, false));
        }
        if (i2 == 17) {
            return new y(LayoutInflater.from(this.f41384a).inflate(R.layout.chioce_item_game_classify_content, viewGroup, false));
        }
        return null;
    }
}
