package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.adapter.l1;
import com.join.mgps.customview.ExpandLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CommentBaseBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameDetailHotCommentAdapter.java */
/* loaded from: classes3.dex */
public class z0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44612a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f44613b;

    /* renamed from: c  reason: collision with root package name */
    private List<CommentBaseBean> f44614c;

    /* renamed from: d  reason: collision with root package name */
    boolean f44615d;

    /* renamed from: e  reason: collision with root package name */
    l1.p1 f44616e;

    /* renamed from: f  reason: collision with root package name */
    long f44617f;

    /* compiled from: GameDetailHotCommentAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f44618a;

        a(CommentBaseBean commentBaseBean) {
            this.f44618a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f44618a.getUid())).start();
        }
    }

    /* compiled from: GameDetailHotCommentAdapter.java */
    /* loaded from: classes3.dex */
    class b implements ExpandLayout.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f44620a;

        b(CommentBaseBean commentBaseBean) {
            this.f44620a = commentBaseBean;
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void a() {
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void b() {
            l1.p1 p1Var;
            CommentBaseBean commentBaseBean = this.f44620a;
            if (commentBaseBean == null || (p1Var = z0.this.f44616e) == null) {
                return;
            }
            p1Var.f(commentBaseBean);
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetailHotCommentAdapter.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f44622a;

        c(CommentBaseBean commentBaseBean) {
            this.f44622a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1.p1 p1Var;
            CommentBaseBean commentBaseBean = this.f44622a;
            if (commentBaseBean == null || (p1Var = z0.this.f44616e) == null) {
                return;
            }
            p1Var.f(commentBaseBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetailHotCommentAdapter.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f44624a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f44625b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f44626c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f44627d;

        /* compiled from: GameDetailHotCommentAdapter.java */
        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(d.this.f44627d.getText().toString()).longValue();
                TextView textView = d.this.f44627d;
                textView.setText((longValue + 1) + "");
                d dVar = d.this;
                z0.this.c(dVar.f44625b);
                d dVar2 = d.this;
                l1.p1 p1Var = z0.this.f44616e;
                if (p1Var != null) {
                    p1Var.d(dVar2.f44624a, dVar2.f44625b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        d(CommentBaseBean commentBaseBean, int i2, ImageView imageView, TextView textView) {
            this.f44624a = commentBaseBean;
            this.f44625b = i2;
            this.f44626c = imageView;
            this.f44627d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            long currentTimeMillis = System.currentTimeMillis();
            z0 z0Var = z0.this;
            if (currentTimeMillis - z0Var.f44617f < 500) {
                return;
            }
            z0Var.f44617f = currentTimeMillis;
            if (IntentUtil.getInstance().goLoginInteractive(z0.this.f44612a) || (commentBaseBean = this.f44624a) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                z0.this.i(this.f44625b);
                this.f44626c.setImageResource(R.drawable.up_ic);
                l1.p1 p1Var = z0.this.f44616e;
                if (p1Var != null) {
                    p1Var.d(this.f44624a, this.f44625b, 2);
                    return;
                }
                return;
            }
            this.f44624a.setIs_praise(1);
            if (AccountUtil_.getInstance_(z0.this.f44612a).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(z0.this.f44612a);
                return;
            }
            this.f44626c.setImageResource(R.drawable.uped_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(z0.this.f44612a, R.anim.scale_reset);
            this.f44626c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameDetailHotCommentAdapter.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f44630a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f44631b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f44632c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f44633d;

        /* compiled from: GameDetailHotCommentAdapter.java */
        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(e.this.f44633d.getText().toString()).longValue();
                TextView textView = e.this.f44633d;
                textView.setText((longValue + 1) + "");
                e eVar = e.this;
                z0.this.b(eVar.f44631b);
                e eVar2 = e.this;
                l1.p1 p1Var = z0.this.f44616e;
                if (p1Var != null) {
                    p1Var.e(eVar2.f44630a, eVar2.f44631b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        e(CommentBaseBean commentBaseBean, int i2, ImageView imageView, TextView textView) {
            this.f44630a = commentBaseBean;
            this.f44631b = i2;
            this.f44632c = imageView;
            this.f44633d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(z0.this.f44612a) || (commentBaseBean = this.f44630a) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                z0.this.h(this.f44631b);
                this.f44632c.setImageResource(R.drawable.down_ic);
                l1.p1 p1Var = z0.this.f44616e;
                if (p1Var != null) {
                    p1Var.e(this.f44630a, this.f44631b, 2);
                    return;
                }
                return;
            }
            this.f44630a.setIs_despise(1);
            if (AccountUtil_.getInstance_(z0.this.f44612a).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(z0.this.f44612a);
                return;
            }
            this.f44632c.setImageResource(R.drawable.downed_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(z0.this.f44612a, R.anim.scale_reset);
            this.f44632c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* compiled from: GameDetailHotCommentAdapter.java */
    /* loaded from: classes3.dex */
    private class f {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f44636a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f44637b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f44638c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f44639d;

        /* renamed from: e  reason: collision with root package name */
        private ImageView f44640e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f44641f;

        /* renamed from: g  reason: collision with root package name */
        private MStarBar f44642g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f44643h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f44644i;

        /* renamed from: j  reason: collision with root package name */
        private ImageView f44645j;

        /* renamed from: k  reason: collision with root package name */
        private ExpandLayout f44646k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f44647l;

        /* renamed from: m  reason: collision with root package name */
        public View f44648m;

        /* renamed from: n  reason: collision with root package name */
        private TextView f44649n;

        /* renamed from: o  reason: collision with root package name */
        private ImageView f44650o;

        /* renamed from: p  reason: collision with root package name */
        private TextView f44651p;

        /* renamed from: q  reason: collision with root package name */
        private ImageView f44652q;

        /* renamed from: r  reason: collision with root package name */
        private TextView f44653r;

        /* renamed from: s  reason: collision with root package name */
        private ImageView f44654s;

        /* renamed from: t  reason: collision with root package name */
        private TextView f44655t;

        /* renamed from: u  reason: collision with root package name */
        private VipView f44656u;

        /* renamed from: v  reason: collision with root package name */
        private View f44657v;

        public f(View view) {
            this.f44636a = (LinearLayout) view.findViewById(R.id.commentAllRootLl);
            this.f44637b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f44638c = (TextView) view.findViewById(R.id.userName);
            this.f44639d = (TextView) view.findViewById(R.id.isMe);
            this.f44640e = (ImageView) view.findViewById(R.id.isAuth);
            this.f44645j = (ImageView) view.findViewById(R.id.isGood);
            this.f44641f = (TextView) view.findViewById(R.id.isConnoisseurs);
            this.f44642g = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f44643h = (TextView) view.findViewById(R.id.comment_head_num_tx);
            this.f44644i = (TextView) view.findViewById(R.id.time);
            this.f44646k = (ExpandLayout) view.findViewById(R.id.content);
            this.f44647l = (TextView) view.findViewById(R.id.more);
            this.f44648m = view.findViewById(R.id.line);
            this.f44649n = (TextView) view.findViewById(R.id.phoneModle);
            this.f44650o = (ImageView) view.findViewById(R.id.parise);
            this.f44651p = (TextView) view.findViewById(R.id.pariseNumber);
            this.f44652q = (ImageView) view.findViewById(R.id.down);
            this.f44653r = (TextView) view.findViewById(R.id.downNumber);
            this.f44654s = (ImageView) view.findViewById(R.id.message);
            this.f44655t = (TextView) view.findViewById(R.id.messageNumber);
            this.f44656u = (VipView) view.findViewById(R.id.levelTv);
            this.f44657v = view.findViewById(R.id.layoutTop);
        }
    }

    public z0(Context context, boolean z3, l1.p1 p1Var) {
        this.f44614c = new ArrayList();
        this.f44615d = true;
        this.f44617f = System.currentTimeMillis();
        this.f44612a = context;
        this.f44615d = z3;
        this.f44616e = p1Var;
        this.f44613b = LayoutInflater.from(context);
    }

    private void e(View view, CommentBaseBean commentBaseBean) {
        view.setOnClickListener(new c(commentBaseBean));
    }

    private void f(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i2) {
        d dVar = new d(commentBaseBean, i2, imageView, textView);
        imageView.setOnClickListener(dVar);
        textView.setOnClickListener(dVar);
    }

    private void g(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i2) {
        e eVar = new e(commentBaseBean, i2, imageView, textView);
        imageView.setOnClickListener(eVar);
        textView.setOnClickListener(eVar);
    }

    public void b(int i2) {
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(i2);
        long longValue = Long.valueOf(commentBaseBean.getDespise_count()).longValue();
        commentBaseBean.setIs_despise(1);
        commentBaseBean.setDespise_count((longValue + 1) + "");
        notifyDataSetChanged();
    }

    public void c(int i2) {
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(i2);
        long praise_count = commentBaseBean.getPraise_count();
        commentBaseBean.setIs_praise(1);
        commentBaseBean.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    public List<CommentBaseBean> d() {
        return this.f44614c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44614c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f44614c.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        f fVar;
        if (view == null) {
            view = this.f44613b.inflate(R.layout.item_game_detail_comment_list_item_view, (ViewGroup) null);
            fVar = new f(view);
            view.setTag(fVar);
        } else {
            fVar = (f) view.getTag();
        }
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(i2);
        fVar.f44657v.setVisibility(8);
        fVar.f44638c.setTextColor(-16777216);
        if (commentBaseBean.getVip_level() > 0) {
            fVar.f44638c.setTextColor(this.f44612a.getResources().getColor(R.color.vip_color));
        }
        if (commentBaseBean.getSvip_level() > 0) {
            fVar.f44638c.setTextColor(this.f44612a.getResources().getColor(R.color.vip_svip_color));
        }
        fVar.f44656u.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
        if (commentBaseBean.getUid().equals(String.valueOf(AccountUtil_.getInstance_(this.f44612a).getAccountData().getUid()))) {
            fVar.f44639d.setVisibility(0);
        } else {
            fVar.f44639d.setVisibility(8);
        }
        fVar.f44637b.setOnClickListener(new a(commentBaseBean));
        fVar.f44646k.setExpandable(false);
        fVar.f44646k.setContent(commentBaseBean.getContent(), new b(commentBaseBean));
        fVar.f44638c.setText(commentBaseBean.getUser_name());
        if (commentBaseBean.getIs_old() == 1 || commentBaseBean.getMobile_phone_model() == null || commentBaseBean.getMobile_phone_model().isEmpty()) {
            fVar.f44649n.setVisibility(4);
        } else {
            fVar.f44649n.setVisibility(0);
            fVar.f44649n.setText(commentBaseBean.getMobile_phone_model());
        }
        TextView textView = fVar.f44651p;
        textView.setText(commentBaseBean.getPraise_count() + "");
        TextView textView2 = fVar.f44653r;
        textView2.setText(commentBaseBean.getDespise_count() + "");
        TextView textView3 = fVar.f44655t;
        textView3.setText(commentBaseBean.getReply_count() + "");
        fVar.f44644i.setText(com.join.android.app.common.utils.c.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
        if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f || this.f44615d) {
            fVar.f44642g.setVisibility(8);
        } else {
            fVar.f44642g.setVisibility(0);
            fVar.f44642g.setStarCount(Integer.parseInt(commentBaseBean.getStars_score()));
            fVar.f44642g.setStarMark(Float.valueOf(commentBaseBean.getStars_score()).floatValue());
        }
        fVar.f44642g.setEnabled(false);
        if (commentBaseBean.getApproval_rate() == null || Double.valueOf(commentBaseBean.getApproval_rate()).doubleValue() <= 70.0d) {
            fVar.f44645j.setVisibility(8);
        } else {
            fVar.f44645j.setVisibility(0);
        }
        if (commentBaseBean.getRank().equals("")) {
            fVar.f44640e.setVisibility(8);
        } else {
            fVar.f44640e.setVisibility(0);
        }
        fVar.f44641f.setText(commentBaseBean.getRank());
        if (commentBaseBean.getIs_praise() == 1) {
            fVar.f44650o.setImageResource(R.drawable.uped_ic);
        } else {
            fVar.f44650o.setImageResource(R.drawable.up_ic);
        }
        if (commentBaseBean.getIs_despise() == 1) {
            fVar.f44652q.setImageResource(R.drawable.downed_ic);
        } else {
            fVar.f44652q.setImageResource(R.drawable.down_ic);
        }
        UtilsMy.E2(this.f44612a, commentBaseBean.getHead_portrait(), fVar.f44637b);
        f(fVar.f44650o, fVar.f44651p, commentBaseBean, i2);
        g(fVar.f44652q, fVar.f44653r, commentBaseBean, i2);
        e(fVar.f44654s, commentBaseBean);
        return view;
    }

    public void h(int i2) {
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(i2);
        long longValue = Long.valueOf(commentBaseBean.getDespise_count()).longValue();
        commentBaseBean.setIs_despise(0);
        long j4 = longValue - 1;
        if (j4 < 0) {
            commentBaseBean.setDespise_count("0");
        } else {
            commentBaseBean.setDespise_count(j4 + "");
        }
        notifyDataSetChanged();
    }

    public void i(int i2) {
        CommentBaseBean commentBaseBean = (CommentBaseBean) getItem(i2);
        long praise_count = commentBaseBean.getPraise_count();
        commentBaseBean.setIs_praise(0);
        long j4 = praise_count - 1;
        if (j4 < 0) {
            commentBaseBean.setPraise_count(0L);
        } else {
            commentBaseBean.setPraise_count(j4);
        }
        notifyDataSetChanged();
    }

    public z0(Context context, boolean z3, List<CommentBaseBean> list, l1.p1 p1Var) {
        this.f44614c = new ArrayList();
        this.f44615d = true;
        this.f44617f = System.currentTimeMillis();
        this.f44612a = context;
        this.f44615d = z3;
        this.f44616e = p1Var;
        this.f44613b = LayoutInflater.from(context);
        this.f44614c = list;
    }
}
