package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.dto.ForumResponse;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_account_center_detial_new)
/* loaded from: classes3.dex */
public class AccountCenterDetialNewActivity extends BaseAppCompatActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f28253a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    SimpleDraweeView f28254b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f28255c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f28256d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f28257e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    RecyclerView f28258f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.rpc.b f28259g;

    /* renamed from: h  reason: collision with root package name */
    Context f28260h;

    /* renamed from: i  reason: collision with root package name */
    List<b> f28261i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.Adapter {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return AccountCenterDetialNewActivity.this.f28261i.get(i2).f28263a;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
            if (getItemViewType(i2) != 29) {
                return;
            }
            ((c) viewHolder).f28266a.setAdapter((ListAdapter) new com.join.mgps.adapter.l(AccountCenterDetialNewActivity.this.f28260h, (List) AccountCenterDetialNewActivity.this.f28261i.get(i2).f28264b, 2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            if (i2 == 1) {
                new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_title, viewGroup, false));
                return null;
            } else if (i2 != 29) {
                return null;
            } else {
                new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_favortis_layout, viewGroup, false));
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        int f28263a;

        /* renamed from: b  reason: collision with root package name */
        Object f28264b;

        public b(int i2, Object obj) {
            this.f28263a = i2;
            this.f28264b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        HListView f28266a;

        public c(View view) {
            super(view);
            this.f28266a = (HListView) view.findViewById(R.id.favoriteList);
        }
    }

    /* loaded from: classes3.dex */
    class d extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public TextView f28268a;

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f28269b;

        /* renamed from: c  reason: collision with root package name */
        public View f28270c;

        /* renamed from: d  reason: collision with root package name */
        public View f28271d;

        public d(View view) {
            super(view);
            this.f28268a = (TextView) view.findViewById(R.id.titleText);
            this.f28271d = view.findViewById(R.id.line_h);
            this.f28269b = (LinearLayout) view.findViewById(R.id.look_other);
            this.f28270c = view.findViewById(R.id.layoutTop);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(FavoritesCenterData favoritesCenterData) {
        String[] split;
        MyImageLoader.h(this.f28253a, favoritesCenterData.getMember_info().getPortrait());
        MyImageLoader.h(this.f28254b, favoritesCenterData.getMember_info().getPortrait());
        this.f28255c.setText(favoritesCenterData.getMember_info().getNick_name());
        this.f28256d.setText(favoritesCenterData.getMember_info().getRank());
        for (String str : favoritesCenterData.getMember_info().getTag_info().split(",")) {
            View inflate = LayoutInflater.from(this.f28260h).inflate(R.layout.gamedetail_item_tipitem, (ViewGroup) null);
            this.f28257e.addView(inflate);
            ((TextView) inflate.findViewById(R.id.tipText)).setText(str);
        }
        a aVar = new a();
        this.f28261i = new ArrayList();
        this.f28258f.setAdapter(aVar);
        if (favoritesCenterData.getCreate_group_list().size() > 0) {
            this.f28261i.add(new b(1, "创建的游戏单"));
            this.f28261i.add(new b(29, favoritesCenterData.getCreate_group_list()));
        }
        if (favoritesCenterData.getBook_group_list().size() > 0) {
            this.f28261i.add(new b(1, "订阅的游戏单"));
            this.f28261i.add(new b(29, favoritesCenterData.getBook_group_list()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f28259g = com.join.mgps.rpc.impl.a.b0();
        this.f28260h = this;
        this.f28258f.setLayoutManager(new LinearLayoutManager(this));
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            HashMap hashMap = new HashMap();
            hashMap.put("uid", "" + accountData.getUid());
            hashMap.put("device_id", "");
            StringBuilder sb = new StringBuilder();
            sb.append("");
            RequestBeanUtil.getInstance(this);
            sb.append(RequestBeanUtil.getVersionAndVersionName());
            hashMap.put("version ", sb.toString());
            ForumResponse<FavoritesCenterData> X = this.f28259g.X(hashMap);
            if (X == null || X.getError() != 0) {
                return;
            }
            D0(X.getData());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
