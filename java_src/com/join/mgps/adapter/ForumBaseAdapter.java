package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TableRow;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumBaseAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    com.join.android.app.component.optimizetext.b f39102a;

    /* renamed from: b  reason: collision with root package name */
    com.danikula.videocache.i f39103b;

    /* renamed from: c  reason: collision with root package name */
    private Context f39104c;

    /* renamed from: e  reason: collision with root package name */
    com.join.android.app.component.video.c f39106e;

    /* renamed from: g  reason: collision with root package name */
    private com.join.mgps.listener.f f39108g;

    /* renamed from: h  reason: collision with root package name */
    LinearLayout.LayoutParams f39109h;

    /* renamed from: j  reason: collision with root package name */
    LinearLayout.LayoutParams f39111j;

    /* renamed from: r  reason: collision with root package name */
    private MyVideoView f39119r;

    /* renamed from: s  reason: collision with root package name */
    private MediaController f39120s;

    /* renamed from: f  reason: collision with root package name */
    String f39107f = "ForumBaseAdapter";

    /* renamed from: i  reason: collision with root package name */
    int f39110i = 0;

    /* renamed from: k  reason: collision with root package name */
    private r0 f39112k = null;

    /* renamed from: l  reason: collision with root package name */
    int f39113l = 0;

    /* renamed from: m  reason: collision with root package name */
    int f39114m = 0;

    /* renamed from: n  reason: collision with root package name */
    int f39115n = 0;

    /* renamed from: o  reason: collision with root package name */
    int f39116o = 0;

    /* renamed from: p  reason: collision with root package name */
    int f39117p = 0;

    /* renamed from: q  reason: collision with root package name */
    int f39118q = 0;

    /* renamed from: t  reason: collision with root package name */
    private int f39121t = -1;

    /* renamed from: u  reason: collision with root package name */
    private String f39122u = "";

    /* renamed from: v  reason: collision with root package name */
    private int f39123v = -1;

    /* renamed from: w  reason: collision with root package name */
    private boolean f39124w = false;

    /* renamed from: x  reason: collision with root package name */
    private boolean f39125x = false;

    /* renamed from: y  reason: collision with root package name */
    List<Integer> f39126y = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private List<n1> f39105d = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        POST_HEADER,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE_THUMBNAIL,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER,
        POST_TOP,
        POST_GAME,
        MY_FORUM_HEADER,
        MY_FORUM_ITEM,
        MY_FORUM_FOOTER,
        MY_FORUM_MORE_FOOTER,
        HOT_FORUM_HEADER,
        HOT_FORUM_ITEM,
        HOT_FORUM_FOOTER,
        TOP_BLOCK,
        MID_BLOCK,
        AD_BLOCK,
        FORUM_TOPIC,
        BAIDUAD,
        LIVE,
        LIVE_ENTRY,
        GROUP_ITEM,
        GROUP_ITEM_2,
        P_SUBJECT,
        P_MESSAGE,
        P_IMGS,
        P_VIDEO,
        P_FOOTER,
        TAG_FLOW_LAYOUT,
        GROUP_MEMBER_SECTION_TITLE,
        GROUP_MEMBER_ITEM,
        TAG_ITEM,
        POST_GAME_RES_LINK
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f39127a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39128b;

        a(IntentDateBean intentDateBean, int i2) {
            this.f39127a = intentDateBean;
            this.f39128b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            if (this.f39127a == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f39127a);
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(context);
            l4.r0("banner3-" + (this.f39128b + 1), AccountUtil_.getInstance_(context).getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39130a;

        a0(int i2) {
            this.f39130a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.a(this.f39130a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public View f39132b;

        /* renamed from: c  reason: collision with root package name */
        public View f39133c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f39134d;

        /* renamed from: e  reason: collision with root package name */
        public SimpleDraweeView f39135e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f39136f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f39137g;

        a1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f39139a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39140b;

        b(List list, int i2) {
            this.f39139a = list;
            this.f39140b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String[] strArr = new String[this.f39139a.size()];
            this.f39139a.toArray(strArr);
            com.join.mgps.Util.i0.G0(view.getContext(), this.f39140b, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n1.m f39142a;

        b0(n1.m mVar) {
            this.f39142a = mVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39142a.f39328h).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public StaticLayoutView f39144b;

        /* renamed from: c  reason: collision with root package name */
        public View f39145c;

        /* renamed from: d  reason: collision with root package name */
        public View f39146d;

        b1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f39148a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39149b;

        c(List list, int i2) {
            this.f39148a = list;
            this.f39149b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String[] strArr = new String[this.f39148a.size()];
            this.f39148a.toArray(strArr);
            com.join.mgps.Util.i0.G0(view.getContext(), this.f39149b, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39151a;

        c0(int i2) {
            this.f39151a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39106e.t() != this.f39151a || ForumBaseAdapter.this.f39106e.w() == 5) {
                ForumBaseAdapter.this.f39108g.a(this.f39151a);
            } else {
                ForumBaseAdapter.this.f39106e.s();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public FrameLayout f39153b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f39154c;

        c1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39156a;

        d(String str) {
            this.f39156a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.Q0(view.getContext(), this.f39156a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39158a;

        d0(int i2) {
            this.f39158a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39106e.t() != this.f39158a || ForumBaseAdapter.this.f39106e.w() == 5) {
                ForumBaseAdapter.this.f39108g.a(this.f39158a);
            } else {
                ForumBaseAdapter.this.f39106e.s();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39160b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39161c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39162d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39163e;

        /* renamed from: f  reason: collision with root package name */
        public View f39164f;

        /* renamed from: g  reason: collision with root package name */
        public View f39165g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f39166h;

        d1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z0 f39168a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39169b;

        e(z0 z0Var, int i2) {
            this.f39168a = z0Var;
            this.f39169b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f39168a.f39497i.startAnimation(AnimationUtils.loadAnimation(ForumBaseAdapter.this.f39104c, R.anim.scale_reset));
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.a(this.f39169b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f39171a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f39172b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f39173c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f39174d;

        e0(ForumBean.GameInfo gameInfo, DownloadTask downloadTask, String str, String str2) {
            this.f39171a = gameInfo;
            this.f39172b = downloadTask;
            this.f39173c = str;
            this.f39174d = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ((ConstantIntEnum.H5.value() + "").equals(this.f39171a.getPlugin_num())) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f39171a.getGame_down_url_remote());
                UtilsMy.h2(this.f39172b, ForumBaseAdapter.this.f39104c);
                IntentUtil.getInstance().intentActivity(ForumBaseAdapter.this.f39104c, intentDateBean);
                return;
            }
            Context context = view.getContext();
            com.papa.sim.statistic.p.l(context).p0(this.f39173c, this.f39174d, AccountUtil_.getInstance_(context).getUid());
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.e(this.f39174d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39176b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39177c;

        /* renamed from: d  reason: collision with root package name */
        public Button f39178d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39179e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39180f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f39181g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f39182h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f39183i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f39184j;

        /* renamed from: k  reason: collision with root package name */
        public ProgressBar f39185k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f39186l;

        /* renamed from: m  reason: collision with root package name */
        public View f39187m;

        /* renamed from: n  reason: collision with root package name */
        public View f39188n;

        /* renamed from: o  reason: collision with root package name */
        public View f39189o;

        e1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f39191a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39192b;

        f(IntentDateBean intentDateBean, int i2) {
            this.f39191a = intentDateBean;
            this.f39192b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            if (this.f39191a == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f39191a);
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(context);
            l4.r0("banner2-" + (this.f39192b + 1), AccountUtil_.getInstance_(context).getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39194a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f39195b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f39196c;

        f0(String str, String str2, ForumBean.GameInfo gameInfo) {
            this.f39194a = str;
            this.f39195b = str2;
            this.f39196c = gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            com.papa.sim.statistic.p.l(context).q0(this.f39194a, this.f39195b, AccountUtil_.getInstance_(context).getUid());
            com.join.mgps.Util.i0.J0(view.getContext(), this.f39196c, 13203);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39198b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39199c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39200d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39201e;

        /* renamed from: f  reason: collision with root package name */
        public View f39202f;

        /* renamed from: g  reason: collision with root package name */
        public RelativeLayout f39203g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f39204h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f39205i;

        /* renamed from: j  reason: collision with root package name */
        public VipView f39206j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f39207k;

        f1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f39209a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39210b;

        g(IntentDateBean intentDateBean, int i2) {
            this.f39209a = intentDateBean;
            this.f39210b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            if (this.f39209a == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f39209a);
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(context);
            l4.r0("banner1-" + (this.f39210b + 1), AccountUtil_.getInstance_(context).getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39212b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f39213c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f39214d;

        /* renamed from: e  reason: collision with root package name */
        public SimpleDraweeView f39215e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f39216f;

        /* renamed from: g  reason: collision with root package name */
        public RelativeLayout f39217g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f39218h;

        g0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39220b;

        /* renamed from: c  reason: collision with root package name */
        public RelativeLayout f39221c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f39222d;

        /* renamed from: e  reason: collision with root package name */
        public SimpleDraweeView f39223e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f39224f;

        g1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f39226a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39227b;

        h(IntentDateBean intentDateBean, int i2) {
            this.f39226a = intentDateBean;
            this.f39227b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            if (this.f39226a == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f39226a);
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(context);
            l4.r0("banner3-" + (this.f39227b + 1), AccountUtil_.getInstance_(context).getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final Object f39229a;

        public h0(Object obj) {
            this.f39229a = obj;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00cc  */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r15) {
            /*
                Method dump skipped, instructions count: 586
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.ForumBaseAdapter.h0.onClick(android.view.View):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public StaticLayoutView f39231b;

        h1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39233a;

        i(String str) {
            this.f39233a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.h(this.f39233a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39235b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39236c;

        /* renamed from: d  reason: collision with root package name */
        public Button f39237d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f39238e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f39239f;

        i0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public Button f39241b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39242c;

        /* renamed from: d  reason: collision with root package name */
        public View f39243d;

        /* renamed from: e  reason: collision with root package name */
        public View f39244e;

        i1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39246a;

        j(int i2) {
            this.f39246a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.d(this.f39246a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class j0 extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<ForumBean.ForumTopicBean> f39248a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ForumBean.ForumTopicBean f39250a;

            a(ForumBean.ForumTopicBean forumTopicBean) {
                this.f39250a = forumTopicBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.join.mgps.Util.i0.D0(view.getContext(), this.f39250a);
            }
        }

        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            public SimpleDraweeView f39252a;

            b() {
            }
        }

        public j0() {
        }

        private void c(ImageView imageView, ForumBean.ForumTopicBean forumTopicBean) {
            imageView.setOnClickListener(new a(forumTopicBean));
        }

        public List<ForumBean.ForumTopicBean> a() {
            return this.f39248a;
        }

        public void b(List<ForumBean.ForumTopicBean> list) {
            this.f39248a = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<ForumBean.ForumTopicBean> list = this.f39248a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<ForumBean.ForumTopicBean> list = this.f39248a;
            if (list == null) {
                return null;
            }
            return list.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            b bVar;
            try {
                if (view != null) {
                    bVar = (b) view.getTag();
                } else {
                    bVar = new b();
                    view = LayoutInflater.from(ForumBaseAdapter.this.f39104c).inflate(R.layout.mg_forum_welcome_item_forum_topic_item, (ViewGroup) null);
                    bVar.f39252a = (SimpleDraweeView) view.findViewById(R.id.itemImg);
                    view.setTag(bVar);
                }
                ForumBean.ForumTopicBean forumTopicBean = this.f39248a.get(i2);
                MyImageLoader.h(bVar.f39252a, forumTopicBean.getIcon_src());
                c(bVar.f39252a, forumTopicBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public Button f39254b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39255c;

        j1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n1.c f39257a;

        k(n1.c cVar) {
            this.f39257a = cVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39257a.f39306i).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39259b;

        /* renamed from: c  reason: collision with root package name */
        public HListView f39260c;

        k0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39262b;

        /* renamed from: c  reason: collision with root package name */
        public FrameLayout f39263c;

        k1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean f39265a;

        l(ForumBean forumBean) {
            this.f39265a = forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.f(this.f39265a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39267b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39268c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39269d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39270e;

        /* renamed from: f  reason: collision with root package name */
        public View f39271f;

        l0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public FlowLayout f39273b;

        l1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.n();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39276b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39277c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39278d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39279e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39280f;

        m0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m1 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39282b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f39283c;

        m1() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39285a;

        n(int i2) {
            this.f39285a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.g(this.f39285a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39287b;

        n0() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class n1 {

        /* renamed from: a  reason: collision with root package name */
        ViewType f39289a;

        /* renamed from: b  reason: collision with root package name */
        Object f39290b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public ForumBean.ForumWelcomeAdBean f39291a;

            public a() {
            }

            public a(ForumBean.ForumWelcomeAdBean forumWelcomeAdBean) {
                this.f39291a = forumWelcomeAdBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class a0 {

            /* renamed from: a  reason: collision with root package name */
            public int f39292a;

            /* renamed from: b  reason: collision with root package name */
            public String f39293b;

            /* renamed from: c  reason: collision with root package name */
            public List<RecommendLabelTag> f39294c;

            public a0() {
            }

            public a0(int i2, String str, List<RecommendLabelTag> list) {
                this.f39292a = i2;
                this.f39293b = str;
                this.f39294c = list;
            }

            public a0(List<RecommendLabelTag> list) {
                this.f39294c = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumTopicBean> f39295a;

            public b(List<ForumBean.ForumTopicBean> list) {
                this.f39295a = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class b0 {

            /* renamed from: a  reason: collision with root package name */
            public RecommendLabelTag f39296a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f39297b;

            public b0(RecommendLabelTag recommendLabelTag, boolean z3) {
                this.f39296a = recommendLabelTag;
                this.f39297b = z3;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public String f39298a;

            /* renamed from: b  reason: collision with root package name */
            public String f39299b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f39300c;

            /* renamed from: d  reason: collision with root package name */
            public int f39301d;

            /* renamed from: e  reason: collision with root package name */
            public String f39302e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f39303f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39304g;

            /* renamed from: h  reason: collision with root package name */
            public int f39305h;

            /* renamed from: i  reason: collision with root package name */
            public int f39306i;

            public c() {
            }

            public c(String str, String str2, boolean z3, int i2, String str3, boolean z4, boolean z5, int i4, int i5) {
                this.f39298a = str;
                this.f39299b = str2;
                this.f39300c = z3;
                this.f39301d = i2;
                this.f39302e = str3;
                this.f39303f = z4;
                this.f39304g = z5;
                this.f39305h = i4;
                this.f39306i = i5;
            }
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            public String f39307a;

            public d() {
            }

            public d(String str) {
                this.f39307a = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class e {
        }

        /* loaded from: classes3.dex */
        public static class f {
        }

        /* loaded from: classes3.dex */
        public static class g {

            /* renamed from: a  reason: collision with root package name */
            ForumBean f39308a;

            /* renamed from: b  reason: collision with root package name */
            ForumBean f39309b;

            public g() {
            }

            public g(ForumBean forumBean, ForumBean forumBean2) {
                this.f39308a = forumBean;
                this.f39309b = forumBean2;
            }

            public g(ForumBean forumBean) {
                this.f39308a = forumBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class h {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39310a;

            /* renamed from: b  reason: collision with root package name */
            public String f39311b;

            /* renamed from: c  reason: collision with root package name */
            public String f39312c;

            /* renamed from: d  reason: collision with root package name */
            public String f39313d;

            /* renamed from: e  reason: collision with root package name */
            public String f39314e;

            /* renamed from: f  reason: collision with root package name */
            public String f39315f;

            public h(boolean z3, String str, String str2, String str3, String str4, String str5) {
                this.f39310a = z3;
                this.f39311b = str;
                this.f39312c = str2;
                this.f39313d = str3;
                this.f39314e = str4;
                this.f39315f = str5;
            }
        }

        /* loaded from: classes3.dex */
        public static class i {

            /* renamed from: a  reason: collision with root package name */
            public ForumBean.ForumWelcomeAdBean f39316a;

            public i() {
            }

            public i(ForumBean.ForumWelcomeAdBean forumWelcomeAdBean) {
                this.f39316a = forumWelcomeAdBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class j {

            /* renamed from: a  reason: collision with root package name */
            int f39317a;

            public j() {
            }

            public j(int i2) {
                this.f39317a = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class k {

            /* renamed from: a  reason: collision with root package name */
            public String f39318a;

            public k() {
            }

            public k(String str) {
                this.f39318a = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class l {

            /* renamed from: a  reason: collision with root package name */
            ForumBean f39319a;

            /* renamed from: b  reason: collision with root package name */
            boolean f39320b;

            public l() {
            }

            public l(ForumBean forumBean, boolean z3) {
                this.f39319a = forumBean;
                this.f39320b = z3;
            }
        }

        /* loaded from: classes3.dex */
        public static class m {

            /* renamed from: a  reason: collision with root package name */
            public int f39321a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f39322b;

            /* renamed from: c  reason: collision with root package name */
            public String f39323c;

            /* renamed from: d  reason: collision with root package name */
            public String f39324d;

            /* renamed from: e  reason: collision with root package name */
            public int f39325e;

            /* renamed from: f  reason: collision with root package name */
            public int f39326f;

            /* renamed from: g  reason: collision with root package name */
            public int f39327g;

            /* renamed from: h  reason: collision with root package name */
            public int f39328h;

            /* renamed from: i  reason: collision with root package name */
            public int f39329i;

            /* renamed from: j  reason: collision with root package name */
            public boolean f39330j;

            /* renamed from: k  reason: collision with root package name */
            public String f39331k;

            public m() {
            }

            public m(String str, String str2, String str3, int i2, int i4, int i5, int i6, boolean z3, int i7) {
                this.f39331k = str;
                this.f39323c = str2;
                this.f39324d = str3;
                this.f39325e = i2;
                this.f39326f = i4;
                this.f39327g = i5;
                this.f39329i = i6;
                this.f39330j = z3;
                this.f39328h = i7;
            }

            public m(int i2, String str, String str2, String str3, int i4, int i5, int i6, int i7, boolean z3, int i8) {
                this.f39321a = i2;
                this.f39331k = str;
                this.f39323c = str2;
                this.f39324d = str3;
                this.f39325e = i4;
                this.f39326f = i5;
                this.f39327g = i6;
                this.f39329i = i7;
                this.f39330j = z3;
                this.f39328h = i8;
            }
        }

        /* loaded from: classes3.dex */
        public static class n {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f39332a;

            /* renamed from: b  reason: collision with root package name */
            public List<String> f39333b;

            /* renamed from: c  reason: collision with root package name */
            public int f39334c;

            public n(List<ForumBean.ForumPostsBean.ResBean> list, List<String> list2, int i2) {
                this.f39332a = list;
                this.f39333b = list2;
                this.f39334c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class o implements com.join.android.app.component.optimizetext.c {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39335a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f39336b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f39337c;

            /* renamed from: d  reason: collision with root package name */
            public String f39338d;

            /* renamed from: e  reason: collision with root package name */
            public int f39339e;

            /* renamed from: f  reason: collision with root package name */
            public int f39340f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39341g;

            /* renamed from: h  reason: collision with root package name */
            public String f39342h;

            /* renamed from: i  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39343i;

            /* renamed from: j  reason: collision with root package name */
            public boolean f39344j;

            /* renamed from: k  reason: collision with root package name */
            public SpannableStringBuilder f39345k;

            public o() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f39345k;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f39339e + "";
            }

            public o(boolean z3, boolean z4, boolean z5, String str, int i2, int i4, boolean z6, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, boolean z7, SpannableStringBuilder spannableStringBuilder) {
                this.f39335a = z3;
                this.f39336b = z4;
                this.f39337c = z5;
                this.f39338d = str;
                this.f39339e = i2;
                this.f39340f = i4;
                this.f39341g = z6;
                this.f39342h = str2;
                this.f39343i = list;
                this.f39344j = z7;
                this.f39345k = spannableStringBuilder;
            }
        }

        /* loaded from: classes3.dex */
        public static class p {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39346a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f39347b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f39348c;

            /* renamed from: d  reason: collision with root package name */
            public String f39349d;

            /* renamed from: e  reason: collision with root package name */
            public int f39350e;

            /* renamed from: f  reason: collision with root package name */
            public int f39351f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39352g;

            /* renamed from: h  reason: collision with root package name */
            public String f39353h;

            /* renamed from: i  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39354i;

            /* renamed from: j  reason: collision with root package name */
            public List<RecommendLabelTag> f39355j;

            /* renamed from: k  reason: collision with root package name */
            public String f39356k;

            /* renamed from: l  reason: collision with root package name */
            public int f39357l;

            public p() {
            }

            public p(boolean z3, boolean z4, boolean z5, String str, int i2, int i4, boolean z6, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, List<RecommendLabelTag> list2, String str3, int i5) {
                this.f39346a = z3;
                this.f39347b = z4;
                this.f39348c = z5;
                this.f39349d = str;
                this.f39350e = i2;
                this.f39351f = i4;
                this.f39352g = z6;
                this.f39353h = str2;
                this.f39354i = list;
                this.f39355j = list2;
                this.f39356k = str3;
                this.f39357l = i5;
            }
        }

        /* loaded from: classes3.dex */
        public static class q {

            /* renamed from: a  reason: collision with root package name */
            public String f39358a;

            /* renamed from: b  reason: collision with root package name */
            public String f39359b;

            /* renamed from: c  reason: collision with root package name */
            public String f39360c;

            public q(String str, String str2, String str3) {
                this.f39358a = str;
                this.f39359b = str2;
                this.f39360c = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class r {

            /* renamed from: a  reason: collision with root package name */
            public int f39361a;

            /* renamed from: b  reason: collision with root package name */
            public String f39362b;

            /* renamed from: c  reason: collision with root package name */
            public int f39363c;

            /* renamed from: d  reason: collision with root package name */
            public int f39364d;

            /* renamed from: e  reason: collision with root package name */
            public int f39365e;

            /* renamed from: f  reason: collision with root package name */
            public int f39366f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39367g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39368h;

            public r() {
            }

            public r(int i2, int i4, String str, int i5, int i6, int i7, boolean z3, boolean z4) {
                this.f39361a = i2;
                this.f39366f = i4;
                this.f39362b = str;
                this.f39363c = i5;
                this.f39364d = i6;
                this.f39365e = i7;
                this.f39367g = z3;
                this.f39368h = z4;
            }
        }

        /* loaded from: classes3.dex */
        public static class s {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39369a;

            /* renamed from: b  reason: collision with root package name */
            public String f39370b;

            /* renamed from: c  reason: collision with root package name */
            public ForumBean.GameInfo f39371c;

            /* renamed from: d  reason: collision with root package name */
            public String f39372d;

            public s(boolean z3, String str, ForumBean.GameInfo gameInfo, String str2) {
                this.f39369a = z3;
                this.f39370b = str;
                this.f39371c = gameInfo;
                this.f39372d = str2;
            }
        }

        /* loaded from: classes3.dex */
        public static class t {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39373a;

            /* renamed from: b  reason: collision with root package name */
            public String f39374b;

            /* renamed from: c  reason: collision with root package name */
            public String f39375c;

            /* renamed from: d  reason: collision with root package name */
            public long f39376d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39377e;

            /* renamed from: f  reason: collision with root package name */
            public int f39378f;

            /* renamed from: g  reason: collision with root package name */
            public int f39379g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39380h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f39381i;

            /* renamed from: j  reason: collision with root package name */
            public boolean f39382j;

            /* renamed from: k  reason: collision with root package name */
            public int f39383k;

            /* renamed from: l  reason: collision with root package name */
            public int f39384l;

            /* renamed from: m  reason: collision with root package name */
            public int f39385m;

            /* renamed from: n  reason: collision with root package name */
            public String f39386n;

            /* renamed from: o  reason: collision with root package name */
            public String f39387o;

            public t() {
            }

            public t(boolean z3, String str, String str2, long j4, boolean z4, int i2, int i4, boolean z5, boolean z6, boolean z7, int i5, int i6, String str3, String str4, int i7) {
                this.f39373a = z3;
                this.f39374b = str;
                this.f39375c = str2;
                this.f39376d = j4;
                this.f39377e = z4;
                this.f39378f = i2;
                this.f39379g = i4;
                this.f39385m = i7;
                this.f39380h = z5;
                this.f39381i = z6;
                this.f39382j = z7;
                this.f39383k = i5;
                this.f39384l = i6;
                this.f39387o = str3;
                this.f39386n = str4;
            }
        }

        /* loaded from: classes3.dex */
        public static class u {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f39388a;

            /* renamed from: b  reason: collision with root package name */
            public List<String> f39389b;

            /* renamed from: c  reason: collision with root package name */
            public int f39390c;

            public u(List<ForumBean.ForumPostsBean.ResBean> list, List<String> list2, int i2) {
                this.f39388a = list;
                this.f39389b = list2;
                this.f39390c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class v implements com.join.android.app.component.optimizetext.c {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39391a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f39392b;

            /* renamed from: c  reason: collision with root package name */
            public String f39393c;

            /* renamed from: d  reason: collision with root package name */
            public int f39394d;

            /* renamed from: e  reason: collision with root package name */
            public int f39395e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f39396f;

            /* renamed from: g  reason: collision with root package name */
            public String f39397g;

            /* renamed from: h  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39398h;

            /* renamed from: i  reason: collision with root package name */
            public SpannableStringBuilder f39399i;

            public v() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f39399i;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f39394d + "";
            }

            public v(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, boolean z5, SpannableStringBuilder spannableStringBuilder) {
                this.f39392b = z3;
                this.f39393c = str;
                this.f39394d = i2;
                this.f39395e = i4;
                this.f39396f = z4;
                this.f39397g = str2;
                this.f39398h = list;
                this.f39391a = z5;
                this.f39399i = spannableStringBuilder;
            }
        }

        /* loaded from: classes3.dex */
        public static class w {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39400a;

            /* renamed from: b  reason: collision with root package name */
            public String f39401b;

            /* renamed from: c  reason: collision with root package name */
            public int f39402c;

            /* renamed from: d  reason: collision with root package name */
            public int f39403d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39404e;

            /* renamed from: f  reason: collision with root package name */
            public String f39405f;

            /* renamed from: g  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39406g;

            public w() {
            }

            public w(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
                this.f39400a = z3;
                this.f39401b = str;
                this.f39402c = i2;
                this.f39403d = i4;
                this.f39404e = z4;
                this.f39405f = str2;
                this.f39406g = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class x {

            /* renamed from: a  reason: collision with root package name */
            public int f39407a;

            /* renamed from: b  reason: collision with root package name */
            public String f39408b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f39409c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f39410d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39411e;

            /* renamed from: f  reason: collision with root package name */
            private List<ForumBean.ForumPostsBean.TagInfo> f39412f;

            public x() {
            }

            public x(int i2, String str, boolean z3, boolean z4, boolean z5, List<ForumBean.ForumPostsBean.TagInfo> list) {
                this.f39407a = i2;
                this.f39408b = str;
                this.f39409c = z3;
                this.f39410d = z4;
                this.f39411e = z5;
                this.f39412f = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class y {

            /* renamed from: a  reason: collision with root package name */
            public String f39413a;

            /* renamed from: b  reason: collision with root package name */
            public String f39414b;

            /* renamed from: c  reason: collision with root package name */
            public String f39415c;

            public y(String str, String str2, String str3) {
                this.f39413a = str;
                this.f39414b = str2;
                this.f39415c = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class z {

            /* renamed from: a  reason: collision with root package name */
            public String f39416a;

            /* renamed from: b  reason: collision with root package name */
            public String f39417b;

            /* renamed from: c  reason: collision with root package name */
            public String f39418c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f39419d;

            /* renamed from: e  reason: collision with root package name */
            public int f39420e;

            /* renamed from: f  reason: collision with root package name */
            public int f39421f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39422g;

            public z(String str, String str2, String str3, boolean z3, int i2, int i4, boolean z4) {
                this.f39416a = str;
                this.f39417b = str2;
                this.f39418c = str3;
                this.f39419d = z3;
                this.f39420e = i2;
                this.f39421f = i4;
                this.f39422g = z4;
            }
        }

        public n1() {
        }

        public Object a() {
            return this.f39290b;
        }

        public ViewType b() {
            return this.f39289a;
        }

        public void c(Object obj) {
            this.f39290b = obj;
        }

        public void d(ViewType viewType) {
            this.f39289a = viewType;
        }

        public n1(ViewType viewType, Object obj) {
            this.f39289a = viewType;
            this.f39290b = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39423a;

        o(int i2) {
            this.f39423a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.findViewById(R.id.forum_post_praise_icon).startAnimation(AnimationUtils.loadAnimation(ForumBaseAdapter.this.f39104c, R.anim.scale_reset));
            if (ForumBaseAdapter.this.f39112k != null) {
                Context context = view.getContext();
                if (com.join.mgps.Util.i0.Y0(context)) {
                    ForumBaseAdapter.this.f39112k.a(this.f39423a);
                    return;
                }
                com.join.mgps.Util.i2.a(context).b("用户未登录，请登录");
                com.join.mgps.Util.i0.L0(context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public View f39425b;

        o0() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class o1 {
        o1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f39429b;

        p0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean f39431a;

        q(ForumBean forumBean) {
            this.f39431a = forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            if (com.join.mgps.Util.i0.Y0(context)) {
                if (ForumBaseAdapter.this.f39112k != null) {
                    ForumBaseAdapter.this.f39112k.b(this.f39431a);
                    return;
                }
                return;
            }
            com.join.mgps.Util.i0.L0(context);
            com.join.mgps.Util.i2.a(context).b(context.getString(R.string.forum_user_not_login));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public View f39433b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f39434c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39435d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39436e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39437f;

        /* renamed from: g  reason: collision with root package name */
        public Button f39438g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f39439h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f39440i;

        q0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean f39442a;

        r(ForumBean forumBean) {
            this.f39442a = forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            if (com.join.mgps.Util.i0.Y0(context)) {
                if (ForumBaseAdapter.this.f39112k != null) {
                    ForumBaseAdapter.this.f39112k.j(this.f39442a);
                    return;
                }
                return;
            }
            com.join.mgps.Util.i0.L0(context);
            com.join.mgps.Util.i2.a(context).b(context.getString(R.string.forum_user_not_login));
        }
    }

    /* loaded from: classes3.dex */
    public interface r0 {
        void a(int i2);

        void b(ForumBean forumBean);

        void c(int i2);

        void d(int i2);

        void e(String str);

        void f(ForumBean forumBean);

        void g(int i2);

        void h(String str);

        void i(RecommendLabelTag recommendLabelTag);

        void j(ForumBean forumBean);

        void k();

        void l();

        void m(int i2);

        void n();
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39444a;

        s(String str) {
            this.f39444a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int parseInt = Integer.parseInt(this.f39444a);
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.c(parseInt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s0 extends g0 {

        /* renamed from: j  reason: collision with root package name */
        public View f39446j;

        s0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39448a;

        t(int i2) {
            this.f39448a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.m(this.f39448a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class t0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39450b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f39451c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f39452d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39453e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39454f;

        /* renamed from: g  reason: collision with root package name */
        public View f39455g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f39456h;

        t0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f39458a;

        u(RecommendLabelTag recommendLabelTag) {
            this.f39458a = recommendLabelTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.i(this.f39458a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public View f39460b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39461c;

        u0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39463a;

        v(int i2) {
            this.f39463a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f39463a);
            com.join.mgps.Util.i0.v0(view.getContext(), forumPostsBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f39465b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39466c;

        v0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39468a;

        w(int i2) {
            this.f39468a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumGroupActivity(view.getContext(), this.f39468a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public View f39470b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f39471c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39472d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39473e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39474f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f39475g;

        /* renamed from: h  reason: collision with root package name */
        public Button f39476h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f39477i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f39478j;

        w0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f39480a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39481b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f39482c;

        x(RecommendLabelTag recommendLabelTag, int i2, String str) {
            this.f39480a = recommendLabelTag;
            this.f39481b = i2;
            this.f39482c = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f39480a.getTag_id() == -1) {
                IntentUtil intentUtil = IntentUtil.getInstance();
                Context context = view.getContext();
                String str = "";
                if (this.f39481b != 0) {
                    str = this.f39481b + "";
                }
                intentUtil.goLabelGroupActivity(context, str);
                return;
            }
            IntentUtil.getInstance().goMainLabelActivity(view.getContext(), this.f39480a.getTag_id(), this.f39481b, this.f39482c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public View f39484b;

        x0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39486a;

        y(int i2) {
            this.f39486a = i2;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            TextView textView = (TextView) view;
            Spannable newSpannable = Spannable.Factory.getInstance().newSpannable(textView.getText());
            int action = motionEvent.getAction();
            boolean z3 = false;
            if (action == 1 || action == 0) {
                int x3 = ((int) motionEvent.getX()) - textView.getTotalPaddingLeft();
                int y3 = ((int) motionEvent.getY()) - textView.getTotalPaddingTop();
                int scrollX = x3 + textView.getScrollX();
                int scrollY = y3 + textView.getScrollY();
                Layout layout = textView.getLayout();
                int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) newSpannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
                if (clickableSpanArr.length != 0) {
                    if (action == 1) {
                        clickableSpanArr[0].onClick(textView);
                    }
                    z3 = true;
                }
            }
            if (action == 1 && !z3 && ForumBaseAdapter.this.f39112k != null) {
                ForumBaseAdapter.this.f39112k.d(this.f39486a);
            }
            return z3;
        }
    }

    /* loaded from: classes3.dex */
    public static class y0 implements r0 {
        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void a(int i2) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void b(ForumBean forumBean) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void c(int i2) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void d(int i2) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void e(String str) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void f(ForumBean forumBean) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void g(int i2) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void h(String str) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void i(RecommendLabelTag recommendLabelTag) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void j(ForumBean forumBean) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void k() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void l() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void m(int i2) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.r0
        public void n() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n1.t f39488a;

        z(n1.t tVar) {
            this.f39488a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39488a.f39385m).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z0 extends o1 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39490b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39491c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39492d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39493e;

        /* renamed from: f  reason: collision with root package name */
        public View f39494f;

        /* renamed from: g  reason: collision with root package name */
        public View f39495g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f39496h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f39497i;

        /* renamed from: j  reason: collision with root package name */
        public SimpleDraweeView f39498j;

        z0() {
            super();
        }
    }

    public ForumBaseAdapter(Context context, com.join.android.app.component.video.c cVar) {
        this.f39104c = context;
        this.f39106e = cVar;
        this.f39102a = new com.join.android.app.component.optimizetext.b(context);
        this.f39103b = T(this.f39104c);
        g();
        Y();
    }

    private View A(int i2, View view, ViewGroup viewGroup) {
        w0 w0Var;
        n1.l lVar;
        if (view != null) {
            w0Var = (w0) view.getTag();
        } else {
            w0Var = new w0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_hot_forum_item, (ViewGroup) null);
            View findViewById = view.findViewById(R.id.mg_forum_item);
            w0Var.f39470b = findViewById;
            w0Var.f39471c = (SimpleDraweeView) findViewById.findViewById(R.id.forum_icon);
            w0Var.f39472d = (TextView) w0Var.f39470b.findViewById(R.id.forum_name);
            w0Var.f39478j = (TextView) w0Var.f39470b.findViewById(R.id.forum_desc);
            w0Var.f39476h = (Button) w0Var.f39470b.findViewById(R.id.forum_follow);
            w0Var.f39475g = (LinearLayout) w0Var.f39470b.findViewById(R.id.forum_follow_layout);
            w0Var.f39477i = (TextView) w0Var.f39470b.findViewById(R.id.forum_today_posts_tv);
            view.setTag(w0Var);
        }
        try {
            lVar = (n1.l) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (lVar == null) {
            return view;
        }
        ForumBean forumBean = lVar.f39319a;
        MyImageLoader.j(w0Var.f39471c, forumBean.getIcon_src(), MyImageLoader.A(this.f39104c));
        TextView textView = w0Var.f39472d;
        com.join.mgps.Util.i0.D1(textView, forumBean.getName() + "", "");
        com.join.mgps.Util.i0.D1(w0Var.f39478j, forumBean.getDescription(), "");
        B0(w0Var.f39470b, forumBean);
        Resources resources = w0Var.f39477i.getResources();
        TextView textView2 = w0Var.f39477i;
        com.join.mgps.Util.i0.D1(textView2, resources.getString(R.string.forum_info_today_posts, forumBean.getToday_posts() + ""), "今日 0");
        if (lVar.f39320b) {
            if (forumBean.is_follow()) {
                w0Var.f39475g.setVisibility(8);
            } else {
                w0Var.f39475g.setVisibility(0);
            }
        } else {
            w0Var.f39475g.setVisibility(8);
        }
        z0(w0Var.f39476h, lVar.f39319a);
        return view;
    }

    private View B(int i2, View view, ViewGroup viewGroup) {
        x0 x0Var;
        if (view != null) {
            x0Var = (x0) view.getTag();
        } else {
            x0Var = new x0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_my_forum_more_footer, (ViewGroup) null);
            x0Var.f39484b = view.findViewById(R.id.forums_hot_item_forum_all);
            view.setTag(x0Var);
        }
        try {
            if (x0Var.f39484b != null) {
                C0(view);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View C(int i2, View view, ViewGroup viewGroup) {
        n1.m mVar;
        z0 z0Var = null;
        if (view != null) {
            if (view.getTag() instanceof z0) {
                z0Var = (z0) view.getTag();
            }
        } else {
            z0 z0Var2 = new z0();
            View inflate = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_f_item_post_footer, (ViewGroup) null);
            z0Var2.f39498j = (SimpleDraweeView) inflate.findViewById(R.id.avatar);
            z0Var2.f39495g = inflate.findViewById(R.id.indicator);
            z0Var2.f39490b = (TextView) inflate.findViewById(R.id.groupName);
            z0Var2.f39491c = (TextView) inflate.findViewById(R.id.hostName);
            z0Var2.f39492d = (TextView) inflate.findViewById(R.id.likeCount);
            z0Var2.f39493e = (TextView) inflate.findViewById(R.id.commentCount);
            z0Var2.f39496h = (TextView) inflate.findViewById(R.id.forum_post_view);
            z0Var2.f39497i = (ImageView) inflate.findViewById(R.id.forum_post_praise_icon);
            z0Var2.f39494f = inflate.findViewById(R.id.divider);
            inflate.setTag(z0Var2);
            z0Var = z0Var2;
            view = inflate;
        }
        try {
            mVar = (n1.m) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (mVar != null && z0Var != null) {
            if (mVar.f39322b) {
                z0Var.f39494f.setVisibility(0);
            } else {
                z0Var.f39494f.setVisibility(8);
            }
            if (mVar.f39321a == 0) {
                if (z0Var.f39495g.getVisibility() != 0) {
                    z0Var.f39495g.setVisibility(0);
                }
            } else if (z0Var.f39495g.getVisibility() != 8) {
                z0Var.f39495g.setVisibility(8);
            }
            z0Var.f39490b.setText(mVar.f39323c);
            z0Var.f39491c.setText(mVar.f39324d);
            TextView textView = z0Var.f39492d;
            textView.setText(com.join.mgps.Util.i0.R(mVar.f39325e) + "");
            TextView textView2 = z0Var.f39493e;
            textView2.setText(com.join.mgps.Util.i0.R(mVar.f39326f) + "");
            TextView textView3 = z0Var.f39496h;
            textView3.setText(com.join.mgps.Util.i0.R(mVar.f39329i) + "");
            MyImageLoader.w(z0Var.f39498j, mVar.f39331k);
            z0Var.f39498j.setOnClickListener(new b0(mVar));
            E0(view, mVar.f39327g);
            e0(z0Var, mVar.f39330j, mVar.f39325e, mVar.f39327g);
            return view;
        }
        return view;
    }

    private View D(int i2, View view, ViewGroup viewGroup) {
        View view2;
        a1 a1Var;
        n1.n nVar;
        try {
            if (view != null) {
                a1Var = view.getTag() instanceof a1 ? (a1) view.getTag() : null;
                view2 = view;
            } else {
                a1 a1Var2 = new a1();
                View inflate = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_f_item_post_imgs, (ViewGroup) null);
                try {
                    a1Var2.f39132b = inflate.findViewById(R.id.spaceT);
                    a1Var2.f39133c = inflate.findViewById(R.id.imgsMain);
                    a1Var2.f39134d = (SimpleDraweeView) inflate.findViewById(R.id.img_m_1);
                    a1Var2.f39135e = (SimpleDraweeView) inflate.findViewById(R.id.img_m_2);
                    a1Var2.f39136f = (SimpleDraweeView) inflate.findViewById(R.id.img_m_3);
                    a1Var2.f39137g = (TextView) inflate.findViewById(R.id.images_count);
                    inflate.setTag(a1Var2);
                    a1Var = a1Var2;
                    view2 = inflate;
                } catch (Exception e4) {
                    e = e4;
                    view2 = inflate;
                    e.printStackTrace();
                    return view2;
                }
            }
        } catch (Exception e5) {
            e = e5;
            view2 = view;
        }
        try {
            nVar = (n1.n) getItem(i2);
        } catch (Exception e6) {
            e = e6;
            e.printStackTrace();
            return view2;
        }
        if (nVar != null && a1Var != null) {
            List<ForumBean.ForumPostsBean.ResBean> list = nVar.f39332a;
            if (list != null && list.size() != 0) {
                view2.setVisibility(0);
                List<String> list2 = nVar.f39333b;
                TextView textView = a1Var.f39137g;
                int size = list2 != null ? list2.size() : 0;
                if (size > 3) {
                    textView.setVisibility(0);
                    textView.setText("共" + list2.size() + "张");
                } else {
                    textView.setVisibility(8);
                }
                if (this.f39109h == null) {
                    this.f39109h = W();
                }
                int i4 = 1;
                SimpleDraweeView[] simpleDraweeViewArr = {a1Var.f39134d, a1Var.f39135e, a1Var.f39136f};
                int i5 = 0;
                int i6 = 0;
                while (i5 < 3) {
                    SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i5];
                    if (i5 >= nVar.f39332a.size()) {
                        simpleDraweeView.setVisibility(8);
                    } else {
                        simpleDraweeView.setVisibility(0);
                        ForumBean.ForumPostsBean.ResBean resBean = nVar.f39332a.get(i5);
                        if (resBean.getType().equals("pic")) {
                            String thumb = resBean.getThumb();
                            Integer[] i02 = com.join.mgps.Util.i0.i0(thumb);
                            if (i5 == 0 && size == i4 && i02 != null && i02[0].intValue() != 0 && i02[i4].intValue() != 0) {
                                r0(simpleDraweeView, i5, thumb, i5 - i6, list2);
                            } else {
                                s0(simpleDraweeView, i5, thumb, i5 - i6, list2);
                            }
                        } else if (resBean.getType().equals("video")) {
                            i6++;
                            R0(simpleDraweeView, i5, resBean.getThumb(), resBean.getRaw());
                        }
                    }
                    i5++;
                    i4 = 1;
                }
                E0(view2, nVar.f39334c);
                return view2;
            }
            view2.setVisibility(8);
        }
        return view2;
    }

    private void D0(View view, int i2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new w(i2));
    }

    private View E(int i2, View view, ViewGroup viewGroup) {
        n1.o oVar;
        b1 b1Var = null;
        try {
            if (view != null) {
                if (view.getTag() instanceof b1) {
                    b1Var = (b1) view.getTag();
                }
            } else {
                b1 b1Var2 = new b1();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_f_item_post_message, (ViewGroup) null);
                b1Var2.f39144b = (StaticLayoutView) view.findViewById(R.id.msg);
                b1Var2.f39145c = view.findViewById(R.id.divider);
                b1Var2.f39146d = view.findViewById(R.id.spaceT);
                view.setTag(b1Var2);
                b1Var = b1Var2;
            }
            oVar = (n1.o) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (oVar != null && b1Var != null) {
            com.join.android.app.component.optimizetext.b bVar = this.f39102a;
            if (bVar.d(oVar.f39339e + "") == null) {
                this.f39102a.e(oVar);
            }
            StaticLayoutView staticLayoutView = b1Var.f39144b;
            com.join.android.app.component.optimizetext.b bVar2 = this.f39102a;
            staticLayoutView.setLayout(bVar2.d(oVar.f39339e + ""));
            com.join.mgps.Util.i0.X0(b1Var.f39144b);
            if (oVar.f39335a) {
                b1Var.f39145c.setVisibility(0);
                b1Var.f39146d.setVisibility(0);
            } else {
                b1Var.f39145c.setVisibility(8);
                b1Var.f39146d.setVisibility(8);
            }
            E0(view, oVar.f39339e);
            return view;
        }
        return view;
    }

    private View F(int i2, View view, ViewGroup viewGroup) {
        n1.q qVar;
        c1 c1Var = null;
        try {
            if (view != null) {
                if (view.getTag() instanceof c1) {
                    c1Var = (c1) view.getTag();
                }
            } else {
                c1 c1Var2 = new c1();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_f_item_post_video, (ViewGroup) null);
                c1Var2.f39153b = (FrameLayout) view.findViewById(R.id.videoContner);
                c1Var2.f39154c = (SimpleDraweeView) view.findViewById(R.id.bannerView);
                view.setTag(c1Var2);
                c1Var = c1Var2;
            }
            qVar = (n1.q) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (qVar != null && c1Var != null) {
            String str = qVar.f39359b;
            String str2 = qVar.f39358a;
            if (c1Var.f39153b != null) {
                c1Var.f39153b.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f39118q));
                MyImageLoader.d(c1Var.f39154c, R.drawable.video_bg, str2);
                int i4 = i2 + 1;
                if (!this.f39106e.u().startsWith("ForumGroupPostsFragment") && !this.f39106e.u().startsWith("ForumGroupMemberActivity") && !this.f39106e.u().startsWith("LabelFragment") && !this.f39106e.u().startsWith("ForumPostsFragment")) {
                    i2 = i4;
                }
                c1Var.f39154c.setTag(Integer.valueOf(i2));
                if (com.join.mgps.Util.d2.i(str)) {
                    this.f39106e.d(i2, new c.k(i2, str, str2), new boolean[0]);
                }
                c1Var.f39154c.setOnClickListener(new d0(i2));
            }
            return view;
        }
        return view;
    }

    private void H0(View view, RecommendLabelTag recommendLabelTag) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new u(recommendLabelTag));
    }

    private View I(int i2, View view, ViewGroup viewGroup) {
        d1 d1Var;
        n1.r rVar;
        if (view != null) {
            d1Var = (d1) view.getTag();
        } else {
            d1Var = new d1();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_post_footer, (ViewGroup) null);
            d1Var.f39160b = (TextView) view.findViewById(R.id.forum_name);
            d1Var.f39161c = (TextView) view.findViewById(R.id.forum_post_view);
            d1Var.f39162d = (TextView) view.findViewById(R.id.forum_post_commit);
            d1Var.f39163e = (TextView) view.findViewById(R.id.forum_post_praise);
            d1Var.f39166h = (ImageView) view.findViewById(R.id.forum_post_praise_icon);
            d1Var.f39164f = view.findViewById(R.id.post_footer_divider);
            d1Var.f39165g = view.findViewById(R.id.forum_name_parent);
            view.setTag(d1Var);
        }
        try {
            rVar = (n1.r) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (rVar == null) {
            return view;
        }
        if (rVar.f39368h) {
            d1Var.f39164f.setVisibility(0);
        } else {
            d1Var.f39164f.setVisibility(8);
        }
        d1Var.f39160b.setText(rVar.f39362b);
        if (com.join.mgps.Util.d2.h(rVar.f39362b)) {
            d1Var.f39165g.setVisibility(8);
        } else {
            d1Var.f39165g.setVisibility(0);
        }
        TextView textView = d1Var.f39161c;
        com.join.mgps.Util.i0.D1(textView, rVar.f39363c + "", "0");
        TextView textView2 = d1Var.f39162d;
        com.join.mgps.Util.i0.D1(textView2, rVar.f39364d + "", "0");
        f0(d1Var, rVar.f39367g, rVar.f39365e);
        int i4 = rVar.f39361a;
        ((View) d1Var.f39163e.getParent()).setOnClickListener(new a0(i4));
        E0(view, i4);
        int i5 = rVar.f39366f;
        ForumBean forumBean = new ForumBean();
        forumBean.setFid(i5);
        B0((View) d1Var.f39160b.getParent(), forumBean);
        G0((View) d1Var.f39163e.getParent(), i4, rVar.f39367g, rVar.f39365e);
        return view;
    }

    private View J(int i2, View view, ViewGroup viewGroup) {
        final n1.s sVar;
        e1 e1Var = null;
        try {
            if (view != null) {
                if (view.getTag() instanceof e1) {
                    e1Var = (e1) view.getTag();
                }
            } else {
                e1 e1Var2 = new e1();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_post_activity_item_post_game_res_link, (ViewGroup) null);
                e1Var2.f39176b = (SimpleDraweeView) view.findViewById(R.id.mgListviewItemIcon);
                e1Var2.f39177c = (TextView) view.findViewById(R.id.mgListviewItemAppname);
                e1Var2.f39178d = (Button) view.findViewById(R.id.mgListviewItemInstall);
                e1Var2.f39179e = (TextView) view.findViewById(R.id.mgListviewItemSize);
                e1Var2.f39180f = (TextView) view.findViewById(R.id.mgListviewItemDescribe);
                e1Var2.f39181g = (LinearLayout) view.findViewById(R.id.linearLayout2);
                e1Var2.f39182h = (LinearLayout) view.findViewById(R.id.tipsLayout);
                e1Var2.f39183i = (TextView) view.findViewById(R.id.appSize);
                e1Var2.f39184j = (TextView) view.findViewById(R.id.loding_info);
                e1Var2.f39185k = (ProgressBar) view.findViewById(R.id.progressBar);
                e1Var2.f39186l = (ProgressBar) view.findViewById(R.id.progressBarZip);
                e1Var2.f39187m = view.findViewById(R.id.line);
                e1Var2.f39188n = view.findViewById(R.id.relateLayoutApp);
                e1Var2.f39189o = view.findViewById(R.id.divider);
                view.setTag(e1Var2);
                e1Var = e1Var2;
            }
            sVar = (n1.s) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (sVar != null && e1Var != null) {
            ForumBean.GameInfo gameInfo = sVar.f39371c;
            gameInfo.getGame_id();
            if (sVar.f39369a) {
                if (e1Var.f39189o.getVisibility() != 0) {
                    e1Var.f39189o.setVisibility(0);
                }
            } else if (e1Var.f39189o.getVisibility() != 8) {
                e1Var.f39189o.setVisibility(8);
            }
            e1Var.f39178d.setBackgroundResource(R.drawable.detial_fourm_butn_selector1);
            int dimensionPixelSize = this.f39104c.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) e1Var.f39178d.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            e1Var.f39178d.setLayoutParams(layoutParams);
            e1Var.f39178d.setText("打开");
            e1Var.f39177c.setText(gameInfo.getGame_name());
            MyImageLoader.j(e1Var.f39176b, gameInfo.getGame_ico_remote(), MyImageLoader.z(this.f39104c));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ForumBaseAdapter.this.c0(sVar, view2);
                }
            };
            e1Var.f39178d.setOnClickListener(onClickListener);
            e1Var.f39188n.setOnClickListener(onClickListener);
            return view;
        }
        return view;
    }

    private View K(int i2, View view, ViewGroup viewGroup) {
        View view2;
        e1 e1Var;
        n1.s sVar;
        try {
            if (view != null) {
                e1Var = view.getTag() instanceof e1 ? (e1) view.getTag() : null;
                view2 = view;
            } else {
                e1 e1Var2 = new e1();
                View inflate = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_post_activity_item_post_game, (ViewGroup) null);
                try {
                    e1Var2.f39176b = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
                    e1Var2.f39177c = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
                    e1Var2.f39178d = (Button) inflate.findViewById(R.id.mgListviewItemInstall);
                    e1Var2.f39179e = (TextView) inflate.findViewById(R.id.mgListviewItemSize);
                    e1Var2.f39180f = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
                    e1Var2.f39181g = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
                    e1Var2.f39182h = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
                    e1Var2.f39183i = (TextView) inflate.findViewById(R.id.appSize);
                    e1Var2.f39184j = (TextView) inflate.findViewById(R.id.loding_info);
                    e1Var2.f39185k = (ProgressBar) inflate.findViewById(R.id.progressBar);
                    e1Var2.f39186l = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
                    e1Var2.f39187m = inflate.findViewById(R.id.line);
                    e1Var2.f39188n = inflate.findViewById(R.id.relateLayoutApp);
                    e1Var2.f39189o = inflate.findViewById(R.id.divider);
                    inflate.setTag(e1Var2);
                    e1Var = e1Var2;
                    view2 = inflate;
                } catch (Exception e4) {
                    e = e4;
                    view2 = inflate;
                    e.printStackTrace();
                    return view2;
                }
            }
            try {
                sVar = (n1.s) getItem(i2);
            } catch (Exception e5) {
                e = e5;
                e.printStackTrace();
                return view2;
            }
        } catch (Exception e6) {
            e = e6;
            view2 = view;
        }
        if (sVar != null && e1Var != null) {
            ForumBean.GameInfo gameInfo = sVar.f39371c;
            String str = sVar.f39370b;
            String game_id = gameInfo.getGame_id();
            if (sVar.f39369a) {
                if (e1Var.f39189o.getVisibility() != 0) {
                    e1Var.f39189o.setVisibility(0);
                }
            } else if (e1Var.f39189o.getVisibility() != 8) {
                e1Var.f39189o.setVisibility(8);
            }
            e1Var.f39178d.setBackgroundResource(R.drawable.detial_fourm_butn_selector1);
            int dimensionPixelSize = this.f39104c.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) e1Var.f39178d.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            e1Var.f39178d.setLayoutParams(layoutParams);
            e1Var.f39177c.setText(gameInfo.getGame_name());
            e1Var.f39180f.setText(gameInfo.getGame_desc());
            String game_size = gameInfo.getGame_size();
            MyImageLoader.j(e1Var.f39176b, gameInfo.getGame_ico_remote(), MyImageLoader.z(this.f39104c));
            List<ForumBean.GameInfo.GameTagInfo> game_tag_info = gameInfo.getGame_tag_info();
            S0(e1Var, 0);
            DownloadTask downloadTask = gameInfo.getDownloadTask();
            if (downloadTask != null) {
                if (gameInfo.getPay_tag_info() != null) {
                    downloadTask.setPay_game_amount(gameInfo.getPay_tag_info().getPay_game_amount());
                }
                o0(e1Var, downloadTask);
            } else {
                if (UtilsMy.m0(gameInfo.getPay_tag_info(), gameInfo.getGame_id()) > 0) {
                    n0(e1Var.f39178d, gameInfo.getPay_tag_info().getPay_game_amount());
                } else {
                    m0(e1Var.f39178d, gameInfo.getDown_status());
                }
                e1Var.f39178d.setOnClickListener(new e0(gameInfo, downloadTask, str, game_id));
            }
            if ((ConstantIntEnum.H5.value() + "").equals(gameInfo.getPlugin_num())) {
                e1Var.f39182h.setVisibility(8);
                e1Var.f39178d.setBackgroundResource(R.drawable.recom_blue_butn);
                e1Var.f39178d.setText("开始");
                e1Var.f39178d.setTextColor(this.f39104c.getResources().getColor(R.color.app_blue_color));
            } else {
                e1Var.f39182h.setVisibility(0);
                com.join.mgps.Util.i0.c(game_tag_info, e1Var.f39182h, this.f39104c);
                UtilsMy.C(gameInfo.getScore(), gameInfo.getDown_count(), game_size, gameInfo.getSp_tag_info(), null, e1Var.f39182h, this.f39104c);
                UtilsMy.v2(gameInfo.getSp_tag_info(), view2, gameInfo.getDownloadTask());
            }
            e1Var.f39188n.setOnClickListener(new f0(str, game_id, gameInfo));
            return view2;
        }
        return view2;
    }

    private View L(int i2, View view, ViewGroup viewGroup) {
        f1 f1Var;
        n1.t tVar;
        if (view != null) {
            f1Var = (f1) view.getTag();
        } else {
            f1Var = new f1();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_post_header, (ViewGroup) null);
            f1Var.f39202f = view.findViewById(R.id.forum_post_divider);
            f1Var.f39198b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            f1Var.f39199c = (TextView) view.findViewById(R.id.forum_post_nickname);
            f1Var.f39200d = (TextView) view.findViewById(R.id.forum_post_add_time);
            f1Var.f39201e = (TextView) view.findViewById(R.id.forum_post_stickie);
            f1Var.f39203g = (RelativeLayout) view.findViewById(R.id.forumExtFunc);
            f1Var.f39204h = (ImageView) view.findViewById(R.id.forum_post_moderator);
            f1Var.f39205i = (ImageView) view.findViewById(R.id.officialIcon);
            f1Var.f39206j = (VipView) view.findViewById(R.id.vipFlag);
            f1Var.f39207k = (TextView) view.findViewById(R.id.copperTitleTv);
            view.setTag(f1Var);
        }
        try {
            tVar = (n1.t) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (tVar == null) {
            return view;
        }
        try {
            UtilsMy.M2(this.f39104c, f1Var.f39199c, tVar.f39383k, tVar.f39384l, R.color.forum_nickname_color);
            f1Var.f39206j.setVipData(tVar.f39383k, tVar.f39384l);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (tVar.f39373a) {
            f1Var.f39202f.setVisibility(8);
        } else {
            f1Var.f39202f.setVisibility(0);
        }
        f1Var.f39199c.setText(tVar.f39375c);
        f1Var.f39200d.setText(com.join.android.app.common.utils.c.a(tVar.f39376d * 1000));
        if (tVar.f39377e) {
            f1Var.f39201e.setVisibility(0);
        } else {
            f1Var.f39201e.setVisibility(8);
        }
        if (tVar.f39381i) {
            f1Var.f39204h.setVisibility(0);
        } else {
            f1Var.f39204h.setVisibility(8);
        }
        if (tVar.f39382j) {
            f1Var.f39205i.setVisibility(0);
        } else {
            f1Var.f39205i.setVisibility(8);
        }
        MyImageLoader.w(f1Var.f39198b, tVar.f39374b);
        f1Var.f39198b.setOnClickListener(new z(tVar));
        int i4 = tVar.f39378f;
        E0(view, i4);
        x0(f1Var.f39203g, i4);
        com.join.mgps.Util.i0.S0(f1Var.f39198b, f1Var.f39199c, f1Var.f39200d);
        com.join.mgps.Util.i0.U0(f1Var.f39206j);
        String str = tVar.f39387o;
        String str2 = tVar.f39386n;
        if (f1Var.f39207k != null) {
            if (!TextUtils.isEmpty(str)) {
                f1Var.f39207k.setVisibility(0);
                f1Var.f39207k.setText(str);
                Drawable drawable = this.f39104c.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                f1Var.f39207k.setBackgroundDrawable(drawable);
            } else {
                f1Var.f39207k.setVisibility(8);
            }
        }
        return view;
    }

    private View M(int i2, View view, ViewGroup viewGroup) {
        g1 g1Var;
        n1.u uVar;
        if (view != null) {
            g1Var = (g1) view.getTag();
        } else {
            g1Var = new g1();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_post_thumbnail, (ViewGroup) null);
            g1Var.f39221c = (RelativeLayout) view.findViewById(R.id.forum_post_media_container);
            g1Var.f39220b = (TextView) view.findViewById(R.id.images_count);
            g1Var.f39222d = (SimpleDraweeView) view.findViewById(R.id.img_m_1);
            g1Var.f39223e = (SimpleDraweeView) view.findViewById(R.id.img_m_2);
            g1Var.f39224f = (SimpleDraweeView) view.findViewById(R.id.img_m_3);
            view.setTag(g1Var);
        }
        try {
            uVar = (n1.u) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (uVar == null) {
            return view;
        }
        h0(g1Var, uVar);
        E0(view, uVar.f39390c);
        return view;
    }

    private View N(int i2, View view, ViewGroup viewGroup) {
        h1 h1Var;
        n1.v vVar;
        if (view != null) {
            h1Var = (h1) view.getTag();
        } else {
            h1Var = new h1();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_post_activity_item_post_message1, (ViewGroup) null);
            h1Var.f39231b = (StaticLayoutView) view.findViewById(R.id.forum_post_message);
            view.setTag(h1Var);
        }
        try {
            vVar = (n1.v) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (vVar == null) {
            return view;
        }
        com.join.android.app.component.optimizetext.b bVar = this.f39102a;
        if (bVar.d(vVar.f39394d + "") == null) {
            this.f39102a.e(vVar);
        }
        StaticLayoutView staticLayoutView = h1Var.f39231b;
        com.join.android.app.component.optimizetext.b bVar2 = this.f39102a;
        staticLayoutView.setLayout(bVar2.d(vVar.f39394d + ""));
        com.join.mgps.Util.i0.X0(h1Var.f39231b);
        E0(view, vVar.f39394d);
        return view;
    }

    private void N0(View view, CharSequence charSequence) {
        if (view == null) {
            return;
        }
        if (view instanceof TextView) {
            ((TextView) view).setText(charSequence);
        } else if (view instanceof Button) {
            ((Button) view).setText(charSequence);
        }
    }

    private View O(int i2, View view, ViewGroup viewGroup) {
        View view2;
        i1 i1Var;
        n1.p pVar;
        try {
            if (view != null) {
                view2 = view;
                i1Var = view.getTag() instanceof i1 ? (i1) view.getTag() : null;
            } else {
                i1 i1Var2 = new i1();
                View inflate = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_f_item_post_subject, (ViewGroup) null);
                try {
                    i1Var2.f39241b = (Button) inflate.findViewById(R.id.best);
                    i1Var2.f39242c = (TextView) inflate.findViewById(R.id.subject);
                    i1Var2.f39244e = inflate.findViewById(R.id.subjectMain);
                    i1Var2.f39243d = inflate.findViewById(R.id.forum_post_divider);
                    inflate.setTag(i1Var2);
                    view2 = inflate;
                    i1Var = i1Var2;
                } catch (Exception e4) {
                    e = e4;
                    view2 = inflate;
                    e.printStackTrace();
                    return view2;
                }
            }
        } catch (Exception e5) {
            e = e5;
            view2 = view;
        }
        try {
            pVar = (n1.p) getItem(i2);
        } catch (Exception e6) {
            e = e6;
            e.printStackTrace();
            return view2;
        }
        if (pVar != null && i1Var != null) {
            if (pVar.f39346a) {
                i1Var.f39243d.setVisibility(0);
            } else {
                i1Var.f39243d.setVisibility(8);
            }
            i1Var.f39242c.setMovementMethod(LinkMovementMethod.getInstance());
            ArrayList arrayList = new ArrayList();
            if (pVar.f39347b) {
                ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
                tagInfo.setName("精");
                tagInfo.setColor("#00FFFFFF");
                tagInfo.setFont_color("#FF8378FF");
                tagInfo.setBorder_color("#FF8378FF");
                arrayList.add(0, tagInfo);
            }
            if (pVar.f39348c) {
                ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
                tagInfo2.setName("顶");
                tagInfo2.setColor("#00FFFFFF");
                tagInfo2.setFont_color("#FFFF6464");
                tagInfo2.setBorder_color("#FFFF6464");
                arrayList.add(0, tagInfo2);
            }
            List<ForumBean.ForumPostsBean.TagInfo> list = pVar.f39354i;
            if (list != null) {
                arrayList.addAll(list);
            }
            l0(i1Var.f39242c, pVar.f39349d, pVar.f39347b, pVar.f39352g, pVar.f39353h, arrayList, pVar.f39355j, pVar.f39351f, pVar.f39356k, pVar.f39357l);
            int i4 = pVar.f39350e;
            Z(i1Var.f39242c, i4);
            E0(view2, i4);
            return view2;
        }
        return view2;
    }

    private void O0(View view, int i2) {
        if (view == null) {
            return;
        }
        if (view instanceof TextView) {
            ((TextView) view).setTextColor(i2);
        } else if (view instanceof Button) {
            ((Button) view).setTextColor(i2);
        }
    }

    private View P(int i2, View view, ViewGroup viewGroup) {
        j1 j1Var;
        n1.w wVar;
        if (view != null) {
            j1Var = (j1) view.getTag();
        } else {
            j1Var = new j1();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            j1Var.f39254b = (Button) view.findViewById(R.id.forum_post_best);
            j1Var.f39255c = (TextView) view.findViewById(R.id.forum_post_subject);
            view.setTag(j1Var);
        }
        try {
            wVar = (n1.w) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (wVar == null) {
            return view;
        }
        k0(j1Var.f39255c, wVar.f39401b, wVar.f39400a, wVar.f39404e, wVar.f39405f, wVar.f39406g);
        E0(view, wVar.f39402c);
        return view;
    }

    private void P0(SimpleDraweeView simpleDraweeView, BannerBean bannerBean, int i2) {
        if (bannerBean == null || simpleDraweeView == null) {
            return;
        }
        MyImageLoader.j(simpleDraweeView, bannerBean.getPic_remote(), MyImageLoader.y(simpleDraweeView.getContext()));
        if (this.f39111j == null) {
            float f4 = this.f39104c.getResources().getDisplayMetrics().density;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) simpleDraweeView.getLayoutParams();
            int i4 = ((int) (this.f39104c.getResources().getDisplayMetrics().widthPixels - (f4 * 18.0f))) / 2;
            layoutParams.width = i4;
            layoutParams.height = (int) ((i4 * 1.0f) / 2.07f);
            this.f39111j = layoutParams;
        }
        simpleDraweeView.setLayoutParams(this.f39111j);
        IntentDateBean j02 = com.join.mgps.Util.i0.j0(bannerBean);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("forum");
        extBean.setPosition("banner" + (i2 + 1));
        j02.setExtBean(extBean);
        simpleDraweeView.setOnClickListener(new g(j02, i2));
    }

    private View Q(int i2, View view, ViewGroup viewGroup) {
        i0 i0Var;
        n1.x xVar;
        try {
            if (view != null) {
                i0Var = (i0) view.getTag();
            } else {
                i0Var = new i0();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_forum_activity_top_item, (ViewGroup) null);
                i0Var.f39235b = (TextView) view.findViewById(R.id.forum_post_subject);
                i0Var.f39236c = (TextView) view.findViewById(R.id.forum_post_stickie);
                i0Var.f39237d = (Button) view.findViewById(R.id.forum_post_best);
                i0Var.f39238e = (ImageView) view.findViewById(R.id.forum_post_pic);
                i0Var.f39239f = (ImageView) view.findViewById(R.id.forum_post_video);
                view.setTag(i0Var);
            }
            xVar = (n1.x) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (xVar == null) {
            return view;
        }
        if (com.join.mgps.Util.d2.h(xVar.f39408b)) {
            i0Var.f39235b.setVisibility(8);
        } else {
            i0Var.f39235b.setVisibility(0);
            i0Var.f39235b.setText(xVar.f39408b);
        }
        try {
            if (i0Var.f39236c != null && xVar.f39412f != null && xVar.f39412f.size() != 0) {
                i0Var.f39236c.getResources();
                DisplayMetrics displayMetrics = i0Var.f39236c.getResources().getDisplayMetrics();
                ForumBean.ForumPostsBean.TagInfo tagInfo = (ForumBean.ForumPostsBean.TagInfo) xVar.f39412f.get(0);
                if (com.join.mgps.Util.d2.i(tagInfo.getId()) && tagInfo.getId().equals("1")) {
                    i0Var.f39236c.setText(tagInfo.getName());
                    i0Var.f39236c.setTextColor(Color.parseColor(tagInfo.getFont_color()));
                    Drawable c4 = com.join.mgps.customview.k0.c(new ColorDrawable(Color.parseColor(tagInfo.getColor())));
                    if (c4 != null && (c4 instanceof com.join.mgps.customview.k0)) {
                        ((com.join.mgps.customview.k0) c4).l(Color.parseColor(tagInfo.getBorder_color()));
                        ((com.join.mgps.customview.k0) c4).n(TypedValue.applyDimension(1, 1.0f, displayMetrics));
                        ((com.join.mgps.customview.k0) c4).o(1.2f);
                        ((com.join.mgps.customview.k0) c4).q(ImageView.ScaleType.FIT_XY);
                    }
                    if (Build.VERSION.SDK_INT > 15) {
                        i0Var.f39236c.setBackground(c4);
                    } else {
                        i0Var.f39236c.setBackgroundDrawable(c4);
                    }
                } else {
                    i0Var.f39236c.setBackgroundResource(R.drawable.top_tips);
                }
            } else {
                i0Var.f39236c.setBackgroundResource(R.drawable.top_tips);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (xVar.f39409c) {
            i0Var.f39237d.setVisibility(0);
        } else {
            i0Var.f39237d.setVisibility(8);
        }
        i0Var.f39238e.setVisibility(8);
        i0Var.f39239f.setVisibility(8);
        view.setOnClickListener(new v(xVar.f39407a));
        return view;
    }

    private int R(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f39110i == 0) {
            Resources resources = context.getResources();
            this.f39110i = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f39110i;
    }

    private View S(int i2, View view, ViewGroup viewGroup) {
        k1 k1Var;
        n1.y yVar;
        if (view != null) {
            k1Var = (k1) view.getTag();
        } else {
            k1Var = new k1();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_post_activity_item_post_video1, (ViewGroup) null);
            k1Var.f39263c = (FrameLayout) view.findViewById(R.id.videoContner);
            k1Var.f39262b = (SimpleDraweeView) view.findViewById(R.id.bannerView);
            view.setTag(k1Var);
        }
        try {
            yVar = (n1.y) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (yVar == null) {
            return view;
        }
        int R = R(this.f39104c);
        String str = yVar.f39414b;
        String str2 = yVar.f39413a;
        if (k1Var.f39263c != null) {
            k1Var.f39263c.setLayoutParams(new RelativeLayout.LayoutParams(-1, R));
            MyImageLoader.d(k1Var.f39262b, R.drawable.video_bg, str2);
            int i4 = i2 + 1;
            k1Var.f39262b.setTag(Integer.valueOf(i4));
            if (com.join.mgps.Util.d2.i(str)) {
                this.f39106e.d(i4, new c.k(i4, str, str2), new boolean[0]);
            }
            k1Var.f39262b.setOnClickListener(new c0(i4));
        }
        return view;
    }

    private void S0(e1 e1Var, int i2) {
        if (i2 == 0) {
            e1Var.f39181g.setVisibility(8);
            e1Var.f39185k.setVisibility(8);
            e1Var.f39186l.setVisibility(8);
            e1Var.f39182h.setVisibility(0);
            e1Var.f39180f.setVisibility(0);
            return;
        }
        e1Var.f39181g.setVisibility(0);
        if (i2 == 17) {
            e1Var.f39185k.setVisibility(8);
            e1Var.f39186l.setVisibility(0);
        } else {
            e1Var.f39186l.setVisibility(8);
            e1Var.f39185k.setVisibility(0);
        }
        e1Var.f39182h.setVisibility(8);
        e1Var.f39180f.setVisibility(8);
    }

    private View U(int i2, View view, ViewGroup viewGroup) {
        l1 l1Var;
        n1.a0 a0Var;
        List<RecommendLabelTag> list;
        try {
            if (view != null) {
                l1Var = (l1) view.getTag();
            } else {
                l1Var = new l1();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_flow_layout_container, (ViewGroup) null);
                l1Var.f39273b = (FlowLayout) view.findViewById(R.id.flowLayout);
                view.setTag(l1Var);
            }
            a0Var = (n1.a0) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (a0Var != null && (list = a0Var.f39294c) != null && list.size() >= 1) {
            l1Var.f39273b.removeAllViews();
            int i4 = 0;
            while (i4 < a0Var.f39294c.size()) {
                View d02 = d0(a0Var.f39294c.get(i4), i4 == 0, a0Var.f39292a, a0Var.f39293b);
                if (d02 != null) {
                    l1Var.f39273b.addView(d02);
                }
                i4++;
            }
            return view;
        }
        return view;
    }

    private View V(int i2, View view, ViewGroup viewGroup) {
        m1 m1Var;
        n1.b0 b0Var;
        try {
            if (view != null) {
                m1Var = (m1) view.getTag();
            } else {
                m1Var = new m1();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_tag_item, (ViewGroup) null);
                m1Var.f39282b = (TextView) view.findViewById(R.id.name);
                m1Var.f39283c = (ImageView) view.findViewById(R.id.dot);
                view.setTag(m1Var);
            }
            b0Var = (n1.b0) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (b0Var == null) {
            return view;
        }
        RecommendLabelTag recommendLabelTag = b0Var.f39296a;
        if (recommendLabelTag != null && !TextUtils.isEmpty(recommendLabelTag.getTag_name())) {
            TextView textView = m1Var.f39282b;
            textView.setText("#" + b0Var.f39296a.getTag_name() + "#");
        } else {
            m1Var.f39282b.setText("");
        }
        if (b0Var.f39297b) {
            m1Var.f39283c.setVisibility(0);
        } else {
            m1Var.f39283c.setVisibility(8);
        }
        H0(view, b0Var.f39296a);
        return view;
    }

    private View X(int i2, View view, ViewGroup viewGroup) {
        g0 g0Var;
        n1.a aVar;
        if (view != null) {
            g0Var = (g0) view.getTag();
        } else {
            g0Var = new g0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_ad_block, (ViewGroup) null);
            g0Var.f39212b = (TextView) view.findViewById(R.id.forum_ad_title);
            g0Var.f39213c = (SimpleDraweeView) view.findViewById(R.id.layout_forum_ad_1);
            g0Var.f39214d = (SimpleDraweeView) view.findViewById(R.id.layout_forum_ad_2);
            g0Var.f39215e = (SimpleDraweeView) view.findViewById(R.id.layout_forum_ad_3);
            g0Var.f39216f = (SimpleDraweeView) view.findViewById(R.id.layout_forum_ad_4);
            view.setTag(g0Var);
        }
        try {
            aVar = (n1.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar != null && aVar.f39291a != null) {
            SimpleDraweeView[] simpleDraweeViewArr = {g0Var.f39213c, g0Var.f39214d, g0Var.f39215e, g0Var.f39216f};
            for (int i4 = 0; aVar.f39291a.getAdBeans() != null && i4 < aVar.f39291a.getAdBeans().size(); i4++) {
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i4];
                P0(simpleDraweeView, aVar.f39291a.getAdBeans().get(i4), i4);
                if (i4 == 1 || i4 == 3) {
                    try {
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(simpleDraweeView.getLayoutParams().width, simpleDraweeView.getLayoutParams().height);
                        layoutParams.setMargins((int) (simpleDraweeView.getResources().getDisplayMetrics().density * 6.0f), 0, 0, 0);
                        simpleDraweeView.setLayoutParams(layoutParams);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            }
            return view;
        }
        return view;
    }

    private void Y() {
        if (this.f39109h == null) {
            this.f39109h = W();
        }
    }

    private void Z(TextView textView, int i2) {
        textView.setOnTouchListener(new y(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0(n1.s sVar, View view) {
        if (TextUtils.isEmpty(sVar.f39372d)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(sVar.f39372d);
        IntentUtil.getInstance().intentActivity(this.f39104c, intentDateBean);
    }

    private View d0(RecommendLabelTag recommendLabelTag, boolean z3, int i2, String str) {
        View inflate;
        View view = null;
        try {
            inflate = View.inflate(this.f39104c, R.layout.forum_group_tag_item, null);
        } catch (Exception e4) {
            e = e4;
        }
        try {
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
            marginLayoutParams.rightMargin = (int) TypedValue.applyDimension(1, 12.0f, this.f39104c.getResources().getDisplayMetrics());
            marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 15.0f, this.f39104c.getResources().getDisplayMetrics());
            inflate.setLayoutParams(marginLayoutParams);
            TextView textView = (TextView) inflate.findViewById(R.id.tagTv);
            if (textView == null) {
                return null;
            }
            textView.setBackgroundResource(R.color.transparent);
            textView.setTextColor(Color.parseColor("#3CA4FD"));
            String str2 = "#" + recommendLabelTag.getTag_name() + "#";
            try {
                if (z3) {
                    textView.setCompoundDrawablesWithIntrinsicBounds(textView.getContext().getResources().getDrawable(R.drawable.mg_forum_tag_hot), (Drawable) null, (Drawable) null, (Drawable) null);
                    textView.setCompoundDrawablePadding((int) TypedValue.applyDimension(1, 2.0f, textView.getContext().getResources().getDisplayMetrics()));
                    textView.setBackgroundResource(R.drawable.shape_hot_tag_bg);
                    textView.setTextColor(Color.parseColor("#FFFF4343"));
                    str2 = recommendLabelTag.getTag_name();
                } else {
                    textView.getPaint().setFakeBoldText(false);
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            textView.setText(str2);
            textView.setOnClickListener(new x(recommendLabelTag, i2, str));
            return inflate;
        } catch (Exception e6) {
            e = e6;
            view = inflate;
            e.printStackTrace();
            return view;
        }
    }

    private void e0(z0 z0Var, boolean z3, int i2, int i4) {
        TextView textView = z0Var.f39492d;
        ImageView imageView = z0Var.f39497i;
        if (z3) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(i2 + "");
            textView.setTextColor(Color.parseColor("#d92a0c"));
        } else {
            imageView.setImageResource(R.drawable.unlike);
            textView.setText(i2 + "");
            textView.setTextColor(Color.parseColor("#a9a9a9"));
        }
        ((View) z0Var.f39492d.getParent()).setOnClickListener(new e(z0Var, i4));
    }

    private void f0(d1 d1Var, boolean z3, int i2) {
        TextView textView = d1Var.f39163e;
        ImageView imageView = d1Var.f39166h;
        if (z3) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(i2 + "");
            textView.setTextColor(Color.parseColor("#d92a0c"));
            return;
        }
        imageView.setImageResource(R.drawable.unlike);
        textView.setText(i2 + "");
        textView.setTextColor(Color.parseColor("#a9a9a9"));
    }

    private View h(int i2, View view, ViewGroup viewGroup) {
        g0 g0Var;
        n1.a aVar;
        ForumBean.ForumWelcomeAdBean forumWelcomeAdBean;
        String str = "";
        if (view != null) {
            g0Var = (g0) view.getTag();
        } else {
            g0Var = new g0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_ad, (ViewGroup) null);
            g0Var.f39212b = (TextView) view.findViewById(R.id.sectionTitle);
            g0Var.f39218h = (TextView) view.findViewById(R.id.sectionSubTitle);
            g0Var.f39217g = (RelativeLayout) view.findViewById(R.id.forumExtFunc);
            g0Var.f39213c = (SimpleDraweeView) view.findViewById(R.id.img_1);
            g0Var.f39214d = (SimpleDraweeView) view.findViewById(R.id.img_2);
            g0Var.f39215e = (SimpleDraweeView) view.findViewById(R.id.img_3);
            view.setTag(g0Var);
        }
        try {
            aVar = (n1.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar == null || (forumWelcomeAdBean = aVar.f39291a) == null) {
            return view;
        }
        try {
            String title = forumWelcomeAdBean.getTitle();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            SpannableString spannableString = new SpannableString("直播");
            Context context = this.f39104c;
            spannableString.setSpan(com.join.mgps.Util.i0.S(com.join.mgps.Util.h2.a(context, "#f38548")), 0, spannableString.length(), 33);
            if (com.join.mgps.Util.d2.h(title)) {
                spannableStringBuilder.append((CharSequence) spannableString);
            } else {
                spannableStringBuilder.append((CharSequence) spannableString);
                spannableStringBuilder.append((CharSequence) (" " + title));
            }
            g0Var.f39212b.setText(spannableStringBuilder);
            String sub_title = aVar.f39291a.getSub_title();
            if (!com.join.mgps.Util.d2.h(sub_title)) {
                str = sub_title;
            }
            g0Var.f39218h.setText(str);
            q0(g0Var.f39217g, aVar.f39291a.getTitle());
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        SimpleDraweeView[] simpleDraweeViewArr = {g0Var.f39213c, g0Var.f39214d, g0Var.f39215e};
        int i4 = 0;
        for (int i5 = 0; i5 < 3; i5++) {
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i5];
            if (i5 < aVar.f39291a.getAdBeans().size()) {
                BannerBean bannerBean = aVar.f39291a.getAdBeans().get(i5);
                if (bannerBean.getAd_switch() == 1) {
                    simpleDraweeViewArr[i4].setVisibility(0);
                    i0(simpleDraweeViewArr[i4], bannerBean, i4);
                    i4++;
                } else {
                    int i6 = (3 - i4) - 1;
                    if (i6 < 3 && i6 >= 0) {
                        simpleDraweeViewArr[i6].setVisibility(8);
                    }
                }
            } else {
                simpleDraweeView.setVisibility(8);
            }
        }
        return view;
    }

    private void h0(g1 g1Var, n1.u uVar) {
        if (uVar != null && uVar.f39388a.size() != 0) {
            if (this.f39109h == null) {
                this.f39109h = W();
            }
            List<String> list = uVar.f39389b;
            TextView textView = g1Var.f39220b;
            if (list != null && list.size() > 3) {
                textView.setVisibility(0);
                textView.setText("共" + list.size() + "张");
            } else {
                textView.setVisibility(8);
            }
            SimpleDraweeView[] simpleDraweeViewArr = {g1Var.f39222d, g1Var.f39223e, g1Var.f39224f};
            int i2 = 0;
            for (int i4 = 0; i4 < 3; i4++) {
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i4];
                if (i4 >= uVar.f39388a.size()) {
                    simpleDraweeView.setVisibility(8);
                } else {
                    ForumBean.ForumPostsBean.ResBean resBean = uVar.f39388a.get(i4);
                    if (resBean.getType().equals("pic")) {
                        s0(simpleDraweeView, i4, resBean.getThumb(), i4 - i2, list);
                    } else if (resBean.getType().equals("video")) {
                        i2++;
                        R0(simpleDraweeView, i4, resBean.getThumb(), resBean.getRaw());
                    }
                }
            }
            return;
        }
        g1Var.f39221c.setVisibility(8);
    }

    private View i(int i2, View view, ViewGroup viewGroup) {
        return view;
    }

    private void i0(SimpleDraweeView simpleDraweeView, BannerBean bannerBean, int i2) {
        if (bannerBean == null || simpleDraweeView == null) {
            return;
        }
        if (this.f39109h == null) {
            this.f39109h = W();
        }
        String pic_remote = bannerBean.getPic_remote();
        int i4 = (int) (this.f39104c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f39109h;
        TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(layoutParams.width, layoutParams.height);
        if (i2 > 0) {
            layoutParams2.setMargins(i4, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        simpleDraweeView.setVisibility(0);
        simpleDraweeView.setLayoutParams(layoutParams2);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        MyImageLoader.i(simpleDraweeView, pic_remote, r.c.f12138a);
        IntentDateBean j02 = com.join.mgps.Util.i0.j0(bannerBean);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("forum");
        extBean.setPosition("banner3" + (i2 + 1));
        j02.setExtBean(extBean);
        simpleDraweeView.setOnClickListener(new f(j02, i2));
    }

    private View k(int i2, View view, ViewGroup viewGroup) {
        k0 k0Var;
        n1.b bVar;
        if (view != null) {
            k0Var = (k0) view.getTag();
        } else {
            k0Var = new k0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_forum_topic, (ViewGroup) null);
            k0Var.f39260c = (HListView) view.findViewById(R.id.list);
            k0Var.f39259b = (TextView) view.findViewById(R.id.sectionTitle);
            view.setTag(k0Var);
        }
        try {
            bVar = (n1.b) getItem(i2);
            k0Var.f39259b.setText("精彩话题");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null) {
            view.setVisibility(8);
            return view;
        }
        view.setVisibility(0);
        j0 j0Var = (j0) k0Var.f39260c.getAdapter();
        if (j0Var == null) {
            j0Var = new j0();
            k0Var.f39260c.setAdapter((ListAdapter) j0Var);
        }
        j0Var.b(bVar.f39295a);
        j0Var.notifyDataSetChanged();
        return view;
    }

    private void k0(TextView textView, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
        l0(textView, str, z3, z4, str2, list, null, 0, "", 0);
    }

    private View l(int i2, View view, ViewGroup viewGroup) {
        l0 l0Var;
        n1.z zVar;
        if (view != null) {
            l0Var = (l0) view.getTag();
        } else {
            l0Var = new l0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_item_for_welcome1, (ViewGroup) null);
            l0Var.f39267b = (SimpleDraweeView) view.findViewById(R.id.forum_icon);
            l0Var.f39268c = (TextView) view.findViewById(R.id.forum_name);
            l0Var.f39269d = (TextView) view.findViewById(R.id.forum_desc);
            l0Var.f39270e = (TextView) view.findViewById(R.id.countTv);
            l0Var.f39271f = view.findViewById(R.id.arrow);
            view.setTag(l0Var);
        }
        try {
            zVar = (n1.z) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (zVar == null) {
            return view;
        }
        MyImageLoader.h(l0Var.f39267b, zVar.f39416a);
        l0Var.f39268c.setText(zVar.f39417b);
        l0Var.f39269d.setText(zVar.f39418c);
        if (zVar.f39420e > 0) {
            TextView textView = l0Var.f39270e;
            textView.setText("今日更新：" + zVar.f39420e);
        } else {
            l0Var.f39270e.setText("今日更新：0");
        }
        if (zVar.f39422g) {
            l0Var.f39270e.setVisibility(0);
        } else {
            l0Var.f39270e.setVisibility(8);
        }
        l0Var.f39269d.setVisibility(0);
        D0(view, zVar.f39421f);
        return view;
    }

    private void l0(TextView textView, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, List<RecommendLabelTag> list2, int i2, String str3, int i4) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        com.join.mgps.Util.i0.h(textView.getContext(), spannableStringBuilder, list);
        com.join.mgps.Util.i0.g(textView, spannableStringBuilder, z3, (z4 && i4 == 1) ? false : z4, str2);
        if (z4 && i4 == 1) {
            com.join.mgps.Util.i0.d(textView, spannableStringBuilder);
        }
        com.join.mgps.Util.i0.i(textView.getContext(), spannableStringBuilder, list2, i2, str3);
        spannableStringBuilder.append((CharSequence) str);
        textView.setText(spannableStringBuilder);
    }

    private View m(int i2, View view, ViewGroup viewGroup) {
        m0 m0Var;
        n1.c cVar;
        try {
            if (view != null) {
                m0Var = (m0) view.getTag();
            } else {
                m0Var = new m0();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_group_member_item, (ViewGroup) null);
                m0Var.f39276b = (SimpleDraweeView) view.findViewById(R.id.avatar);
                m0Var.f39277c = (TextView) view.findViewById(R.id.nickName);
                m0Var.f39278d = (TextView) view.findViewById(R.id.grade);
                m0Var.f39279e = (TextView) view.findViewById(R.id.addTime);
                m0Var.f39280f = (TextView) view.findViewById(R.id.groupAction);
                view.setTag(m0Var);
            }
            cVar = (n1.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar == null) {
            return view;
        }
        MyImageLoader.w(m0Var.f39276b, TextUtils.isEmpty(cVar.f39298a) ? "" : cVar.f39298a);
        m0Var.f39276b.setOnClickListener(new k(cVar));
        m0Var.f39277c.setText(cVar.f39299b);
        if (cVar.f39300c) {
            m0Var.f39278d.setVisibility(0);
            if (cVar.f39301d == 0) {
                m0Var.f39278d.setText("组长");
            } else {
                m0Var.f39278d.setText("副组长");
            }
        } else {
            m0Var.f39278d.setVisibility(8);
        }
        TextView textView = m0Var.f39279e;
        textView.setText(cVar.f39302e + "加入");
        if (cVar.f39303f && cVar.f39304g) {
            m0Var.f39280f.setVisibility(0);
            m0Var.f39279e.setVisibility(8);
        } else {
            m0Var.f39280f.setVisibility(8);
            if (!cVar.f39300c) {
                m0Var.f39279e.setVisibility(0);
            } else {
                m0Var.f39279e.setVisibility(8);
            }
        }
        A0(m0Var.f39280f, cVar.f39305h);
        return view;
    }

    private View n(int i2, View view, ViewGroup viewGroup) {
        n0 n0Var;
        n1.d dVar;
        try {
            if (view != null) {
                n0Var = (n0) view.getTag();
            } else {
                n0Var = new n0();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_group_member_section_title, (ViewGroup) null);
                n0Var.f39287b = (TextView) view.findViewById(R.id.title);
                view.setTag(n0Var);
            }
            dVar = (n1.d) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (dVar == null) {
            return view;
        }
        n0Var.f39287b.setText(TextUtils.isEmpty(dVar.f39307a) ? "成员" : dVar.f39307a);
        return view;
    }

    private View o(int i2, View view, ViewGroup viewGroup) {
        o0 o0Var;
        if (view != null) {
            o0Var = (o0) view.getTag();
        } else {
            o0Var = new o0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_hot_forum_footer, (ViewGroup) null);
            o0Var.f39425b = view.findViewById(R.id.forums_hot_item_forum_all);
            view.setTag(o0Var);
        }
        try {
            View view2 = o0Var.f39425b;
            if (view2 != null) {
                C0(view2);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View p(int i2, View view, ViewGroup viewGroup) {
        p0 p0Var;
        try {
            if (view != null) {
                p0Var = (p0) view.getTag();
            } else {
                p0Var = new p0();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_hot_forum_header, (ViewGroup) null);
                p0Var.f39429b = (LinearLayout) view.findViewById(R.id.forumMore);
                view.setTag(p0Var);
            }
            LinearLayout linearLayout = p0Var.f39429b;
            if (linearLayout != null) {
                C0(linearLayout);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View q(int i2, View view, ViewGroup viewGroup) {
        q0 q0Var;
        n1.g gVar;
        if (view != null) {
            q0Var = (q0) view.getTag();
        } else {
            q0Var = new q0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_hot_forum_item, (ViewGroup) null);
            View findViewById = view.findViewById(R.id.mg_forum_item);
            q0Var.f39433b = findViewById;
            q0Var.f39434c = (SimpleDraweeView) findViewById.findViewById(R.id.forum_icon);
            q0Var.f39435d = (TextView) q0Var.f39433b.findViewById(R.id.forum_name);
            q0Var.f39440i = (TextView) q0Var.f39433b.findViewById(R.id.forum_desc);
            q0Var.f39438g = (Button) q0Var.f39433b.findViewById(R.id.forum_follow);
            q0Var.f39439h = (TextView) q0Var.f39433b.findViewById(R.id.forum_today_posts_tv);
            view.setTag(q0Var);
        }
        try {
            gVar = (n1.g) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (gVar == null) {
            return view;
        }
        ForumBean forumBean = gVar.f39308a;
        TextView textView = q0Var.f39435d;
        com.join.mgps.Util.i0.D1(textView, forumBean.getName() + "", "");
        TextView textView2 = q0Var.f39440i;
        com.join.mgps.Util.i0.D1(textView2, forumBean.getDescription() + "", "");
        B0(q0Var.f39433b, forumBean);
        MyImageLoader.j(q0Var.f39434c, forumBean.getIcon_src(), MyImageLoader.A(this.f39104c));
        com.join.mgps.Util.i0.D1(q0Var.f39439h, q0Var.f39439h.getResources().getString(R.string.forum_info_today_posts, com.join.mgps.Util.i0.R(forumBean.getToday_posts())), "今日 0");
        if (forumBean.is_follow()) {
            q0Var.f39438g.setVisibility(8);
        } else {
            q0Var.f39438g.setVisibility(0);
        }
        y0(q0Var.f39438g, forumBean);
        return view;
    }

    private void q0(View view, String str) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new i(str));
    }

    private View v(int i2, View view, ViewGroup viewGroup) {
        s0 s0Var;
        View inflate;
        n1.i iVar;
        if (view != null) {
            s0Var = (s0) view.getTag();
            inflate = view;
        } else {
            s0Var = new s0();
            inflate = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_live_entry, (ViewGroup) null);
            s0Var.f39446j = inflate.findViewById(R.id.forum_ad_container);
            s0Var.f39212b = (TextView) inflate.findViewById(R.id.forum_ad_title);
            s0Var.f39213c = (SimpleDraweeView) inflate.findViewById(R.id.layout_forum_ad_1);
            s0Var.f39214d = (SimpleDraweeView) inflate.findViewById(R.id.layout_forum_ad_2);
            s0Var.f39215e = (SimpleDraweeView) inflate.findViewById(R.id.layout_forum_ad_3);
            s0Var.f39216f = (SimpleDraweeView) inflate.findViewById(R.id.layout_forum_ad_4);
            inflate.setTag(s0Var);
        }
        s0 s0Var2 = s0Var;
        try {
            iVar = (n1.i) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (iVar != null && iVar.f39316a != null) {
            SimpleDraweeView[] simpleDraweeViewArr = {s0Var2.f39213c, s0Var2.f39214d, s0Var2.f39215e, s0Var2.f39216f};
            for (int i4 = 0; i4 < 4; i4++) {
                simpleDraweeViewArr[i4].setVisibility(8);
            }
            for (int i5 = 0; iVar.f39316a.getAdBeans() != null && i5 < iVar.f39316a.getAdBeans().size(); i5++) {
                BannerBean bannerBean = iVar.f39316a.getAdBeans().get(i5);
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i5];
                simpleDraweeView.setVisibility(0);
                MyImageLoader.h(simpleDraweeView, bannerBean.getPic_remote());
                float f4 = this.f39104c.getResources().getDisplayMetrics().density;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) simpleDraweeView.getLayoutParams();
                int i6 = ((int) (this.f39104c.getResources().getDisplayMetrics().widthPixels - (f4 * 18.0f))) / 2;
                layoutParams.width = i6;
                layoutParams.height = (int) ((i6 * 1.0f) / 2.07f);
                simpleDraweeView.setLayoutParams(layoutParams);
                IntentDateBean j02 = com.join.mgps.Util.i0.j0(bannerBean);
                ExtBean extBean = new ExtBean();
                extBean.setFrom("forum");
                extBean.setPosition("banner2" + (i2 + 1));
                j02.setExtBean(extBean);
                simpleDraweeView.setOnClickListener(new a(j02, i5));
                if (i5 == 1 || i5 == 3) {
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(simpleDraweeView.getLayoutParams().width, simpleDraweeView.getLayoutParams().height);
                    layoutParams2.setMargins((int) (simpleDraweeView.getResources().getDisplayMetrics().density * 6.0f), 0, 0, 0);
                    simpleDraweeView.setLayoutParams(layoutParams2);
                }
                if (iVar.f39316a.getAdBeans().size() == 1) {
                    try {
                        s0Var2.f39446j.setPadding(0, this.f39104c.getResources().getDimensionPixelOffset(R.dimen.mg_forum_item_divider), 0, 0);
                        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) simpleDraweeView.getLayoutParams();
                        layoutParams3.width = -1;
                        layoutParams3.height = u();
                        layoutParams3.setMargins(0, 0, 0, 0);
                        simpleDraweeView.setLayoutParams(layoutParams3);
                        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            }
            if (iVar.f39316a.getAdBeans() == null) {
                inflate.setVisibility(8);
            } else if (iVar.f39316a.getAdBeans().size() < 1) {
                inflate.setVisibility(8);
            } else if (iVar.f39316a.getAdBeans().size() < 3) {
                ViewGroup viewGroup2 = (ViewGroup) simpleDraweeViewArr[2].getParent();
                viewGroup2.setVisibility(8);
                ((LinearLayout.LayoutParams) viewGroup2.getLayoutParams()).topMargin = 0;
            }
            return inflate;
        }
        return inflate;
    }

    private View w(int i2, View view, ViewGroup viewGroup) {
        return view;
    }

    private void w0(SimpleDraweeView simpleDraweeView, BannerBean bannerBean, int i2) {
        if (bannerBean == null || simpleDraweeView == null) {
            return;
        }
        simpleDraweeView.setVisibility(0);
        MyImageLoader.j(simpleDraweeView, bannerBean.getPic_remote(), MyImageLoader.y(simpleDraweeView.getContext()));
        if (this.f39111j == null) {
            float f4 = this.f39104c.getResources().getDisplayMetrics().density;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) simpleDraweeView.getLayoutParams();
            int i4 = ((int) (this.f39104c.getResources().getDisplayMetrics().widthPixels - (f4 * 18.0f))) / 2;
            layoutParams.width = i4;
            layoutParams.height = (int) ((i4 * 1.0f) / 2.07f);
            this.f39111j = layoutParams;
        }
        simpleDraweeView.setLayoutParams(this.f39111j);
        IntentDateBean j02 = com.join.mgps.Util.i0.j0(bannerBean);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("forum");
        extBean.setPosition("banner2" + (i2 + 1));
        j02.setExtBean(extBean);
        simpleDraweeView.setOnClickListener(new h(j02, i2));
    }

    private View x(int i2, View view, ViewGroup viewGroup) {
        g0 g0Var;
        n1.a aVar;
        if (view != null) {
            g0Var = (g0) view.getTag();
        } else {
            g0Var = new g0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_ad_block, (ViewGroup) null);
            g0Var.f39212b = (TextView) view.findViewById(R.id.forum_ad_title);
            g0Var.f39213c = (SimpleDraweeView) view.findViewById(R.id.layout_forum_ad_1);
            g0Var.f39214d = (SimpleDraweeView) view.findViewById(R.id.layout_forum_ad_2);
            g0Var.f39215e = (SimpleDraweeView) view.findViewById(R.id.layout_forum_ad_3);
            g0Var.f39216f = (SimpleDraweeView) view.findViewById(R.id.layout_forum_ad_4);
            view.setTag(g0Var);
        }
        try {
            aVar = (n1.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar != null && aVar.f39291a != null) {
            SimpleDraweeView[] simpleDraweeViewArr = {g0Var.f39213c, g0Var.f39214d, g0Var.f39215e, g0Var.f39216f};
            for (int i4 = 0; aVar.f39291a.getAdBeans() != null && i4 < aVar.f39291a.getAdBeans().size(); i4++) {
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i4];
                w0(simpleDraweeView, aVar.f39291a.getAdBeans().get(i4), i4);
                if (i4 == 1 || i4 == 3) {
                    try {
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(simpleDraweeView.getLayoutParams().width, simpleDraweeView.getLayoutParams().height);
                        layoutParams.setMargins((int) (simpleDraweeView.getResources().getDisplayMetrics().density * 6.0f), 0, 0, 0);
                        simpleDraweeView.setLayoutParams(layoutParams);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            }
            if (aVar.f39291a.getAdBeans() == null) {
                view.setVisibility(8);
            } else if (aVar.f39291a.getAdBeans().size() < 2) {
                view.setVisibility(8);
            } else if (aVar.f39291a.getAdBeans().size() < 4) {
                ViewGroup viewGroup2 = (ViewGroup) simpleDraweeViewArr[2].getParent();
                viewGroup2.setVisibility(8);
                ((LinearLayout.LayoutParams) viewGroup2.getLayoutParams()).topMargin = 0;
            }
            return view;
        }
        return view;
    }

    private View y(int i2, View view, ViewGroup viewGroup) {
        u0 u0Var;
        if (view != null) {
            u0Var = (u0) view.getTag();
        } else {
            u0Var = new u0();
            view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_my_forum_footer, (ViewGroup) null);
            u0Var.f39461c = (TextView) view.findViewById(R.id.my_forum_count_tv);
            view.setTag(u0Var);
        }
        try {
            TextView textView = u0Var.f39461c;
            Resources resources = this.f39104c.getResources();
            textView.setText(resources.getString(R.string.my_forum_count, ((n1.j) getItem(i2)).f39317a + ""));
            I0(view);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View z(int i2, View view, ViewGroup viewGroup) {
        v0 v0Var;
        try {
            if (view != null) {
                v0Var = (v0) view.getTag();
            } else {
                v0Var = new v0();
                view = LayoutInflater.from(this.f39104c).inflate(R.layout.mg_forum_welcome_item_my_forum_header, (ViewGroup) null);
                v0Var.f39465b = (LinearLayout) view.findViewById(R.id.forumMore);
                v0Var.f39466c = (TextView) view.findViewById(R.id.sectionTitle);
                view.setTag(v0Var);
            }
            n1.k kVar = (n1.k) getItem(i2);
            if (kVar != null && com.join.mgps.Util.d2.i(kVar.f39318a)) {
                v0Var.f39466c.setText(kVar.f39318a);
            } else if (com.join.mgps.Util.i0.Y0(this.f39104c)) {
                v0Var.f39466c.setText("我的专区");
            } else {
                v0Var.f39466c.setText("推荐关注");
            }
            if (v0Var.f39465b != null) {
                C0(view);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    public void A0(View view, int i2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new t(i2));
    }

    public void B0(View view, ForumBean forumBean) {
        view.setOnClickListener(new l(forumBean));
    }

    public void C0(View view) {
        view.setOnClickListener(new m());
    }

    public void E0(View view, int i2) {
        view.setOnClickListener(new j(i2));
    }

    public void F0(View view, String str, String str2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new s(str2));
    }

    public int G() {
        return this.f39123v;
    }

    public void G0(View view, int i2, boolean z3, int i4) {
        view.setOnClickListener(new o(i2));
    }

    public String H() {
        return this.f39122u;
    }

    public void I0(View view) {
        view.setOnClickListener(new p());
    }

    public void J0(boolean z3) {
        this.f39124w = z3;
    }

    public void K0(int i2) {
        this.f39123v = i2;
    }

    public void L0(String str) {
        this.f39122u = str;
    }

    public void M0(boolean z3) {
        this.f39125x = z3;
    }

    public void Q0(com.join.mgps.listener.f fVar) {
        this.f39108g = fVar;
    }

    void R0(SimpleDraweeView simpleDraweeView, int i2, String str, String str2) {
        if (this.f39109h == null) {
            this.f39109h = W();
        }
        int i4 = (int) (this.f39104c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f39109h;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (i2 > 0) {
            layoutParams2.setMargins(i4, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (!com.join.mgps.Util.d2.h(str)) {
            simpleDraweeView.setVisibility(0);
            simpleDraweeView.setLayoutParams(layoutParams2);
            simpleDraweeView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            MyImageLoader.i(simpleDraweeView, str, r.c.f12144g);
            simpleDraweeView.setOnClickListener(new d(str2));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public com.danikula.videocache.i T(Context context) {
        return MApplication.p(context);
    }

    LinearLayout.LayoutParams W() {
        DisplayMetrics displayMetrics = this.f39104c.getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        int i2 = (int) (210.0f * f4);
        int i4 = (int) (160.0f * f4);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f39104c.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f4)) * f4) * 2.0f))) / 3;
        if (dimensionPixelSize <= i2) {
            i2 = dimensionPixelSize > i4 ? i4 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i2, i2);
    }

    public boolean a0() {
        return this.f39124w;
    }

    public boolean b0() {
        return this.f39125x;
    }

    public void e(n1 n1Var) {
        if (n1Var == null) {
            return;
        }
        if (this.f39105d == null) {
            this.f39105d = new ArrayList();
        }
        this.f39105d.add(n1Var);
    }

    public void f(List<n1> list) {
        if (list == null) {
            return;
        }
        if (this.f39105d == null) {
            this.f39105d = new ArrayList();
        }
        this.f39105d.addAll(list);
    }

    public void g() {
        DisplayMetrics displayMetrics = this.f39104c.getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        int i2 = (int) (210.0f * f4);
        int i4 = (int) (160.0f * f4);
        float dimensionPixelSize = displayMetrics.widthPixels - (this.f39104c.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2);
        int i5 = ((int) (dimensionPixelSize - ((((int) (6.0f * f4)) * f4) * 2.0f))) / 3;
        if (i5 <= i2) {
            i2 = i5 > i4 ? i4 : i5;
        }
        this.f39113l = i2;
        this.f39118q = (int) ((dimensionPixelSize * 1.0f) / 1.8f);
        int i6 = (int) (0.615f * dimensionPixelSize);
        this.f39114m = i6;
        this.f39115n = (int) ((i6 * 1.0f) / 1.85f);
        int i7 = (int) (dimensionPixelSize * 0.54f);
        this.f39116o = i7;
        this.f39117p = (int) ((i7 * 1.0f) / 0.85f);
    }

    public void g0(DownloadTask downloadTask, int i2) {
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<n1> list = this.f39105d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<n1> list = this.f39105d;
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
        n1 n1Var;
        ViewType b4;
        List<n1> list = this.f39105d;
        if (list == null || (n1Var = list.get(i2)) == null || (b4 = n1Var.b()) == null) {
            return -1;
        }
        return b4.ordinal();
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return L(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return I(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_TOP.ordinal()) {
            return Q(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_FOOTER.ordinal()) {
            return C(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return M(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_IMGS.ordinal()) {
            return D(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return S(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_VIDEO.ordinal()) {
            return F(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_GAME_RES_LINK.ordinal()) {
            return J(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return N(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_MESSAGE.ordinal()) {
            return E(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_SUBJECT.ordinal()) {
            return P(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_SUBJECT.ordinal()) {
            return O(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_GAME.ordinal()) {
            return K(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.MY_FORUM_HEADER.ordinal()) {
            return z(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.MY_FORUM_ITEM.ordinal()) {
            return A(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.MY_FORUM_FOOTER.ordinal()) {
            return y(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.MY_FORUM_MORE_FOOTER.ordinal()) {
            return B(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.HOT_FORUM_HEADER.ordinal()) {
            return p(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.HOT_FORUM_ITEM.ordinal()) {
            return q(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.HOT_FORUM_FOOTER.ordinal()) {
            return o(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.FORUM_TOPIC.ordinal()) {
            return k(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.BAIDUAD.ordinal()) {
            return i(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.TOP_BLOCK.ordinal()) {
            return X(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.MID_BLOCK.ordinal()) {
            return x(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.AD_BLOCK.ordinal()) {
            return h(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.LIVE.ordinal()) {
            return w(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.LIVE_ENTRY.ordinal()) {
            return v(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GROUP_ITEM.ordinal()) {
            return l(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.TAG_FLOW_LAYOUT.ordinal()) {
            return U(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GROUP_MEMBER_SECTION_TITLE.ordinal()) {
            return n(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GROUP_MEMBER_ITEM.ordinal()) {
            return m(i2, view, viewGroup);
        }
        return itemViewType == ViewType.TAG_ITEM.ordinal() ? V(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public int j() {
        return this.f39121t;
    }

    public void j0(int i2) {
        this.f39121t = i2;
    }

    void m0(View view, int i2) {
        view.setEnabled(true);
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextColor(-12802819);
            if (i2 == 3) {
                textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
                textView.setTextSize(2, 12.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
            } else if (i2 == 2) {
                textView.setText("即将开放");
                textView.setTextSize(2, 11.0f);
                textView.setTextColor(-7763575);
                textView.setEnabled(false);
                textView.setBackgroundResource(R.drawable.recom_grey_butn);
            } else {
                textView.setText(this.f39104c.getResources().getString(R.string.download_status_download));
                textView.setTextSize(2, 13.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
            }
        } else if (view instanceof Button) {
            Button button = (Button) view;
            button.setTextColor(-12802819);
            if (i2 == 3) {
                button.setText(button.getResources().getString(R.string.download_status_pre_download));
                button.setTextSize(2, 12.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
            } else if (i2 == 2) {
                button.setText("即将开放");
                button.setTextSize(2, 11.0f);
                button.setTextColor(-7763575);
                button.setEnabled(false);
                button.setBackgroundResource(R.drawable.recom_grey_butn);
            } else {
                button.setText(this.f39104c.getResources().getString(R.string.download_status_download));
                button.setTextSize(2, 13.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
            }
        }
    }

    void n0(TextView textView, int i2) {
        textView.setEnabled(true);
        textView.setTextColor(-12802819);
        textView.setText(textView.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.d2.l(i2)));
        textView.setTextSize(2, 13.0f);
        textView.setTextColor(-12802819);
        textView.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    void o0(e1 e1Var, Object obj) {
        Button button = e1Var.f39178d;
        if (button == null || obj == null) {
            return;
        }
        Context context = button.getContext();
        Resources resources = context.getResources();
        DownloadTask downloadTask = (DownloadTask) obj;
        int status = downloadTask.getStatus();
        String ver = downloadTask.getVer();
        String packageName = downloadTask.getPackageName();
        ArrayList<TipBean> tipBeans = downloadTask.getTipBeans();
        long size = downloadTask.getSize();
        int pay_game_amount = downloadTask.getPay_game_amount();
        if (pay_game_amount > 0 && n1.e0.o().p(downloadTask.getCrc_link_type_val())) {
            pay_game_amount = 0;
        }
        if (obj instanceof CollectionBeanSubBusiness) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) obj;
            DownloadTask downloadTask2 = collectionBeanSubBusiness.getDownloadTask();
            String ver2 = collectionBeanSubBusiness.getVer();
            if (collectionBeanSubBusiness.getPay_tag_info() != null) {
                pay_game_amount = collectionBeanSubBusiness.getPay_tag_info().getPay_game_amount();
            }
            if (pay_game_amount > 0 && n1.e0.o().p(collectionBeanSubBusiness.getCrc_sign_id())) {
                pay_game_amount = 0;
            }
            downloadTask = downloadTask2;
            ver = ver2;
        } else if (obj instanceof RecomDatabeanBusiness) {
            AppBean game_info = ((RecomDatabeanBusiness) obj).getSub().get(0).getGame_info();
            if (game_info.getPay_tag_info() != null) {
                pay_game_amount = game_info.getPay_tag_info().getPay_game_amount();
            }
            if (pay_game_amount > 0 && n1.e0.o().p(game_info.getCrc_sign_id())) {
                pay_game_amount = 0;
            }
        }
        if (downloadTask == null) {
            if (UtilsMy.e0(tipBeans)) {
                if (pay_game_amount > 0 ? false : com.join.android.app.common.utils.a.g0(context).c(context, packageName)) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, packageName);
                    if (com.join.mgps.Util.d2.i(ver) && k4.d() < Integer.parseInt(ver)) {
                        button.setBackgroundResource(R.drawable.recom_green_butn);
                        N0(button, "更新");
                        O0(button, resources.getColor(R.color.app_green_color));
                    } else {
                        button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        N0(button, context.getResources().getString(R.string.download_status_finished));
                        O0(button, resources.getColor(R.color.app_main_color));
                    }
                } else {
                    button.setBackgroundResource(R.drawable.recom_green_butn);
                    if (pay_game_amount > 0) {
                        n0(e1Var.f39178d, pay_game_amount);
                    } else {
                        m0(button, status);
                    }
                }
            } else {
                button.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    n0(e1Var.f39178d, pay_game_amount);
                } else {
                    m0(button, status);
                }
            }
        } else {
            int status2 = downloadTask.getStatus();
            if (pay_game_amount > 0) {
                status2 = 43;
            }
            if (status2 != 0) {
                if (status2 == 27) {
                    N0(button, "暂停中");
                } else if (status2 != 2) {
                    if (status2 != 3) {
                        if (status2 != 5) {
                            if (status2 != 6) {
                                if (status2 != 7) {
                                    if (status2 != 42) {
                                        if (status2 != 43) {
                                            switch (status2) {
                                                case 9:
                                                    S0(e1Var, 0);
                                                    button.setBackgroundResource(R.drawable.recom_green_butn);
                                                    N0(button, "更新");
                                                    O0(button, resources.getColor(R.color.app_green_color));
                                                    break;
                                                case 10:
                                                    S0(e1Var, 16);
                                                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    N0(button, "等待");
                                                    O0(button, resources.getColor(R.color.app_blue_color));
                                                    break;
                                                case 11:
                                                    S0(e1Var, 0);
                                                    button.setBackgroundResource(R.drawable.recom_green_butn);
                                                    N0(button, "安装");
                                                    O0(button, resources.getColor(R.color.app_green_color));
                                                    break;
                                                case 12:
                                                    S0(e1Var, 17);
                                                    TextView textView = e1Var.f39183i;
                                                    textView.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    e1Var.f39184j.setText("解压中..");
                                                    e1Var.f39186l.setProgress((int) downloadTask.getProgress());
                                                    button.setBackgroundResource(R.drawable.extract);
                                                    N0(button, "解压中");
                                                    O0(button, resources.getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    S0(e1Var, 17);
                                                    TextView textView2 = e1Var.f39183i;
                                                    textView2.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    e1Var.f39184j.setText("点击重新解压");
                                                    e1Var.f39186l.setProgress((int) downloadTask.getProgress());
                                                    button.setBackgroundResource(R.drawable.reextract);
                                                    N0(button, "解压");
                                                    O0(button, resources.getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        S0(e1Var, 0);
                        button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        N0(button, context.getResources().getString(R.string.download_status_finished));
                        O0(button, resources.getColor(R.color.app_main_color));
                    }
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    N0(button, "继续");
                    O0(button, resources.getColor(R.color.app_blue_color));
                    S0(e1Var, 16);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView3 = e1Var.f39183i;
                            textView3.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                        } else {
                            TextView textView4 = e1Var.f39183i;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                        }
                        e1Var.f39185k.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    e1Var.f39184j.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    N0(button, "暂停");
                    O0(button, resources.getColor(R.color.app_blue_color));
                    S0(e1Var, 16);
                    if (downloadTask.getSize() == 0) {
                        TextView textView5 = e1Var.f39183i;
                        textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                    } else {
                        TextView textView6 = e1Var.f39183i;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                    }
                    e1Var.f39185k.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView7 = e1Var.f39184j;
                    textView7.setText(speed + "/S");
                }
            }
            S0(e1Var, 0);
            button.setBackgroundResource(R.drawable.recom_green_butn);
            if (pay_game_amount > 0) {
                n0(e1Var.f39178d, pay_game_amount);
            } else {
                m0(button, status);
            }
        }
        button.setOnClickListener(new h0(obj));
    }

    public void p0(String str) {
        this.f39107f = str;
    }

    public List<n1> r() {
        return this.f39105d;
    }

    void r0(SimpleDraweeView simpleDraweeView, int i2, String str, int i4, List<String> list) {
        LinearLayout.LayoutParams layoutParams;
        Integer[] i02 = com.join.mgps.Util.i0.i0(str);
        if (i02 != null && i02[0].intValue() != 0 && i02[1].intValue() != 0) {
            if ((i02[0].intValue() * 1.0f) / i02[1].intValue() > 1.0f) {
                layoutParams = new LinearLayout.LayoutParams(this.f39114m, this.f39115n);
            } else {
                layoutParams = new LinearLayout.LayoutParams(this.f39116o, this.f39117p);
            }
        } else {
            int i5 = this.f39113l;
            layoutParams = new LinearLayout.LayoutParams(i5, i5);
        }
        if (!com.join.mgps.Util.d2.h(str)) {
            simpleDraweeView.setVisibility(0);
            simpleDraweeView.setLayoutParams(layoutParams);
            simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
            MyImageLoader.i(simpleDraweeView, str, r.c.f12138a);
            simpleDraweeView.setOnClickListener(new c(list, i4));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public com.join.android.app.component.optimizetext.b s() {
        return this.f39102a;
    }

    void s0(SimpleDraweeView simpleDraweeView, int i2, String str, int i4, List<String> list) {
        if (this.f39109h == null) {
            this.f39109h = W();
        }
        int i5 = (int) (this.f39104c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f39109h;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (i2 > 0) {
            layoutParams2.setMargins(i5, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (!com.join.mgps.Util.d2.h(str)) {
            simpleDraweeView.setVisibility(0);
            simpleDraweeView.setLayoutParams(layoutParams2);
            simpleDraweeView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            MyImageLoader.i(simpleDraweeView, str, r.c.f12144g);
            simpleDraweeView.setOnClickListener(new b(list, i4));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public r0 t() {
        return this.f39112k;
    }

    public void t0(List<n1> list) {
        if (list == null) {
            return;
        }
        if (this.f39105d == null) {
            this.f39105d = new ArrayList();
        }
        this.f39105d.clear();
        this.f39105d.addAll(list);
    }

    int u() {
        return (int) (this.f39104c.getResources().getDisplayMetrics().widthPixels / 1.40625f);
    }

    public void u0(com.join.android.app.component.optimizetext.b bVar) {
        this.f39102a = bVar;
    }

    public void v0(r0 r0Var) {
        this.f39112k = r0Var;
    }

    public void x0(View view, int i2) {
        view.setOnClickListener(new n(i2));
    }

    public void y0(View view, ForumBean forumBean) {
        view.setOnClickListener(new q(forumBean));
    }

    public void z0(View view, ForumBean forumBean) {
        view.setOnClickListener(new r(forumBean));
    }
}
