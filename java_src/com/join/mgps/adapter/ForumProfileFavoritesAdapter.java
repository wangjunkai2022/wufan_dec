package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.DisplayMetrics;
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
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumProfileFavoritesAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private com.join.android.app.component.optimizetext.b f39987a;

    /* renamed from: b  reason: collision with root package name */
    com.danikula.videocache.i f39988b;

    /* renamed from: c  reason: collision with root package name */
    private Context f39989c;

    /* renamed from: e  reason: collision with root package name */
    com.join.android.app.component.video.c f39991e;

    /* renamed from: g  reason: collision with root package name */
    LinearLayout.LayoutParams f39993g;

    /* renamed from: h  reason: collision with root package name */
    LinearLayout.LayoutParams f39994h;

    /* renamed from: i  reason: collision with root package name */
    LinearLayout.LayoutParams f39995i;

    /* renamed from: f  reason: collision with root package name */
    int f39992f = 0;

    /* renamed from: j  reason: collision with root package name */
    private u f39996j = null;

    /* renamed from: k  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f39997k = new ArrayList(0);

    /* renamed from: l  reason: collision with root package name */
    int f39998l = 0;

    /* renamed from: m  reason: collision with root package name */
    int f39999m = 0;

    /* renamed from: n  reason: collision with root package name */
    int f40000n = 0;

    /* renamed from: o  reason: collision with root package name */
    int f40001o = 0;

    /* renamed from: p  reason: collision with root package name */
    int f40002p = 0;

    /* renamed from: q  reason: collision with root package name */
    int f40003q = 0;

    /* renamed from: d  reason: collision with root package name */
    private List<k0> f39990d = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        POST_HEADER,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE,
        POST_VIDEO,
        POST_IMAGE_THUMBNAIL,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER,
        POST_TOP,
        FAVORITE_ITEM_HEADER,
        GAME_ITEM,
        P_SUBJECT,
        P_MESSAGE,
        P_IMGS,
        P_VIDEO,
        P_FOOTER,
        POST_GAME
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40004a;

        a(int i2) {
            this.f40004a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.d(this.f40004a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public FrameLayout f40006b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f40007c;

        a0() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40009a;

        b(int i2) {
            this.f40009a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.f(this.f40009a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40011b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40012c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40013d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40014e;

        b0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40016a;

        c(int i2) {
            this.f40016a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.b(this.f40016a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40018b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40019c;

        /* renamed from: d  reason: collision with root package name */
        public Button f40020d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40021e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f40022f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f40023g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f40024h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f40025i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f40026j;

        /* renamed from: k  reason: collision with root package name */
        public ProgressBar f40027k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f40028l;

        /* renamed from: m  reason: collision with root package name */
        public View f40029m;

        /* renamed from: n  reason: collision with root package name */
        public View f40030n;

        /* renamed from: o  reason: collision with root package name */
        public View f40031o;

        c0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40033a;

        d(int i2) {
            this.f40033a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                Context context = view.getContext();
                if (com.join.mgps.Util.i0.Y0(context)) {
                    ForumProfileFavoritesAdapter.this.f39996j.a(this.f40033a);
                    return;
                }
                com.join.mgps.Util.i2.a(context).b("用户未登录，请登录");
                com.join.mgps.Util.i0.L0(context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40035b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40036c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40037d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40038e;

        /* renamed from: f  reason: collision with root package name */
        public View f40039f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f40040g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f40041h;

        /* renamed from: i  reason: collision with root package name */
        public RelativeLayout f40042i;

        /* renamed from: j  reason: collision with root package name */
        public VipView f40043j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f40044k;

        d0() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40046a;

        e(String str) {
            this.f40046a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int parseInt = Integer.parseInt(this.f40046a);
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.c(parseInt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40048b;

        /* renamed from: c  reason: collision with root package name */
        public RelativeLayout f40049c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f40050d;

        /* renamed from: e  reason: collision with root package name */
        public SimpleDraweeView f40051e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f40052f;

        e0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40054a;

        f(int i2) {
            this.f40054a = i2;
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
            if (action == 1 && !z3 && ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.d(this.f40054a);
            }
            return z3;
        }
    }

    /* loaded from: classes3.dex */
    class f0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public ImageView f40056b;

        f0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40058a;

        g(int i2) {
            this.f40058a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.d(this.f40058a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public StaticLayoutView f40060b;

        g0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ x f40062a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40063b;

        h(x xVar, int i2) {
            this.f40062a = xVar;
            this.f40063b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f40062a.f40232i.startAnimation(AnimationUtils.loadAnimation(ForumProfileFavoritesAdapter.this.f39989c, R.anim.scale_reset));
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.a(this.f40063b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public Button f40065b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40066c;

        /* renamed from: d  reason: collision with root package name */
        public View f40067d;

        /* renamed from: e  reason: collision with root package name */
        public View f40068e;

        h0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f40070a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f40071b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f40072c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f40073d;

        i(ForumBean.GameInfo gameInfo, DownloadTask downloadTask, String str, String str2) {
            this.f40070a = gameInfo;
            this.f40071b = downloadTask;
            this.f40072c = str;
            this.f40073d = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String plugin_num = this.f40070a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f40070a.getGame_down_url_remote());
                UtilsMy.h2(this.f40071b, ForumProfileFavoritesAdapter.this.f39989c);
                IntentUtil.getInstance().intentActivity(ForumProfileFavoritesAdapter.this.f39989c, intentDateBean);
                return;
            }
            Context context = view.getContext();
            com.papa.sim.statistic.p.l(context).p0(this.f40072c, this.f40073d, AccountUtil_.getInstance_(context).getUid());
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.e(this.f40073d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public Button f40075b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40076c;

        i0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40078a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f40079b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f40080c;

        j(String str, String str2, ForumBean.GameInfo gameInfo) {
            this.f40078a = str;
            this.f40079b = str2;
            this.f40080c = gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            com.papa.sim.statistic.p.l(context).q0(this.f40078a, this.f40079b, AccountUtil_.getInstance_(context).getUid());
            com.join.mgps.Util.i0.I0(view.getContext(), this.f40080c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j0 extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40082b;

        /* renamed from: c  reason: collision with root package name */
        public FrameLayout f40083c;

        j0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k0.c f40085a;

        k(k0.c cVar) {
            this.f40085a = cVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f40085a.f40100h).start();
        }
    }

    /* loaded from: classes3.dex */
    public static class k0 {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40087a;

        /* renamed from: b  reason: collision with root package name */
        Object f40088b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40089a;

            /* renamed from: b  reason: collision with root package name */
            public int f40090b;

            /* renamed from: c  reason: collision with root package name */
            public String f40091c;

            public a() {
            }

            public a(boolean z3, int i2, String str) {
                this.f40089a = z3;
                this.f40090b = i2;
                this.f40091c = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public ForumData.ForumUserFavoritesData f40092a;

            public b() {
            }

            public ForumData.ForumUserFavoritesData a() {
                return this.f40092a;
            }

            public void b(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
                this.f40092a = forumUserFavoritesData;
            }

            public b(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
                this.f40092a = forumUserFavoritesData;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f40093a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f40094b;

            /* renamed from: c  reason: collision with root package name */
            public String f40095c;

            /* renamed from: d  reason: collision with root package name */
            public String f40096d;

            /* renamed from: e  reason: collision with root package name */
            public int f40097e;

            /* renamed from: f  reason: collision with root package name */
            public int f40098f;

            /* renamed from: g  reason: collision with root package name */
            public int f40099g;

            /* renamed from: h  reason: collision with root package name */
            public int f40100h;

            /* renamed from: i  reason: collision with root package name */
            public int f40101i;

            /* renamed from: j  reason: collision with root package name */
            public boolean f40102j;

            /* renamed from: k  reason: collision with root package name */
            public String f40103k;

            public c() {
            }

            public c(int i2, String str, String str2, String str3, int i4, int i5, int i6, int i7, boolean z3, int i8) {
                this.f40093a = i2;
                this.f40103k = str;
                this.f40095c = str2;
                this.f40096d = str3;
                this.f40097e = i4;
                this.f40098f = i5;
                this.f40099g = i6;
                this.f40100h = i8;
                this.f40101i = i7;
                this.f40102j = z3;
            }
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f40104a;

            /* renamed from: b  reason: collision with root package name */
            public List<String> f40105b;

            /* renamed from: c  reason: collision with root package name */
            public int f40106c;

            public d(List<ForumBean.ForumPostsBean.ResBean> list, List<String> list2, int i2) {
                this.f40104a = list;
                this.f40105b = list2;
                this.f40106c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class e implements com.join.android.app.component.optimizetext.c {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40107a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f40108b;

            /* renamed from: c  reason: collision with root package name */
            public String f40109c;

            /* renamed from: d  reason: collision with root package name */
            public int f40110d;

            /* renamed from: e  reason: collision with root package name */
            public int f40111e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f40112f;

            /* renamed from: g  reason: collision with root package name */
            public String f40113g;

            /* renamed from: h  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f40114h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f40115i;

            /* renamed from: j  reason: collision with root package name */
            public SpannableStringBuilder f40116j;

            public e() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f40116j;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f40110d + "";
            }

            public e(boolean z3, boolean z4, String str, int i2, int i4, boolean z5, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, boolean z6, SpannableStringBuilder spannableStringBuilder) {
                this.f40107a = z3;
                this.f40108b = z4;
                this.f40109c = str;
                this.f40110d = i2;
                this.f40111e = i4;
                this.f40112f = z5;
                this.f40113g = str2;
                this.f40114h = list;
                this.f40115i = z6;
                this.f40116j = spannableStringBuilder;
            }
        }

        /* loaded from: classes3.dex */
        public static class f {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40117a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f40118b;

            /* renamed from: c  reason: collision with root package name */
            public String f40119c;

            /* renamed from: d  reason: collision with root package name */
            public int f40120d;

            /* renamed from: e  reason: collision with root package name */
            public int f40121e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f40122f;

            /* renamed from: g  reason: collision with root package name */
            public String f40123g;

            /* renamed from: h  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f40124h;

            /* renamed from: i  reason: collision with root package name */
            public List<RecommendLabelTag> f40125i;

            /* renamed from: j  reason: collision with root package name */
            public String f40126j;

            public f() {
            }

            public f(boolean z3, boolean z4, String str, int i2, int i4, boolean z5, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, List<RecommendLabelTag> list2, String str3) {
                this.f40117a = z3;
                this.f40118b = z4;
                this.f40119c = str;
                this.f40120d = i2;
                this.f40121e = i4;
                this.f40122f = z5;
                this.f40123g = str2;
                this.f40124h = list;
                this.f40125i = list2;
                this.f40126j = str3;
            }

            public f(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, List<RecommendLabelTag> list2) {
                this.f40118b = z3;
                this.f40119c = str;
                this.f40120d = i2;
                this.f40121e = i4;
                this.f40122f = z4;
                this.f40123g = str2;
                this.f40124h = list;
                this.f40125i = list2;
            }
        }

        /* loaded from: classes3.dex */
        public static class g {

            /* renamed from: a  reason: collision with root package name */
            public String f40127a;

            /* renamed from: b  reason: collision with root package name */
            public String f40128b;

            /* renamed from: c  reason: collision with root package name */
            public String f40129c;

            public g(String str, String str2, String str3) {
                this.f40127a = str;
                this.f40128b = str2;
                this.f40129c = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class h {

            /* renamed from: a  reason: collision with root package name */
            public int f40130a;

            /* renamed from: b  reason: collision with root package name */
            public String f40131b;

            /* renamed from: c  reason: collision with root package name */
            public int f40132c;

            /* renamed from: d  reason: collision with root package name */
            public int f40133d;

            /* renamed from: e  reason: collision with root package name */
            public int f40134e;

            /* renamed from: f  reason: collision with root package name */
            public int f40135f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f40136g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f40137h;

            public h() {
            }

            public h(int i2, int i4, String str, int i5, int i6, int i7, boolean z3, boolean z4) {
                this.f40130a = i2;
                this.f40135f = i4;
                this.f40131b = str;
                this.f40132c = i5;
                this.f40133d = i6;
                this.f40134e = i7;
                this.f40136g = z3;
                this.f40137h = z4;
            }
        }

        /* loaded from: classes3.dex */
        public static class j {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40141a;

            /* renamed from: b  reason: collision with root package name */
            public String f40142b;

            /* renamed from: c  reason: collision with root package name */
            public String f40143c;

            /* renamed from: d  reason: collision with root package name */
            public long f40144d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40145e;

            /* renamed from: f  reason: collision with root package name */
            public int f40146f;

            /* renamed from: g  reason: collision with root package name */
            public int f40147g;

            /* renamed from: h  reason: collision with root package name */
            public int f40148h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f40149i;

            /* renamed from: j  reason: collision with root package name */
            public boolean f40150j;

            /* renamed from: k  reason: collision with root package name */
            public int f40151k;

            /* renamed from: l  reason: collision with root package name */
            public int f40152l;

            /* renamed from: m  reason: collision with root package name */
            private String f40153m;

            /* renamed from: n  reason: collision with root package name */
            private String f40154n;

            public j() {
            }

            public j(boolean z3, String str, String str2, long j4, boolean z4, int i2, int i4, boolean z5, boolean z6, int i5, int i6, String str3, String str4, int i7) {
                this.f40141a = z3;
                this.f40142b = str;
                this.f40143c = str2;
                this.f40144d = j4;
                this.f40145e = z4;
                this.f40146f = i2;
                this.f40147g = i4;
                this.f40148h = i7;
                this.f40149i = z5;
                this.f40150j = z6;
                this.f40151k = i5;
                this.f40152l = i6;
                this.f40153m = str3;
                this.f40154n = str4;
            }
        }

        /* loaded from: classes3.dex */
        public static class k {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f40155a;

            /* renamed from: b  reason: collision with root package name */
            public List<String> f40156b;

            /* renamed from: c  reason: collision with root package name */
            public int f40157c;

            public k(List<ForumBean.ForumPostsBean.ResBean> list, List<String> list2, int i2) {
                this.f40155a = list;
                this.f40156b = list2;
                this.f40157c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class l implements com.join.android.app.component.optimizetext.c {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40158a;

            /* renamed from: b  reason: collision with root package name */
            public String f40159b;

            /* renamed from: c  reason: collision with root package name */
            public int f40160c;

            /* renamed from: d  reason: collision with root package name */
            public int f40161d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40162e;

            /* renamed from: f  reason: collision with root package name */
            public String f40163f;

            /* renamed from: g  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f40164g;

            /* renamed from: h  reason: collision with root package name */
            public SpannableStringBuilder f40165h;

            public l() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f40165h;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f40160c + "";
            }

            public l(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, SpannableStringBuilder spannableStringBuilder) {
                this.f40158a = z3;
                this.f40159b = str;
                this.f40160c = i2;
                this.f40161d = i4;
                this.f40162e = z4;
                this.f40163f = str2;
                this.f40164g = list;
                this.f40165h = spannableStringBuilder;
            }
        }

        /* loaded from: classes3.dex */
        public static class m {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40166a;

            /* renamed from: b  reason: collision with root package name */
            public String f40167b;

            /* renamed from: c  reason: collision with root package name */
            public int f40168c;

            /* renamed from: d  reason: collision with root package name */
            public int f40169d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40170e;

            /* renamed from: f  reason: collision with root package name */
            public String f40171f;

            /* renamed from: g  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f40172g;

            public m() {
            }

            public m(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
                this.f40166a = z3;
                this.f40167b = str;
                this.f40168c = i2;
                this.f40169d = i4;
                this.f40170e = z4;
                this.f40171f = str2;
                this.f40172g = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class n {

            /* renamed from: a  reason: collision with root package name */
            public int f40173a;

            /* renamed from: b  reason: collision with root package name */
            public String f40174b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f40175c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f40176d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40177e;

            public n() {
            }

            public n(int i2, String str, boolean z3, boolean z4, boolean z5) {
                this.f40173a = i2;
                this.f40174b = str;
                this.f40175c = z3;
                this.f40176d = z4;
                this.f40177e = z5;
            }
        }

        /* loaded from: classes3.dex */
        public static class o {

            /* renamed from: a  reason: collision with root package name */
            public String f40178a;

            /* renamed from: b  reason: collision with root package name */
            public String f40179b;

            /* renamed from: c  reason: collision with root package name */
            public String f40180c;

            public o(String str, String str2, String str3) {
                this.f40178a = str;
                this.f40179b = str2;
                this.f40180c = str3;
            }
        }

        public k0() {
        }

        public Object a() {
            return this.f40088b;
        }

        public ViewType b() {
            return this.f40087a;
        }

        public void c(Object obj) {
            this.f40088b = obj;
        }

        public void d(ViewType viewType) {
            this.f40087a = viewType;
        }

        public k0(ViewType viewType, Object obj) {
            this.f40087a = viewType;
            this.f40088b = obj;
        }

        /* loaded from: classes3.dex */
        public static class i {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40138a;

            /* renamed from: b  reason: collision with root package name */
            public String f40139b;

            /* renamed from: c  reason: collision with root package name */
            public ForumBean.GameInfo f40140c;

            public i(boolean z3, String str, ForumBean.GameInfo gameInfo) {
                this.f40138a = z3;
                this.f40139b = str;
                this.f40140c = gameInfo;
            }

            public i(String str, ForumBean.GameInfo gameInfo) {
                this.f40139b = str;
                this.f40140c = gameInfo;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k0.j f40181a;

        l(k0.j jVar) {
            this.f40181a = jVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f40181a.f40148h).start();
        }
    }

    /* loaded from: classes3.dex */
    class l0 {
        l0() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40184a;

        m(int i2) {
            this.f40184a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileFavoritesAdapter.this.f39996j != null) {
                ForumProfileFavoritesAdapter.this.f39996j.a(this.f40184a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40186a;

        n(int i2) {
            this.f40186a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f40186a);
            com.join.mgps.Util.i0.v0(view.getContext(), forumPostsBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40188a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40189b;

        o(List list, int i2) {
            this.f40188a = list;
            this.f40189b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String[] strArr = new String[this.f40188a.size()];
            this.f40188a.toArray(strArr);
            com.join.mgps.Util.i0.G0(view.getContext(), this.f40189b, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40191a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40192b;

        p(List list, int i2) {
            this.f40191a = list;
            this.f40192b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String[] strArr = new String[this.f40191a.size()];
            this.f40191a.toArray(strArr);
            com.join.mgps.Util.i0.G0(view.getContext(), this.f40192b, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40194a;

        q(String str) {
            this.f40194a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.Q0(view.getContext(), this.f40194a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f40196a;

        public r(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f40196a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            DownloadTask downloadTask = this.f40196a.getDownloadTask();
            if (downloadTask == null) {
                if (UtilsMy.e0(this.f40196a.getTag_info())) {
                    if (this.f40196a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(context).c(context, this.f40196a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, this.f40196a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f40196a.getVer()) || k4.d() >= Integer.parseInt(this.f40196a.getVer())) {
                                com.join.android.app.common.utils.a.g0(context);
                                APKUtils.X(context, this.f40196a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(context).c(context, this.f40196a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f40196a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(context);
                            APKUtils.S(context, this.f40196a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(context, this.f40196a);
                return;
            }
            String plugin_num = this.f40196a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f40196a.getDown_url_remote());
                UtilsMy.h2(downloadTask, context);
                IntentUtil.getInstance().intentActivity(context, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            CollectionBeanSubBusiness collectionBeanSubBusiness = this.f40196a;
            if (collectionBeanSubBusiness != null && UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), this.f40196a.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status != 13) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(context, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (!com.join.android.app.common.utils.f.j(context)) {
                                            com.join.mgps.Util.i2.a(context).b("无网络连接");
                                            return;
                                        } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                            downloadTask.setVer(this.f40196a.getVer());
                                            downloadTask.setVer_name(this.f40196a.getVer_name());
                                            downloadTask.setUrl(this.f40196a.getDown_url_remote());
                                            UtilsMy.w3(context, downloadTask);
                                            return;
                                        }
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(context)) {
                                                    com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                    return;
                                                } else if (UtilsMy.T0(context, downloadTask)) {
                                                    return;
                                                } else {
                                                    if (this.f40196a.getDown_status() == 5) {
                                                        UtilsMy.R0(context, downloadTask);
                                                        return;
                                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                        return;
                                                    } else {
                                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                        com.php25.PDownload.d.b(downloadTask);
                                                        downloadTask.setVer(this.f40196a.getVer());
                                                        downloadTask.setVer_name(this.f40196a.getVer_name());
                                                        downloadTask.setUrl(this.f40196a.getDown_url_remote());
                                                        com.php25.PDownload.d.c(downloadTask, context);
                                                        return;
                                                    }
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, context);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, context);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(context, downloadTask);
                return;
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness2 = this.f40196a;
            if (collectionBeanSubBusiness2 != null) {
                if (UtilsMy.o0(collectionBeanSubBusiness2.getPay_tag_info(), this.f40196a.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(context, this.f40196a.getCrc_sign_id());
                    return;
                }
                UtilsMy.c1(downloadTask, this.f40196a);
                if (UtilsMy.T0(context, downloadTask)) {
                    return;
                }
                if (this.f40196a.getDown_status() == 5) {
                    UtilsMy.R0(context, downloadTask);
                } else {
                    UtilsMy.F0(context, downloadTask, this.f40196a.getTp_down_url(), this.f40196a.getOther_down_switch(), this.f40196a.getCdn_down_switch());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final Object f40198a;

        public s(Object obj) {
            this.f40198a = obj;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2;
            int i4;
            int i5;
            Context context = view.getContext();
            DownloadTask downloadTask = (DownloadTask) this.f40198a;
            if (downloadTask != null) {
                String ver = downloadTask.getVer();
                String ver_name = downloadTask.getVer_name();
                downloadTask.getPackageName();
                downloadTask.getTipBeans();
                downloadTask.getSource_down_url();
                List<DownloadUrlBean> tp_down_url = downloadTask.getTp_down_url();
                int other_down_switch = downloadTask.getOther_down_switch();
                int cdn_down_switch = downloadTask.getCdn_down_switch();
                Object obj = this.f40198a;
                if (obj instanceof CollectionBeanSubBusiness) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) obj;
                    downloadTask = collectionBeanSubBusiness.getDownloadTask();
                    ver = collectionBeanSubBusiness.getVer();
                    if (collectionBeanSubBusiness.getPay_tag_info() != null) {
                        i5 = collectionBeanSubBusiness.getPay_tag_info().getPay_game_amount();
                        i2 = i5;
                    } else {
                        i5 = 0;
                        i2 = 0;
                    }
                    if (i5 > 0) {
                        n1.e0.o().p(collectionBeanSubBusiness.getCrc_sign_id());
                    }
                } else if (obj instanceof RecomDatabeanBusiness) {
                    AppBean game_info = ((RecomDatabeanBusiness) obj).getSub().get(0).getGame_info();
                    if (game_info.getPay_tag_info() != null) {
                        i4 = game_info.getPay_tag_info().getPay_game_amount();
                        i2 = i4;
                    } else {
                        i4 = 0;
                        i2 = 0;
                    }
                    if (i4 > 0) {
                        n1.e0.o().p(game_info.getCrc_sign_id());
                    }
                } else {
                    i2 = 0;
                }
                String plugin_num = downloadTask.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    IntentDateBean intentDateBean = new IntentDateBean();
                    intentDateBean.setLink_type(4);
                    intentDateBean.setLink_type_val(downloadTask.getUrl());
                    UtilsMy.h2(downloadTask, context);
                    IntentUtil.getInstance().intentActivity(context, intentDateBean);
                    return;
                }
                int status = downloadTask.getStatus();
                if (UtilsMy.n0(i2, downloadTask.getCrc_link_type_val()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status != 13) {
                        if (status != 2) {
                            if (status != 3) {
                                if (status == 5) {
                                    UtilsMy.c3(context, downloadTask);
                                    return;
                                } else if (status != 6) {
                                    if (status != 7) {
                                        if (status == 42) {
                                            if (!com.join.android.app.common.utils.f.j(context)) {
                                                com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                return;
                                            } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                return;
                                            } else {
                                                DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                                downloadTask.setId(B.getId());
                                                downloadTask.setVer(ver);
                                                downloadTask.setVer_name(ver_name);
                                                downloadTask.setUrl(B.getUrl());
                                                UtilsMy.w3(context, downloadTask);
                                                return;
                                            }
                                        } else if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    if (!com.join.android.app.common.utils.f.j(context)) {
                                                        com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                        return;
                                                    }
                                                    Object obj2 = this.f40198a;
                                                    if (obj2 instanceof CollectionBeanSubBusiness) {
                                                        CollectionBeanSubBusiness collectionBeanSubBusiness2 = (CollectionBeanSubBusiness) obj2;
                                                        if (UtilsMy.T0(context, downloadTask)) {
                                                            return;
                                                        }
                                                        if (collectionBeanSubBusiness2.getDown_status() == 5) {
                                                            UtilsMy.R0(context, downloadTask);
                                                            return;
                                                        }
                                                    } else if (obj2 instanceof RecomDatabeanBusiness) {
                                                        AppBean game_info2 = ((RecomDatabeanBusiness) obj2).getSub().get(0).getGame_info();
                                                        if (UtilsMy.T0(context, downloadTask)) {
                                                            return;
                                                        }
                                                        if (game_info2.getDown_status() == 5) {
                                                            UtilsMy.R0(context, downloadTask);
                                                            return;
                                                        }
                                                    }
                                                    if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                        return;
                                                    }
                                                    DownloadTask B2 = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                                    downloadTask.setId(B2.getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(ver);
                                                    downloadTask.setVer_name(ver_name);
                                                    downloadTask.setUrl(B2.getUrl());
                                                    com.php25.PDownload.d.c(downloadTask, context);
                                                    return;
                                                case 10:
                                                    break;
                                                case 11:
                                                    UtilsMy.j3(downloadTask, context);
                                                    return;
                                                default:
                                                    return;
                                            }
                                        }
                                    }
                                }
                            }
                            com.php25.PDownload.d.c(downloadTask, context);
                            return;
                        }
                        com.php25.PDownload.d.h(downloadTask);
                        return;
                    }
                    com.php25.PDownload.d.k(context, downloadTask);
                    return;
                }
                if (UtilsMy.n0(i2, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(context, downloadTask.getCrc_link_type_val());
                    return;
                }
                Object obj3 = this.f40198a;
                if (obj3 instanceof CollectionBeanSubBusiness) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness3 = (CollectionBeanSubBusiness) obj3;
                    UtilsMy.c1(downloadTask, collectionBeanSubBusiness3);
                    if (UtilsMy.T0(context, downloadTask)) {
                        return;
                    }
                    if (collectionBeanSubBusiness3.getDown_status() == 5) {
                        UtilsMy.R0(context, downloadTask);
                    } else {
                        UtilsMy.F0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                    }
                } else if (obj3 instanceof RecomDatabeanBusiness) {
                    AppBean game_info3 = ((RecomDatabeanBusiness) obj3).getSub().get(0).getGame_info();
                    UtilsMy.b1(downloadTask, game_info3);
                    if (UtilsMy.T0(context, downloadTask)) {
                        return;
                    }
                    if (game_info3.getDown_status() == 5) {
                        UtilsMy.R0(context, downloadTask);
                    } else {
                        UtilsMy.F0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public View f40200b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40201c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40202d;

        t() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public interface u {
        void a(int i2);

        void b(int i2);

        void c(int i2);

        void d(int i2);

        void e(String str);

        void f(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40204b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40205c;

        /* renamed from: d  reason: collision with root package name */
        public Button f40206d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f40207e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f40208f;

        v() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public class w extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40210b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f40211c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40212d;

        /* renamed from: e  reason: collision with root package name */
        public RelativeLayout f40213e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f40214f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f40215g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f40216h;

        /* renamed from: i  reason: collision with root package name */
        public LinearLayout f40217i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f40218j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f40219k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f40220l;

        /* renamed from: m  reason: collision with root package name */
        public ProgressBar f40221m;

        /* renamed from: n  reason: collision with root package name */
        public View f40222n;

        /* renamed from: o  reason: collision with root package name */
        public View f40223o;

        public w() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40225b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40226c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40227d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40228e;

        /* renamed from: f  reason: collision with root package name */
        public View f40229f;

        /* renamed from: g  reason: collision with root package name */
        public View f40230g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f40231h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f40232i;

        /* renamed from: j  reason: collision with root package name */
        public SimpleDraweeView f40233j;

        x() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public View f40235b;

        /* renamed from: c  reason: collision with root package name */
        public View f40236c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f40237d;

        /* renamed from: e  reason: collision with root package name */
        public SimpleDraweeView f40238e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f40239f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f40240g;

        y() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z extends l0 {

        /* renamed from: b  reason: collision with root package name */
        public StaticLayoutView f40242b;

        /* renamed from: c  reason: collision with root package name */
        public View f40243c;

        /* renamed from: d  reason: collision with root package name */
        public View f40244d;

        z() {
            super();
        }
    }

    public ForumProfileFavoritesAdapter(Context context, com.join.android.app.component.video.c cVar) {
        this.f39989c = context;
        this.f39991e = cVar;
        this.f39987a = new com.join.android.app.component.optimizetext.b(context);
        this.f39988b = y(context);
        d();
        A();
    }

    private void A() {
        if (this.f39993g == null) {
            this.f39993g = z();
        }
    }

    private void B(TextView textView, int i2) {
        textView.setOnTouchListener(new f(i2));
    }

    private void C(x xVar, boolean z3, int i2, int i4) {
        TextView textView = xVar.f40227d;
        ImageView imageView = xVar.f40232i;
        if (z3) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(i2 + "");
            textView.setTextColor(Color.parseColor("#d92a0c"));
        } else {
            imageView.setImageResource(R.drawable.unlike);
            textView.setText(i2 + "");
            textView.setTextColor(Color.parseColor("#a9a9a9"));
        }
        ((View) xVar.f40227d.getParent()).setOnClickListener(new h(xVar, i4));
    }

    private void E(e0 e0Var, k0.k kVar) {
        if (kVar != null && kVar.f40155a.size() != 0) {
            if (this.f39993g == null) {
                this.f39993g = z();
            }
            List<String> list = kVar.f40156b;
            TextView textView = e0Var.f40048b;
            if (list != null && list.size() > 3) {
                textView.setVisibility(0);
                textView.setText("共" + list.size() + "张");
            } else {
                textView.setVisibility(8);
            }
            SimpleDraweeView[] simpleDraweeViewArr = {e0Var.f40050d, e0Var.f40051e, e0Var.f40052f};
            int i2 = 0;
            for (int i4 = 0; i4 < 3; i4++) {
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i4];
                if (i4 >= kVar.f40155a.size()) {
                    simpleDraweeView.setVisibility(8);
                } else {
                    ForumBean.ForumPostsBean.ResBean resBean = kVar.f40155a.get(i4);
                    if (resBean.getType().equals("pic")) {
                        O(simpleDraweeView, i4, resBean.getThumb(), i4 - i2, list);
                    } else if (resBean.getType().equals("video")) {
                        i2++;
                        Z(simpleDraweeView, i4, resBean.getThumb(), resBean.getRaw());
                    }
                }
            }
            return;
        }
        e0Var.f40049c.setVisibility(8);
    }

    private void F(View view, boolean z3, int i2) {
        TextView textView = (TextView) view.findViewById(R.id.forum_post_praise);
        ImageView imageView = (ImageView) view.findViewById(R.id.forum_post_praise_icon);
        if (z3) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(i2 + "");
            return;
        }
        imageView.setImageResource(R.drawable.unlike);
        textView.setText(i2 + "");
    }

    private void G(View view, ForumBean.ForumPostsBean forumPostsBean) {
        boolean is_praise = forumPostsBean.is_praise();
        int praise = forumPostsBean.getPraise();
        forumPostsBean.setPraise(is_praise ? praise - 1 : praise + 1);
        forumPostsBean.setIs_praise(!is_praise);
        F(view, forumPostsBean.is_praise(), forumPostsBean.getPraise());
    }

    private void H(TextView textView, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
        I(textView, str, z3, z4, str2, list, null, 0, "");
    }

    private void I(TextView textView, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, List<RecommendLabelTag> list2, int i2, String str3) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        com.join.mgps.Util.i0.h(textView.getContext(), spannableStringBuilder, list);
        com.join.mgps.Util.i0.g(textView, spannableStringBuilder, z3, z4, str2);
        com.join.mgps.Util.i0.i(textView.getContext(), spannableStringBuilder, list2, i2, str3);
        spannableStringBuilder.append((CharSequence) str);
        textView.setText(spannableStringBuilder);
    }

    private void W(ImageView imageView, String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            imageView.setVisibility(8);
            return;
        }
        imageView.setVisibility(0);
        Context context = imageView.getContext();
        int i2 = context.getResources().getDisplayMetrics().widthPixels - (((int) (context.getResources().getDisplayMetrics().scaledDensity * 6.0f)) * 2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = (int) ((i2 * 1.0f) / 1.8f);
        imageView.setLayoutParams(layoutParams);
    }

    private void X(View view, CharSequence charSequence) {
        if (view == null) {
            return;
        }
        if (view instanceof TextView) {
            ((TextView) view).setText(charSequence);
        } else if (view instanceof Button) {
            ((Button) view).setText(charSequence);
        }
    }

    private void Y(View view, int i2) {
        if (view == null) {
            return;
        }
        if (view instanceof TextView) {
            ((TextView) view).setTextColor(i2);
        } else if (view instanceof Button) {
            ((Button) view).setTextColor(i2);
        }
    }

    private void b0(c0 c0Var, int i2) {
        if (i2 == 0) {
            c0Var.f40023g.setVisibility(8);
            c0Var.f40027k.setVisibility(8);
            c0Var.f40028l.setVisibility(8);
            c0Var.f40024h.setVisibility(0);
            c0Var.f40022f.setVisibility(0);
            return;
        }
        c0Var.f40023g.setVisibility(0);
        if (i2 == 17) {
            c0Var.f40027k.setVisibility(8);
            c0Var.f40028l.setVisibility(0);
        } else {
            c0Var.f40028l.setVisibility(8);
            c0Var.f40027k.setVisibility(0);
        }
        c0Var.f40024h.setVisibility(8);
        c0Var.f40022f.setVisibility(8);
    }

    private View f(int i2, View view, ViewGroup viewGroup) {
        t tVar;
        k0.a aVar;
        if (view != null) {
            tVar = (t) view.getTag();
        } else {
            tVar = new t();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_profile_favorites_header, (ViewGroup) null);
            tVar.f40200b = view.findViewById(R.id.forum_post_divider);
            tVar.f40201c = (TextView) view.findViewById(R.id.typeTv);
            tVar.f40202d = (TextView) view.findViewById(R.id.timestampTv);
            view.setTag(tVar);
        }
        try {
            aVar = (k0.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar == null) {
            return view;
        }
        if (aVar.f40089a) {
            tVar.f40200b.setVisibility(8);
        } else {
            tVar.f40200b.setVisibility(0);
        }
        int i4 = aVar.f40090b;
        if (i4 == 1) {
            tVar.f40201c.setText("游戏");
        } else if (i4 == 2) {
            tVar.f40201c.setText("帖子");
        } else {
            tVar.f40201c.setText("收藏");
        }
        if (TextUtils.isEmpty(aVar.f40091c)) {
            aVar.f40091c = "";
        }
        tVar.f40202d.setText(aVar.f40091c);
        return view;
    }

    private View k(int i2, View view, ViewGroup viewGroup) {
        x xVar;
        k0.c cVar;
        if (view != null) {
            xVar = (x) view.getTag();
        } else {
            xVar = new x();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_f_item_post_footer, (ViewGroup) null);
            xVar.f40233j = (SimpleDraweeView) view.findViewById(R.id.avatar);
            xVar.f40230g = view.findViewById(R.id.indicator);
            xVar.f40225b = (TextView) view.findViewById(R.id.groupName);
            xVar.f40226c = (TextView) view.findViewById(R.id.hostName);
            xVar.f40227d = (TextView) view.findViewById(R.id.likeCount);
            xVar.f40228e = (TextView) view.findViewById(R.id.commentCount);
            xVar.f40231h = (TextView) view.findViewById(R.id.forum_post_view);
            xVar.f40229f = view.findViewById(R.id.divider);
            xVar.f40232i = (ImageView) view.findViewById(R.id.forum_post_praise_icon);
            view.setTag(xVar);
        }
        try {
            cVar = (k0.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar != null && xVar != null) {
            if (cVar.f40094b) {
                xVar.f40229f.setVisibility(0);
            } else {
                xVar.f40229f.setVisibility(8);
            }
            if (cVar.f40093a == 0) {
                if (xVar.f40230g.getVisibility() != 0) {
                    xVar.f40230g.setVisibility(0);
                }
            } else if (xVar.f40230g.getVisibility() != 8) {
                xVar.f40230g.setVisibility(8);
            }
            xVar.f40225b.setText(cVar.f40095c);
            xVar.f40226c.setText(cVar.f40096d);
            TextView textView = xVar.f40227d;
            textView.setText(com.join.mgps.Util.i0.R(cVar.f40097e) + "");
            TextView textView2 = xVar.f40228e;
            textView2.setText(com.join.mgps.Util.i0.R(cVar.f40098f) + "");
            TextView textView3 = xVar.f40231h;
            textView3.setText(com.join.mgps.Util.i0.R(cVar.f40101i) + "");
            MyImageLoader.w(xVar.f40233j, cVar.f40103k);
            xVar.f40233j.setOnClickListener(new k(cVar));
            R(view, cVar.f40099g);
            C(xVar, cVar.f40102j, cVar.f40097e, cVar.f40099g);
            return view;
        }
        return view;
    }

    private View l(int i2, View view, ViewGroup viewGroup) {
        y yVar;
        View view2;
        k0.d dVar;
        if (view != null) {
            yVar = (y) view.getTag();
            view2 = view;
        } else {
            yVar = new y();
            View inflate = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_f_item_post_imgs, (ViewGroup) null);
            yVar.f40235b = inflate.findViewById(R.id.spaceT);
            yVar.f40236c = inflate.findViewById(R.id.imgsMain);
            yVar.f40237d = (SimpleDraweeView) inflate.findViewById(R.id.img_m_1);
            yVar.f40238e = (SimpleDraweeView) inflate.findViewById(R.id.img_m_2);
            yVar.f40239f = (SimpleDraweeView) inflate.findViewById(R.id.img_m_3);
            yVar.f40240g = (TextView) inflate.findViewById(R.id.images_count);
            inflate.setTag(yVar);
            view2 = inflate;
        }
        try {
            dVar = (k0.d) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (dVar == null) {
            return view2;
        }
        List<ForumBean.ForumPostsBean.ResBean> list = dVar.f40104a;
        if (list != null && list.size() != 0) {
            view2.setVisibility(0);
            List<String> list2 = dVar.f40105b;
            TextView textView = yVar.f40240g;
            int size = list2 != null ? list2.size() : 0;
            if (size > 3) {
                textView.setVisibility(0);
                textView.setText("共" + list2.size() + "张");
            } else {
                textView.setVisibility(8);
            }
            if (this.f39993g == null) {
                this.f39993g = z();
            }
            int i4 = 1;
            SimpleDraweeView[] simpleDraweeViewArr = {yVar.f40237d, yVar.f40238e, yVar.f40239f};
            int i5 = 0;
            int i6 = 0;
            while (i5 < 3) {
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i5];
                if (i5 >= dVar.f40104a.size()) {
                    simpleDraweeView.setVisibility(8);
                } else {
                    simpleDraweeView.setVisibility(0);
                    ForumBean.ForumPostsBean.ResBean resBean = dVar.f40104a.get(i5);
                    if (resBean.getType().equals("pic")) {
                        String thumb = resBean.getThumb();
                        Integer[] i02 = com.join.mgps.Util.i0.i0(thumb);
                        if (i5 == 0 && size == i4 && i02 != null && i02[0].intValue() != 0 && i02[i4].intValue() != 0) {
                            N(simpleDraweeView, i5, thumb, i5 - i6, list2);
                        } else {
                            O(simpleDraweeView, i5, thumb, i5 - i6, list2);
                        }
                    } else if (resBean.getType().equals("video")) {
                        i6++;
                        Z(simpleDraweeView, i5, resBean.getThumb(), resBean.getRaw());
                    }
                }
                i5++;
                i4 = 1;
            }
            R(view2, dVar.f40106c);
            return view2;
        }
        view2.setVisibility(8);
        return view2;
    }

    private View m(int i2, View view, ViewGroup viewGroup) {
        z zVar;
        k0.e eVar;
        if (view != null) {
            zVar = (z) view.getTag();
        } else {
            zVar = new z();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_f_item_post_message, (ViewGroup) null);
            zVar.f40242b = (StaticLayoutView) view.findViewById(R.id.msg);
            zVar.f40243c = view.findViewById(R.id.divider);
            zVar.f40244d = view.findViewById(R.id.spaceT);
            view.setTag(zVar);
        }
        try {
            eVar = (k0.e) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (eVar == null) {
            return view;
        }
        com.join.android.app.component.optimizetext.b bVar = this.f39987a;
        if (bVar.d(eVar.f40110d + "") == null) {
            this.f39987a.e(eVar);
        }
        StaticLayoutView staticLayoutView = zVar.f40242b;
        com.join.android.app.component.optimizetext.b bVar2 = this.f39987a;
        staticLayoutView.setLayout(bVar2.d(eVar.f40110d + ""));
        com.join.mgps.Util.i0.X0(zVar.f40242b);
        if (eVar.f40107a) {
            zVar.f40243c.setVisibility(0);
            zVar.f40244d.setVisibility(0);
        } else {
            zVar.f40243c.setVisibility(8);
            zVar.f40244d.setVisibility(8);
        }
        R(view, eVar.f40110d);
        return view;
    }

    private View n(int i2, View view, ViewGroup viewGroup) {
        a0 a0Var;
        k0.g gVar;
        if (view != null) {
            a0Var = (a0) view.getTag();
        } else {
            a0Var = new a0();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_f_item_post_video, (ViewGroup) null);
            a0Var.f40006b = (FrameLayout) view.findViewById(R.id.videoContner);
            a0Var.f40007c = (SimpleDraweeView) view.findViewById(R.id.bannerView);
            view.setTag(a0Var);
        }
        try {
            gVar = (k0.g) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (gVar == null) {
            return view;
        }
        String str = gVar.f40128b;
        String str2 = gVar.f40127a;
        if (a0Var.f40006b != null) {
            a0Var.f40006b.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f40003q));
            MyImageLoader.d(a0Var.f40007c, R.drawable.video_bg, str2);
            a0Var.f40007c.setTag(Integer.valueOf(i2));
            if (com.join.mgps.Util.d2.i(str)) {
                this.f39991e.d(i2, new c.k(i2, str, str2), new boolean[0]);
            }
        }
        return view;
    }

    private View o(int i2, View view, ViewGroup viewGroup) {
        b0 b0Var;
        k0.h hVar;
        if (view != null) {
            b0Var = (b0) view.getTag();
        } else {
            b0Var = new b0();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_welcome_item_post_footer, (ViewGroup) null);
            b0Var.f40011b = (TextView) view.findViewById(R.id.forum_name);
            b0Var.f40012c = (TextView) view.findViewById(R.id.forum_post_view);
            b0Var.f40013d = (TextView) view.findViewById(R.id.forum_post_commit);
            b0Var.f40014e = (TextView) view.findViewById(R.id.forum_post_praise);
            view.setTag(b0Var);
        }
        try {
            hVar = (k0.h) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (hVar == null) {
            return view;
        }
        if (hVar.f40137h) {
            view.findViewById(R.id.post_footer_divider).setVisibility(0);
        } else {
            view.findViewById(R.id.post_footer_divider).setVisibility(8);
        }
        b0Var.f40011b.setText(hVar.f40131b);
        if (com.join.mgps.Util.d2.h(hVar.f40131b)) {
            ((ViewGroup) b0Var.f40011b.getParent()).setVisibility(8);
        } else {
            ((ViewGroup) b0Var.f40011b.getParent()).setVisibility(0);
        }
        TextView textView = b0Var.f40012c;
        com.join.mgps.Util.i0.D1(textView, hVar.f40132c + "", "0");
        TextView textView2 = b0Var.f40013d;
        com.join.mgps.Util.i0.D1(textView2, hVar.f40133d + "", "0");
        F(view, hVar.f40136g, hVar.f40134e);
        int i4 = hVar.f40130a;
        ((View) b0Var.f40014e.getParent()).setOnClickListener(new m(i4));
        T(view, i4);
        F((View) b0Var.f40014e.getParent(), hVar.f40136g, hVar.f40134e);
        V((View) b0Var.f40014e.getParent(), i4);
        return view;
    }

    private View p(int i2, View view, ViewGroup viewGroup) {
        c0 c0Var;
        View view2;
        k0.i iVar;
        if (view != null) {
            c0Var = (c0) view.getTag();
            view2 = view;
        } else {
            c0Var = new c0();
            View inflate = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_post_activity_item_post_game, (ViewGroup) null);
            c0Var.f40018b = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
            c0Var.f40019c = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
            c0Var.f40020d = (Button) inflate.findViewById(R.id.mgListviewItemInstall);
            c0Var.f40021e = (TextView) inflate.findViewById(R.id.mgListviewItemSize);
            c0Var.f40022f = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
            c0Var.f40023g = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
            c0Var.f40024h = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
            c0Var.f40025i = (TextView) inflate.findViewById(R.id.appSize);
            c0Var.f40026j = (TextView) inflate.findViewById(R.id.loding_info);
            c0Var.f40027k = (ProgressBar) inflate.findViewById(R.id.progressBar);
            c0Var.f40028l = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
            c0Var.f40029m = inflate.findViewById(R.id.line);
            c0Var.f40030n = inflate.findViewById(R.id.relateLayoutApp);
            c0Var.f40031o = inflate.findViewById(R.id.divider);
            inflate.setTag(c0Var);
            view2 = inflate;
        }
        try {
            iVar = (k0.i) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (iVar == null) {
            return view2;
        }
        ForumBean.GameInfo gameInfo = iVar.f40140c;
        String str = iVar.f40139b;
        String game_id = gameInfo.getGame_id();
        if (iVar.f40138a) {
            if (c0Var.f40031o.getVisibility() != 0) {
                c0Var.f40031o.setVisibility(0);
            }
        } else if (c0Var.f40031o.getVisibility() != 8) {
            c0Var.f40031o.setVisibility(8);
        }
        c0Var.f40020d.setBackgroundResource(R.drawable.detial_fourm_butn_selector1);
        int dimensionPixelSize = this.f39989c.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) c0Var.f40020d.getLayoutParams();
        layoutParams.width = dimensionPixelSize;
        c0Var.f40020d.setLayoutParams(layoutParams);
        c0Var.f40019c.setText(gameInfo.getGame_name());
        c0Var.f40022f.setText(gameInfo.getGame_desc());
        String game_size = gameInfo.getGame_size();
        MyImageLoader.j(c0Var.f40018b, gameInfo.getGame_ico_remote(), MyImageLoader.z(this.f39989c));
        List<ForumBean.GameInfo.GameTagInfo> game_tag_info = gameInfo.getGame_tag_info();
        b0(c0Var, 0);
        DownloadTask downloadTask = gameInfo.getDownloadTask();
        if (downloadTask != null) {
            L(c0Var, downloadTask);
        } else {
            if (gameInfo.getPay_tag_info() != null && gameInfo.getPay_tag_info().getPay_game_amount() > 0 && !n1.e0.o().p(gameInfo.getGame_id())) {
                K(c0Var.f40020d, gameInfo.getPay_tag_info().getPay_game_amount());
            } else {
                J(c0Var.f40020d, gameInfo.getDown_status());
            }
            c0Var.f40020d.setOnClickListener(new i(gameInfo, downloadTask, str, game_id));
        }
        if ((ConstantIntEnum.H5.value() + "").equals(gameInfo.getPlugin_num())) {
            c0Var.f40024h.setVisibility(8);
            c0Var.f40020d.setBackgroundResource(R.drawable.recom_blue_butn);
            c0Var.f40020d.setText("开始");
            c0Var.f40020d.setTextColor(this.f39989c.getResources().getColor(R.color.app_blue_color));
        } else {
            c0Var.f40024h.setVisibility(0);
            com.join.mgps.Util.i0.c(game_tag_info, c0Var.f40024h, this.f39989c);
            UtilsMy.C(gameInfo.getScore(), gameInfo.getDown_count(), game_size, gameInfo.getSp_tag_info(), null, c0Var.f40024h, this.f39989c);
            UtilsMy.v2(gameInfo.getSp_tag_info(), view2, downloadTask);
        }
        c0Var.f40030n.setOnClickListener(new j(str, game_id, gameInfo));
        return view2;
    }

    private View q(int i2, View view, ViewGroup viewGroup) {
        d0 d0Var;
        k0.j jVar;
        if (view != null) {
            d0Var = (d0) view.getTag();
        } else {
            d0Var = new d0();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_welcome_item_post_header, (ViewGroup) null);
            d0Var.f40039f = view.findViewById(R.id.forum_post_divider);
            d0Var.f40035b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            d0Var.f40036c = (TextView) view.findViewById(R.id.forum_post_nickname);
            d0Var.f40037d = (TextView) view.findViewById(R.id.forum_post_add_time);
            d0Var.f40038e = (TextView) view.findViewById(R.id.forum_post_stickie);
            d0Var.f40042i = (RelativeLayout) view.findViewById(R.id.forumExtFunc);
            d0Var.f40041h = (ImageView) view.findViewById(R.id.forum_post_moderator);
            d0Var.f40043j = (VipView) view.findViewById(R.id.vipFlag);
            d0Var.f40044k = (TextView) view.findViewById(R.id.copperTitleTv);
            view.setTag(d0Var);
        }
        try {
            jVar = (k0.j) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (jVar == null) {
            return view;
        }
        UtilsMy.M2(this.f39989c, d0Var.f40036c, jVar.f40151k, jVar.f40152l, R.color.forum_nickname_color);
        d0Var.f40043j.setVipData(jVar.f40151k, jVar.f40152l);
        d0Var.f40042i.setVisibility(0);
        jVar.f40141a = true;
        d0Var.f40039f.setVisibility(8);
        d0Var.f40036c.setText(jVar.f40143c);
        d0Var.f40037d.setText(com.join.android.app.common.utils.c.a(jVar.f40144d * 1000));
        if (jVar.f40145e) {
            d0Var.f40038e.setVisibility(0);
        } else {
            d0Var.f40038e.setVisibility(8);
        }
        if (jVar.f40150j) {
            d0Var.f40041h.setVisibility(0);
        } else {
            d0Var.f40041h.setVisibility(8);
        }
        MyImageLoader.w(d0Var.f40035b, jVar.f40142b);
        d0Var.f40035b.setOnClickListener(new l(jVar));
        int i4 = jVar.f40146f;
        T(view, i4);
        a0(d0Var.f40042i, i4);
        com.join.mgps.Util.i0.S0(d0Var.f40035b, d0Var.f40036c, d0Var.f40037d);
        com.join.mgps.Util.i0.U0(d0Var.f40043j);
        String str = jVar.f40153m;
        String str2 = jVar.f40154n;
        if (d0Var.f40044k != null) {
            if (!TextUtils.isEmpty(str)) {
                d0Var.f40044k.setVisibility(0);
                d0Var.f40044k.setText(str);
                Drawable drawable = this.f39989c.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                d0Var.f40044k.setBackgroundDrawable(drawable);
            } else {
                d0Var.f40044k.setVisibility(8);
            }
        }
        return view;
    }

    private View r(int i2, View view, ViewGroup viewGroup) {
        e0 e0Var;
        k0.k kVar;
        if (view != null) {
            e0Var = (e0) view.getTag();
        } else {
            e0Var = new e0();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_welcome_item_post_thumbnail, (ViewGroup) null);
            e0Var.f40049c = (RelativeLayout) view.findViewById(R.id.forum_post_media_container);
            e0Var.f40048b = (TextView) view.findViewById(R.id.images_count);
            e0Var.f40050d = (SimpleDraweeView) view.findViewById(R.id.img_m_1);
            e0Var.f40051e = (SimpleDraweeView) view.findViewById(R.id.img_m_2);
            e0Var.f40052f = (SimpleDraweeView) view.findViewById(R.id.img_m_3);
            view.setTag(e0Var);
        }
        try {
            kVar = (k0.k) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (kVar == null) {
            return view;
        }
        E(e0Var, kVar);
        T(view, kVar.f40157c);
        return view;
    }

    private View s(int i2, View view, ViewGroup viewGroup) {
        g0 g0Var;
        k0.l lVar;
        if (view != null) {
            g0Var = (g0) view.getTag();
        } else {
            g0Var = new g0();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_post_activity_item_post_message1, (ViewGroup) null);
            g0Var.f40060b = (StaticLayoutView) view.findViewById(R.id.forum_post_message);
            view.setTag(g0Var);
        }
        try {
            lVar = (k0.l) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (lVar == null) {
            return view;
        }
        com.join.android.app.component.optimizetext.b bVar = this.f39987a;
        if (bVar.d(lVar.f40160c + "") == null) {
            this.f39987a.e(lVar);
        }
        StaticLayoutView staticLayoutView = g0Var.f40060b;
        com.join.android.app.component.optimizetext.b bVar2 = this.f39987a;
        staticLayoutView.setLayout(bVar2.d(lVar.f40160c + ""));
        com.join.mgps.Util.i0.X0(g0Var.f40060b);
        T(view, lVar.f40160c);
        return view;
    }

    private View t(int i2, View view, ViewGroup viewGroup) {
        h0 h0Var;
        k0.f fVar;
        if (view != null) {
            h0Var = (h0) view.getTag();
        } else {
            h0Var = new h0();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_f_item_post_subject, (ViewGroup) null);
            h0Var.f40065b = (Button) view.findViewById(R.id.best);
            h0Var.f40066c = (TextView) view.findViewById(R.id.subject);
            h0Var.f40068e = view.findViewById(R.id.subjectMain);
            h0Var.f40067d = view.findViewById(R.id.forum_post_divider);
            view.setTag(h0Var);
        }
        try {
            fVar = (k0.f) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (fVar == null) {
            return view;
        }
        if (fVar.f40117a) {
            h0Var.f40067d.setVisibility(0);
        } else {
            h0Var.f40067d.setVisibility(8);
        }
        h0Var.f40066c.setMovementMethod(LinkMovementMethod.getInstance());
        I(h0Var.f40066c, fVar.f40119c, fVar.f40118b, fVar.f40122f, fVar.f40123g, fVar.f40124h, fVar.f40125i, fVar.f40121e, fVar.f40126j);
        int i4 = fVar.f40120d;
        B(h0Var.f40066c, i4);
        R(view, i4);
        return view;
    }

    private View u(int i2, View view, ViewGroup viewGroup) {
        i0 i0Var;
        k0.m mVar;
        if (view != null) {
            i0Var = (i0) view.getTag();
        } else {
            i0Var = new i0();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            i0Var.f40075b = (Button) view.findViewById(R.id.forum_post_best);
            i0Var.f40076c = (TextView) view.findViewById(R.id.forum_post_subject);
            view.setTag(i0Var);
        }
        try {
            mVar = (k0.m) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (mVar == null) {
            return view;
        }
        H(i0Var.f40076c, mVar.f40167b, mVar.f40166a, mVar.f40170e, mVar.f40171f, mVar.f40172g);
        T(view, mVar.f40168c);
        return view;
    }

    private View v(int i2, View view, ViewGroup viewGroup) {
        v vVar;
        k0.n nVar;
        try {
            if (view != null) {
                vVar = (v) view.getTag();
            } else {
                vVar = new v();
                view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_forum_activity_top_item, (ViewGroup) null);
                vVar.f40204b = (TextView) view.findViewById(R.id.forum_post_subject);
                vVar.f40205c = (TextView) view.findViewById(R.id.forum_post_stickie);
                vVar.f40206d = (Button) view.findViewById(R.id.forum_post_best);
                vVar.f40207e = (ImageView) view.findViewById(R.id.forum_post_pic);
                vVar.f40208f = (ImageView) view.findViewById(R.id.forum_post_video);
                view.setTag(vVar);
            }
            nVar = (k0.n) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (nVar == null) {
            return view;
        }
        if (com.join.mgps.Util.d2.h(nVar.f40174b)) {
            vVar.f40204b.setVisibility(8);
        } else {
            vVar.f40204b.setVisibility(0);
            vVar.f40204b.setText(nVar.f40174b);
        }
        if (nVar.f40175c) {
            vVar.f40206d.setVisibility(0);
        } else {
            vVar.f40206d.setVisibility(8);
        }
        if (nVar.f40176d) {
            vVar.f40207e.setVisibility(0);
        } else {
            vVar.f40207e.setVisibility(8);
        }
        if (nVar.f40177e) {
            vVar.f40208f.setVisibility(0);
        } else {
            vVar.f40208f.setVisibility(8);
        }
        view.setOnClickListener(new n(nVar.f40173a));
        return view;
    }

    private int w(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f39992f == 0) {
            Resources resources = context.getResources();
            this.f39992f = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f39992f;
    }

    private View x(int i2, View view, ViewGroup viewGroup) {
        j0 j0Var;
        k0.o oVar;
        if (view != null) {
            j0Var = (j0) view.getTag();
        } else {
            j0Var = new j0();
            view = LayoutInflater.from(this.f39989c).inflate(R.layout.mg_forum_post_activity_item_post_video1, (ViewGroup) null);
            j0Var.f40083c = (FrameLayout) view.findViewById(R.id.videoContner);
            j0Var.f40082b = (SimpleDraweeView) view.findViewById(R.id.bannerView);
            view.setTag(j0Var);
        }
        try {
            oVar = (k0.o) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (oVar == null) {
            return view;
        }
        w(this.f39989c);
        String str = oVar.f40179b;
        String str2 = oVar.f40178a;
        SimpleDraweeView simpleDraweeView = j0Var.f40082b;
        if (simpleDraweeView != null) {
            MyImageLoader.h(simpleDraweeView, str2);
        }
        if (j0Var.f40083c != null) {
            j0Var.f40082b.setTag(Integer.valueOf(i2));
            if (com.join.mgps.Util.d2.i(str)) {
                this.f39991e.d(i2, new c.k(i2, str, str2), new boolean[0]);
            }
        }
        return view;
    }

    public void D(DownloadTask downloadTask, int i2) {
    }

    void J(View view, int i2) {
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
                textView.setText(this.f39989c.getResources().getString(R.string.download_status_download));
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
                button.setText(this.f39989c.getResources().getString(R.string.download_status_download));
                button.setTextSize(2, 13.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
            }
        }
    }

    void K(TextView textView, int i2) {
        textView.setEnabled(true);
        textView.setTextColor(-12802819);
        textView.setText(textView.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.d2.l(i2)));
        textView.setTextSize(2, 13.0f);
        textView.setTextColor(-12802819);
        textView.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    void L(c0 c0Var, Object obj) {
        int i2;
        Button button = c0Var.f40020d;
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
        if (obj instanceof CollectionBeanSubBusiness) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) obj;
            DownloadTask downloadTask2 = collectionBeanSubBusiness.getDownloadTask();
            String ver2 = collectionBeanSubBusiness.getVer();
            i2 = collectionBeanSubBusiness.getPay_tag_info() != null ? collectionBeanSubBusiness.getPay_tag_info().getPay_game_amount() : 0;
            if (i2 > 0 && n1.e0.o().p(collectionBeanSubBusiness.getCrc_sign_id())) {
                i2 = 0;
            }
            downloadTask = downloadTask2;
            ver = ver2;
        } else {
            if (obj instanceof RecomDatabeanBusiness) {
                AppBean game_info = ((RecomDatabeanBusiness) obj).getSub().get(0).getGame_info();
                int pay_game_amount = game_info.getPay_tag_info() != null ? game_info.getPay_tag_info().getPay_game_amount() : 0;
                if (pay_game_amount <= 0 || !n1.e0.o().p(game_info.getCrc_sign_id())) {
                    i2 = pay_game_amount;
                }
            }
            i2 = 0;
        }
        if (downloadTask == null) {
            if (UtilsMy.e0(tipBeans)) {
                if (i2 > 0 ? false : com.join.android.app.common.utils.a.g0(context).c(context, packageName)) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, packageName);
                    if (com.join.mgps.Util.d2.i(ver) && k4.d() < Integer.parseInt(ver)) {
                        button.setBackgroundResource(R.drawable.recom_green_butn);
                        X(button, "更新");
                        Y(button, resources.getColor(R.color.app_green_color));
                    } else {
                        button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        X(button, context.getResources().getString(R.string.download_status_finished));
                        Y(button, resources.getColor(R.color.app_main_color));
                    }
                } else {
                    button.setBackgroundResource(R.drawable.recom_green_butn);
                    if (i2 > 0) {
                        K(c0Var.f40020d, i2);
                    } else {
                        J(button, status);
                    }
                }
            } else {
                button.setBackgroundResource(R.drawable.recom_green_butn);
                if (i2 > 0) {
                    K(c0Var.f40020d, i2);
                } else {
                    J(button, status);
                }
            }
        } else {
            int status2 = downloadTask.getStatus();
            if (i2 > 0) {
                status2 = 43;
            }
            if (status2 != 0) {
                if (status2 == 27) {
                    X(button, "暂停中");
                } else if (status2 != 2) {
                    if (status2 != 3) {
                        if (status2 != 5) {
                            if (status2 != 6) {
                                if (status2 != 7) {
                                    if (status2 != 42) {
                                        if (status2 != 43) {
                                            switch (status2) {
                                                case 9:
                                                    b0(c0Var, 0);
                                                    button.setBackgroundResource(R.drawable.recom_green_butn);
                                                    X(button, "更新");
                                                    Y(button, resources.getColor(R.color.app_green_color));
                                                    break;
                                                case 10:
                                                    b0(c0Var, 16);
                                                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    X(button, "等待");
                                                    Y(button, resources.getColor(R.color.app_blue_color));
                                                    break;
                                                case 11:
                                                    b0(c0Var, 0);
                                                    button.setBackgroundResource(R.drawable.recom_green_butn);
                                                    X(button, "安装");
                                                    Y(button, resources.getColor(R.color.app_green_color));
                                                    break;
                                                case 12:
                                                    b0(c0Var, 17);
                                                    TextView textView = c0Var.f40025i;
                                                    textView.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    c0Var.f40026j.setText("解压中..");
                                                    c0Var.f40028l.setProgress((int) downloadTask.getProgress());
                                                    button.setBackgroundResource(R.drawable.extract);
                                                    X(button, "解压中");
                                                    Y(button, resources.getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    b0(c0Var, 17);
                                                    TextView textView2 = c0Var.f40025i;
                                                    textView2.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    c0Var.f40026j.setText("点击重新解压");
                                                    c0Var.f40028l.setProgress((int) downloadTask.getProgress());
                                                    button.setBackgroundResource(R.drawable.reextract);
                                                    X(button, "解压");
                                                    Y(button, resources.getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        } else {
                                            b0(c0Var, 0);
                                            button.setBackgroundResource(R.drawable.recom_green_butn);
                                            if (i2 > 0) {
                                                K(c0Var.f40020d, i2);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        b0(c0Var, 0);
                        button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        X(button, context.getResources().getString(R.string.download_status_finished));
                        Y(button, resources.getColor(R.color.app_main_color));
                    }
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    X(button, "继续");
                    Y(button, resources.getColor(R.color.app_blue_color));
                    b0(c0Var, 16);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView3 = c0Var.f40025i;
                            textView3.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                        } else {
                            TextView textView4 = c0Var.f40025i;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                        }
                        c0Var.f40027k.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    c0Var.f40026j.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    X(button, "暂停");
                    Y(button, resources.getColor(R.color.app_blue_color));
                    b0(c0Var, 16);
                    if (downloadTask.getSize() == 0) {
                        TextView textView5 = c0Var.f40025i;
                        textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                    } else {
                        TextView textView6 = c0Var.f40025i;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                    }
                    c0Var.f40027k.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView7 = c0Var.f40026j;
                    textView7.setText(speed + "/S");
                }
            }
            b0(c0Var, 0);
            button.setBackgroundResource(R.drawable.recom_green_butn);
            if (i2 > 0) {
                K(c0Var.f40020d, i2);
            } else {
                J(button, status);
            }
        }
        button.setOnClickListener(new s(obj));
    }

    public void M(u uVar) {
        this.f39996j = uVar;
    }

    void N(SimpleDraweeView simpleDraweeView, int i2, String str, int i4, List<String> list) {
        LinearLayout.LayoutParams layoutParams;
        Integer[] i02 = com.join.mgps.Util.i0.i0(str);
        if (i02 != null && i02[0].intValue() != 0 && i02[1].intValue() != 0) {
            if ((i02[0].intValue() * 1.0f) / i02[1].intValue() > 1.0f) {
                layoutParams = new LinearLayout.LayoutParams(this.f39999m, this.f40000n);
            } else {
                layoutParams = new LinearLayout.LayoutParams(this.f40001o, this.f40002p);
            }
        } else {
            int i5 = this.f39998l;
            layoutParams = new LinearLayout.LayoutParams(i5, i5);
        }
        if (!com.join.mgps.Util.d2.h(str)) {
            simpleDraweeView.setVisibility(0);
            simpleDraweeView.setLayoutParams(layoutParams);
            simpleDraweeView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            MyImageLoader.i(simpleDraweeView, str, r.c.f12144g);
            simpleDraweeView.setOnClickListener(new o(list, i4));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    void O(SimpleDraweeView simpleDraweeView, int i2, String str, int i4, List<String> list) {
        if (this.f39993g == null) {
            this.f39993g = z();
        }
        int i5 = (int) (this.f39989c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f39993g;
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
            simpleDraweeView.setOnClickListener(new p(list, i4));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public void P(List<k0> list) {
        if (list == null) {
            return;
        }
        if (this.f39990d == null) {
            this.f39990d = new ArrayList();
        }
        this.f39990d.clear();
        this.f39990d.addAll(list);
    }

    public void Q(com.join.android.app.component.optimizetext.b bVar) {
        this.f39987a = bVar;
    }

    public void R(View view, int i2) {
        view.setOnClickListener(new g(i2));
    }

    public void S(View view, int i2) {
        view.setOnClickListener(new b(i2));
    }

    public void T(View view, int i2) {
        view.setOnClickListener(new a(i2));
    }

    public void U(View view, String str, String str2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new e(str2));
    }

    public void V(View view, int i2) {
        view.setOnClickListener(new d(i2));
    }

    void Z(SimpleDraweeView simpleDraweeView, int i2, String str, String str2) {
        if (this.f39993g == null) {
            this.f39993g = z();
        }
        int i4 = (int) (this.f39989c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f39993g;
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
            simpleDraweeView.setOnClickListener(new q(str2));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public void a0(View view, int i2) {
        view.setOnClickListener(new c(i2));
    }

    public void c(k0 k0Var) {
        if (k0Var == null) {
            return;
        }
        if (this.f39990d == null) {
            this.f39990d = new ArrayList();
        }
        this.f39990d.add(k0Var);
    }

    void c0(w wVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            wVar.f40216h.setVisibility(8);
            wVar.f40220l.setVisibility(8);
            wVar.f40221m.setVisibility(8);
            wVar.f40217i.setVisibility(0);
            wVar.f40215g.setVisibility(0);
            return;
        }
        wVar.f40216h.setVisibility(0);
        if (bool2.booleanValue()) {
            wVar.f40220l.setVisibility(8);
            wVar.f40221m.setVisibility(0);
        } else {
            wVar.f40221m.setVisibility(8);
            wVar.f40220l.setVisibility(0);
        }
        wVar.f40217i.setVisibility(8);
        wVar.f40215g.setVisibility(8);
    }

    public void d() {
        DisplayMetrics displayMetrics = this.f39989c.getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        int i2 = (int) (210.0f * f4);
        int i4 = (int) (160.0f * f4);
        float dimensionPixelSize = displayMetrics.widthPixels - (this.f39989c.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2);
        int i5 = ((int) (dimensionPixelSize - ((((int) (6.0f * f4)) * f4) * 2.0f))) / 3;
        if (i5 <= i2) {
            i2 = i5 > i4 ? i4 : i5;
        }
        this.f39998l = i2;
        this.f40003q = (int) ((dimensionPixelSize * 1.0f) / 1.8f);
        int i6 = (int) (0.615f * dimensionPixelSize);
        this.f39999m = i6;
        this.f40000n = (int) ((i6 * 1.0f) / 1.85f);
        int i7 = (int) (dimensionPixelSize * 0.54f);
        this.f40001o = i7;
        this.f40002p = (int) ((i7 * 1.0f) / 0.85f);
    }

    LinearLayout.LayoutParams e(int i2) {
        if (this.f39995i == null) {
            float f4 = this.f39989c.getResources().getDisplayMetrics().scaledDensity;
            int i4 = (int) (225.0f * f4);
            int i5 = (int) (150.0f * f4);
            int i6 = (int) (f4 * 4.0f);
            if (i2 <= i4) {
                i4 = i2 > 0 ? i2 : 0;
            }
            int i7 = (int) (i4 / 1.5f);
            if (i2 <= 0) {
                i4 = -1;
            } else {
                i5 = i7;
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, i5);
            layoutParams.setMargins(0, i6, 0, i6);
            this.f39995i = layoutParams;
        }
        return this.f39995i;
    }

    LinearLayout.LayoutParams g(View view) {
        if (this.f39994h == null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, ((int) view.getContext().getResources().getDisplayMetrics().density) * 6);
            this.f39994h = layoutParams;
        }
        return this.f39994h;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<k0> list = this.f39990d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<k0> list = this.f39990d;
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
        List<k0> list = this.f39990d;
        if (list == null || i2 >= list.size()) {
            return -1;
        }
        return this.f39990d.get(i2).b().ordinal();
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return q(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return o(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return r(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return x(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return s(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_SUBJECT.ordinal()) {
            return u(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_TOP.ordinal()) {
            return v(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.FAVORITE_ITEM_HEADER.ordinal()) {
            return f(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_ITEM.ordinal()) {
            return h(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_FOOTER.ordinal()) {
            return k(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_IMGS.ordinal()) {
            return l(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_VIDEO.ordinal()) {
            return n(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_MESSAGE.ordinal()) {
            return m(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.P_SUBJECT.ordinal()) {
            return t(i2, view, viewGroup);
        }
        return itemViewType == ViewType.POST_GAME.ordinal() ? p(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public View h(int i2, View view, ViewGroup viewGroup) {
        w wVar;
        View view2;
        if (view == null) {
            View inflate = LayoutInflater.from(this.f39989c).inflate(R.layout.app_listview_item, (ViewGroup) null);
            w wVar2 = new w();
            wVar2.f40210b = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
            wVar2.f40211c = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
            wVar2.f40212d = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
            wVar2.f40213e = (RelativeLayout) inflate.findViewById(R.id.rLayoutRight);
            wVar2.f40214f = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
            wVar2.f40215g = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
            wVar2.f40216h = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
            wVar2.f40217i = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
            wVar2.f40218j = (TextView) inflate.findViewById(R.id.appSize);
            wVar2.f40219k = (TextView) inflate.findViewById(R.id.loding_info);
            wVar2.f40220l = (ProgressBar) inflate.findViewById(R.id.progressBar);
            wVar2.f40221m = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
            wVar2.f40222n = inflate.findViewById(R.id.line);
            wVar2.f40223o = inflate.findViewById(R.id.relateLayoutApp);
            inflate.setTag(wVar2);
            wVar = wVar2;
            view2 = inflate;
        } else {
            wVar = (w) view.getTag();
            view2 = view;
        }
        wVar.f40222n.setVisibility(0);
        k0.b bVar = (k0.b) getItem(i2);
        if (bVar == null) {
            return view2;
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(bVar.f40092a.getGame());
        collectionBeanSubBusiness.setDownloadTask(bVar.f40092a.getDownloadTask());
        wVar.f40223o.setBackgroundResource(R.drawable.white_bg);
        DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
        if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
            wVar.f40211c.setVisibility(0);
        } else {
            wVar.f40211c.setVisibility(8);
        }
        wVar.f40212d.setText(collectionBeanSubBusiness.getGame_name());
        wVar.f40215g.setText(collectionBeanSubBusiness.getInfo());
        long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
        String ico_remote = collectionBeanSubBusiness.getIco_remote();
        if (TextUtils.isEmpty(ico_remote)) {
            ico_remote = "";
        }
        MyImageLoader.h(wVar.f40210b, ico_remote.trim());
        collectionBeanSubBusiness.getTag_info();
        UtilsMy.C(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), wVar.f40217i, this.f39989c);
        UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), view2, downloadTask);
        String plugin_num = collectionBeanSubBusiness.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            wVar.f40214f.setBackgroundResource(R.drawable.recom_blue_butn);
            wVar.f40214f.setText("开始");
            wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_blue_color));
            wVar.f40217i.setVisibility(8);
            wVar.f40211c.setVisibility(8);
        } else if (downloadTask == null) {
            c0(wVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) <= 0 ? com.join.android.app.common.utils.a.g0(this.f39989c).c(this.f39989c, collectionBeanSubBusiness.getPackage_name()) : false) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f39989c).k(this.f39989c, collectionBeanSubBusiness.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                        wVar.f40214f.setBackgroundResource(R.drawable.recom_green_butn);
                        wVar.f40214f.setText("更新");
                        wVar.f40214f.setTextColor(-9263087);
                    } else {
                        wVar.f40214f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        wVar.f40214f.setText(this.f39989c.getResources().getString(R.string.download_status_finished));
                        wVar.f40214f.setTextColor(-688602);
                    }
                } else {
                    wVar.f40214f.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                    UtilsMy.n2(wVar.f40214f, wVar.f40213e, collectionBeanSubBusiness);
                }
            } else {
                wVar.f40214f.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.n2(wVar.f40214f, wVar.f40213e, collectionBeanSubBusiness);
            }
        } else {
            com.join.mgps.Util.t0.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
            int status = downloadTask.getStatus();
            if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 27) {
                    wVar.f40214f.setText("暂停中");
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    wVar.f40214f.setBackgroundResource(R.drawable.recom_green_butn);
                                                    wVar.f40214f.setText("更新");
                                                    wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_green_color));
                                                    c0(wVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    wVar.f40214f.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    wVar.f40214f.setText("等待");
                                                    wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_blue_color));
                                                    Boolean bool = Boolean.FALSE;
                                                    c0(wVar, bool, bool);
                                                    TextView textView = wVar.f40218j;
                                                    textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    try {
                                                        wVar.f40220l.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    wVar.f40219k.setText("等待中");
                                                    break;
                                                case 11:
                                                    wVar.f40214f.setBackgroundResource(R.drawable.recom_green_butn);
                                                    wVar.f40214f.setText("安装");
                                                    wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_green_color));
                                                    c0(wVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    c0(wVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView2 = wVar.f40218j;
                                                    textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    wVar.f40219k.setText("解压中..");
                                                    wVar.f40221m.setProgress((int) downloadTask.getProgress());
                                                    wVar.f40214f.setBackgroundResource(R.drawable.extract);
                                                    wVar.f40214f.setText("解压中");
                                                    wVar.f40214f.setTextColor(-4868683);
                                                    break;
                                                case 13:
                                                    c0(wVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView3 = wVar.f40218j;
                                                    textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    wVar.f40219k.setText("点击重新解压");
                                                    wVar.f40221m.setProgress((int) downloadTask.getProgress());
                                                    wVar.f40214f.setBackgroundResource(R.drawable.reextract);
                                                    wVar.f40214f.setText("解压");
                                                    wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        wVar.f40214f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        wVar.f40214f.setText(this.f39989c.getResources().getString(R.string.download_status_finished));
                        wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_main_color));
                        Boolean bool2 = Boolean.TRUE;
                        c0(wVar, bool2, bool2);
                    }
                    wVar.f40214f.setBackgroundResource(R.drawable.recom_blue_butn);
                    wVar.f40214f.setText("继续");
                    wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_blue_color));
                    Boolean bool3 = Boolean.FALSE;
                    c0(wVar, bool3, bool3);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView4 = wVar.f40218j;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView5 = wVar.f40218j;
                            textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        wVar.f40220l.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    wVar.f40219k.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    wVar.f40214f.setBackgroundResource(R.drawable.recom_blue_butn);
                    wVar.f40214f.setText("暂停");
                    wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_blue_color));
                    Boolean bool4 = Boolean.FALSE;
                    c0(wVar, bool4, bool4);
                    if (downloadTask.getSize() == 0) {
                        TextView textView6 = wVar.f40218j;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    } else {
                        TextView textView7 = wVar.f40218j;
                        textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    }
                    wVar.f40220l.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView8 = wVar.f40219k;
                    textView8.setText(speed + "/S");
                }
            }
            wVar.f40214f.setBackgroundResource(R.drawable.recom_blue_butn);
            UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
            UtilsMy.n2(wVar.f40214f, wVar.f40213e, collectionBeanSubBusiness);
            wVar.f40214f.setTextColor(this.f39989c.getResources().getColor(R.color.app_blue_color));
            c0(wVar, Boolean.TRUE, Boolean.FALSE);
        }
        wVar.f40213e.setClickable(true);
        wVar.f40213e.setOnClickListener(new r(collectionBeanSubBusiness));
        return view2;
    }

    public List<k0> i() {
        return this.f39990d;
    }

    public com.join.android.app.component.optimizetext.b j() {
        return this.f39987a;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public com.danikula.videocache.i y(Context context) {
        return MApplication.p(context);
    }

    LinearLayout.LayoutParams z() {
        DisplayMetrics displayMetrics = this.f39989c.getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        int i2 = (int) (210.0f * f4);
        int i4 = (int) (160.0f * f4);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f39989c.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f4)) * f4) * 2.0f))) / 3;
        if (dimensionPixelSize <= i2) {
            i2 = dimensionPixelSize > i4 ? i4 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i2, i2);
    }
}
