package com.join.mgps.adapter;

import android.content.Context;
import android.os.Build;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.HistogramView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class CommentAllListFragmentAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private Context f38771a;

    /* renamed from: b  reason: collision with root package name */
    private List<i> f38772b;

    /* renamed from: c  reason: collision with root package name */
    private int f38773c;

    /* renamed from: d  reason: collision with root package name */
    private String f38774d;

    /* renamed from: e  reason: collision with root package name */
    private int f38775e;

    /* renamed from: g  reason: collision with root package name */
    CommentBaseBean f38777g;

    /* renamed from: i  reason: collision with root package name */
    h f38779i;

    /* renamed from: f  reason: collision with root package name */
    private int f38776f = -1;

    /* renamed from: h  reason: collision with root package name */
    private Map<Integer, Boolean> f38778h = new HashMap();

    /* loaded from: classes3.dex */
    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY,
        HEAD
    }

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38780a;

        a(CommentBaseBean commentBaseBean) {
            this.f38780a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f38780a.getUid())).start();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38782a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g f38783b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f38784c;

        b(CommentBaseBean commentBaseBean, g gVar, int i2) {
            this.f38782a = commentBaseBean;
            this.f38783b = gVar;
            this.f38784c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f38782a.isShowMore()) {
                return;
            }
            Layout layout = this.f38783b.f38814k.getLayout();
            if (layout != null) {
                int lineCount = layout.getLineCount();
                if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) <= 0) {
                        if (!CommentAllListFragmentAdapter.this.f38778h.containsKey(Integer.valueOf(this.f38784c))) {
                            this.f38783b.f38815l.setVisibility(8);
                            return;
                        }
                        this.f38782a.setShowMore(true);
                        this.f38783b.f38815l.setVisibility(0);
                        return;
                    }
                    this.f38782a.setShowMore(true);
                    this.f38783b.f38815l.setVisibility(0);
                }
            } else if (this.f38782a.getContent().length() <= 115) {
                this.f38783b.f38815l.setVisibility(8);
            } else {
                this.f38782a.setShowMore(true);
                this.f38783b.f38815l.setVisibility(0);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f38786a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38787b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38788c;

        c(g gVar, int i2, CommentBaseBean commentBaseBean) {
            this.f38786a = gVar;
            this.f38787b = i2;
            this.f38788c = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f38786a.f38815l.getText().toString().equals("查看全部")) {
                CommentAllListFragmentAdapter.this.f38778h.put(Integer.valueOf(this.f38787b), Boolean.TRUE);
                if (Build.VERSION.SDK_INT == 19) {
                    this.f38786a.f38814k.setText(this.f38788c.getContent());
                }
                this.f38786a.f38814k.setMaxLines(Integer.MAX_VALUE);
                this.f38786a.f38815l.setText("收起");
                return;
            }
            CommentAllListFragmentAdapter.this.f38778h.put(Integer.valueOf(this.f38787b), Boolean.FALSE);
            if (Build.VERSION.SDK_INT == 19) {
                this.f38786a.f38814k.setText(this.f38788c.getContent().replaceAll("\n", ""));
            }
            this.f38786a.f38814k.setMaxLines(5);
            this.f38786a.f38815l.setText("查看全部");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38790a;

        d(CommentBaseBean commentBaseBean) {
            this.f38790a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h hVar;
            CommentBaseBean commentBaseBean = this.f38790a;
            if (commentBaseBean == null || (hVar = CommentAllListFragmentAdapter.this.f38779i) == null) {
                return;
            }
            hVar.f(commentBaseBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38792a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38793b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f38794c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f38795d;

        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(e.this.f38795d.getText().toString()).longValue();
                TextView textView = e.this.f38795d;
                textView.setText((longValue + 1) + "");
                e eVar = e.this;
                CommentAllListFragmentAdapter.this.d(eVar.f38793b);
                e eVar2 = e.this;
                h hVar = CommentAllListFragmentAdapter.this.f38779i;
                if (hVar != null) {
                    hVar.d(eVar2.f38792a, eVar2.f38793b, 1);
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
            this.f38792a = commentBaseBean;
            this.f38793b = i2;
            this.f38794c = imageView;
            this.f38795d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentAllListFragmentAdapter.this.f38771a) || (commentBaseBean = this.f38792a) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                CommentAllListFragmentAdapter.this.q(this.f38793b);
                this.f38794c.setImageResource(R.drawable.up_ic);
                h hVar = CommentAllListFragmentAdapter.this.f38779i;
                if (hVar != null) {
                    hVar.d(this.f38792a, this.f38793b, 2);
                    return;
                }
                return;
            }
            this.f38792a.setIs_praise(1);
            if (AccountUtil_.getInstance_(CommentAllListFragmentAdapter.this.f38771a).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentAllListFragmentAdapter.this.f38771a);
                return;
            }
            this.f38794c.setImageResource(R.drawable.uped_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(CommentAllListFragmentAdapter.this.f38771a, R.anim.scale_reset);
            this.f38794c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f38798a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38799b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f38800c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f38801d;

        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(f.this.f38801d.getText().toString()).longValue();
                TextView textView = f.this.f38801d;
                textView.setText((longValue + 1) + "");
                f fVar = f.this;
                CommentAllListFragmentAdapter.this.c(fVar.f38799b);
                f fVar2 = f.this;
                h hVar = CommentAllListFragmentAdapter.this.f38779i;
                if (hVar != null) {
                    hVar.e(fVar2.f38798a, fVar2.f38799b, 1);
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
            this.f38798a = commentBaseBean;
            this.f38799b = i2;
            this.f38800c = imageView;
            this.f38801d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentAllListFragmentAdapter.this.f38771a) || (commentBaseBean = this.f38798a) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                CommentAllListFragmentAdapter.this.p(this.f38799b);
                this.f38800c.setImageResource(R.drawable.down_ic);
                h hVar = CommentAllListFragmentAdapter.this.f38779i;
                if (hVar != null) {
                    hVar.e(this.f38798a, this.f38799b, 2);
                    return;
                }
                return;
            }
            this.f38798a.setIs_despise(1);
            if (AccountUtil_.getInstance_(CommentAllListFragmentAdapter.this.f38771a).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentAllListFragmentAdapter.this.f38771a);
                return;
            }
            this.f38800c.setImageResource(R.drawable.downed_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(CommentAllListFragmentAdapter.this.f38771a, R.anim.scale_reset);
            this.f38800c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* loaded from: classes3.dex */
    class g extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f38804a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f38805b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f38806c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f38807d;

        /* renamed from: e  reason: collision with root package name */
        private ImageView f38808e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f38809f;

        /* renamed from: g  reason: collision with root package name */
        private MStarBar f38810g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f38811h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f38812i;

        /* renamed from: j  reason: collision with root package name */
        private ImageView f38813j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f38814k;

        /* renamed from: l  reason: collision with root package name */
        private TextView f38815l;

        /* renamed from: m  reason: collision with root package name */
        public View f38816m;

        /* renamed from: n  reason: collision with root package name */
        private TextView f38817n;

        /* renamed from: o  reason: collision with root package name */
        private ImageView f38818o;

        /* renamed from: p  reason: collision with root package name */
        private TextView f38819p;

        /* renamed from: q  reason: collision with root package name */
        private ImageView f38820q;

        /* renamed from: r  reason: collision with root package name */
        private TextView f38821r;

        /* renamed from: s  reason: collision with root package name */
        private ImageView f38822s;

        /* renamed from: t  reason: collision with root package name */
        private TextView f38823t;

        /* renamed from: u  reason: collision with root package name */
        private VipView f38824u;

        public g(View view) {
            super(view);
            this.f38804a = (LinearLayout) view.findViewById(R.id.commentAllRootLl);
            this.f38805b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f38806c = (TextView) view.findViewById(R.id.userName);
            this.f38807d = (TextView) view.findViewById(R.id.isMe);
            this.f38824u = (VipView) view.findViewById(R.id.levelTv);
            this.f38808e = (ImageView) view.findViewById(R.id.isAuth);
            this.f38813j = (ImageView) view.findViewById(R.id.isGood);
            this.f38809f = (TextView) view.findViewById(R.id.isConnoisseurs);
            this.f38810g = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f38811h = (TextView) view.findViewById(R.id.comment_head_num_tx);
            this.f38812i = (TextView) view.findViewById(R.id.time);
            this.f38814k = (TextView) view.findViewById(R.id.content);
            this.f38815l = (TextView) view.findViewById(R.id.more);
            this.f38816m = view.findViewById(R.id.line);
            this.f38817n = (TextView) view.findViewById(R.id.phoneModle);
            this.f38818o = (ImageView) view.findViewById(R.id.parise);
            this.f38819p = (TextView) view.findViewById(R.id.pariseNumber);
            this.f38820q = (ImageView) view.findViewById(R.id.down);
            this.f38821r = (TextView) view.findViewById(R.id.downNumber);
            this.f38822s = (ImageView) view.findViewById(R.id.message);
            this.f38823t = (TextView) view.findViewById(R.id.messageNumber);
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
        void A();

        void d(CommentBaseBean commentBaseBean, int i2, int i4);

        void e(CommentBaseBean commentBaseBean, int i2, int i4);

        void f(CommentBaseBean commentBaseBean);
    }

    /* loaded from: classes3.dex */
    public static class i {

        /* renamed from: a  reason: collision with root package name */
        ViewType f38826a;

        /* renamed from: b  reason: collision with root package name */
        Object f38827b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public CommentBaseBean f38828a;

            public a(CommentBaseBean commentBaseBean) {
                this.f38828a = commentBaseBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f38829a;

            /* renamed from: b  reason: collision with root package name */
            public CommentBaseBean f38830b;

            /* renamed from: c  reason: collision with root package name */
            public int f38831c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f38832d;

            /* renamed from: e  reason: collision with root package name */
            public int f38833e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f38834f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f38835g;

            public b(String str, CommentBaseBean commentBaseBean, int i2, boolean z3) {
                this.f38829a = str;
                this.f38830b = commentBaseBean;
                this.f38831c = i2;
                this.f38832d = z3;
            }
        }

        public i() {
        }

        public Object a() {
            return this.f38827b;
        }

        public ViewType b() {
            return this.f38826a;
        }

        public void c(Object obj) {
            this.f38827b = obj;
        }

        public void d(ViewType viewType) {
            this.f38826a = viewType;
        }

        public i(ViewType viewType, Object obj) {
            this.f38826a = viewType;
            this.f38827b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class j {
        j() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f38837a;

        /* renamed from: b  reason: collision with root package name */
        private LinearLayout f38838b;

        /* renamed from: c  reason: collision with root package name */
        private LinearLayout f38839c;

        /* renamed from: d  reason: collision with root package name */
        private MStarBar f38840d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f38841e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f38842f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f38843g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f38844h;

        /* renamed from: i  reason: collision with root package name */
        private HistogramView f38845i;

        /* renamed from: j  reason: collision with root package name */
        private HistogramView f38846j;

        /* renamed from: k  reason: collision with root package name */
        private HistogramView f38847k;

        /* renamed from: l  reason: collision with root package name */
        private HistogramView f38848l;

        /* renamed from: m  reason: collision with root package name */
        private HistogramView f38849m;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CommentAllListFragmentAdapter f38851a;

            a(CommentAllListFragmentAdapter commentAllListFragmentAdapter) {
                this.f38851a = commentAllListFragmentAdapter;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommentAllListFragmentAdapter.this.f38779i.A();
            }
        }

        public k(View view) {
            super(view);
            this.f38845i = (HistogramView) view.findViewById(R.id.oneHv);
            this.f38846j = (HistogramView) view.findViewById(R.id.twoHv);
            this.f38847k = (HistogramView) view.findViewById(R.id.threeHv);
            this.f38848l = (HistogramView) view.findViewById(R.id.fourHv);
            this.f38849m = (HistogramView) view.findViewById(R.id.fiveHv);
            this.f38840d = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f38843g = (TextView) view.findViewById(R.id.comment_head_point_tx);
            this.f38842f = (TextView) view.findViewById(R.id.comment_head_nopoint_tx);
            this.f38844h = (TextView) view.findViewById(R.id.comment_head_num_tx);
            TextView textView = (TextView) view.findViewById(R.id.editText5);
            this.f38841e = textView;
            textView.setText("写评论");
            this.f38837a = (LinearLayout) view.findViewById(R.id.start_ll);
            this.f38838b = (LinearLayout) view.findViewById(R.id.point_ll);
            view.findViewById(R.id.goCommit).setOnClickListener(new a(CommentAllListFragmentAdapter.this));
            this.f38840d.setIntegerMark(false);
            this.f38840d.setEnabled(false);
        }
    }

    /* loaded from: classes3.dex */
    class l extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public TextView f38853a;

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f38854b;

        /* renamed from: c  reason: collision with root package name */
        public View f38855c;

        /* renamed from: d  reason: collision with root package name */
        public View f38856d;

        public l(View view) {
            super(view);
            this.f38853a = (TextView) view.findViewById(R.id.titleText);
            this.f38855c = view.findViewById(R.id.layoutTop);
        }
    }

    public CommentAllListFragmentAdapter(Context context, int i2, List<i> list, String str, int i4, h hVar) {
        this.f38779i = null;
        this.f38771a = context;
        this.f38773c = i2;
        this.f38774d = str;
        this.f38775e = i4;
        this.f38772b = list;
        this.f38779i = hVar;
    }

    private int e(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void m(View view, CommentBaseBean commentBaseBean) {
        view.setOnClickListener(new d(commentBaseBean));
    }

    private void n(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i2) {
        e eVar = new e(commentBaseBean, i2, imageView, textView);
        imageView.setOnClickListener(eVar);
        textView.setOnClickListener(eVar);
    }

    private void o(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i2) {
        f fVar = new f(commentBaseBean, i2, imageView, textView);
        imageView.setOnClickListener(fVar);
        textView.setOnClickListener(fVar);
    }

    public void c(int i2) {
        i.a aVar = (i.a) getItem(i2);
        long longValue = Long.valueOf(aVar.f38828a.getDespise_count()).longValue();
        aVar.f38828a.setIs_despise(1);
        CommentBaseBean commentBaseBean = aVar.f38828a;
        commentBaseBean.setDespise_count((longValue + 1) + "");
        notifyDataSetChanged();
    }

    public void d(int i2) {
        i.a aVar = (i.a) getItem(i2);
        long praise_count = aVar.f38828a.getPraise_count();
        aVar.f38828a.setIs_praise(1);
        aVar.f38828a.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    public int f() {
        if (this.f38776f == -1) {
            int i2 = 0;
            while (true) {
                if (i2 < this.f38772b.size()) {
                    if (this.f38772b.get(i2).b() == ViewType.COMMENT && ((i.a) this.f38772b.get(i2).a()).f38828a.getUid().equals(String.valueOf(this.f38773c))) {
                        this.f38776f = i2;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
        }
        return this.f38776f;
    }

    public h g() {
        return this.f38779i;
    }

    public Object getItem(int i2) {
        List<i> list = this.f38772b;
        if (list != null) {
            return list.get(i2).a();
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<i> list = this.f38772b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        List<i> list = this.f38772b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    public void h(int i2, int i4) {
        i.a aVar = (i.a) getItem(i2);
        long longValue = Long.valueOf(aVar.f38828a.getDespise_count()).longValue();
        if (aVar.f38828a.getIs_despise() == 1) {
            aVar.f38828a.setIs_despise(0);
            long j4 = longValue - 1;
            if (j4 < 0) {
                aVar.f38828a.setDespise_count("0");
            } else {
                CommentBaseBean commentBaseBean = aVar.f38828a;
                commentBaseBean.setDespise_count(j4 + "");
            }
        } else if (i4 != 1) {
            aVar.f38828a.setIs_despise(1);
            CommentBaseBean commentBaseBean2 = aVar.f38828a;
            commentBaseBean2.setDespise_count((longValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void i(int i2, int i4) {
        i.a aVar = (i.a) getItem(i2);
        long praise_count = aVar.f38828a.getPraise_count();
        if (aVar.f38828a.getIs_praise() == 1) {
            aVar.f38828a.setIs_praise(0);
            long j4 = praise_count - 1;
            if (j4 < 0) {
                aVar.f38828a.setPraise_count(0L);
            } else {
                aVar.f38828a.setPraise_count(j4);
            }
        } else if (i4 != 1) {
            aVar.f38828a.setIs_praise(1);
            aVar.f38828a.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    void j(CommentAllListBean.ScoringDetailsBean scoringDetailsBean, k kVar) {
        HistogramView[] histogramViewArr = {kVar.f38845i, kVar.f38846j, kVar.f38847k, kVar.f38848l, kVar.f38849m};
        String[] strArr = {"#F47500", "#FFA423", "#FFB53D", "#FBCD36", "#E4DECA"};
        kVar.f38843g.setText(new DecimalFormat("#.0").format(Double.valueOf(scoringDetailsBean.getTotal_score()).doubleValue()));
        kVar.f38840d.setStarMark(scoringDetailsBean.getTotal_stars());
        double[] dArr = {Double.valueOf(scoringDetailsBean.getStars_score5()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score4()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score3()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score2()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score1()).doubleValue()};
        double d4 = 0.0d;
        int i2 = 0;
        for (int i4 = 0; i4 < 5; i4++) {
            double d5 = dArr[i4];
            if (dArr[i4] > d4) {
                d4 = dArr[i4];
                i2 = i4;
            }
        }
        kVar.f38844h.setText(scoringDetailsBean.getP_count() + "人");
        if (scoringDetailsBean.getP_count() <= 0) {
            kVar.f38840d.setStarMark(0.0d);
            kVar.f38842f.setVisibility(0);
            kVar.f38843g.setVisibility(8);
            kVar.f38844h.setVisibility(8);
        } else {
            kVar.f38838b.setVisibility(0);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, e(this.f38771a, 10.0f));
        for (int i5 = 0; i5 < 5; i5++) {
            histogramViewArr[i5].setAnim(false);
            if (dArr[i5] == 0.0d) {
                histogramViewArr[i5].setProgress(0.0d);
            } else if (i5 == i2) {
                histogramViewArr[i5].setProgress(1.0d);
            } else if (d4 == dArr[i5]) {
                histogramViewArr[i5].setProgress(1.0d);
            } else {
                histogramViewArr[i5].setProgress(dArr[i5] / d4);
            }
            histogramViewArr[i5].setRateBackgroundColor(strArr[i5]);
            histogramViewArr[i5].setLayoutParams(layoutParams);
            histogramViewArr[i5].setOrientation(0);
        }
    }

    public void k(h hVar) {
        this.f38779i = hVar;
    }

    public void l(CommentBaseBean commentBaseBean) {
        this.f38777g = commentBaseBean;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        String str;
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.COMMENT.ordinal()) {
            CommentBaseBean commentBaseBean = ((i.a) getItem(i2)).f38828a;
            g gVar = (g) viewHolder;
            gVar.f38806c.setTextColor(-16777216);
            if (commentBaseBean.getVip_level() > 0) {
                gVar.f38806c.setTextColor(this.f38771a.getResources().getColor(R.color.vip_color));
            }
            if (commentBaseBean.getSvip_level() > 0) {
                gVar.f38806c.setTextColor(this.f38771a.getResources().getColor(R.color.vip_svip_color));
            }
            gVar.f38824u.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
            if (commentBaseBean.getUid().equals(String.valueOf(this.f38773c))) {
                gVar.f38807d.setVisibility(0);
                this.f38776f = i2;
            } else {
                gVar.f38807d.setVisibility(8);
            }
            gVar.f38805b.setOnClickListener(new a(commentBaseBean));
            gVar.f38806c.setText(commentBaseBean.getUser_name());
            if (Build.VERSION.SDK_INT == 19) {
                gVar.f38814k.setText(commentBaseBean.getContent().replaceAll("\n", ""));
            } else {
                gVar.f38814k.setText(commentBaseBean.getContent());
            }
            if (commentBaseBean.getIs_old() == 1 || commentBaseBean.getMobile_phone_model() == null || commentBaseBean.getMobile_phone_model().isEmpty()) {
                gVar.f38817n.setVisibility(4);
            } else {
                gVar.f38817n.setVisibility(0);
                gVar.f38817n.setText(commentBaseBean.getMobile_phone_model());
            }
            TextView textView = gVar.f38819p;
            textView.setText(commentBaseBean.getPraise_count() + "");
            TextView textView2 = gVar.f38821r;
            textView2.setText(commentBaseBean.getDespise_count() + "");
            TextView textView3 = gVar.f38823t;
            textView3.setText(commentBaseBean.getReply_count() + "");
            gVar.f38812i.setText(com.join.android.app.common.utils.c.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
            if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f || ((str = this.f38774d) != null && !str.equals("1"))) {
                gVar.f38810g.setVisibility(8);
            } else {
                gVar.f38810g.setVisibility(0);
                gVar.f38810g.setStarMark(Float.valueOf(commentBaseBean.getStars_score()).floatValue());
            }
            if (this.f38775e != 1) {
                gVar.f38811h.setVisibility(8);
            } else if (commentBaseBean.getIs_old() == 0) {
                gVar.f38811h.setVisibility(0);
                TextView textView4 = gVar.f38811h;
                textView4.setText("启动游戏 " + commentBaseBean.getStart_game_count() + " 次");
            } else {
                gVar.f38811h.setVisibility(8);
            }
            gVar.f38810g.setEnabled(false);
            if (commentBaseBean.getApproval_rate() == null || Double.valueOf(commentBaseBean.getApproval_rate()).doubleValue() <= 70.0d) {
                gVar.f38813j.setVisibility(8);
            } else {
                gVar.f38813j.setVisibility(0);
            }
            if (commentBaseBean.getRank().equals("")) {
                gVar.f38808e.setVisibility(8);
            } else {
                gVar.f38808e.setVisibility(0);
            }
            gVar.f38809f.setText(commentBaseBean.getRank());
            if (commentBaseBean.getIs_praise() == 1) {
                gVar.f38818o.setImageResource(R.drawable.uped_ic);
            } else {
                gVar.f38818o.setImageResource(R.drawable.up_ic);
            }
            if (commentBaseBean.getIs_despise() == 1) {
                gVar.f38820q.setImageResource(R.drawable.downed_ic);
            } else {
                gVar.f38820q.setImageResource(R.drawable.down_ic);
            }
            UtilsMy.E2(this.f38771a, commentBaseBean.getHead_portrait(), gVar.f38805b);
            n(gVar.f38818o, gVar.f38819p, commentBaseBean, i2);
            o(gVar.f38820q, gVar.f38821r, commentBaseBean, i2);
            m(gVar.f38822s, commentBaseBean);
            m(gVar.f38804a, commentBaseBean);
            if (commentBaseBean.getContent().length() > 115) {
                commentBaseBean.setShowMore(true);
            }
            if (commentBaseBean.isShowMore()) {
                gVar.f38815l.setVisibility(0);
            }
            gVar.f38814k.post(new b(commentBaseBean, gVar, i2));
            gVar.f38815l.setOnClickListener(new c(gVar, i2, commentBaseBean));
        } else if (itemViewType == ViewType.HEAD.ordinal()) {
            j((CommentAllListBean.ScoringDetailsBean) getItem(i2), (k) viewHolder);
        } else if (itemViewType == ViewType.TITLE.ordinal()) {
            l lVar = (l) viewHolder;
            if (((i.a) getItem(i2)).f38828a.getIs_hot() == 1) {
                lVar.f38853a.setText("热门点评");
            } else {
                lVar.f38853a.setText("最新点评");
            }
            lVar.f38855c.setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        if (i2 == ViewType.COMMENT.ordinal()) {
            return new g(LayoutInflater.from(this.f38771a).inflate(R.layout.comment_list_item_view, viewGroup, false));
        }
        if (i2 == ViewType.HEAD.ordinal()) {
            return new k(LayoutInflater.from(this.f38771a).inflate(R.layout.comment_list_head_view, viewGroup, false));
        }
        return new l(LayoutInflater.from(this.f38771a).inflate(R.layout.gamedetail_item_title, viewGroup, false));
    }

    public void p(int i2) {
        i.a aVar = (i.a) getItem(i2);
        long longValue = Long.valueOf(aVar.f38828a.getDespise_count()).longValue();
        aVar.f38828a.setIs_despise(0);
        long j4 = longValue - 1;
        if (j4 < 0) {
            aVar.f38828a.setDespise_count("0");
        } else {
            CommentBaseBean commentBaseBean = aVar.f38828a;
            commentBaseBean.setDespise_count(j4 + "");
        }
        notifyDataSetChanged();
    }

    public void q(int i2) {
        i.a aVar = (i.a) getItem(i2);
        long praise_count = aVar.f38828a.getPraise_count();
        aVar.f38828a.setIs_praise(0);
        long j4 = praise_count - 1;
        if (j4 < 0) {
            aVar.f38828a.setPraise_count(0L);
        } else {
            aVar.f38828a.setPraise_count(j4);
        }
        notifyDataSetChanged();
    }
}
