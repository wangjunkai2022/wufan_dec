package com.join.mgps.customview;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.label.MainLabelActivity;
import com.join.mgps.dto.MainLabelBean;
/* loaded from: classes3.dex */
public class MainLabelHeaderView extends ForumBaseHeaderView {

    /* renamed from: c  reason: collision with root package name */
    SimpleDraweeView f45790c;

    /* renamed from: d  reason: collision with root package name */
    TextView f45791d;

    /* renamed from: e  reason: collision with root package name */
    TextView f45792e;

    /* renamed from: f  reason: collision with root package name */
    SimpleDraweeView f45793f;

    /* renamed from: g  reason: collision with root package name */
    TextView f45794g;

    /* renamed from: h  reason: collision with root package name */
    TextView f45795h;

    /* renamed from: i  reason: collision with root package name */
    RelativeLayout f45796i;

    /* renamed from: j  reason: collision with root package name */
    TextView f45797j;

    /* renamed from: k  reason: collision with root package name */
    ImageView f45798k;

    /* renamed from: l  reason: collision with root package name */
    View f45799l;

    /* renamed from: m  reason: collision with root package name */
    View f45800m;

    /* renamed from: n  reason: collision with root package name */
    RelativeLayout f45801n;

    /* renamed from: o  reason: collision with root package name */
    private View.OnClickListener f45802o;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((MainLabelActivity) MainLabelHeaderView.this.getContext()).showSort(MainLabelHeaderView.this.f45801n);
        }
    }

    public MainLabelHeaderView(@NonNull Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        this.f45802o.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(MainLabelBean mainLabelBean, View view) {
        CommentSelfListActivity_.n1(view.getContext()).a(mainLabelBean.getManager_info().getUid()).start();
    }

    public ImageView getPostsFilterSwitch() {
        return this.f45798k;
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        LinearLayout.inflate(getContext(), R.layout.layout_main_label_header, this);
        this.f45790c = (SimpleDraweeView) findViewById(R.id.iv_label_icon);
        this.f45791d = (TextView) findViewById(R.id.tv_label_name);
        this.f45792e = (TextView) findViewById(R.id.tv_label_introduction);
        this.f45793f = (SimpleDraweeView) findViewById(R.id.iv_label_administrator_avatar);
        this.f45794g = (TextView) findViewById(R.id.tv_label_administrator_nickname);
        this.f45795h = (TextView) findViewById(R.id.tv_posts_counts);
        this.f45796i = (RelativeLayout) findViewById(R.id.rl_posts_filter);
        this.f45797j = (TextView) findViewById(R.id.tv_posts_filter_name);
        this.f45798k = (ImageView) findViewById(R.id.iv_posts_filter_switch);
        this.f45799l = findViewById(R.id.rl_last);
        this.f45800m = findViewById(R.id.rl_mid);
        this.f45798k.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainLabelHeaderView.this.d(view);
            }
        });
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rl_sort);
        this.f45801n = relativeLayout;
        relativeLayout.setOnClickListener(new a());
    }

    public void setFilterVisibility(boolean z3, String str) {
        if (z3) {
            TextView textView = this.f45797j;
            textView.setText("显示小组“" + str + "”内容");
            this.f45796i.setVisibility(0);
            return;
        }
        this.f45796i.setVisibility(8);
        this.f45799l.setVisibility(8);
        this.f45800m.setVisibility(8);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f45802o = onClickListener;
    }

    public void setRlOrderByVisibility(boolean z3) {
        this.f45801n.setVisibility(z3 ? 0 : 8);
    }

    public void setViewData(final MainLabelBean mainLabelBean) {
        MyImageLoader.h(this.f45790c, mainLabelBean.getTag_icon());
        TextView textView = this.f45791d;
        textView.setText("#" + mainLabelBean.getTag_name() + "#");
        TextView textView2 = this.f45795h;
        textView2.setText(com.join.mgps.Util.i0.R(mainLabelBean.getPosts()) + "帖子");
        if (TextUtils.isEmpty(mainLabelBean.getTag_desc())) {
            this.f45792e.setVisibility(8);
        } else {
            this.f45792e.setVisibility(0);
            this.f45792e.setText(mainLabelBean.getTag_desc());
        }
        MyImageLoader.j(this.f45793f, mainLabelBean.getManager_info().getAvatar_src(), MyImageLoader.B(getContext(), R.color.white, R.dimen.live_avatar_round_width_first_width, R.dimen.live_avatar_round_stroke_width));
        this.f45794g.setText(mainLabelBean.getManager_info().getNickname());
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.customview.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainLabelHeaderView.e(MainLabelBean.this, view);
            }
        };
        this.f45793f.setOnClickListener(onClickListener);
        this.f45794g.setOnClickListener(onClickListener);
    }

    public MainLabelHeaderView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MainLabelHeaderView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
    }
}
