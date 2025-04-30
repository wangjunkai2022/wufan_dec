package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
import com.join.mgps.dto.DiscoverListData;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoverListWeiboItemBean;
import com.join.mgps.dto.ForumResponse;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: DIscoveryTabFragment.java */
@EFragment(R.layout.discovery_tab_fragment_layout)
/* loaded from: classes4.dex */
public class a0 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    XRecyclerView f48277a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    SwipeRefresh f48278b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f48279c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f48280d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f48281e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ImageView f48282f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f48283g;

    /* renamed from: h  reason: collision with root package name */
    int f48284h = 0;

    /* renamed from: i  reason: collision with root package name */
    int f48285i = 0;

    /* renamed from: j  reason: collision with root package name */
    Context f48286j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.h f48287k;

    /* renamed from: l  reason: collision with root package name */
    int f48288l;

    /* renamed from: m  reason: collision with root package name */
    List<DiscoverListItemBean> f48289m;

    /* renamed from: n  reason: collision with root package name */
    List<DiscoverListWeiboItemBean> f48290n;

    /* renamed from: o  reason: collision with root package name */
    e f48291o;

    /* compiled from: DIscoveryTabFragment.java */
    /* loaded from: classes4.dex */
    class a implements SwipeRefresh.j {
        a() {
        }

        @Override // com.join.mgps.customview.swiperefresh.SwipeRefresh.j
        public void onRefresh() {
            a0 a0Var = a0.this;
            a0Var.f48288l = 1;
            a0Var.f48277a.t1();
            a0 a0Var2 = a0.this;
            if (a0Var2.f48284h == 2) {
                a0Var2.O(a0Var2.f48288l);
            } else {
                a0Var2.loadData(a0Var2.f48288l);
            }
        }
    }

    /* compiled from: DIscoveryTabFragment.java */
    /* loaded from: classes4.dex */
    class b implements XRecyclerView.f {
        b() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            a0 a0Var = a0.this;
            if (a0Var.f48284h == 2) {
                a0Var.O(a0Var.f48288l);
            } else {
                a0Var.loadData(a0Var.f48288l);
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            a0 a0Var = a0.this;
            a0Var.f48288l = 1;
            a0Var.f48277a.t1();
            a0 a0Var2 = a0.this;
            if (a0Var2.f48284h == 2) {
                a0Var2.O(a0Var2.f48288l);
            } else {
                a0Var2.loadData(a0Var2.f48288l);
            }
        }
    }

    /* compiled from: DIscoveryTabFragment.java */
    /* loaded from: classes4.dex */
    class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f48294a;

        /* renamed from: b  reason: collision with root package name */
        TextView f48295b;

        /* renamed from: c  reason: collision with root package name */
        TextView f48296c;

        /* renamed from: d  reason: collision with root package name */
        TextView f48297d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f48298e;

        /* renamed from: f  reason: collision with root package name */
        SimpleDraweeView f48299f;

        public c(@NonNull View view) {
            super(view);
            this.f48294a = (TextView) view.findViewById(R.id.content);
            this.f48295b = (TextView) view.findViewById(R.id.gameType);
            this.f48296c = (TextView) view.findViewById(R.id.seeNumber);
            this.f48297d = (TextView) view.findViewById(R.id.commentNumber);
            this.f48299f = (SimpleDraweeView) view.findViewById(R.id.image);
            this.f48298e = (LinearLayout) view.findViewById(R.id.main);
        }
    }

    /* compiled from: DIscoveryTabFragment.java */
    /* loaded from: classes4.dex */
    class d extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f48301a;

        /* renamed from: b  reason: collision with root package name */
        TextView f48302b;

        /* renamed from: c  reason: collision with root package name */
        TextView f48303c;

        /* renamed from: d  reason: collision with root package name */
        TextView f48304d;

        /* renamed from: e  reason: collision with root package name */
        TextView f48305e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f48306f;

        /* renamed from: g  reason: collision with root package name */
        SimpleDraweeView f48307g;

        public d(@NonNull View view) {
            super(view);
            this.f48301a = (TextView) view.findViewById(R.id.content);
            this.f48302b = (TextView) view.findViewById(R.id.userName);
            this.f48303c = (TextView) view.findViewById(R.id.time);
            this.f48304d = (TextView) view.findViewById(R.id.vidioTip);
            this.f48305e = (TextView) view.findViewById(R.id.imagTip);
            this.f48307g = (SimpleDraweeView) view.findViewById(R.id.userImg);
            this.f48306f = (LinearLayout) view.findViewById(R.id.main);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DIscoveryTabFragment.java */
    /* loaded from: classes4.dex */
    public class e extends RecyclerView.Adapter {

        /* compiled from: DIscoveryTabFragment.java */
        /* loaded from: classes4.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverListWeiboItemBean f48310a;

            a(DiscoverListWeiboItemBean discoverListWeiboItemBean) {
                this.f48310a = discoverListWeiboItemBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goShareWebActivity(a0.this.f48286j, this.f48310a.getLink_url());
            }
        }

        /* compiled from: DIscoveryTabFragment.java */
        /* loaded from: classes4.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverListItemBean f48312a;

            b(DiscoverListItemBean discoverListItemBean) {
                this.f48312a = discoverListItemBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil intentUtil = IntentUtil.getInstance();
                Context context = a0.this.f48286j;
                intentUtil.goFormDetial(context, this.f48312a.getPid() + "");
            }
        }

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            a0 a0Var = a0.this;
            if (a0Var.f48284h == 2) {
                return a0Var.f48290n.size();
            }
            return a0Var.f48289m.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return a0.this.f48284h;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
            a0 a0Var = a0.this;
            if (a0Var.f48284h == 2) {
                d dVar = (d) viewHolder;
                DiscoverListWeiboItemBean discoverListWeiboItemBean = a0Var.f48290n.get(i2);
                dVar.f48301a.setText(discoverListWeiboItemBean.getContent());
                dVar.f48302b.setText(discoverListWeiboItemBean.getNickname());
                dVar.f48303c.setText(discoverListWeiboItemBean.getSend_time());
                MyImageLoader.h(dVar.f48307g, discoverListWeiboItemBean.getAvatar_src());
                if (com.join.mgps.Util.d2.i(discoverListWeiboItemBean.getVideo_url()) && !"{}".equals(discoverListWeiboItemBean.getVideo_url())) {
                    dVar.f48304d.setVisibility(0);
                } else {
                    dVar.f48304d.setVisibility(8);
                }
                if (com.join.mgps.Util.d2.i(discoverListWeiboItemBean.getImage_url()) && !"{}".equals(discoverListWeiboItemBean.getImage_url())) {
                    dVar.f48305e.setVisibility(0);
                } else {
                    dVar.f48305e.setVisibility(8);
                }
                dVar.f48306f.setOnClickListener(new a(discoverListWeiboItemBean));
                return;
            }
            c cVar = (c) viewHolder;
            DiscoverListItemBean discoverListItemBean = a0Var.f48289m.get(i2);
            cVar.f48294a.setText(discoverListItemBean.getSubject());
            TextView textView = cVar.f48297d;
            textView.setText(discoverListItemBean.getCommit() + "");
            TextView textView2 = cVar.f48296c;
            textView2.setText(com.join.mgps.Util.d2.e(discoverListItemBean.getView()) + "");
            cVar.f48295b.setText(discoverListItemBean.getNickname());
            MyImageLoader.d(cVar.f48299f, R.drawable.rect_normal_icon, discoverListItemBean.getBig_pic());
            cVar.f48298e.setOnClickListener(new b(discoverListItemBean));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            if (getItemViewType(i2) == 2) {
                return new d(LayoutInflater.from(a0.this.f48286j).inflate(R.layout.discover_weibo_list_item, viewGroup, false));
            }
            return new c(LayoutInflater.from(a0.this.f48286j).inflate(R.layout.discover_list_item, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void M() {
        this.f48286j = getActivity();
        this.f48287k = com.join.mgps.rpc.impl.f.A0();
        this.f48289m = new ArrayList();
        this.f48290n = new ArrayList();
        this.f48277a.setLayoutManager(new LinearLayoutManager(this.f48286j));
        e eVar = new e();
        this.f48291o = eVar;
        this.f48277a.setAdapter(eVar);
        this.f48288l = 1;
        this.f48283g.setText("没有找到相关数据");
        this.f48278b.setOnRefreshListener(new a());
        this.f48277a.setLoadingListener(new b());
        int i2 = getArguments().getInt(com.alipay.sdk.cons.b.f9718c);
        this.f48285i = i2;
        if (i2 == 2) {
            this.f48284h = 2;
        }
        if (this.f48284h == 2) {
            O(this.f48288l);
        } else {
            loadData(this.f48288l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.update.position2"})
    public void N(Intent intent) {
        try {
            if (this.f48290n.size() > 0 || this.f48289m.size() > 0) {
                this.f48277a.smoothScrollToPosition(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O(int i2) {
        if (this.f48290n.size() == 0) {
            showLoding();
        }
        try {
            ForumResponse<DiscoverListData<DiscoverListWeiboItemBean>> b4 = this.f48287k.b(AccountUtil_.getInstance_(this.f48286j).getAccountData().getUid(), i2, this.f48285i);
            if (b4 != null && b4.getData() != null) {
                List<DiscoverListWeiboItemBean> news_list = b4.getData().getNews_list();
                if (i2 == 1 && news_list != null && news_list.size() == 0) {
                    S();
                } else {
                    U(news_list, i2);
                }
            } else {
                R();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            R();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
        try {
            this.f48279c.setVisibility(8);
            this.f48281e.setVisibility(0);
            this.f48278b.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q() {
        try {
            this.f48279c.setVisibility(8);
            this.f48281e.setVisibility(8);
            this.f48278b.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R() {
        XRecyclerView xRecyclerView = this.f48277a;
        if (xRecyclerView != null) {
            xRecyclerView.q1();
            this.f48277a.s1();
        }
        this.f48278b.setRefreshing(false);
        if (this.f48289m.size() == 0 && this.f48290n.size() == 0) {
            P();
        } else {
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        try {
            this.f48279c.setVisibility(8);
            this.f48281e.setVisibility(8);
            this.f48278b.setVisibility(8);
            this.f48280d.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(List<DiscoverListItemBean> list, int i2) {
        int i4 = this.f48288l;
        if (i4 == i2) {
            if (i4 == 1) {
                this.f48289m.clear();
            }
            if (list.size() > 0) {
                this.f48288l++;
            }
            this.f48289m.addAll(list);
        }
        if (this.f48289m.size() > 0 && list.size() == 0) {
            this.f48277a.setNoMore();
        } else {
            R();
        }
        this.f48291o.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U(List<DiscoverListWeiboItemBean> list, int i2) {
        int i4 = this.f48288l;
        if (i4 == i2) {
            if (i4 == 1) {
                this.f48290n.clear();
            }
            if (list.size() > 0) {
                this.f48288l++;
            }
            this.f48290n.addAll(list);
        }
        if (this.f48290n.size() > 0 && list.size() == 0) {
            this.f48277a.setNoMore();
        } else {
            R();
        }
        this.f48291o.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadData(int i2) {
        if (this.f48289m.size() == 0) {
            showLoding();
        }
        try {
            ForumResponse<DiscoverListData<DiscoverListItemBean>> C = this.f48287k.C(AccountUtil_.getInstance_(this.f48286j).getAccountData().getUid(), i2, this.f48285i);
            if (C != null && C.getData() != null) {
                List<DiscoverListItemBean> news_list = C.getData().getNews_list();
                if (i2 == 1 && news_list != null && news_list.size() == 0) {
                    S();
                } else {
                    T(news_list, i2);
                }
            } else {
                R();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            R();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f48288l = 1;
        if (this.f48284h == 2) {
            O(1);
        } else {
            loadData(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f48286j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f48279c.setVisibility(0);
        this.f48281e.setVisibility(8);
        this.f48278b.setVisibility(8);
    }
}
