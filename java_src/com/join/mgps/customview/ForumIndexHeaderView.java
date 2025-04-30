package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.p2;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RecommenGroup;
import com.join.mgps.dto.RecommendLabelTag;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumIndexHeaderView extends LinearLayout implements View.OnClickListener {
    private List<RecommendLabelTag> A;
    private List<RecommenGroup> B;
    Animation C;
    LinearLayout.LayoutParams D;
    List<Integer> E;
    View.OnClickListener F;
    c G;

    /* renamed from: a  reason: collision with root package name */
    ViewPagerWithADs f45484a;

    /* renamed from: b  reason: collision with root package name */
    View f45485b;

    /* renamed from: c  reason: collision with root package name */
    TextView f45486c;

    /* renamed from: d  reason: collision with root package name */
    View f45487d;

    /* renamed from: e  reason: collision with root package name */
    TextView f45488e;

    /* renamed from: f  reason: collision with root package name */
    WrapContentListView f45489f;

    /* renamed from: g  reason: collision with root package name */
    TextView f45490g;

    /* renamed from: h  reason: collision with root package name */
    View f45491h;

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f45492i;

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f45493j;

    /* renamed from: k  reason: collision with root package name */
    View f45494k;

    /* renamed from: l  reason: collision with root package name */
    View f45495l;

    /* renamed from: m  reason: collision with root package name */
    MyFlowLayout f45496m;

    /* renamed from: n  reason: collision with root package name */
    View f45497n;

    /* renamed from: o  reason: collision with root package name */
    View f45498o;

    /* renamed from: p  reason: collision with root package name */
    TextView f45499p;

    /* renamed from: q  reason: collision with root package name */
    View f45500q;

    /* renamed from: r  reason: collision with root package name */
    View f45501r;

    /* renamed from: s  reason: collision with root package name */
    View f45502s;

    /* renamed from: t  reason: collision with root package name */
    SimpleDraweeView f45503t;

    /* renamed from: u  reason: collision with root package name */
    SimpleDraweeView f45504u;

    /* renamed from: v  reason: collision with root package name */
    SimpleDraweeView f45505v;

    /* renamed from: w  reason: collision with root package name */
    SimpleDraweeView f45506w;

    /* renamed from: x  reason: collision with root package name */
    private List<BannerBean> f45507x;

    /* renamed from: y  reason: collision with root package name */
    private volatile List<RecommenGroup> f45508y;

    /* renamed from: z  reason: collision with root package name */
    ForumBaseAdapter f45509z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f45510a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f45511b;

        a(IntentDateBean intentDateBean, int i2) {
            this.f45510a = intentDateBean;
            this.f45511b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            if (this.f45510a == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f45510a);
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(context);
            l4.r0("banner1-" + (this.f45511b + 1), AccountUtil_.getInstance_(context).getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f45513a;

        b(RecommendLabelTag recommendLabelTag) {
            this.f45513a = recommendLabelTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean isSelected = view.isSelected();
            view.setSelected(!isSelected);
            if (isSelected) {
                if (ForumIndexHeaderView.this.E.contains(Integer.valueOf(this.f45513a.getTag_id()))) {
                    ForumIndexHeaderView.this.E.remove(Integer.valueOf(this.f45513a.getTag_id()));
                }
            } else {
                ForumIndexHeaderView.this.E.add(Integer.valueOf(this.f45513a.getTag_id()));
            }
            if (ForumIndexHeaderView.this.E.size() >= 3) {
                ForumIndexHeaderView forumIndexHeaderView = ForumIndexHeaderView.this;
                forumIndexHeaderView.f45499p.setText(forumIndexHeaderView.getResources().getString(R.string.forum_label_recomm));
                ForumIndexHeaderView.this.f45499p.setEnabled(true);
                return;
            }
            ForumIndexHeaderView forumIndexHeaderView2 = ForumIndexHeaderView.this;
            forumIndexHeaderView2.f45499p.setText(forumIndexHeaderView2.getResources().getString(R.string.forum_label_recomm_disable));
            ForumIndexHeaderView.this.f45499p.setEnabled(false);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void g(int i2);
    }

    public ForumIndexHeaderView(@NonNull Context context) {
        super(context);
        this.E = new ArrayList();
        this.F = null;
        a(context);
    }

    private void a(Context context) {
        setOrientation(1);
        LinearLayout.inflate(context, R.layout.mg_view_forum_index_header, this);
        this.f45484a = (ViewPagerWithADs) p2.b(this, R.id.ad_viewpager);
        this.f45485b = p2.b(this, R.id.section_follow);
        this.f45486c = (TextView) p2.b(this, R.id.title);
        this.f45487d = p2.b(this, R.id.more);
        this.f45488e = (TextView) p2.b(this, R.id.moreTv);
        this.f45489f = (WrapContentListView) p2.b(this, R.id.wrapListView);
        this.f45490g = (TextView) p2.b(this, R.id.forum_more);
        this.f45491h = p2.b(this, R.id.llForumMore);
        this.f45492i = (LinearLayout) p2.b(this, R.id.rlTagFollow);
        this.f45493j = (LinearLayout) p2.b(this, R.id.rlTagFollowB);
        this.f45495l = p2.b(this, R.id.forumExtFunc);
        this.f45494k = p2.b(this, R.id.rlTagTip);
        this.f45496m = (MyFlowLayout) p2.b(this, R.id.flowLayout);
        this.f45497n = p2.b(this, R.id.refreshTag);
        this.f45498o = p2.b(this, R.id.ivRefresh);
        this.f45499p = (TextView) p2.b(this, R.id.forumRecomm);
        this.f45501r = p2.b(this, R.id.llMyForum);
        this.f45502s = p2.b(this, R.id.llGroupAll);
        this.f45500q = p2.b(this, R.id.rlAdParent);
        this.f45503t = (SimpleDraweeView) p2.b(this, R.id.layout_forum_ad_1);
        this.f45504u = (SimpleDraweeView) p2.b(this, R.id.layout_forum_ad_2);
        this.f45505v = (SimpleDraweeView) p2.b(this, R.id.layout_forum_ad_3);
        this.f45506w = (SimpleDraweeView) p2.b(this, R.id.layout_forum_ad_4);
        this.f45497n.setOnClickListener(this);
        this.f45499p.setOnClickListener(this);
        this.f45495l.setOnClickListener(this);
        this.f45487d.setOnClickListener(this);
        this.f45490g.setOnClickListener(this);
        this.f45491h.setOnClickListener(this);
        this.f45501r.setOnClickListener(this);
        this.f45502s.setOnClickListener(this);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(getContext(), null);
        this.f45509z = forumBaseAdapter;
        this.f45489f.setAdapter((ListAdapter) forumBaseAdapter);
        g();
    }

    private boolean b() {
        List<RecommenGroup> list = this.B;
        return list != null && list.size() > 0;
    }

    private View c(RecommendLabelTag recommendLabelTag) {
        View inflate = LinearLayout.inflate(getContext(), R.layout.forum_group_tag_item1, null);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.rightMargin = (int) TypedValue.applyDimension(1, 10.0f, getResources().getDisplayMetrics());
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 10.0f, getResources().getDisplayMetrics());
        inflate.setLayoutParams(marginLayoutParams);
        TextView textView = (TextView) inflate.findViewById(R.id.tagTv);
        if (textView == null) {
            return null;
        }
        textView.setText("#" + recommendLabelTag.getTag_name() + "#");
        textView.setOnClickListener(new b(recommendLabelTag));
        if (this.E.contains(Integer.valueOf(recommendLabelTag.getTag_id()))) {
            textView.setSelected(true);
        }
        return inflate;
    }

    private void d() {
        if (this.A == null) {
            return;
        }
        this.f45496m.removeAllViews();
        for (RecommendLabelTag recommendLabelTag : this.A) {
            View c4 = c(recommendLabelTag);
            if (c4 != null) {
                this.f45496m.addView(c4);
            }
        }
        this.f45496m.invalidate();
    }

    private void f(SimpleDraweeView simpleDraweeView, BannerBean bannerBean, int i2) {
        if (bannerBean == null || simpleDraweeView == null) {
            return;
        }
        MyImageLoader.j(simpleDraweeView, bannerBean.getPic_remote(), MyImageLoader.y(simpleDraweeView.getContext()));
        if (this.D == null) {
            float f4 = getResources().getDisplayMetrics().density;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) simpleDraweeView.getLayoutParams();
            int i4 = ((int) (getResources().getDisplayMetrics().widthPixels - (f4 * 18.0f))) / 2;
            layoutParams.width = i4;
            layoutParams.height = (int) ((i4 * 1.0f) / 2.07f);
            this.D = layoutParams;
        }
        simpleDraweeView.setLayoutParams(this.D);
        IntentDateBean j02 = com.join.mgps.Util.i0.j0(bannerBean);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("forum");
        extBean.setPosition("banner" + (i2 + 1));
        j02.setExtBean(extBean);
        simpleDraweeView.setOnClickListener(new a(j02, i2));
    }

    private void setBanner(List<BannerBean> list) {
        if (this.f45507x == null) {
            this.f45507x = new ArrayList();
        }
        this.f45507x.clear();
        if (list != null) {
            this.f45507x.addAll(list);
        }
        SimpleDraweeView[] simpleDraweeViewArr = {this.f45503t, this.f45504u, this.f45505v, this.f45506w};
        int i2 = 0;
        while (true) {
            List<BannerBean> list2 = this.f45507x;
            if (list2 == null || i2 >= list2.size()) {
                break;
            }
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i2];
            f(simpleDraweeView, this.f45507x.get(i2), i2);
            if (i2 == 1 || i2 == 3) {
                try {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(simpleDraweeView.getLayoutParams().width, simpleDraweeView.getLayoutParams().height);
                    layoutParams.setMargins((int) (simpleDraweeView.getResources().getDisplayMetrics().density * 6.0f), 0, 0, 0);
                    simpleDraweeView.setLayoutParams(layoutParams);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            i2++;
        }
        List<BannerBean> list3 = this.f45507x;
        if (list3 == null) {
            this.f45500q.setVisibility(8);
        } else if (list3.size() < 2) {
            this.f45500q.setVisibility(8);
        } else if (this.f45507x.size() < 4) {
            ViewGroup viewGroup = (ViewGroup) simpleDraweeViewArr[2].getParent();
            viewGroup.setVisibility(8);
            ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).topMargin = 0;
        }
    }

    private void setBanner1(List<BannerBean> list) {
        if (this.f45484a == null) {
            return;
        }
        if (list != null && list.size() > 0) {
            if (this.f45507x == null) {
                this.f45507x = new ArrayList();
            }
            this.f45507x.clear();
            this.f45507x.addAll(list);
            if (this.f45484a.getVisibility() == 8) {
                this.f45484a.setVisibility(0);
            }
            this.f45484a.setAll(getContext(), this.f45507x, (int) getResources().getDimension(R.dimen.wdp25), (int) getResources().getDimension(R.dimen.wdp62), 4000, 1);
            return;
        }
        this.f45484a.setVisibility(8);
    }

    void e() {
        if (!b()) {
            this.f45486c.setText("推荐小组");
            this.f45488e.setText(LocalGameActivity.f32927r);
            this.f45490g.setText("发现更多小组");
            return;
        }
        this.f45486c.setText("我的小组");
        this.f45488e.setText(LocalGameActivity.f32927r);
        this.f45490g.setText("发现更多小组");
    }

    void g() {
        if (this.f45507x != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f45507x);
            setBanner(arrayList);
        }
    }

    public String getSelectedIds() {
        int i2 = 0;
        String str = "";
        while (true) {
            List<Integer> list = this.E;
            if (list == null || i2 >= list.size()) {
                break;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(this.E.get(i2));
            sb.append(i2 == this.E.size() + (-1) ? "" : ",");
            str = sb.toString();
            i2++;
        }
        return str;
    }

    public List<Integer> getSelectedLabel() {
        return this.E;
    }

    public c getmOnMeasureHeight() {
        return this.G;
    }

    public void h() {
        if (this.f45498o == null) {
            return;
        }
        if (this.C == null) {
            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -360.0f, 1, 0.5f, 1, 0.5f);
            this.C = rotateAnimation;
            rotateAnimation.setDuration(300L);
            this.C.setRepeatCount(-1);
            this.C.setRepeatMode(1);
        }
        this.f45498o.startAnimation(this.C);
    }

    public void i() {
        View view = this.f45498o;
        if (view == null || this.C == null) {
            return;
        }
        view.clearAnimation();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        View.OnClickListener onClickListener = this.F;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        if (id == R.id.forumExtFunc) {
            setLabelsTipVisibility(8);
            com.join.mgps.pref.h.n(getContext()).r0(false);
        } else if (id == R.id.more) {
            if (!b()) {
                IntentUtil.getInstance().goForumGroupActivity(getContext());
            } else {
                IntentUtil.getInstance().goForumMyDynamicActivity(getContext());
            }
        } else if (id == R.id.llMyForum) {
            IntentUtil.getInstance().goForumMyDynamicActivity(getContext());
        } else if (id == R.id.llForumMore || id == R.id.llGroupAll) {
            IntentUtil.getInstance().goForumGroupActivity(getContext());
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        int i5;
        int i6;
        super.onMeasure(i2, i4);
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i4);
        int childCount = getChildCount();
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i4);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    int i9 = layoutParams2.leftMargin;
                    i6 = layoutParams2.topMargin;
                    i5 = layoutParams2.bottomMargin;
                } else if (layoutParams instanceof LinearLayout.LayoutParams) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams;
                    int i10 = layoutParams3.leftMargin;
                    i6 = layoutParams3.topMargin;
                    i5 = layoutParams3.bottomMargin;
                } else if (layoutParams instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams;
                    int i11 = layoutParams4.leftMargin;
                    i6 = layoutParams4.topMargin;
                    i5 = layoutParams4.bottomMargin;
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                childAt.getMeasuredWidth();
                i7 += childAt.getMeasuredHeight() + i6 + i5;
            }
        }
        if (mode != 1073741824) {
            size = 0;
        }
        if (mode2 != 1073741824) {
            size2 = i7;
        }
        setMeasuredDimension(size, size2);
        if (this.G != null) {
            this.G.g(i7 + (getLayoutParams() instanceof RelativeLayout.LayoutParams ? ((RelativeLayout.LayoutParams) getLayoutParams()).bottomMargin : 0));
        }
    }

    public void setBannerData(List<BannerBean> list) {
        setBanner(list);
    }

    public void setHeaderClickListener(View.OnClickListener onClickListener) {
        this.F = onClickListener;
    }

    public synchronized void setHomepageRecommendGroup(List<RecommenGroup> list) {
        if (list == null) {
            return;
        }
        if (this.f45508y == null) {
            this.f45508y = new ArrayList();
        }
        this.f45509z.r().clear();
        this.f45508y.clear();
        if (b()) {
            this.f45508y.addAll(this.B);
        } else {
            this.f45508y.addAll(list);
        }
        boolean z3 = !AccountUtil_.getInstance_(getContext()).isTourist();
        e();
        for (int i2 = 0; i2 < this.f45508y.size(); i2++) {
            RecommenGroup recommenGroup = this.f45508y.get(i2);
            this.f45509z.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.GROUP_ITEM, new ForumBaseAdapter.n1.z(recommenGroup.getIcon_src(), recommenGroup.getName(), recommenGroup.getDescription(), z3, recommenGroup.getToday_posts(), recommenGroup.getFid(), b())));
        }
        this.f45509z.notifyDataSetChanged();
    }

    public void setHomepageRecommendGroupMy(List<RecommenGroup> list) {
        this.B = list;
    }

    public void setHomepageRecommendLabel(List<RecommendLabelTag> list) {
        if (list == null) {
            return;
        }
        if (this.A == null) {
            this.A = new ArrayList();
        }
        this.A.clear();
        this.A.addAll(list);
        d();
    }

    public void setLabelsTipVisibility(int i2) {
        if (!com.join.mgps.pref.h.n(getContext()).D()) {
            this.f45494k.setVisibility(8);
        } else {
            this.f45494k.setVisibility(i2);
        }
    }

    public void setLabelsVisibility(int i2) {
        this.f45492i.setVisibility(i2);
        this.f45496m.setVisibility(i2);
        this.f45493j.setVisibility(i2);
    }

    public void setNoForumBanner() {
        ViewPagerWithADs viewPagerWithADs;
        List<BannerBean> list = this.f45507x;
        if ((list == null || list.size() == 0) && (viewPagerWithADs = this.f45484a) != null) {
            viewPagerWithADs.setVisibility(8);
        }
    }

    public void setmOnMeasureHeight(c cVar) {
        this.G = cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        if (getOrientation() == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        if (getOrientation() == 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return super.generateDefaultLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (getOrientation() == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        if (getOrientation() == 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return super.generateLayoutParams(layoutParams);
    }

    public ForumIndexHeaderView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.E = new ArrayList();
        this.F = null;
        a(context);
    }

    public ForumIndexHeaderView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
        this.E = new ArrayList();
        this.F = null;
        a(context);
    }
}
