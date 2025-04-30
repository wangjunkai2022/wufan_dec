package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumAllAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f39047a;

    /* renamed from: b  reason: collision with root package name */
    private List<e> f39048b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    LinearLayout.LayoutParams f39049c;

    /* renamed from: d  reason: collision with root package name */
    d f39050d;

    /* loaded from: classes3.dex */
    public enum ViewType {
        FORUM_ITEM
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean f39051a;

        a(ForumBean forumBean) {
            this.f39051a = forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d dVar = ForumAllAdapter.this.f39050d;
            if (dVar != null) {
                dVar.f(this.f39051a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean f39053a;

        b(ForumBean forumBean) {
            this.f39053a = forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.mgps.Util.i0.Y0(view.getContext())) {
                com.join.mgps.Util.i0.L0(view.getContext());
                return;
            }
            d dVar = ForumAllAdapter.this.f39050d;
            if (dVar != null) {
                dVar.b(this.f39053a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends f {

        /* renamed from: b  reason: collision with root package name */
        public View f39055b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f39056c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39057d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39058e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39059f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f39060g;

        /* renamed from: h  reason: collision with root package name */
        public Button f39061h;

        /* renamed from: i  reason: collision with root package name */
        public LinearLayout f39062i;

        /* renamed from: j  reason: collision with root package name */
        public LinearLayout f39063j;

        /* renamed from: k  reason: collision with root package name */
        public LinearLayout f39064k;

        /* renamed from: l  reason: collision with root package name */
        public RelativeLayout f39065l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f39066m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f39067n;

        c() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void b(ForumBean forumBean);

        void f(ForumBean forumBean);
    }

    /* loaded from: classes3.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        ViewType f39069a;

        /* renamed from: b  reason: collision with root package name */
        Object f39070b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumWelcomeAdItemBean> f39071a;

            public a() {
            }

            public a(List<ForumBean.ForumWelcomeAdItemBean> list) {
                this.f39071a = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {
        }

        /* loaded from: classes3.dex */
        public static class c {
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            ForumBean f39072a;

            /* renamed from: b  reason: collision with root package name */
            ForumBean f39073b;

            public d() {
            }

            public d(ForumBean forumBean) {
                this.f39072a = forumBean;
            }

            public d(ForumBean forumBean, ForumBean forumBean2) {
                this.f39072a = forumBean;
                this.f39073b = forumBean2;
            }
        }

        /* renamed from: com.join.mgps.adapter.ForumAllAdapter$e$e  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0177e {

            /* renamed from: a  reason: collision with root package name */
            public int f39074a;

            /* renamed from: b  reason: collision with root package name */
            public String f39075b;

            /* renamed from: c  reason: collision with root package name */
            public int f39076c;

            /* renamed from: d  reason: collision with root package name */
            public int f39077d;

            /* renamed from: e  reason: collision with root package name */
            public int f39078e;

            /* renamed from: f  reason: collision with root package name */
            public int f39079f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39080g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39081h;

            public C0177e() {
            }

            public C0177e(int i2, int i4, String str, int i5, int i6, int i7, boolean z3, boolean z4) {
                this.f39074a = i2;
                this.f39079f = i4;
                this.f39075b = str;
                this.f39076c = i5;
                this.f39077d = i6;
                this.f39078e = i7;
                this.f39080g = z3;
                this.f39081h = z4;
            }
        }

        /* loaded from: classes3.dex */
        public static class f {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39082a;

            /* renamed from: b  reason: collision with root package name */
            public String f39083b;

            /* renamed from: c  reason: collision with root package name */
            public String f39084c;

            /* renamed from: d  reason: collision with root package name */
            public long f39085d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39086e;

            /* renamed from: f  reason: collision with root package name */
            public int f39087f;

            /* renamed from: g  reason: collision with root package name */
            public int f39088g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39089h;

            public f() {
            }

            public f(boolean z3, String str, String str2, long j4, boolean z4, int i2, int i4, boolean z5) {
                this.f39082a = z3;
                this.f39083b = str;
                this.f39084c = str2;
                this.f39085d = j4;
                this.f39086e = z4;
                this.f39087f = i2;
                this.f39088g = i4;
                this.f39089h = z5;
            }
        }

        /* loaded from: classes3.dex */
        public static class g {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f39090a;

            /* renamed from: b  reason: collision with root package name */
            public List<String> f39091b;

            /* renamed from: c  reason: collision with root package name */
            public int f39092c;

            public g(List<ForumBean.ForumPostsBean.ResBean> list, List<String> list2, int i2) {
                this.f39090a = list;
                this.f39091b = list2;
                this.f39092c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class h {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39093a;

            /* renamed from: b  reason: collision with root package name */
            public String f39094b;

            /* renamed from: c  reason: collision with root package name */
            public int f39095c;

            /* renamed from: d  reason: collision with root package name */
            public int f39096d;

            public h() {
            }

            public h(boolean z3, String str, int i2, int i4) {
                this.f39093a = z3;
                this.f39094b = str;
                this.f39095c = i2;
                this.f39096d = i4;
            }
        }

        /* loaded from: classes3.dex */
        public static class i {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39097a;

            /* renamed from: b  reason: collision with root package name */
            public String f39098b;

            /* renamed from: c  reason: collision with root package name */
            public int f39099c;

            /* renamed from: d  reason: collision with root package name */
            public int f39100d;

            public i() {
            }

            public i(boolean z3, String str, int i2, int i4) {
                this.f39097a = z3;
                this.f39098b = str;
                this.f39099c = i2;
                this.f39100d = i4;
            }
        }

        public e() {
        }

        public Object a() {
            return this.f39070b;
        }

        public ViewType b() {
            return this.f39069a;
        }

        public void c(Object obj) {
            this.f39070b = obj;
        }

        public void d(ViewType viewType) {
            this.f39069a = viewType;
        }

        public e(ViewType viewType, Object obj) {
            this.f39069a = viewType;
            this.f39070b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class f {
        f() {
        }
    }

    public ForumAllAdapter(Context context) {
        this.f39047a = context;
    }

    private View a(int i2, View view, ViewGroup viewGroup) {
        c cVar;
        e.d dVar;
        if (view != null) {
            cVar = (c) view.getTag();
        } else {
            cVar = new c();
            view = LayoutInflater.from(this.f39047a).inflate(R.layout.mg_forum_all_activity_item, (ViewGroup) null);
            View findViewById = view.findViewById(R.id.mg_forum_item);
            cVar.f39055b = findViewById;
            cVar.f39056c = (SimpleDraweeView) findViewById.findViewById(R.id.forum_icon);
            cVar.f39057d = (TextView) cVar.f39055b.findViewById(R.id.forum_name);
            cVar.f39066m = (TextView) cVar.f39055b.findViewById(R.id.forum_desc);
            cVar.f39058e = (TextView) cVar.f39055b.findViewById(R.id.forum_users_tv);
            cVar.f39059f = (TextView) cVar.f39055b.findViewById(R.id.forum_posts_tv);
            cVar.f39060g = (TextView) cVar.f39055b.findViewById(R.id.forum_follow_tv);
            cVar.f39062i = (LinearLayout) cVar.f39055b.findViewById(R.id.forumUsersParent);
            cVar.f39063j = (LinearLayout) cVar.f39055b.findViewById(R.id.forumPostsParent);
            cVar.f39064k = (LinearLayout) cVar.f39055b.findViewById(R.id.forumFollowsParent);
            cVar.f39065l = (RelativeLayout) cVar.f39055b.findViewById(R.id.forumTodayPostsParent);
            cVar.f39067n = (TextView) cVar.f39055b.findViewById(R.id.forum_today_posts_tv);
            cVar.f39061h = (Button) cVar.f39055b.findViewById(R.id.forum_follow);
            view.setTag(cVar);
        }
        try {
            dVar = (e.d) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (dVar == null) {
            return view;
        }
        cVar.f39062i.setVisibility(0);
        cVar.f39063j.setVisibility(0);
        cVar.f39064k.setVisibility(0);
        cVar.f39067n.setVisibility(8);
        d(dVar.f39072a, cVar.f39055b, cVar);
        ForumBean forumBean = dVar.f39072a;
        if (forumBean != null && forumBean.is_follow()) {
            cVar.f39061h.setText("已关注");
            cVar.f39061h.setTextSize(12.0f);
            cVar.f39061h.setTextColor(-5723992);
            cVar.f39061h.setBackgroundResource(R.drawable.common_grey_selector);
        } else {
            cVar.f39061h.setText("关注");
            cVar.f39061h.setTextSize(13.0f);
            cVar.f39061h.setTextColor(-1);
            cVar.f39061h.setBackgroundResource(R.drawable.common_orange_selector);
        }
        g(cVar.f39061h, dVar.f39072a);
        return view;
    }

    private LinearLayout.LayoutParams b(Context context) {
        if (this.f39049c == null) {
            double d4 = (context.getResources().getDisplayMetrics().widthPixels / 2) - ((int) ((context.getResources().getDisplayMetrics().density * 16.0f) * 2.0f));
            Double.isNaN(d4);
            int i2 = (int) (d4 * 0.33d);
            this.f39049c = new LinearLayout.LayoutParams(i2, i2);
        }
        return this.f39049c;
    }

    private void d(ForumBean forumBean, View view, c cVar) {
        if (forumBean != null && forumBean.getFid() != 0) {
            TextView textView = cVar.f39057d;
            com.join.mgps.Util.i0.D1(textView, forumBean.getName() + "", "");
            TextView textView2 = cVar.f39066m;
            com.join.mgps.Util.i0.D1(textView2, forumBean.getDescription() + "", "");
            com.join.mgps.Util.i0.D1(cVar.f39058e, com.join.mgps.Util.i0.R(forumBean.getUsers()), "0");
            com.join.mgps.Util.i0.D1(cVar.f39059f, com.join.mgps.Util.i0.R(forumBean.getPosts()), "0");
            com.join.mgps.Util.i0.D1(cVar.f39060g, com.join.mgps.Util.i0.R(forumBean.getFollow_count()), "0");
            if (view.getVisibility() != 0) {
                view.setVisibility(0);
            }
            h(view, forumBean);
            MyImageLoader.j(cVar.f39056c, forumBean.getIcon_src(), MyImageLoader.C(this.f39047a));
            int i2 = (int) (view.getResources().getDisplayMetrics().density * 60.0f);
            cVar.f39056c.setLayoutParams(new LinearLayout.LayoutParams(i2, i2));
            h(view, forumBean);
        } else if (view.getVisibility() != 4) {
            view.setVisibility(4);
        }
    }

    public List<e> c() {
        return this.f39048b;
    }

    public void e(List<e> list) {
        if (list == null) {
            return;
        }
        if (this.f39048b == null) {
            this.f39048b = new ArrayList();
        }
        this.f39048b.clear();
        this.f39048b.addAll(list);
    }

    public void f(d dVar) {
        this.f39050d = dVar;
    }

    public void g(View view, ForumBean forumBean) {
        view.setOnClickListener(new b(forumBean));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<e> list = this.f39048b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<e> list = this.f39048b;
        if (list != null) {
            return list.get(i2).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        List<e> list = this.f39048b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        return getItemViewType(i2) == ViewType.FORUM_ITEM.ordinal() ? a(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    void h(View view, ForumBean forumBean) {
        view.setOnClickListener(new a(forumBean));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
