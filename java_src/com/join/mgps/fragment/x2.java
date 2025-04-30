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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
/* compiled from: GameSubscribeFragment.java */
@EFragment(R.layout.game_build)
/* loaded from: classes4.dex */
public class x2 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f50721a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    PtrClassicFrameLayout f50722b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f50723c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f50724d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f50725e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f50726f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ImageView f50727g;

    /* renamed from: h  reason: collision with root package name */
    Context f50728h;

    /* renamed from: i  reason: collision with root package name */
    c f50729i;

    /* renamed from: k  reason: collision with root package name */
    String f50731k;

    /* renamed from: l  reason: collision with root package name */
    String f50732l;

    /* renamed from: m  reason: collision with root package name */
    AccountBean f50733m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.b f50734n;

    /* renamed from: o  reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f50735o;

    /* renamed from: j  reason: collision with root package name */
    int f50730j = 1;

    /* renamed from: p  reason: collision with root package name */
    int f50736p = 0;

    /* compiled from: GameSubscribeFragment.java */
    /* loaded from: classes4.dex */
    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            x2 x2Var = x2.this;
            x2Var.f50730j = 1;
            x2Var.O();
            x2.this.R();
        }
    }

    /* compiled from: GameSubscribeFragment.java */
    /* loaded from: classes4.dex */
    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            x2.this.O();
            x2.this.R();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameSubscribeFragment.java */
    /* loaded from: classes4.dex */
    public class c extends BaseAdapter {

        /* compiled from: GameSubscribeFragment.java */
        /* loaded from: classes4.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f50740a;

            a(int i2) {
                this.f50740a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(x2.this.getActivity(), GameDetailActivity_.class);
                intent.putExtra("fromid", x2.this.f50735o.get(this.f50740a).getId());
                intent.putExtra("groupuid", x2.this.f50735o.get(this.f50740a).getUid());
                intent.putExtra(DownloadMethodPromptDialog_.F, 11104);
                intent.putExtra("gameid", "0");
                intent.putExtra("company_id", "0");
                x2.this.startActivity(intent);
            }
        }

        c() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return x2.this.f50735o.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return x2.this.f50735o.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            d dVar;
            if (view == null) {
                view = LayoutInflater.from(x2.this.f50728h).inflate(R.layout.game_build_item, (ViewGroup) null);
                dVar = new d();
                dVar.f50742a = (SimpleDraweeView) view.findViewById(R.id.smv_icon);
                dVar.f50744c = (TextView) view.findViewById(R.id.tv_size);
                dVar.f50743b = (TextView) view.findViewById(R.id.tv_title);
                dVar.f50745d = (RelativeLayout) view.findViewById(R.id.rl_content);
                view.setTag(dVar);
            } else {
                dVar = (d) view.getTag();
            }
            if (x2.this.f50735o.get(i2).getGame_list().size() != 0) {
                dVar.f50742a.setImageURI(x2.this.f50735o.get(i2).getGame_list().get(0).getGame_ico());
            } else {
                dVar.f50742a.setImageResource(R.drawable.main_normal_icon);
            }
            dVar.f50743b.setText(x2.this.f50735o.get(i2).getTitle());
            TextView textView = dVar.f50744c;
            textView.setText(x2.this.f50735o.get(i2).getGame_count() + "款");
            dVar.f50745d.setOnClickListener(new a(i2));
            return view;
        }
    }

    /* compiled from: GameSubscribeFragment.java */
    /* loaded from: classes4.dex */
    class d {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f50742a;

        /* renamed from: b  reason: collision with root package name */
        TextView f50743b;

        /* renamed from: c  reason: collision with root package name */
        TextView f50744c;

        /* renamed from: d  reason: collision with root package name */
        RelativeLayout f50745d;

        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void M() {
        this.f50728h = getActivity();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f50736p = arguments.getInt("uid", 0);
        }
        this.f50734n = com.join.mgps.rpc.impl.a.b0();
        this.f50735o = new ArrayList();
        this.f50733m = AccountUtil_.getInstance_(this.f50728h).getAccountData();
        this.f50731k = "";
        RequestBeanUtil.getInstance(this.f50728h);
        this.f50732l = RequestBeanUtil.getVersionAndVersionName();
        this.f50723c.setPreLoadCount(1);
        R();
        this.f50723c.setPullRefreshEnable(new a());
        this.f50723c.setPullLoadEnable(new b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N(List<GameFromPopoWinBean.DataBean> list) {
        this.f50735o.addAll(list);
        if (list.size() < 10) {
            U();
        }
        c cVar = this.f50729i;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        } else if (this.f50723c != null) {
            c cVar2 = new c();
            this.f50729i = cVar2;
            this.f50723c.setAdapter((ListAdapter) cVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O() {
        try {
            if (this.f50723c != null) {
                this.f50721a.setVisibility(8);
            }
            this.f50723c.k();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P() {
        c cVar = this.f50729i;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q() {
        if (this.f50735o.size() > 0) {
            this.f50735o.clear();
            c cVar = this.f50729i;
            if (cVar != null) {
                cVar.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        try {
            if (com.join.android.app.common.utils.f.j(this.f50728h)) {
                if (this.f50730j == 1) {
                    showLoding();
                }
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                int i2 = this.f50736p;
                if (i2 == 0) {
                    i2 = this.f50733m.getUid();
                }
                linkedMultiValueMap.add("uid", Integer.valueOf(i2));
                int i4 = this.f50730j;
                this.f50730j = i4 + 1;
                linkedMultiValueMap.add("page", Integer.valueOf(i4));
                linkedMultiValueMap.add("type", 2);
                linkedMultiValueMap.add("device_id", this.f50731k);
                linkedMultiValueMap.add("version", this.f50732l);
                GameFromPopoWinBean r3 = this.f50734n.r(linkedMultiValueMap);
                if (r3.getError() == 0 && r3.getData() != null && r3.getData().size() != 0) {
                    V();
                    S();
                    if (this.f50730j == 2) {
                        Q();
                    }
                    N(r3.getData());
                    return;
                }
                S();
                if (this.f50730j == 2) {
                    T();
                } else {
                    U();
                }
            } else if (this.f50730j == 1) {
                showLodingFailed();
            } else {
                U();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        LinearLayout linearLayout = this.f50724d;
        if (linearLayout == null || this.f50725e == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f50725e.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T() {
        LinearLayout linearLayout = this.f50721a;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        XListView2 xListView2 = this.f50723c;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U() {
        XListView2 xListView2 = this.f50723c;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f50723c.u();
                this.f50723c.setNoMore();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V() {
        XListView2 xListView2 = this.f50723c;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f50723c.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f50730j = 1;
        XListView2 xListView2 = this.f50723c;
        if (xListView2 != null) {
            xListView2.setVisibility(0);
        }
        O();
        R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f50728h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f50724d;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f50725e;
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
        LinearLayout linearLayout = this.f50725e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f50724d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f50723c;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }
}
