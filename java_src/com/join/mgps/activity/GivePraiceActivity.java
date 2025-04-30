package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentDetailActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumProfileMessageBean;
import com.join.mgps.dto.ForumProfileMessageData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GivePriaceBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_give_price)
/* loaded from: classes3.dex */
public class GivePraiceActivity extends BaseFragmentActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f32109a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    PtrClassicFrameLayout f32110b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f32111c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f32112d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f32113e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.h f32114f;

    /* renamed from: g  reason: collision with root package name */
    Context f32115g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f32116h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f32117i;

    /* renamed from: j  reason: collision with root package name */
    int f32118j = 1;

    /* renamed from: k  reason: collision with root package name */
    private AccountBean f32119k;

    /* renamed from: l  reason: collision with root package name */
    d f32120l;

    /* renamed from: m  reason: collision with root package name */
    String f32121m;

    /* renamed from: n  reason: collision with root package name */
    ForumResponse<ForumProfileMessageData> f32122n;

    /* renamed from: o  reason: collision with root package name */
    List<ForumProfileMessageBean> f32123o;

    /* renamed from: p  reason: collision with root package name */
    List<GivePriaceBean.MessagesBean.DataBean> f32124p;

    /* renamed from: q  reason: collision with root package name */
    int f32125q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    Button f32126r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            GivePraiceActivity.this.E0();
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            int i2 = givePraiceActivity.f32125q;
            if (i2 == 1) {
                givePraiceActivity.f32118j = 1;
                givePraiceActivity.K0();
            } else if (i2 == 2) {
                givePraiceActivity.f32118j = 1;
                givePraiceActivity.L0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            GivePraiceActivity.this.E0();
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            int i2 = givePraiceActivity.f32125q;
            if (i2 == 1) {
                givePraiceActivity.K0();
            } else if (i2 == 2) {
                givePraiceActivity.L0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GivePraiceActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        ForumProfileMessageBean f32130a;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f32132a;

            a(int i2) {
                this.f32132a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
                if (givePraiceActivity.f32125q == 1) {
                    ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                    forumPostsBean.setPid(GivePraiceActivity.this.f32123o.get(this.f32132a).getPid());
                    com.join.mgps.Util.i0.w0(GivePraiceActivity.this.f32115g, forumPostsBean, null);
                } else if (givePraiceActivity.f32124p == null) {
                    givePraiceActivity.P0();
                } else {
                    CommentDetailActivity_.z d4 = CommentDetailActivity_.k2(givePraiceActivity.f32115g).d(GivePraiceActivity.this.f32124p.get(this.f32132a).getGame_id());
                    d4.b(GivePraiceActivity.this.f32124p.get(this.f32132a).getOriginal_text_id() + "").f("").a(1).e(0).h(1).g("").c(GivePraiceActivity.this.f32124p.get(this.f32132a).getComment_score_switch()).start();
                }
            }
        }

        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            TextView f32134a;

            /* renamed from: b  reason: collision with root package name */
            TextView f32135b;

            /* renamed from: c  reason: collision with root package name */
            TextView f32136c;

            /* renamed from: d  reason: collision with root package name */
            LinearLayout f32137d;

            /* renamed from: e  reason: collision with root package name */
            SimpleDraweeView f32138e;

            b() {
            }
        }

        d() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            if (givePraiceActivity.f32125q == 1) {
                return givePraiceActivity.f32123o.size();
            }
            return givePraiceActivity.f32124p.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            if (givePraiceActivity.f32125q == 1) {
                return givePraiceActivity.f32123o.get(i2);
            }
            return givePraiceActivity.f32124p.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            b bVar;
            long praise_time;
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            if (view == null) {
                view = LayoutInflater.from(GivePraiceActivity.this.f32115g).inflate(R.layout.givepraice_item, (ViewGroup) null);
                bVar = new b();
                bVar.f32138e = (SimpleDraweeView) view.findViewById(R.id.simv);
                bVar.f32137d = (LinearLayout) view.findViewById(R.id.ll_post);
                bVar.f32135b = (TextView) view.findViewById(R.id.tv_name);
                bVar.f32136c = (TextView) view.findViewById(R.id.tv_time);
                bVar.f32134a = (TextView) view.findViewById(R.id.tv_post);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            if (givePraiceActivity.f32125q == 1) {
                if (givePraiceActivity.f32123o.get(i2).getPosts() != null) {
                    this.f32130a = GivePraiceActivity.this.f32123o.get(i2);
                }
                TextView textView = bVar.f32134a;
                textView.setText(GivePraiceActivity.this.f32121m + this.f32130a.getPosts().getMessage());
                bVar.f32138e.setImageURI(GivePraiceActivity.this.f32123o.get(i2).getFrom_avatar_src());
                bVar.f32135b.setText(GivePraiceActivity.this.f32123o.get(i2).getFrom_nickname());
            } else {
                TextView textView2 = bVar.f32134a;
                textView2.setText(GivePraiceActivity.this.f32121m + GivePraiceActivity.this.f32124p.get(i2).getOriginal_text());
                bVar.f32138e.setImageURI(GivePraiceActivity.this.f32124p.get(i2).getPraise_user_ico());
                bVar.f32135b.setText(GivePraiceActivity.this.f32124p.get(i2).getPraise_title());
            }
            bVar.f32137d.setOnClickListener(new a(i2));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
            Date date = new Date(System.currentTimeMillis());
            GivePraiceActivity givePraiceActivity2 = GivePraiceActivity.this;
            if (givePraiceActivity2.f32125q == 1) {
                praise_time = this.f32130a.getAdd_time();
            } else {
                praise_time = givePraiceActivity2.f32124p.get(i2).getPraise_time();
            }
            Date date2 = new Date(praise_time * 1000);
            String format = simpleDateFormat.format(date);
            String format2 = simpleDateFormat.format(date2);
            String str6 = "";
            if (format2 == null || format2.equals("")) {
                str = "";
                str2 = str;
                str3 = str2;
                str4 = str3;
                str5 = str4;
            } else {
                str6 = format2.substring(0, format2.indexOf("年"));
                str3 = format2.substring(format2.indexOf("年") + 1, format2.indexOf("月"));
                str4 = format2.substring(format2.indexOf("月") + 1, format2.indexOf("日"));
                str2 = format.substring(0, format.indexOf("年"));
                str5 = format.substring(format.indexOf("年") + 1, format.indexOf("月"));
                str = format.substring(format.indexOf("月") + 1, format.indexOf("日"));
            }
            if (str6.equals(str2)) {
                if (str3.equals(str5)) {
                    if (str4.equals(str)) {
                        bVar.f32136c.setText(format2.substring(format2.indexOf(" ") + 1, format2.lastIndexOf(":")));
                    } else {
                        TextView textView3 = bVar.f32136c;
                        textView3.setText(str3 + "月" + str4 + "日");
                    }
                } else {
                    TextView textView4 = bVar.f32136c;
                    textView4.setText(str3 + "月" + str4 + "日");
                }
            } else {
                TextView textView5 = bVar.f32136c;
                textView5.setText(str6 + "年" + str3 + "月" + str4 + "日");
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void D0() {
        this.f32115g = this;
        this.f32114f = com.join.mgps.rpc.impl.f.A0();
        this.f32119k = AccountUtil_.getInstance_(this).getAccountData();
        this.f32120l = new d();
        this.f32123o = new ArrayList();
        this.f32124p = new ArrayList();
        this.f32111c.setAdapter((ListAdapter) this.f32120l);
        this.f32125q = getIntent().getIntExtra("praice", 1);
        showLoding();
        if (this.f32125q == 1) {
            this.f32121m = "帖子:";
            K0();
        } else {
            this.f32121m = "点评:";
            L0();
        }
        this.f32111c.setPullRefreshEnable(new a());
        this.f32111c.setPullLoadEnable(new b());
        this.f32111c.k();
        this.f32109a.setOnClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0() {
        try {
            XListView2 xListView2 = this.f32111c;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        this.f32117i.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0(List<ForumProfileMessageBean> list) {
        this.f32123o.addAll(list);
        this.f32120l.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(List<GivePriaceBean.MessagesBean.DataBean> list) {
        this.f32124p.addAll(list);
        this.f32120l.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(List<ForumProfileMessageBean> list) {
        list.clear();
        this.f32120l.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(List<GivePriaceBean.MessagesBean.DataBean> list) {
        list.clear();
        this.f32120l.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        if (com.join.android.app.common.utils.f.j(this.f32115g)) {
            ArrayList arrayList = new ArrayList();
            try {
                com.join.mgps.rpc.h hVar = this.f32114f;
                int uid = this.f32119k.getUid();
                String token = this.f32119k.getToken();
                int i2 = this.f32118j;
                this.f32118j = i2 + 1;
                ForumResponse<ForumProfileMessageData> m02 = hVar.m0(uid, token, i2, 10);
                Q0();
                if (m02 != null) {
                    if (m02.getData() != null) {
                        if (m02.getData().getMessage_list() != null && m02.getData().getMessage_list().size() > 0) {
                            if (this.f32118j == 2) {
                                I0(this.f32123o);
                            }
                            if (m02.getData().getMessage_list().size() < 10) {
                                N0();
                            }
                            for (ForumProfileMessageBean forumProfileMessageBean : m02.getData().getMessage_list()) {
                                arrayList.add(forumProfileMessageBean);
                            }
                            G0(arrayList);
                            M0();
                            return;
                        } else if (this.f32118j == 2) {
                            M0();
                            N0();
                            O0(1);
                            return;
                        } else {
                            N0();
                            return;
                        }
                    }
                    return;
                }
                M0();
                O0(1);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                M0();
                showLodingFailed();
                return;
            }
        }
        O0(2);
        M0();
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        if (com.join.android.app.common.utils.f.j(this.f32115g)) {
            ArrayList arrayList = new ArrayList();
            try {
                RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this.f32115g);
                int i2 = this.f32118j;
                this.f32118j = i2 + 1;
                GivePriaceBean m4 = this.f32114f.m(com.join.mgps.rpc.g.f51518i + "/android/v2/message/praisenoticemessagelist", requestBeanUtil.getPraiceMessPra(i2, this.f32119k.getUid(), this.f32119k.getToken()));
                Q0();
                if (m4 != null) {
                    if (m4.getMessages() != null) {
                        if (m4.getMessages().getData() != null && m4.getMessages().getData().size() > 0) {
                            if (this.f32118j == 2) {
                                J0(this.f32124p);
                            }
                            for (int i4 = 0; i4 < m4.getMessages().getData().size(); i4++) {
                                arrayList.add(m4.getMessages().getData().get(i4));
                            }
                            if (arrayList.size() < 10) {
                                N0();
                            }
                            H0(arrayList);
                            M0();
                            return;
                        } else if (this.f32118j == 2) {
                            M0();
                            N0();
                            O0(1);
                            return;
                        } else {
                            N0();
                            return;
                        }
                    } else if (this.f32118j == 2) {
                        M0();
                        N0();
                        O0(1);
                        return;
                    } else {
                        N0();
                        return;
                    }
                } else if (this.f32118j == 2) {
                    M0();
                    N0();
                    O0(1);
                    return;
                } else {
                    N0();
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        O0(2);
        M0();
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        try {
            this.f32112d.setVisibility(8);
            this.f32113e.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        XListView2 xListView2 = this.f32111c;
        if (xListView2 != null) {
            xListView2.setNoMore();
            this.f32111c.t();
            this.f32111c.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(int i2) {
        if (i2 == 1) {
            this.f32110b.setVisibility(8);
            this.f32111c.setVisibility(8);
            this.f32116h.setVisibility(0);
            return;
        }
        this.f32110b.setVisibility(8);
        this.f32111c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0() {
        com.join.mgps.Util.i2.a(this.f32115g).b("帖子已删除");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0() {
        try {
            this.f32111c.t();
            this.f32111c.u();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f32115g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f32112d;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f32113e;
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
        LinearLayout linearLayout = this.f32113e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f32112d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }
}
