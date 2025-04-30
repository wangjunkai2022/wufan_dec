package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.customview.ForumBaseHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.ForumMyHeaderView;
import com.join.mgps.customview.XExpandableListView;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.RecommenGroup;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import ru.noties.scrollable.ScrollableLayout;
@EActivity(R.layout.activity_forum_my)
/* loaded from: classes3.dex */
public class ForumMyActivity extends BaseAppCompatActivity implements View.OnClickListener, ForumBaseHeaderView.a {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f29890a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ForumLoadingView f29891b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ScrollableLayout f29892c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ForumMyHeaderView f29893d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    PtrClassicFrameLayout f29894e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XExpandableListView f29895f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.rpc.h f29896g;

    /* renamed from: h  reason: collision with root package name */
    public int f29897h;

    /* renamed from: i  reason: collision with root package name */
    public int f29898i;

    /* renamed from: p  reason: collision with root package name */
    private com.join.mgps.customview.j f29905p;

    /* renamed from: q  reason: collision with root package name */
    k f29906q;

    /* renamed from: j  reason: collision with root package name */
    List<RecommenGroup> f29899j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    List<RecommendLabelTag> f29900k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private final int f29901l = 1;

    /* renamed from: m  reason: collision with root package name */
    private final int f29902m = 2;

    /* renamed from: n  reason: collision with root package name */
    private final int f29903n = 3;

    /* renamed from: o  reason: collision with root package name */
    private final int f29904o = 4;

    /* renamed from: r  reason: collision with root package name */
    Handler f29907r = new Handler();

