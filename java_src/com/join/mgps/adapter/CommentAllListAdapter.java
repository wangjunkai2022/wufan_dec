package com.join.mgps.adapter;

import android.content.Context;
import android.os.Build;
import android.text.Layout;
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
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CommentBaseBean;
import java.util.List;
/* loaded from: classes3.dex */
public class CommentAllListAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f38704a;

    /* renamed from: b  reason: collision with root package name */
    private List<i> f38705b;

    /* renamed from: c  reason: collision with root package name */
    private int f38706c;

    /* renamed from: d  reason: collision with root package name */
    private String f38707d;

    /* renamed from: e  reason: collision with root package name */
    private int f38708e;

    /* renamed from: f  reason: collision with root package name */
    private int f38709f = -1;

    /* renamed from: g  reason: collision with root package name */
    h f38710g;

    /* loaded from: classes3.dex */
    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38711a;

        a(CommentBaseBean commentBaseBean) {
            this.f38711a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f38711a.getUid())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f38713a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38714b;

        b(g gVar, CommentBaseBean commentBaseBean) {
            this.f38713a = gVar;
            this.f38714b = commentBaseBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f38713a.f38743l.getLayout();
            if (layout == null) {
                this.f38713a.f38744m.setVisibility(8);
                return;
            }
            int lineCount = layout.getLineCount();
            if (lineCount > 0) {
                if (lineCount > 5) {
                    this.f38713a.f38744m.setVisibility(0);
                } else if (layout.getEllipsisCount(lineCount - 1) > 0) {
                    this.f38713a.f38744m.setVisibility(0);
                } else if (this.f38714b.isShowMore()) {
                    this.f38713a.f38744m.setVisibility(0);
                } else {
                    this.f38713a.f38744m.setVisibility(8);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f38716a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38717b;

        c(g gVar, CommentBaseBean commentBaseBean) {
            this.f38716a = gVar;
            this.f38717b = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f38716a.f38744m.getText().toString().equals("查看全部")) {
                if (Build.VERSION.SDK_INT == 19) {
                    this.f38716a.f38743l.setText(this.f38717b.getContent());
                }
                this.f38716a.f38743l.setMaxLines(Integer.MAX_VALUE);
                this.f38716a.f38744m.setText("收起");
                this.f38717b.setShowMore(true);
                return;
            }
            if (Build.VERSION.SDK_INT == 19) {
                this.f38716a.f38743l.setText(this.f38717b.getContent().replaceAll("\n", ""));
            }
            this.f38716a.f38743l.setMaxLines(5);
            this.f38716a.f38744m.setText("查看全部");
            this.f38717b.setShowMore(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38719a;

        d(CommentBaseBean commentBaseBean) {
            this.f38719a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h hVar;
            CommentBaseBean commentBaseBean = this.f38719a;
            if (commentBaseBean == null || (hVar = CommentAllListAdapter.this.f38710g) == null) {
                return;
            }
            hVar.f(commentBaseBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38721a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38722b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f38723c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f38724d;

        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(e.this.f38724d.getText().toString()).longValue();
                TextView textView = e.this.f38724d;
                textView.setText((longValue + 1) + "");
                e eVar = e.this;
                CommentAllListAdapter.this.c(eVar.f38722b);
                e eVar2 = e.this;
                h hVar = CommentAllListAdapter.this.f38710g;
                if (hVar != null) {
                    hVar.d(eVar2.f38721a, eVar2.f38722b, 1);
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
            this.f38721a = commentBaseBean;
            this.f38722b = i2;
            this.f38723c = imageView;
            this.f38724d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentAllListAdapter.this.f38704a) || (commentBaseBean = this.f38721a) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                CommentAllListAdapter.this.p(this.f38722b);
                this.f38723c.setImageResource(R.drawable.up_ic);
                h hVar = CommentAllListAdapter.this.f38710g;
                if (hVar != null) {
                    hVar.d(this.f38721a, this.f38722b, 2);
                    return;
                }
                return;
            }
            this.f38721a.setIs_praise(1);
            if (AccountUtil_.getInstance_(CommentAllListAdapter.this.f38704a).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentAllListAdapter.this.f38704a);
                return;
            }
            this.f38723c.setImageResource(R.drawable.uped_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(CommentAllListAdapter.this.f38704a, R.anim.scale_reset);
            this.f38723c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38727a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38728b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f38729c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f38730d;

        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(f.this.f38730d.getText().toString()).longValue();
                TextView textView = f.this.f38730d;
                textView.setText((longValue + 1) + "");
                f fVar = f.this;
                CommentAllListAdapter.this.b(fVar.f38728b);
                f fVar2 = f.this;
                h hVar = CommentAllListAdapter.this.f38710g;
                if (hVar != null) {
                    hVar.e(fVar2.f38727a, fVar2.f38728b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        f(CommentBaseBean commentBaseBean, int i2, ImageView imageView, TextView textView) {
            this.f38727a = commentBaseBean;
            this.f38728b = i2;
            this.f38729c = imageView;
            this.f38730d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentAllListAdapter.this.f38704a) || (commentBaseBean = this.f38727a) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                CommentAllListAdapter.this.o(this.f38728b);
                this.f38729c.setImageResource(R.drawable.down_ic);
                h hVar = CommentAllListAdapter.this.f38710g;
                if (hVar != null) {
                    hVar.e(this.f38727a, this.f38728b, 2);
                    return;
                }
                return;
            }
            this.f38727a.setIs_despise(1);
            if (AccountUtil_.getInstance_(CommentAllListAdapter.this.f38704a).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentAllListAdapter.this.f38704a);
                return;
            }
            this.f38729c.setImageResource(R.drawable.downed_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(CommentAllListAdapter.this.f38704a, R.anim.scale_reset);
            this.f38729c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends j {

        /* renamed from: b  reason: collision with root package name */
        private LinearLayout f38733b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f38734c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f38735d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f38736e;

        /* renamed from: f  reason: collision with root package name */
        private ImageView f38737f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f38738g;

        /* renamed from: h  reason: collision with root package name */
        private MStarBar f38739h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f38740i;

        /* renamed from: j  reason: collision with root package name */
        private TextView f38741j;

        /* renamed from: k  reason: collision with root package name */
        private ImageView f38742k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f38743l;

        /* renamed from: m  reason: collision with root package name */
        private TextView f38744m;

        /* renamed from: n  reason: collision with root package name */
        public View f38745n;

        /* renamed from: o  reason: collision with root package name */
        private TextView f38746o;

        /* renamed from: p  reason: collision with root package name */
        private ImageView f38747p;

        /* renamed from: q  reason: collision with root package name */
        private TextView f38748q;

        /* renamed from: r  reason: collision with root package name */
        private ImageView f38749r;

        /* renamed from: s  reason: collision with root package name */
        private TextView f38750s;

        /* renamed from: t  reason: collision with root package name */
        private ImageView f38751t;

        /* renamed from: u  reason: collision with root package name */
        private TextView f38752u;

        /* renamed from: v  reason: collision with root package name */
        private VipView f38753v;

        g() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
        void d(CommentBaseBean commentBaseBean, int i2, int i4);

        void e(CommentBaseBean commentBaseBean, int i2, int i4);

        void f(CommentBaseBean commentBaseBean);
    }

    /* loaded from: classes3.dex */
    public static class i {

        /* renamed from: a  reason: collision with root package name */
        ViewType f38755a;

        /* renamed from: b  reason: collision with root package name */
        Object f38756b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public CommentBaseBean f38757a;

            public a(CommentBaseBean commentBaseBean) {
                this.f38757a = commentBaseBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f38758a;

            /* renamed from: b  reason: collision with root package name */
            public CommentBaseBean f38759b;

            /* renamed from: c  reason: collision with root package name */
            public int f38760c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f38761d;

            /* renamed from: e  reason: collision with root package name */
            public int f38762e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f38763f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f38764g;

            public b(String str, CommentBaseBean commentBaseBean, int i2, boolean z3) {
                this.f38758a = str;
                this.f38759b = commentBaseBean;
                this.f38760c = i2;
                this.f38761d = z3;
            }
        }

        public i() {
        }

        public Object a() {
            return this.f38756b;
        }

        public ViewType b() {
            return this.f38755a;
        }

        public void c(Object obj) {
            this.f38756b = obj;
        }

        public void d(ViewType viewType) {
            this.f38755a = viewType;
        }

        public i(ViewType viewType, Object obj) {
            this.f38755a = viewType;
            this.f38756b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class j {
        j() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k {

        /* renamed from: a  reason: collision with root package name */
        public TextView f38766a;

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f38767b;

        /* renamed from: c  reason: collision with root package name */
        public View f38768c;

        /* renamed from: d  reason: collision with root package name */
        public View f38769d;

        k() {
        }
    }

    public CommentAllListAdapter(Context context, int i2, List<i> list, String str, int i4, h hVar) {
        this.f38710g = null;
        this.f38704a = context;
        this.f38706c = i2;
        this.f38707d = str;
        this.f38708e = i4;
        this.f38705b = list;
        this.f38710g = hVar;
    }

    private View e(int i2, View view, ViewGroup viewGroup, int i4) {
        g gVar;
        String str;
        i.a aVar = (i.a) getItem(i2);
        k kVar = null;
        if (view == null) {
            if (i4 != 1) {
                if (i4 == 2) {
                    g gVar2 = new g();
                    View inflate = LayoutInflater.from(this.f38704a).inflate(R.layout.comment_list_item_view, (ViewGroup) null);
                    gVar2.f38733b = (LinearLayout) inflate.findViewById(R.id.commentAllRootLl);
                    gVar2.f38734c = (SimpleDraweeView) inflate.findViewById(R.id.usericon);
                    gVar2.f38735d = (TextView) inflate.findViewById(R.id.userName);
                    gVar2.f38736e = (TextView) inflate.findViewById(R.id.isMe);
                    gVar2.f38753v = (VipView) inflate.findViewById(R.id.levelTv);
                    gVar2.f38737f = (ImageView) inflate.findViewById(R.id.isAuth);
                    gVar2.f38742k = (ImageView) inflate.findViewById(R.id.isGood);
                    gVar2.f38738g = (TextView) inflate.findViewById(R.id.isConnoisseurs);
                    gVar2.f38739h = (MStarBar) inflate.findViewById(R.id.comment_head_mstarBar);
                    gVar2.f38740i = (TextView) inflate.findViewById(R.id.comment_head_num_tx);
                    gVar2.f38741j = (TextView) inflate.findViewById(R.id.time);
                    gVar2.f38743l = (TextView) inflate.findViewById(R.id.content);
                    gVar2.f38744m = (TextView) inflate.findViewById(R.id.more);
                    gVar2.f38745n = inflate.findViewById(R.id.line);
                    gVar2.f38746o = (TextView) inflate.findViewById(R.id.phoneModle);
                    gVar2.f38747p = (ImageView) inflate.findViewById(R.id.parise);
                    gVar2.f38748q = (TextView) inflate.findViewById(R.id.pariseNumber);
                    gVar2.f38749r = (ImageView) inflate.findViewById(R.id.down);
                    gVar2.f38750s = (TextView) inflate.findViewById(R.id.downNumber);
                    gVar2.f38751t = (ImageView) inflate.findViewById(R.id.message);
                    gVar2.f38752u = (TextView) inflate.findViewById(R.id.messageNumber);
                    inflate.setTag(gVar2);
                    gVar = gVar2;
                    view = inflate;
                }
                gVar = null;
            } else {
                k kVar2 = new k();
                View inflate2 = LayoutInflater.from(this.f38704a).inflate(R.layout.gamedetail_item_title, (ViewGroup) null);
                kVar2.f38766a = (TextView) inflate2.findViewById(R.id.titleText);
                kVar2.f38768c = inflate2.findViewById(R.id.layoutTop);
                inflate2.setTag(kVar2);
                kVar = kVar2;
                view = inflate2;
                gVar = null;
            }
        } else if (i4 != 1) {
            if (i4 == 2) {
                gVar = (g) view.getTag();
            }
            gVar = null;
        } else {
            gVar = null;
            kVar = (k) view.getTag();
        }
        if (aVar == null) {
            return view;
        }
        CommentBaseBean commentBaseBean = aVar.f38757a;
        if (i4 == 1) {
            if (commentBaseBean.getIs_hot() == 1) {
                kVar.f38766a.setText("热门点评");
            } else {
                kVar.f38766a.setText("最新点评");
            }
            kVar.f38768c.setVisibility(8);
        } else if (i4 == 2) {
            gVar.f38735d.setTextColor(-16777216);
            if (commentBaseBean.getVip_level() > 0) {
                gVar.f38735d.setTextColor(this.f38704a.getResources().getColor(R.color.vip_color));
            }
            if (commentBaseBean.getSvip_level() > 0) {
                gVar.f38735d.setTextColor(this.f38704a.getResources().getColor(R.color.vip_svip_color));
            }
            gVar.f38753v.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
            if (commentBaseBean.getUid().equals(String.valueOf(this.f38706c))) {
                gVar.f38736e.setVisibility(0);
                this.f38709f = i2;
            } else {
                gVar.f38736e.setVisibility(8);
            }
            gVar.f38735d.setText(commentBaseBean.getUser_name());
            if (Build.VERSION.SDK_INT == 19) {
                gVar.f38743l.setText(commentBaseBean.getContent().replaceAll("\n", ""));
            } else {
                gVar.f38743l.setText(commentBaseBean.getContent());
            }
            if (commentBaseBean.getIs_old() == 1 || commentBaseBean.getMobile_phone_model() == null || commentBaseBean.getMobile_phone_model().isEmpty()) {
                gVar.f38746o.setVisibility(4);
            } else {
                gVar.f38746o.setVisibility(0);
                gVar.f38746o.setText(commentBaseBean.getMobile_phone_model());
            }
            gVar.f38748q.setText(commentBaseBean.getPraise_count() + "");
            gVar.f38750s.setText(commentBaseBean.getDespise_count() + "");
            gVar.f38752u.setText(commentBaseBean.getReply_count() + "");
            gVar.f38741j.setText(com.join.android.app.common.utils.c.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
            if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f || ((str = this.f38707d) != null && !str.equals("1"))) {
                gVar.f38739h.setVisibility(8);
            } else {
                gVar.f38739h.setVisibility(0);
                gVar.f38739h.setStarCount(Integer.parseInt(commentBaseBean.getStars_score()));
                gVar.f38739h.setStarMark(Float.valueOf(commentBaseBean.getStars_score()).floatValue());
            }
            if (this.f38708e != 1) {
                gVar.f38740i.setVisibility(8);
            } else if (commentBaseBean.getIs_old() == 0) {
                gVar.f38740i.setVisibility(0);
                gVar.f38740i.setText("启动游戏 " + commentBaseBean.getStart_game_count() + " 次");
            } else {
                gVar.f38740i.setVisibility(8);
            }
            gVar.f38739h.setEnabled(false);
            if (commentBaseBean.getApproval_rate() == null || Double.valueOf(commentBaseBean.getApproval_rate()).doubleValue() <= 70.0d) {
                gVar.f38742k.setVisibility(8);
            } else {
                gVar.f38742k.setVisibility(0);
            }
            if (commentBaseBean.getRank().equals("")) {
                gVar.f38737f.setVisibility(8);
            } else {
                gVar.f38737f.setVisibility(0);
            }
            gVar.f38738g.setText(commentBaseBean.getRank());
            if (commentBaseBean.getIs_praise() == 1) {
                gVar.f38747p.setImageResource(R.drawable.uped_ic);
            } else {
                gVar.f38747p.setImageResource(R.drawable.up_ic);
            }
            if (commentBaseBean.getIs_despise() == 1) {
                gVar.f38749r.setImageResource(R.drawable.downed_ic);
            } else {
                gVar.f38749r.setImageResource(R.drawable.down_ic);
            }
            UtilsMy.E2(this.f38704a, commentBaseBean.getHead_portrait(), gVar.f38734c);
            gVar.f38734c.setOnClickListener(new a(commentBaseBean));
            m(gVar.f38747p, gVar.f38748q, commentBaseBean, i2);
            n(gVar.f38749r, gVar.f38750s, commentBaseBean, i2);
            l(gVar.f38751t, commentBaseBean);
            l(gVar.f38733b, commentBaseBean);
            if (commentBaseBean.isShowMore()) {
                gVar.f38744m.setText("收起");
                gVar.f38743l.setMaxLines(Integer.MAX_VALUE);
            } else {
                gVar.f38744m.setText("查看全部");
                gVar.f38743l.setMaxLines(5);
            }
            gVar.f38743l.post(new b(gVar, commentBaseBean));
            gVar.f38744m.setOnClickListener(new c(gVar, commentBaseBean));
        }
        return view;
    }

    private void l(View view, CommentBaseBean commentBaseBean) {
        view.setOnClickListener(new d(commentBaseBean));
    }

    private void m(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i2) {
        e eVar = new e(commentBaseBean, i2, imageView, textView);
        imageView.setOnClickListener(eVar);
        textView.setOnClickListener(eVar);
    }

    private void n(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i2) {
        f fVar = new f(commentBaseBean, i2, imageView, textView);
        imageView.setOnClickListener(fVar);
        textView.setOnClickListener(fVar);
    }

    public void b(int i2) {
        i.a aVar = (i.a) getItem(i2);
        long longValue = Long.valueOf(aVar.f38757a.getDespise_count()).longValue();
        aVar.f38757a.setIs_despise(1);
        CommentBaseBean commentBaseBean = aVar.f38757a;
        commentBaseBean.setDespise_count((longValue + 1) + "");
        notifyDataSetChanged();
    }

    public void c(int i2) {
        i.a aVar = (i.a) getItem(i2);
        long praise_count = aVar.f38757a.getPraise_count();
        aVar.f38757a.setIs_praise(1);
        aVar.f38757a.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    public void d(com.join.mgps.event.h hVar) {
        if (this.f38709f == -1) {
            return;
        }
        if (hVar.getType() == 1) {
            this.f38705b.remove(this.f38709f);
        } else {
            i.a aVar = (i.a) getItem(this.f38709f);
            aVar.f38757a.setContent(hVar.a());
            aVar.f38757a.setMobile_phone_model(hVar.b());
            aVar.f38757a.setStars_score(String.valueOf(hVar.c()));
        }
        notifyDataSetChanged();
    }

    public i.a f() {
        return (i.a) getItem(this.f38709f);
    }

    public int g() {
        if (this.f38709f == -1) {
            int i2 = 0;
            while (true) {
                if (i2 < this.f38705b.size()) {
                    if (this.f38705b.get(i2).b() == ViewType.COMMENT && ((i.a) this.f38705b.get(i2).a()).f38757a.getUid().equals(String.valueOf(this.f38706c))) {
                        this.f38709f = i2;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
        }
        return this.f38709f;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<i> list = this.f38705b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<i> list = this.f38705b;
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
        List<i> list = this.f38705b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.COMMENT.ordinal()) {
            return e(i2, view, viewGroup, 2);
        }
        return itemViewType == ViewType.TITLE.ordinal() ? e(i2, view, viewGroup, 1) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public h h() {
        return this.f38710g;
    }

    public void i(int i2, int i4) {
        i.a aVar = (i.a) getItem(i2);
        long longValue = Long.valueOf(aVar.f38757a.getDespise_count()).longValue();
        if (aVar.f38757a.getIs_despise() == 1) {
            aVar.f38757a.setIs_despise(0);
            long j4 = longValue - 1;
            if (j4 < 0) {
                aVar.f38757a.setDespise_count("0");
            } else {
                CommentBaseBean commentBaseBean = aVar.f38757a;
                commentBaseBean.setDespise_count(j4 + "");
            }
        } else if (i4 != 1) {
            aVar.f38757a.setIs_despise(1);
            CommentBaseBean commentBaseBean2 = aVar.f38757a;
            commentBaseBean2.setDespise_count((longValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void j(int i2, int i4) {
        i.a aVar = (i.a) getItem(i2);
        long praise_count = aVar.f38757a.getPraise_count();
        if (aVar.f38757a.getIs_praise() == 1) {
            aVar.f38757a.setIs_praise(0);
            long j4 = praise_count - 1;
            if (j4 < 0) {
                aVar.f38757a.setPraise_count(0L);
            } else {
                aVar.f38757a.setPraise_count(j4);
            }
        } else if (i4 != 1) {
            aVar.f38757a.setIs_praise(1);
            aVar.f38757a.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    public void k(h hVar) {
        this.f38710g = hVar;
    }

    public void o(int i2) {
        i.a aVar = (i.a) getItem(i2);
        long longValue = Long.valueOf(aVar.f38757a.getDespise_count()).longValue();
        aVar.f38757a.setIs_despise(0);
        long j4 = longValue - 1;
        if (j4 < 0) {
            aVar.f38757a.setDespise_count("0");
        } else {
            CommentBaseBean commentBaseBean = aVar.f38757a;
            commentBaseBean.setDespise_count(j4 + "");
        }
        notifyDataSetChanged();
    }

    public void p(int i2) {
        i.a aVar = (i.a) getItem(i2);
        long praise_count = aVar.f38757a.getPraise_count();
        aVar.f38757a.setIs_praise(0);
        long j4 = praise_count - 1;
        if (j4 < 0) {
            aVar.f38757a.setPraise_count(0L);
        } else {
            aVar.f38757a.setPraise_count(j4);
        }
        notifyDataSetChanged();
    }
}
