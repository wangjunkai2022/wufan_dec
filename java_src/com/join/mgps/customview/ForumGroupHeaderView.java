package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.p2;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumGroupHeaderView extends ForumBaseHeaderView {

    /* renamed from: c  reason: collision with root package name */
    SimpleDraweeView f45467c;

    /* renamed from: d  reason: collision with root package name */
    TextView f45468d;

    /* renamed from: e  reason: collision with root package name */
    TextView f45469e;

    /* renamed from: f  reason: collision with root package name */
    View f45470f;

    /* renamed from: g  reason: collision with root package name */
    View f45471g;

    /* renamed from: h  reason: collision with root package name */
    SimpleDraweeView f45472h;

    /* renamed from: i  reason: collision with root package name */
    SimpleDraweeView f45473i;

    /* renamed from: j  reason: collision with root package name */
    SimpleDraweeView f45474j;

    /* renamed from: k  reason: collision with root package name */
    SimpleDraweeView f45475k;

    /* renamed from: l  reason: collision with root package name */
    SimpleDraweeView f45476l;

    /* renamed from: m  reason: collision with root package name */
    TextView f45477m;

    /* renamed from: n  reason: collision with root package name */
    TextView f45478n;

    /* renamed from: o  reason: collision with root package name */
    WrapContentListView f45479o;

    /* renamed from: p  reason: collision with root package name */
    View f45480p;

    /* renamed from: q  reason: collision with root package name */
    ForumBaseAdapter f45481q;

    /* renamed from: r  reason: collision with root package name */
    private ArrayList<Object> f45482r;

    /* renamed from: s  reason: collision with root package name */
    private ForumData.ForumGroupIndex f45483s;

    public ForumGroupHeaderView(@NonNull Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.customview.ForumBaseHeaderView
    public void a(Context context) {
        super.a(context);
        LinearLayout.inflate(getContext(), R.layout.mg_view_forum_group_header, this);
        this.f45467c = (SimpleDraweeView) p2.b(this, R.id.icon);
        this.f45468d = (TextView) p2.b(this, R.id.name);
        this.f45469e = (TextView) p2.b(this, R.id.desc);
        this.f45470f = p2.b(this, R.id.arrow);
        this.f45471g = p2.b(this, R.id.arrowParent);
        this.f45472h = (SimpleDraweeView) p2.b(this, R.id.img1);
        this.f45473i = (SimpleDraweeView) p2.b(this, R.id.img2);
        this.f45474j = (SimpleDraweeView) p2.b(this, R.id.img3);
        this.f45475k = (SimpleDraweeView) p2.b(this, R.id.img4);
        this.f45476l = (SimpleDraweeView) p2.b(this, R.id.img5);
        this.f45477m = (TextView) p2.b(this, R.id.count);
        this.f45478n = (TextView) p2.b(this, R.id.follow);
        this.f45479o = (WrapContentListView) p2.b(this, R.id.wrapListView);
        this.f45480p = p2.b(this, R.id.memberLL);
        this.f45470f.setOnClickListener(this);
        this.f45471g.setOnClickListener(this);
        this.f45480p.setOnClickListener(this);
        this.f45478n.setOnClickListener(this);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(getContext(), null);
        this.f45481q = forumBaseAdapter;
        this.f45479o.setAdapter((ListAdapter) forumBaseAdapter);
    }

    public boolean b() {
        ForumData.ForumGroupIndex forumGroupIndex = this.f45483s;
        return forumGroupIndex != null && forumGroupIndex.getIs_joined() == 1;
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id != R.id.memberLL && id == R.id.arrowParent) {
            if (this.f45470f.isSelected()) {
                this.f45469e.setVisibility(0);
                this.f45470f.setSelected(false);
                return;
            }
            this.f45469e.setVisibility(8);
            this.f45470f.setSelected(true);
        }
    }

    public void setData(ForumData.ForumGroupIndex forumGroupIndex) {
        if (forumGroupIndex == null) {
            return;
        }
        this.f45483s = forumGroupIndex;
        MyImageLoader.h(this.f45467c, forumGroupIndex.getForum_icon());
        this.f45468d.setText(forumGroupIndex.getForum_name());
        this.f45469e.setText(forumGroupIndex.getForum_description());
        int parseInt = TextUtils.isEmpty(forumGroupIndex.getForum_number()) ? 0 : Integer.parseInt(forumGroupIndex.getForum_number());
        TextView textView = this.f45477m;
        textView.setText(com.join.mgps.Util.i0.R(parseInt) + "");
        setJoinState(forumGroupIndex.getIs_joined() == 1);
        SimpleDraweeView[] simpleDraweeViewArr = {this.f45472h, this.f45473i, this.f45474j, this.f45475k, this.f45476l};
        for (int i2 = 0; i2 < 5; i2++) {
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i2];
            if (forumGroupIndex.getLast_joied() != null && i2 < forumGroupIndex.getLast_joied().size()) {
                simpleDraweeView.setVisibility(0);
                simpleDraweeView.getHierarchy().y(new com.facebook.drawee.drawable.n(Color.parseColor("#FFFFFF")));
                MyImageLoader.w(simpleDraweeView, forumGroupIndex.getLast_joied().get(i2));
            } else {
                simpleDraweeView.setVisibility(8);
            }
        }
        setTopPosts(forumGroupIndex.getTop_posts());
    }

    public void setJoinState(boolean z3) {
        if (z3) {
            this.f45478n.setSelected(true);
            this.f45478n.setText("已加入");
            if (!this.f45470f.isSelected()) {
                this.f45471g.performClick();
            }
        } else {
            this.f45478n.setSelected(false);
            this.f45478n.setText("加入小组");
        }
        ForumData.ForumGroupIndex forumGroupIndex = this.f45483s;
        if (forumGroupIndex != null) {
            forumGroupIndex.setIs_joined(z3 ? 1 : 0);
        }
    }

    public void setTopPosts(List<ForumBean.ForumPostsBean> list) {
        if (list == null) {
            return;
        }
        if (this.f45482r == null) {
            this.f45482r = new ArrayList<>();
        }
        this.f45481q.r().clear();
        this.f45482r.clear();
        this.f45482r.addAll(list);
        for (int i2 = 0; i2 < this.f45482r.size(); i2++) {
            ForumBean.ForumPostsBean forumPostsBean = list.get(i2);
            this.f45481q.e(new ForumBaseAdapter.n1(ForumBaseAdapter.ViewType.POST_TOP, new ForumBaseAdapter.n1.x(forumPostsBean.getPid(), d2.h(forumPostsBean.getSubject()) ? forumPostsBean.getMessage() : forumPostsBean.getSubject(), forumPostsBean.getBest() > 0, forumPostsBean.isAttach_pic(), forumPostsBean.isAttach_video(), forumPostsBean.getTag_info())));
        }
        this.f45481q.notifyDataSetChanged();
    }

    public ForumGroupHeaderView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ForumGroupHeaderView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
    }
}