    /* renamed from: s  reason: collision with root package name */
    boolean f29908s = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.ptr.b {
        a() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            return com.join.mgps.ptr.a.d(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            ForumMyActivity.this.I0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ru.noties.scrollable.b {
        b() {
        }

        @Override // ru.noties.scrollable.b
        public boolean o(int i2) {
            XExpandableListView xExpandableListView = ForumMyActivity.this.f29895f;
            return xExpandableListView != null && xExpandableListView.canScrollVertically(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ru.noties.scrollable.j {
        c() {
        }

        @Override // ru.noties.scrollable.j
        public void x(int i2, long j4) {
            XExpandableListView xExpandableListView = ForumMyActivity.this.f29895f;
            if (xExpandableListView != null) {
                xExpandableListView.smoothScrollBy(i2, (int) j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (ForumMyActivity.this.E0()) {
                ForumMyActivity forumMyActivity = ForumMyActivity.this;
                if (forumMyActivity.f29898i == -1) {
                    forumMyActivity.K0();
                } else {
                    forumMyActivity.G0(forumMyActivity.f29897h + 1);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (ForumMyActivity.this.E0()) {
                ForumMyActivity forumMyActivity = ForumMyActivity.this;
                forumMyActivity.f29898i = 0;
                forumMyActivity.G0(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements ExpandableListView.OnGroupClickListener {
        f() {
        }

        @Override // android.widget.ExpandableListView.OnGroupClickListener
        public boolean onGroupClick(ExpandableListView expandableListView, View view, int i2, long j4) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XExpandableListView xExpandableListView = ForumMyActivity.this.f29895f;
            if (xExpandableListView == null) {
                return;
            }
            xExpandableListView.s();
            ForumMyActivity.this.f29895f.r();
            ForumMyActivity forumMyActivity = ForumMyActivity.this;
            if (forumMyActivity.f29898i == -1) {
                forumMyActivity.f29895f.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends ForumLoadingView.e {
        h(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends ForumLoadingView.e {
        i(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
        }
    }

    /* loaded from: classes3.dex */
    class j {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f29918a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f29919b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f29920c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f29921d;

        /* renamed from: e  reason: collision with root package name */
        public View f29922e;

        j() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends BaseExpandableListAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<l> f29924a;

        /* renamed from: b  reason: collision with root package name */
        private Context f29925b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f29927a;

            a(int i2) {
                this.f29927a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ForumMyActivity.this.f29895f.isGroupExpanded(this.f29927a)) {
                    ForumMyActivity.this.f29895f.expandGroup(this.f29927a);
                } else {
                    ForumMyActivity.this.f29895f.collapseGroup(this.f29927a);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goForumMyPostsActivity(view.getContext());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goForumProfileCommentActivity(view.getContext());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class d implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f29931a;

            d(int i2) {
                this.f29931a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goForumGroupActivity(view.getContext(), this.f29931a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class e implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f29933a;

            e(int i2) {
                this.f29933a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainLabelActivity_.j1(view.getContext()).d(this.f29933a).start();
            }
        }

        public k(Context context) {
            this.f29925b = context;
        }

        private void f(View view, int i2) {
            if (view == null) {
                return;
            }
            view.setOnClickListener(new d(i2));
        }

        private void i(View view, int i2) {
            if (view == null) {
                return;
            }
            view.setOnClickListener(new e(i2));
        }

        public void a(l lVar) {
            if (this.f29924a == null) {
                this.f29924a = new ArrayList();
            }
            this.f29924a.add(lVar);
        }

        public List<l> b() {
            return this.f29924a;
        }

        @Override // android.widget.ExpandableListAdapter
        /* renamed from: c */
        public l getGroup(int i2) {
            List<l> list = this.f29924a;
            if (list == null || i2 >= list.size()) {
                return null;
            }
            return this.f29924a.get(i2);
        }

        public void d(List<l> list) {
            this.f29924a = list;
        }

        public void e(View view, int i2) {
            if (view == null) {
                return;
            }
            view.setOnClickListener(new a(i2));
        }

        public void g(View view) {
            if (view == null) {
                return;
            }
            view.setOnClickListener(new b());
        }

        @Override // android.widget.ExpandableListAdapter
        public Object getChild(int i2, int i4) {
            if (getGroup(i2) != null) {
                l group = getGroup(i2);
                if (group.getType() == 1) {
                    if (group.a() == null || i4 >= group.a().size()) {
                        return null;
                    }
                    return group.a().get(i4);
                } else if (group.getType() != 2 || group.b() == null || i4 >= group.b().size()) {
                    return null;
                } else {
                    return group.b().get(i4);
                }
            }
            return null;
        }

        @Override // android.widget.ExpandableListAdapter
        public long getChildId(int i2, int i4) {
            return i4;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00cc A[Catch: Exception -> 0x00f5, TryCatch #0 {Exception -> 0x00f5, blocks: (B:5:0x0056, B:8:0x005d, B:11:0x0066, B:13:0x0071, B:18:0x00bb, B:20:0x00cc, B:22:0x00ea, B:21:0x00e3, B:14:0x008f, B:16:0x009a), top: B:27:0x0056 }] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00e3 A[Catch: Exception -> 0x00f5, TryCatch #0 {Exception -> 0x00f5, blocks: (B:5:0x0056, B:8:0x005d, B:11:0x0066, B:13:0x0071, B:18:0x00bb, B:20:0x00cc, B:22:0x00ea, B:21:0x00e3, B:14:0x008f, B:16:0x009a), top: B:27:0x0056 }] */
        @Override // android.widget.ExpandableListAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.view.View getChildView(int r4, int r5, boolean r6, android.view.View r7, android.view.ViewGroup r8) {
            /*
                r3 = this;
                if (r7 == 0) goto L9
                java.lang.Object r6 = r7.getTag()
                com.join.mgps.activity.ForumMyActivity$j r6 = (com.join.mgps.activity.ForumMyActivity.j) r6
                goto L56
            L9:
                com.join.mgps.activity.ForumMyActivity$j r6 = new com.join.mgps.activity.ForumMyActivity$j
                com.join.mgps.activity.ForumMyActivity r7 = com.join.mgps.activity.ForumMyActivity.this
                r6.<init>()
                android.content.Context r7 = r3.f29925b
                android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
                r8 = 2131493903(0x7f0c040f, float:1.86113E38)
                r0 = 0
                android.view.View r7 = r7.inflate(r8, r0)
                r8 = 2131297546(0x7f09050a, float:1.821304E38)
                android.view.View r8 = r7.findViewById(r8)
                com.facebook.drawee.view.SimpleDraweeView r8 = (com.facebook.drawee.view.SimpleDraweeView) r8
                r6.f29918a = r8
                r8 = 2131297549(0x7f09050d, float:1.8213046E38)
                android.view.View r8 = r7.findViewById(r8)
                android.widget.TextView r8 = (android.widget.TextView) r8
                r6.f29919b = r8
                r8 = 2131297542(0x7f090506, float:1.8213032E38)
                android.view.View r8 = r7.findViewById(r8)
                android.widget.TextView r8 = (android.widget.TextView) r8
                r6.f29920c = r8
                r8 = 2131297033(0x7f090309, float:1.8212E38)
                android.view.View r8 = r7.findViewById(r8)
                android.widget.TextView r8 = (android.widget.TextView) r8
                r6.f29921d = r8
                r8 = 2131296528(0x7f090110, float:1.8210975E38)
                android.view.View r8 = r7.findViewById(r8)
                r6.f29922e = r8
                r7.setTag(r6)
            L56:
                java.lang.Object r8 = r3.getChild(r4, r5)     // Catch: java.lang.Exception -> Lf5
                if (r8 != 0) goto L5d
                return r7
            L5d:
                com.join.mgps.activity.ForumMyActivity$l r8 = r3.getGroup(r4)     // Catch: java.lang.Exception -> Lf5
                r0 = 0
                java.lang.String r1 = ""
                if (r8 == 0) goto Lb8
                com.join.mgps.activity.ForumMyActivity$l r8 = r3.getGroup(r4)     // Catch: java.lang.Exception -> Lf5
                int r8 = r8.getType()     // Catch: java.lang.Exception -> Lf5
                r2 = 1
                if (r8 != r2) goto L8f
                java.lang.Object r4 = r3.getChild(r4, r5)     // Catch: java.lang.Exception -> Lf5
                com.join.mgps.dto.RecommenGroup r4 = (com.join.mgps.dto.RecommenGroup) r4     // Catch: java.lang.Exception -> Lf5
                java.lang.String r1 = r4.getIcon_src()     // Catch: java.lang.Exception -> Lf5
                java.lang.String r5 = r4.getName()     // Catch: java.lang.Exception -> Lf5
                java.lang.String r8 = r4.getDescription()     // Catch: java.lang.Exception -> Lf5
                int r2 = r4.getToday_posts()     // Catch: java.lang.Exception -> Lf5
                int r4 = r4.getFid()     // Catch: java.lang.Exception -> Lf5
                r3.f(r7, r4)     // Catch: java.lang.Exception -> Lf5
                goto Lbb
            L8f:
                com.join.mgps.activity.ForumMyActivity$l r8 = r3.getGroup(r4)     // Catch: java.lang.Exception -> Lf5
                int r8 = r8.getType()     // Catch: java.lang.Exception -> Lf5
                r2 = 2
                if (r8 != r2) goto Lb8
                java.lang.Object r4 = r3.getChild(r4, r5)     // Catch: java.lang.Exception -> Lf5
                com.join.mgps.dto.RecommendLabelTag r4 = (com.join.mgps.dto.RecommendLabelTag) r4     // Catch: java.lang.Exception -> Lf5
                java.lang.String r1 = r4.getTag_icon()     // Catch: java.lang.Exception -> Lf5
                java.lang.String r5 = r4.getTag_name()     // Catch: java.lang.Exception -> Lf5
                java.lang.String r8 = r4.getDescription()     // Catch: java.lang.Exception -> Lf5
                int r2 = r4.getToday_posts()     // Catch: java.lang.Exception -> Lf5
                int r4 = r4.getTag_id()     // Catch: java.lang.Exception -> Lf5
                r3.i(r7, r4)     // Catch: java.lang.Exception -> Lf5
                goto Lbb
            Lb8:
                r5 = r1
                r8 = r5
                r2 = 0
            Lbb:
                com.facebook.drawee.view.SimpleDraweeView r4 = r6.f29918a     // Catch: java.lang.Exception -> Lf5
                com.join.android.app.common.utils.MyImageLoader.h(r4, r1)     // Catch: java.lang.Exception -> Lf5
                android.widget.TextView r4 = r6.f29919b     // Catch: java.lang.Exception -> Lf5
                r4.setText(r5)     // Catch: java.lang.Exception -> Lf5
                android.widget.TextView r4 = r6.f29920c     // Catch: java.lang.Exception -> Lf5
                r4.setText(r8)     // Catch: java.lang.Exception -> Lf5
                if (r2 <= 0) goto Le3
                android.widget.TextView r4 = r6.f29921d     // Catch: java.lang.Exception -> Lf5
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lf5
                r5.<init>()     // Catch: java.lang.Exception -> Lf5
                java.lang.String r8 = "今日更新："
                r5.append(r8)     // Catch: java.lang.Exception -> Lf5
                r5.append(r2)     // Catch: java.lang.Exception -> Lf5
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> Lf5
                r4.setText(r5)     // Catch: java.lang.Exception -> Lf5
                goto Lea
            Le3:
                android.widget.TextView r4 = r6.f29921d     // Catch: java.lang.Exception -> Lf5
                java.lang.String r5 = "今日更新：0"
                r4.setText(r5)     // Catch: java.lang.Exception -> Lf5
            Lea:
                android.widget.TextView r4 = r6.f29921d     // Catch: java.lang.Exception -> Lf5
                r4.setVisibility(r0)     // Catch: java.lang.Exception -> Lf5
                android.widget.TextView r4 = r6.f29920c     // Catch: java.lang.Exception -> Lf5
                r4.setVisibility(r0)     // Catch: java.lang.Exception -> Lf5
                goto Lf9
            Lf5:
                r4 = move-exception
                r4.printStackTrace()
            Lf9:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumMyActivity.k.getChildView(int, int, boolean, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.ExpandableListAdapter
        public int getChildrenCount(int i2) {
            if (getGroup(i2) != null) {
                l group = getGroup(i2);
                if (group.getType() == 1) {
                    if (group.a() != null) {
                        return group.a().size();
                    }
                    return 0;
                } else if (group.getType() != 2 || group.b() == null) {
                    return 0;
                } else {
                    return group.b().size();
                }
            }
            return 0;
        }

        @Override // android.widget.ExpandableListAdapter
        public int getGroupCount() {
            List<l> list = this.f29924a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.ExpandableListAdapter
        public long getGroupId(int i2) {
            return i2;
        }

        @Override // android.widget.ExpandableListAdapter
        public View getGroupView(int i2, boolean z3, View view, ViewGroup viewGroup) {
            m mVar;
            if (view != null) {
                mVar = (m) view.getTag();
            } else {
                mVar = new m();
                view = LayoutInflater.from(this.f29925b).inflate(R.layout.mg_forum_my_item_ex_header, (ViewGroup) null);
                mVar.f29939a = (ImageView) view.findViewById(R.id.icon);
                mVar.f29940b = (TextView) view.findViewById(R.id.title);
                mVar.f29941c = (TextView) view.findViewById(R.id.state);
                mVar.f29942d = view.findViewById(R.id.arrow);
                mVar.f29943e = view.findViewById(R.id.divider);
                mVar.f29944f = view.findViewById(R.id.divider1);
                view.setTag(mVar);
            }
            try {
                if (z3) {
                    mVar.f29941c.setText("收起");
                } else {
                    mVar.f29941c.setText("展开");
                }
                l group = getGroup(i2);
                e(view, i2);
                if (group.getType() == 1) {
                    mVar.f29939a.setImageResource(R.drawable.mg_forum_icon_group);
                    mVar.f29940b.setText("小组");
                    mVar.f29942d.setVisibility(8);
                    mVar.f29944f.setVisibility(8);
                    mVar.f29943e.setVisibility(0);
                    mVar.f29941c.setVisibility(0);
                } else if (group.getType() == 2) {
                    mVar.f29942d.setVisibility(8);
                    mVar.f29939a.setImageResource(R.drawable.mg_forum_icon_tag);
                    mVar.f29940b.setText("话题");
                    mVar.f29944f.setVisibility(8);
                    mVar.f29943e.setVisibility(0);
                    mVar.f29941c.setVisibility(0);
                } else if (group.getType() == 3) {
                    mVar.f29942d.setVisibility(0);
                    mVar.f29939a.setImageResource(R.drawable.mg_forum_icon_post);
                    mVar.f29940b.setText("帖子");
                    mVar.f29944f.setVisibility(8);
                    mVar.f29943e.setVisibility(8);
                    mVar.f29941c.setVisibility(8);
                    g(view);
                } else if (group.getType() == 4) {
                    mVar.f29944f.setVisibility(0);
                    mVar.f29943e.setVisibility(8);
                    mVar.f29941c.setVisibility(8);
                    mVar.f29942d.setVisibility(0);
                    mVar.f29939a.setImageResource(R.drawable.mg_forum_icon_comment);
                    mVar.f29940b.setText("评论");
                    h(view);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }

        public void h(View view) {
            if (view == null) {
                return;
            }
            view.setOnClickListener(new c());
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean hasStableIds() {
            return false;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean isChildSelectable(int i2, int i4) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l {

        /* renamed from: a  reason: collision with root package name */
        private int f29935a;

        /* renamed from: b  reason: collision with root package name */
        List<RecommenGroup> f29936b;

        /* renamed from: c  reason: collision with root package name */
        List<RecommendLabelTag> f29937c;

        l() {
        }

        public List<RecommenGroup> a() {
            return this.f29936b;
        }

        public List<RecommendLabelTag> b() {
            return this.f29937c;
        }

        public void c(List<RecommenGroup> list) {
            this.f29936b = list;
        }

        public void d(List<RecommendLabelTag> list) {
            this.f29937c = list;
        }

        public void e(int i2) {
            this.f29935a = i2;
        }

        public int getType() {
            return this.f29935a;
        }
    }

    /* loaded from: classes3.dex */
    class m {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f29939a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f29940b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f29941c;

        /* renamed from: d  reason: collision with root package name */
        public View f29942d;

        /* renamed from: e  reason: collision with root package name */
        public View f29943e;

        /* renamed from: f  reason: collision with root package name */
        public View f29944f;

        m() {
        }
    }

    private synchronized void H0() {
        k kVar = this.f29906q;
        if (kVar != null && kVar.b() != null) {
            this.f29906q.b().clear();
        }
        l lVar = new l();
        lVar.e(3);
        this.f29906q.a(lVar);
        l lVar2 = new l();
        lVar2.e(4);
        this.f29906q.a(lVar2);
        List<RecommenGroup> list = this.f29899j;
        if (list != null && list.size() != 0) {
            l lVar3 = new l();
            lVar3.e(1);
            lVar3.c(this.f29899j);
            this.f29906q.a(lVar3);
        }
        List<RecommendLabelTag> list2 = this.f29900k;
        if (list2 != null && list2.size() != 0) {
            l lVar4 = new l();
            lVar4.e(2);
            lVar4.d(this.f29900k);
            this.f29906q.a(lVar4);
        }
        this.f29906q.notifyDataSetChanged();
        if (this.f29908s) {
            for (int i2 = 0; i2 < this.f29906q.getGroupCount(); i2++) {
                this.f29895f.expandGroup(i2);
            }
            this.f29908s = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(int i2) {
        if (i2 == 1) {
            this.f29891b.m();
            this.f29891b.j(1);
        } else if (i2 == 2) {
            this.f29891b.m();
            this.f29891b.j(2);
        } else if (i2 == 4) {
            this.f29891b.j(4);
        } else if (i2 == 16) {
            this.f29891b.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView = this.f29891b;
            forumLoadingView.setListener(new i(forumLoadingView));
            this.f29891b.j(16);
        } else if (i2 == 9) {
            this.f29891b.j(9);
        } else if (i2 != 10) {
        } else {
            ForumLoadingView forumLoadingView2 = this.f29891b;
            forumLoadingView2.setFailedMsg("没有更多社区内容帖哦~");
            ForumLoadingView forumLoadingView3 = this.f29891b;
            forumLoadingView3.setListener(new h(forumLoadingView3));
            this.f29891b.setReloadingVisibility(0);
            this.f29891b.j(10);
            this.f29891b.setFailedImgVisibility(8);
        }
    }

    boolean E0() {
        if (com.join.android.app.common.utils.f.j(getBaseContext())) {
            return true;
        }
        showMessage(getString(R.string.net_connect_failed));
        D0(9);
        K0();
        return false;
    }

    void F0() {
        G0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007b, code lost:
        if (r7.f29898i != (-1)) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0089, code lost:
        if (r7.f29898i == (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008b, code lost:
        r7.f29898i = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008d, code lost:
        K0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void G0(int r8) {
        /*
            r7 = this;
            boolean r0 = com.join.android.app.common.utils.f.j(r7)
            if (r0 == 0) goto L9b
            r0 = 4
            r1 = 0
            r2 = -1
            int r3 = r7.f29898i     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r3 != r8) goto L15
            if (r3 == r2) goto L11
            r7.f29898i = r1
        L11:
            r7.K0()
            return
        L15:
            r7.f29898i = r8     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            com.join.mgps.Util.AccountUtil_ r3 = com.join.mgps.Util.AccountUtil_.getInstance_(r7)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.lang.String r3 = r3.getUid()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            com.join.mgps.Util.AccountUtil_ r4 = com.join.mgps.Util.AccountUtil_.getInstance_(r7)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.lang.String r4 = r4.getToken()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            com.join.mgps.rpc.h r5 = r7.f29896g     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            int r6 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            com.join.mgps.dto.ForumResponse r3 = r5.E(r3, r4, r8, r6)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r3 == 0) goto L76
            int r4 = r3.getError()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r4 != 0) goto L76
            java.lang.Object r4 = r3.getData()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r4 != 0) goto L4a
            r7.D0(r0)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            int r8 = r7.f29898i
            if (r8 == r2) goto L46
            r7.f29898i = r1
        L46:
            r7.K0()
            return
        L4a:
            java.lang.Object r4 = r3.getData()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            com.join.mgps.dto.ForumData$MyForumMain r4 = (com.join.mgps.dto.ForumData.MyForumMain) r4     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r7.J0(r4, r8)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.lang.Object r4 = r3.getData()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            com.join.mgps.dto.ForumData$MyForumMain r4 = (com.join.mgps.dto.ForumData.MyForumMain) r4     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.util.List r4 = r4.getTag_follow()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r4 == 0) goto L73
            java.lang.Object r3 = r3.getData()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            com.join.mgps.dto.ForumData$MyForumMain r3 = (com.join.mgps.dto.ForumData.MyForumMain) r3     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.util.List r3 = r3.getTag_follow()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r3 != 0) goto L70
            goto L73
        L70:
            r7.f29897h = r8     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            goto L79
        L73:
            r7.f29898i = r2     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            goto L79
        L76:
            r7.D0(r0)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
        L79:
            int r8 = r7.f29898i
            if (r8 == r2) goto L8d
            goto L8b
        L7e:
            r8 = move-exception
            goto L91
        L80:
            r8 = move-exception
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L7e
            r7.D0(r0)     // Catch: java.lang.Throwable -> L7e
            int r8 = r7.f29898i
            if (r8 == r2) goto L8d
        L8b:
            r7.f29898i = r1
        L8d:
            r7.K0()
            goto Laa
        L91:
            int r0 = r7.f29898i
            if (r0 == r2) goto L97
            r7.f29898i = r1
        L97:
            r7.K0()
            throw r8
        L9b:
            r8 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r8 = r7.getString(r8)
            r7.showMessage(r8)
            r8 = 9
            r7.D0(r8)
        Laa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumMyActivity.G0(int):void");
    }

    void I0() {
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(ForumData.MyForumMain myForumMain, int i2) {
        List<RecommenGroup> forum_follow = myForumMain.getForum_follow();
        List<RecommendLabelTag> tag_follow = myForumMain.getTag_follow();
        if (i2 == 1) {
            this.f29899j.clear();
            this.f29900k.clear();
        }
        if (forum_follow != null && forum_follow.size() != 0) {
            this.f29899j.addAll(forum_follow);
        }
        if (tag_follow != null && tag_follow.size() != 0) {
            this.f29900k.addAll(tag_follow);
        }
        if (i2 == 1) {
            this.f29908s = true;
        }
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        this.f29907r.postDelayed(new g(), 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        try {
            if (this.f29891b.getLoadingState() == 2 && com.join.mgps.pref.h.n(this).A()) {
                com.join.mgps.pref.h.n(this).o0(false);
                F0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29896g = com.join.mgps.rpc.impl.f.A0();
        this.f29890a.setVisibility(0);
        this.f29890a.setText("我的社区");
        ForumMyHeaderView forumMyHeaderView = this.f29893d;
        if (forumMyHeaderView != null) {
            forumMyHeaderView.setmOnMeasureHeight(this);
            this.f29893d.setHeaderClickListener(this);
        }
        if (this.f29892c != null) {
            this.f29894e.setPtrHandler(new a());
            this.f29892c.setAutoMaxScroll(false);
            this.f29892c.setCanScrollVerticallyDelegate(new b());
            this.f29892c.setOnFlingOverListener(new c());
        }
        this.f29895f.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f29895f.setPullLoadEnable(new d());
        e eVar = new e();
        this.f29905p = eVar;
        this.f29895f.setPullRefreshEnable(eVar);
        k kVar = new k(this);
        this.f29906q = kVar;
        this.f29895f.setAdapter(kVar);
        this.f29895f.setOnGroupClickListener(new f());
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView.a
    public void g(int i2) {
        ScrollableLayout scrollableLayout = this.f29892c;
        if (scrollableLayout != null) {
            scrollableLayout.setMaxScrollY(i2);
            ViewGroup.LayoutParams layoutParams = this.f29895f.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = this.f29891b.getMeasuredHeight();
            this.f29895f.setLayoutParams(layoutParams);
            this.f29892c.setAutoMaxScroll(true);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }
}
