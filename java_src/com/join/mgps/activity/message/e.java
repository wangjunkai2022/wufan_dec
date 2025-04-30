package com.join.mgps.activity.message;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.i;
import com.join.mgps.customview.j;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.NoticeFragmentBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.rpc.h;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: NoticeFragment.java */
@EFragment(R.layout.fragment_message_notice)
/* loaded from: classes3.dex */
public class e extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    PtrClassicFrameLayout f37939a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    XListView2 f37940b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f37941c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f37942d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f37943e;

    /* renamed from: f  reason: collision with root package name */
    h f37944f;

    /* renamed from: g  reason: collision with root package name */
    private AccountBean f37945g;

    /* renamed from: h  reason: collision with root package name */
    Context f37946h;

    /* renamed from: i  reason: collision with root package name */
    d f37947i;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    Button f37949k;

    /* renamed from: n  reason: collision with root package name */
    List<c> f37952n;

    /* renamed from: j  reason: collision with root package name */
    int f37948j = 1;

    /* renamed from: l  reason: collision with root package name */
    boolean f37950l = true;

    /* renamed from: m  reason: collision with root package name */
    boolean f37951m = false;

    /* compiled from: NoticeFragment.java */
    /* loaded from: classes3.dex */
    class a implements j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            e eVar = e.this;
            eVar.f37948j = 1;
            eVar.M();
            e eVar2 = e.this;
            if (eVar2.f37950l) {
                eVar2.Q();
            }
        }
    }

    /* compiled from: NoticeFragment.java */
    /* loaded from: classes3.dex */
    class b implements i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            e.this.M();
            e eVar = e.this;
            if (eVar.f37950l) {
                eVar.Q();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NoticeFragment.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public Object f37955a;

        /* renamed from: b  reason: collision with root package name */
        public int f37956b;

        public c(Object obj, int i2) {
            this.f37955a = obj;
            this.f37956b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NoticeFragment.java */
    /* loaded from: classes3.dex */
    public class d extends BaseAdapter {

        /* compiled from: NoticeFragment.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ NoticeFragmentBean.DataBean.NotificationListBean f37959a;

            a(NoticeFragmentBean.DataBean.NotificationListBean notificationListBean) {
                this.f37959a = notificationListBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.R(this.f37959a.getJump_info().get(0).getSub().get(0), Integer.valueOf(this.f37959a.getJump_info().get(0).getSub().get(0).getLink_type()).intValue());
            }
        }

        /* compiled from: NoticeFragment.java */
        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            TextView f37961a;

            /* renamed from: b  reason: collision with root package name */
            TextView f37962b;

            b() {
            }
        }

        /* compiled from: NoticeFragment.java */
        /* loaded from: classes3.dex */
        class c {

            /* renamed from: a  reason: collision with root package name */
            TextView f37964a;

            /* renamed from: b  reason: collision with root package name */
            TextView f37965b;

            /* renamed from: c  reason: collision with root package name */
            TextView f37966c;

            c() {
            }
        }

        d() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return e.this.f37952n.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return e.this.f37952n.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return e.this.f37952n.get(i2).f37956b;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            c cVar;
            b bVar;
            int itemViewType = getItemViewType(i2);
            if (itemViewType == 1) {
                if (view == null) {
                    view = LayoutInflater.from(e.this.f37946h).inflate(R.layout.notice_fragment_item, (ViewGroup) null);
                    cVar = new c();
                    cVar.f37964a = (TextView) view.findViewById(R.id.tv_title);
                    cVar.f37965b = (TextView) view.findViewById(R.id.tv_time);
                    cVar.f37966c = (TextView) view.findViewById(R.id.showDetail);
                    view.setTag(cVar);
                } else {
                    cVar = (c) view.getTag();
                }
                NoticeFragmentBean.DataBean.NotificationListBean notificationListBean = (NoticeFragmentBean.DataBean.NotificationListBean) e.this.f37952n.get(i2).f37955a;
                cVar.f37965b.setText(notificationListBean.getAdd_time());
                cVar.f37966c.setOnClickListener(new a(notificationListBean));
                cVar.f37964a.setText(notificationListBean.getTitle());
            } else if (itemViewType == 2) {
                if (view == null) {
                    view = LayoutInflater.from(e.this.f37946h).inflate(R.layout.notice_fragment_item_no, (ViewGroup) null);
                    bVar = new b();
                    bVar.f37962b = (TextView) view.findViewById(R.id.tv_time);
                    bVar.f37961a = (TextView) view.findViewById(R.id.tv_title);
                    view.setTag(bVar);
                } else {
                    bVar = (b) view.getTag();
                }
                NoticeFragmentBean.DataBean.NotificationListBean notificationListBean2 = (NoticeFragmentBean.DataBean.NotificationListBean) e.this.f37952n.get(i2).f37955a;
                bVar.f37962b.setText(notificationListBean2.getAdd_time());
                bVar.f37961a.setText(notificationListBean2.getTitle());
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M() {
        try {
            XListView2 xListView2 = this.f37940b;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N(List<c> list) {
        try {
            this.f37952n.addAll(list);
            d dVar = this.f37947i;
            if (dVar != null) {
                dVar.notifyDataSetChanged();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O(List<c> list) {
        list.clear();
        this.f37947i.notifyDataSetChanged();
    }

    String P(long j4) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        Date date2 = new Date(j4);
        String format = simpleDateFormat.format(date);
        String format2 = simpleDateFormat.format(date2);
        String substring = format2.substring(0, format2.indexOf("年"));
        String substring2 = format2.substring(format2.indexOf("年") + 1, format2.indexOf("月"));
        String substring3 = format2.substring(format2.indexOf("月") + 1, format2.indexOf("日"));
        String substring4 = format.substring(0, format.indexOf("年"));
        String substring5 = format.substring(format.indexOf("年") + 1, format.indexOf("月"));
        String substring6 = format.substring(format.indexOf("月") + 1, format.indexOf("日"));
        if (substring.equals(substring4)) {
            if (substring2.equals(substring5)) {
                if (substring3.equals(substring6)) {
                    if (format2.contains(":")) {
                        return format2.substring(format2.indexOf(" ") + 1, format2.lastIndexOf(":"));
                    }
                    return format2.substring(format2.indexOf(" ") + 1, format2.indexOf("分"));
                }
                return substring2 + "月" + substring3 + "日";
            }
            return substring2 + "月" + substring3 + "日";
        }
        return substring + "年" + substring2 + "月" + substring3 + "日";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q() {
        if (com.join.android.app.common.utils.f.j(this.f37946h)) {
            try {
                this.f37950l = false;
                ArrayList arrayList = new ArrayList();
                String str = com.join.android.app.common.utils.j.n(this.f37946h).y() + "_" + com.join.android.app.common.utils.j.n(this.f37946h).z();
                h hVar = this.f37944f;
                int uid = this.f37945g.getUid();
                String token = this.f37945g.getToken();
                int i2 = this.f37948j;
                this.f37948j = i2 + 1;
                NoticeFragmentBean Q = hVar.Q(uid, token, i2, 10, str, "wufun");
                if (Q != null) {
                    W();
                    if (Q.getData() != null) {
                        if (Q.getData().getNotification_list() != null && Q.getData().getNotification_list().size() > 0) {
                            if (this.f37948j == 2) {
                                O(this.f37952n);
                            }
                            for (NoticeFragmentBean.DataBean.NotificationListBean notificationListBean : Q.getData().getNotification_list()) {
                                if (notificationListBean.getJump_info() != null && !notificationListBean.getJump_info().equals("")) {
                                    arrayList.add(new c(notificationListBean, 1));
                                } else {
                                    arrayList.add(new c(notificationListBean, 2));
                                }
                            }
                            if (Q.getData().getNotification_list().size() < 10) {
                                U();
                            }
                            this.f37950l = true;
                            N(arrayList);
                            S();
                            return;
                        }
                        this.f37950l = true;
                        if (this.f37948j == 2) {
                            S();
                            V(1);
                            U();
                            return;
                        }
                        U();
                        return;
                    }
                    this.f37950l = true;
                    return;
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                this.f37950l = true;
                S();
                showLodingFailed();
                return;
            }
        }
        V(2);
        S();
        showLodingFailed();
    }

    void R(NoticeFragmentBean.DataBean.NotificationListBean.JumpInfoBean.SubBean subBean, int i2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(subBean.getTpl_type());
        intentDateBean.setLink_type(i2);
        intentDateBean.setJump_type(Integer.valueOf(subBean.getJump_type()).intValue());
        intentDateBean.setCrc_link_type_val(subBean.getCrc_link_type_val());
        intentDateBean.setLink_type_val(subBean.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.f37946h, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        LinearLayout linearLayout = this.f37941c;
        if (linearLayout == null || this.f37942d == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f37942d.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T() {
        XListView2 xListView2;
        if (this.f37939a == null || (xListView2 = this.f37940b) == null || this.f37943e == null) {
            return;
        }
        xListView2.setVisibility(0);
        this.f37939a.setVisibility(0);
        this.f37943e.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U() {
        XListView2 xListView2 = this.f37940b;
        if (xListView2 != null) {
            xListView2.setNoMore();
            this.f37940b.u();
            this.f37940b.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V(int i2) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f37939a;
        if (ptrClassicFrameLayout == null || this.f37940b == null || this.f37943e == null) {
            return;
        }
        if (i2 == 1) {
            ptrClassicFrameLayout.setVisibility(8);
            this.f37940b.setVisibility(8);
            this.f37943e.setVisibility(0);
            return;
        }
        ptrClassicFrameLayout.setVisibility(8);
        this.f37940b.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W() {
        XListView2 xListView2 = this.f37940b;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f37940b.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f37946h = getActivity();
        this.f37944f = com.join.mgps.rpc.impl.f.A0();
        this.f37945g = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f37952n = new ArrayList();
        d dVar = new d();
        this.f37947i = dVar;
        this.f37940b.setAdapter((ListAdapter) dVar);
        this.f37940b.setPullRefreshEnable(new a());
        this.f37940b.setPullLoadEnable(new b());
        this.f37940b.k();
        showLoding();
        if (this.f37950l) {
            Q();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f37950l = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f37946h);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        super.setUserVisibleHint(z3);
        if (z3 && this.f37951m) {
            this.f37951m = false;
            this.f37948j = 1;
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f37941c;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f37942d;
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
        LinearLayout linearLayout = this.f37942d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f37941c;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }
}
