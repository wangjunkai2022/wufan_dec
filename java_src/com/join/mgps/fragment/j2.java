package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
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
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.join.mgps.dto.GamelistRankingmainbean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: GameFormFragment.java */
@EFragment(R.layout.fragment_gamefrom)
/* loaded from: classes4.dex */
public class j2 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    XRecyclerView f49007a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f49008b;

    /* renamed from: c  reason: collision with root package name */
    c f49009c;

    /* renamed from: d  reason: collision with root package name */
    Context f49010d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    Button f49011e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f49012f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f49013g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.b f49014h;

    /* renamed from: j  reason: collision with root package name */
    String f49016j;

    /* renamed from: k  reason: collision with root package name */
    String f49017k;

    /* renamed from: l  reason: collision with root package name */
    List<g> f49018l;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ImageView f49020n;

    /* renamed from: q  reason: collision with root package name */
    private List<GameFromPopoWinBeanV2.FamousBean> f49023q;

    /* renamed from: i  reason: collision with root package name */
    int f49015i = 1;

    /* renamed from: m  reason: collision with root package name */
    boolean f49019m = false;

    /* renamed from: o  reason: collision with root package name */
    int f49021o = 1;

    /* renamed from: p  reason: collision with root package name */
    boolean f49022p = false;

    /* renamed from: r  reason: collision with root package name */
    boolean f49024r = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameFormFragment.java */
    /* loaded from: classes4.dex */
    public class a implements XRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            j2 j2Var = j2.this;
            if (j2Var.f49022p) {
                j2Var.V(j2Var.f49021o, j2Var.f49015i);
            } else {
                j2Var.T();
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameFormFragment.java */
    /* loaded from: classes4.dex */
    public class b implements Callback<ResponseModel<GamelistRankingmainbean>> {
        b() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<GamelistRankingmainbean>> call, Throwable th) {
            j2.this.showLodingFailed();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<GamelistRankingmainbean>> call, Response<ResponseModel<GamelistRankingmainbean>> response) {
            if (response != null && response.body() != null) {
                if (response.body().getCode() == 200) {
                    GamelistRankingmainbean data = response.body().getData();
                    ArrayList arrayList = new ArrayList();
                    if (data != null) {
                        List<GameFromPopoWinBeanV2.DataBean> fav_list = data.getFav_list();
                        if (fav_list.size() < 10) {
                            j2.this.f49024r = true;
                        }
                        for (int i2 = 0; i2 < fav_list.size(); i2++) {
                            GameFromPopoWinBeanV2.DataBean dataBean = fav_list.get(i2);
                            arrayList.add(new g(dataBean, 1, dataBean.getId(), dataBean.getUid()));
                            if (i2 == 0 && j2.this.f49023q != null && j2.this.f49023q.size() > 0) {
                                j2 j2Var = j2.this;
                                if (j2Var.f49015i == 2) {
                                    arrayList.add(new g(j2Var.f49023q, 2, dataBean.getId(), dataBean.getUid()));
                                }
                            }
                        }
                        j2.this.a0(arrayList);
                        return;
                    }
                    j2 j2Var2 = j2.this;
                    if (j2Var2.f49015i == 2) {
                        j2Var2.O();
                        return;
                    } else {
                        j2Var2.Z();
                        return;
                    }
                }
                j2 j2Var3 = j2.this;
                if (j2Var3.f49015i == 2) {
                    j2Var3.O();
                    return;
                } else {
                    j2Var3.Z();
                    return;
                }
            }
            j2.this.showLodingFailed();
        }
    }

    /* compiled from: GameFormFragment.java */
    /* loaded from: classes4.dex */
    public class c extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* compiled from: GameFormFragment.java */
        /* loaded from: classes4.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBeanV2.DataBean f49028a;

            a(GameFromPopoWinBeanV2.DataBean dataBean) {
                this.f49028a = dataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j2.this.N(this.f49028a.getId(), this.f49028a.getUid());
                Ext ext = new Ext();
                ext.setPosition("fromGameDetailP2");
                ext.setArticleId(this.f49028a.getId());
                com.papa.sim.statistic.p.l(j2.this.f49010d).K1(Event.enterUserGameList, ext);
            }
        }

        public c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return j2.this.f49018l.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            List<g> list = j2.this.f49018l;
            if (list != null) {
                return list.get(i2).f49045b;
            }
            return -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 1 && itemViewType != 3) {
                if (itemViewType == 2) {
                    ((f) viewHolder).f49041a.setAdapter((ListAdapter) new e());
                    return;
                }
                return;
            }
            GameFromPopoWinBeanV2.DataBean dataBean = (GameFromPopoWinBeanV2.DataBean) j2.this.f49018l.get(i2).f49044a;
            d dVar = (d) viewHolder;
            dVar.f49030a.setOnClickListener(new a(dataBean));
            dVar.f49031b.setText(dataBean.getTitle());
            dVar.f49034e.setText(dataBean.getNick_name());
            TextView textView = dVar.f49036g;
            textView.setText(dataBean.getBook_count() + "订阅");
            TextView textView2 = dVar.f49035f;
            textView2.setText(dataBean.getGame_count() + "款");
            dVar.f49032c.removeAllViews();
            if (itemViewType == 3) {
                int i4 = 0;
                while (i2 < dataBean.getGame_list().size()) {
                    View inflate = LayoutInflater.from(j2.this.f49010d).inflate(R.layout.gamelist_listitem_gameicon_layout, (ViewGroup) null);
                    MyImageLoader.d((SimpleDraweeView) inflate.findViewById(R.id.icon), R.drawable.main_normal_icon, dataBean.getGame_list().get(i4).getGame_ico());
                    if (i4 < 2) {
                        dVar.f49032c.addView(inflate);
                    } else {
                        dVar.f49033d.addView(inflate);
                    }
                    i4++;
                }
            } else {
                for (GameFromPopoWinBeanV2.DataBean.GameListBean gameListBean : dataBean.getGame_list()) {
                    View inflate2 = LayoutInflater.from(j2.this.f49010d).inflate(R.layout.gamelist_listitem_gameicon_layout, (ViewGroup) null);
                    MyImageLoader.d((SimpleDraweeView) inflate2.findViewById(R.id.icon), R.drawable.main_normal_icon, gameListBean.getGame_ico());
                    dVar.f49032c.addView(inflate2);
                }
            }
            int i5 = i2 % 5;
            if (i5 == 0) {
                dVar.f49030a.setBackgroundResource(R.drawable.gamelist_itemback_1);
            } else if (i5 == 1) {
                dVar.f49030a.setBackgroundResource(R.drawable.gamelist_itemback_2);
            } else if (i5 == 2) {
                dVar.f49030a.setBackgroundResource(R.drawable.gamelist_itemback_3);
            } else if (i5 == 3) {
                dVar.f49030a.setBackgroundResource(R.drawable.gamelist_itemback_4);
            } else if (i5 == 4) {
                dVar.f49030a.setBackgroundResource(R.drawable.gamelist_itemback_5);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            if (i2 == 1) {
                return new d(LayoutInflater.from(j2.this.f49010d).inflate(R.layout.gamelist_list_item, viewGroup, false));
            } else if (i2 == 3) {
                return new d(LayoutInflater.from(j2.this.f49010d).inflate(R.layout.gamelist_list_itemhome, viewGroup, false));
            } else if (i2 == 2) {
                return new f(LayoutInflater.from(j2.this.f49010d).inflate(R.layout.gamelist_list_item_hongren, viewGroup, false));
            } else {
                return null;
            }
        }
    }

    /* compiled from: GameFormFragment.java */
    /* loaded from: classes4.dex */
    class d extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f49030a;

        /* renamed from: b  reason: collision with root package name */
        TextView f49031b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f49032c;

        /* renamed from: d  reason: collision with root package name */
        LinearLayout f49033d;

        /* renamed from: e  reason: collision with root package name */
        TextView f49034e;

        /* renamed from: f  reason: collision with root package name */
        TextView f49035f;

        /* renamed from: g  reason: collision with root package name */
        TextView f49036g;

        public d(@NonNull View view) {
            super(view);
            this.f49030a = view.findViewById(R.id.main);
            this.f49031b = (TextView) view.findViewById(R.id.title);
            this.f49032c = (LinearLayout) view.findViewById(R.id.iconLayout);
            this.f49033d = (LinearLayout) view.findViewById(R.id.iconLayout2);
            this.f49034e = (TextView) view.findViewById(R.id.name);
            this.f49035f = (TextView) view.findViewById(R.id.number);
            this.f49036g = (TextView) view.findViewById(R.id.follow);
        }
    }

    /* compiled from: GameFormFragment.java */
    /* loaded from: classes4.dex */
    class e extends BaseAdapter {

        /* compiled from: GameFormFragment.java */
        /* loaded from: classes4.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBeanV2.FamousBean f49039a;

            a(GameFromPopoWinBeanV2.FamousBean famousBean) {
                this.f49039a = famousBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j2.this.N(this.f49039a.getId(), this.f49039a.getUid());
                Ext ext = new Ext();
                ext.setPosition("fromGameDetailP3");
                ext.setArticleId(this.f49039a.getId());
                com.papa.sim.statistic.p.l(j2.this.f49010d).K1(Event.enterUserGameList, ext);
            }
        }

        e() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (j2.this.f49023q != null) {
                return j2.this.f49023q.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(j2.this.f49010d).inflate(R.layout.gamelist_hongrentuijian_layout, (ViewGroup) null);
            }
            GameFromPopoWinBeanV2.FamousBean famousBean = (GameFromPopoWinBeanV2.FamousBean) j2.this.f49023q.get(i2);
            View findViewById = view.findViewById(R.id.main);
            MyImageLoader.t((SimpleDraweeView) view.findViewById(R.id.userIcon), R.drawable.papa_user_icon, famousBean.getPic());
            ((TextView) view.findViewById(R.id.folloNum)).setText("收藏 " + famousBean.getCount() + "");
            ((TextView) view.findViewById(R.id.userName)).setText(famousBean.getName());
            ((TextView) view.findViewById(R.id.userTag)).setText(famousBean.getTitle());
            findViewById.setOnClickListener(new a(famousBean));
            return view;
        }
    }

    /* compiled from: GameFormFragment.java */
    /* loaded from: classes4.dex */
    class f extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        HListView f49041a;

        /* renamed from: b  reason: collision with root package name */
        TextView f49042b;

        public f(@NonNull View view) {
            super(view);
            this.f49041a = (HListView) view.findViewById(R.id.hongrenlist);
            this.f49042b = (TextView) view.findViewById(R.id.title);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameFormFragment.java */
    /* loaded from: classes4.dex */
    public class g {

        /* renamed from: a  reason: collision with root package name */
        Object f49044a;

        /* renamed from: b  reason: collision with root package name */
        int f49045b;

        /* renamed from: c  reason: collision with root package name */
        String f49046c;

        /* renamed from: d  reason: collision with root package name */
        int f49047d;

        public g(Object obj, int i2, String str, int i4) {
            this.f49044a = obj;
            this.f49045b = i2;
            this.f49046c = str;
            this.f49047d = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(String str, int i2) {
        Intent intent = new Intent(getActivity(), GameDetailActivity_.class);
        intent.putExtra("fromid", str);
        intent.putExtra(DownloadMethodPromptDialog_.F, 11103);
        intent.putExtra("groupuid", i2);
        intent.putExtra("gameid", this.f49017k);
        intent.putExtra("company_id", this.f49016j);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(int i2, int i4) {
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(getActivity());
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        luckHistoryrequest.setUid(AccountUtil_.getInstance_(this.f49010d).getAccountData().getUid());
        luckHistoryrequest.setPage(i4);
        luckHistoryrequest.setType(i2);
        requestModel.setArgs(luckHistoryrequest);
        com.join.mgps.rpc.impl.h.L().J().X(requestModel.makeSign()).enqueue(new b());
    }

    public static j2 W(int i2) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isRanking", true);
        bundle.putInt("rankingType", i2);
        k2 k2Var = new k2();
        k2Var.setArguments(bundle);
        return k2Var;
    }

    public static j2 X(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("company_id", str);
        bundle.putString("gameid", str2);
        k2 k2Var = new k2();
        k2Var.setArguments(bundle);
        return k2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void M() {
        this.f49010d = getActivity();
        this.f49018l = new ArrayList();
        this.f49014h = com.join.mgps.rpc.impl.a.b0();
        Bundle arguments = getArguments();
        this.f49009c = new c();
        this.f49007a.setLayoutManager(new LinearLayoutManager(this.f49010d));
        this.f49007a.setAdapter(this.f49009c);
        this.f49007a.setVerticalScrollBarEnabled(false);
        this.f49016j = arguments.getString("company_id");
        String string = arguments.getString("gameid");
        this.f49017k = string;
        if (string == null) {
            this.f49017k = "";
        }
        if (this.f49016j == null) {
            this.f49016j = "";
        }
        this.f49007a.setLoadingMoreEnabled(true);
        this.f49007a.setPreLoadCount(10);
        this.f49007a.setLoadingListener(new a());
        boolean z3 = getArguments().getBoolean("isRanking");
        this.f49022p = z3;
        if (z3) {
            int i2 = getArguments().getInt("rankingType");
            this.f49021o = i2;
            V(i2, this.f49015i);
            return;
        }
        T();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O() {
        LinearLayout linearLayout = this.f49008b;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        U();
        XRecyclerView xRecyclerView = this.f49007a;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        List<g> list = this.f49018l;
        if (list != null) {
            list.clear();
        }
        c cVar = this.f49009c;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T() {
        List<GameFromPopoWinBeanV2.FamousBean> list;
        try {
            if (com.join.android.app.common.utils.f.j(this.f49010d)) {
                if (this.f49015i == 1) {
                    showLoding();
                }
                RequestBeanUtil.getInstance(this.f49010d);
                String versionAndVersionName = RequestBeanUtil.getVersionAndVersionName();
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                int i2 = this.f49015i;
                this.f49015i = i2 + 1;
                linkedMultiValueMap.add("page", Integer.valueOf(i2));
                linkedMultiValueMap.add("company_id", this.f49016j);
                linkedMultiValueMap.add("game_id", this.f49017k);
                linkedMultiValueMap.add("device_id", "");
                linkedMultiValueMap.add("version", versionAndVersionName);
                ArrayList arrayList = new ArrayList();
                GameFromPopoWinBeanV2 J = this.f49014h.J(linkedMultiValueMap);
                if (J != null && J.getError() == 0 && J.getData() != null && J.getData().getFav_list() != null && J.getData().getFav_list().size() > 0) {
                    U();
                    b0();
                    List<GameFromPopoWinBeanV2.DataBean> fav_list = J.getData().getFav_list();
                    if (this.f49015i == 2) {
                        this.f49023q = J.getData().getFamous_list();
                    }
                    if (fav_list.size() < 10) {
                        this.f49024r = true;
                    }
                    for (int i4 = 0; i4 < fav_list.size(); i4++) {
                        GameFromPopoWinBeanV2.DataBean dataBean = fav_list.get(i4);
                        arrayList.add(new g(dataBean, 1, dataBean.getId(), dataBean.getUid()));
                        if (i4 == 0 && (list = this.f49023q) != null && list.size() > 0 && this.f49015i == 2) {
                            arrayList.add(new g(this.f49023q, 2, dataBean.getId(), dataBean.getUid()));
                        }
                    }
                    a0(arrayList);
                    return;
                } else if (this.f49015i == 2) {
                    O();
                    return;
                } else {
                    Z();
                    return;
                }
            }
            showLodingFailed();
        } catch (Exception e4) {
            showLodingFailed();
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U() {
        LinearLayout linearLayout = this.f49012f;
        if (linearLayout == null || this.f49013g == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f49013g.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        XRecyclerView xRecyclerView = this.f49007a;
        if (xRecyclerView != null) {
            xRecyclerView.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0(List<g> list) {
        if (this.f49018l != null) {
            U();
            b0();
            this.f49015i++;
            this.f49018l.addAll(list);
        }
        XRecyclerView xRecyclerView = this.f49007a;
        if (xRecyclerView != null) {
            xRecyclerView.q1();
        }
        c cVar = this.f49009c;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        }
        if (this.f49024r) {
            Z();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(System.identityHashCode(this.f49018l));
        sb.append("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0() {
        XRecyclerView xRecyclerView = this.f49007a;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f49015i = 1;
        if (this.f49022p) {
            showLoding();
            int i2 = getArguments().getInt("rankingType");
            this.f49021o = i2;
            V(i2, this.f49015i);
            return;
        }
        T();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f49010d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f49012f;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f49013g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        XRecyclerView xRecyclerView = this.f49007a;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout = this.f49013g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f49012f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }
}
