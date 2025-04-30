package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumTopicAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private com.join.android.app.component.optimizetext.b f40500a;

    /* renamed from: b  reason: collision with root package name */
    com.danikula.videocache.i f40501b;

    /* renamed from: c  reason: collision with root package name */
    private Context f40502c;

    /* renamed from: e  reason: collision with root package name */
    com.join.android.app.component.video.c f40504e;

    /* renamed from: g  reason: collision with root package name */
    LinearLayout.LayoutParams f40506g;

    /* renamed from: i  reason: collision with root package name */
    LinearLayout.LayoutParams f40508i;

    /* renamed from: j  reason: collision with root package name */
    LinearLayout.LayoutParams f40509j;

    /* renamed from: f  reason: collision with root package name */
    int f40505f = 0;

    /* renamed from: h  reason: collision with root package name */
    int f40507h = 0;

    /* renamed from: k  reason: collision with root package name */
    private k f40510k = null;

    /* renamed from: d  reason: collision with root package name */
    private List<t> f40503d = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        FORUM_TOPIC_TOP,
        POST_HEADER,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE,
        POST_VIDEO,
        POST_IMAGE_THUMBNAIL,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER,
        POST_TOP
    }

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40511a;

        a(String str) {
            this.f40511a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int parseInt = Integer.parseInt(this.f40511a);
            if (ForumTopicAdapter.this.f40510k != null) {
                ForumTopicAdapter.this.f40510k.c(parseInt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t.g f40513a;

        b(t.g gVar) {
            this.f40513a = gVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f40513a.f40604m).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40515a;

        c(int i2) {
            this.f40515a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumTopicAdapter.this.f40510k != null) {
                ForumTopicAdapter.this.f40510k.a(this.f40515a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40517a;

        d(int i2) {
            this.f40517a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f40517a);
            com.join.mgps.Util.i0.v0(view.getContext(), forumPostsBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40519a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40520b;

        e(List list, int i2) {
            this.f40519a = list;
            this.f40520b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String[] strArr = new String[this.f40519a.size()];
            this.f40519a.toArray(strArr);
            com.join.mgps.Util.i0.G0(view.getContext(), this.f40520b, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40522a;

        f(String str) {
            this.f40522a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.Q0(view.getContext(), this.f40522a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40524a;

        g(int i2) {
            this.f40524a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumTopicAdapter.this.f40510k != null) {
                ForumTopicAdapter.this.f40510k.d(this.f40524a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40526a;

        h(int i2) {
            this.f40526a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumTopicAdapter.this.f40510k != null) {
                ForumTopicAdapter.this.f40510k.e(this.f40526a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40528a;

        i(int i2) {
            this.f40528a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumTopicAdapter.this.f40510k != null) {
                ForumTopicAdapter.this.f40510k.b(this.f40528a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40530a;

        j(int i2) {
            this.f40530a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.findViewById(R.id.forum_post_praise_icon).startAnimation(AnimationUtils.loadAnimation(ForumTopicAdapter.this.f40502c, R.anim.scale_reset));
            if (ForumTopicAdapter.this.f40510k != null) {
                Context context = view.getContext();
                if (com.join.mgps.Util.i0.Y0(context)) {
                    ForumTopicAdapter.this.f40510k.a(this.f40530a);
                    return;
                }
                com.join.mgps.Util.i2.a(context).b("用户未登录，请登录");
                com.join.mgps.Util.i0.L0(context);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface k {
        void a(int i2);

        void b(int i2);

        void c(int i2);

        void d(int i2);

        void e(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l extends u {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40532b;

        l() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends u {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40534b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40535c;

        /* renamed from: d  reason: collision with root package name */
        public Button f40536d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f40537e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f40538f;

        m() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends u {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40540b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40541c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40542d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40543e;

        n() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o extends u {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40545b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40546c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40547d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40548e;

        /* renamed from: f  reason: collision with root package name */
        public View f40549f;

        /* renamed from: g  reason: collision with root package name */
        public RelativeLayout f40550g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f40551h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f40552i;

        /* renamed from: j  reason: collision with root package name */
        public VipView f40553j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f40554k;

        o() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends u {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40556b;

        /* renamed from: c  reason: collision with root package name */
        public RelativeLayout f40557c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f40558d;

        /* renamed from: e  reason: collision with root package name */
        public SimpleDraweeView f40559e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f40560f;

        p() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q extends u {

        /* renamed from: b  reason: collision with root package name */
        public StaticLayoutView f40562b;

        q() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r extends u {

        /* renamed from: b  reason: collision with root package name */
        public Button f40564b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40565c;

        r() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s extends u {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40567b;

        /* renamed from: c  reason: collision with root package name */
        public FrameLayout f40568c;

        s() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class t {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40570a;

        /* renamed from: b  reason: collision with root package name */
        Object f40571b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public String f40572a;

            public a(String str) {
                this.f40572a = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f40573a;

            public b(String str) {
                this.f40573a = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public String f40574a;

            /* renamed from: b  reason: collision with root package name */
            public String f40575b;

            /* renamed from: c  reason: collision with root package name */
            public String f40576c;

            public c(String str, String str2, String str3) {
                this.f40574a = str;
                this.f40575b = str2;
                this.f40576c = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            public ArrayList<HashMap<String, Object>> f40577a;

            /* renamed from: b  reason: collision with root package name */
            public String f40578b;

            public d(ArrayList<HashMap<String, Object>> arrayList, String str) {
                this.f40577a = arrayList;
                this.f40578b = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class e {

            /* renamed from: a  reason: collision with root package name */
            public String f40579a;

            /* renamed from: b  reason: collision with root package name */
            public String f40580b;

            /* renamed from: c  reason: collision with root package name */
            public String f40581c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f40582d;

            /* renamed from: e  reason: collision with root package name */
            public int f40583e;

            public e(String str, String str2, String str3, boolean z3, int i2) {
                this.f40579a = str;
                this.f40580b = str2;
                this.f40581c = str3;
                this.f40582d = z3;
                this.f40583e = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class f {

            /* renamed from: a  reason: collision with root package name */
            public int f40584a;

            /* renamed from: b  reason: collision with root package name */
            public String f40585b;

            /* renamed from: c  reason: collision with root package name */
            public int f40586c;

            /* renamed from: d  reason: collision with root package name */
            public int f40587d;

            /* renamed from: e  reason: collision with root package name */
            public int f40588e;

            /* renamed from: f  reason: collision with root package name */
            public int f40589f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f40590g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f40591h;

            public f() {
            }

            public f(int i2, int i4, String str, int i5, int i6, int i7, boolean z3, boolean z4) {
                this.f40584a = i2;
                this.f40589f = i4;
                this.f40585b = str;
                this.f40586c = i5;
                this.f40587d = i6;
                this.f40588e = i7;
                this.f40590g = z3;
                this.f40591h = z4;
            }
        }

        /* loaded from: classes3.dex */
        public static class g {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40592a;

            /* renamed from: b  reason: collision with root package name */
            public String f40593b;

            /* renamed from: c  reason: collision with root package name */
            public String f40594c;

            /* renamed from: d  reason: collision with root package name */
            public long f40595d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40596e;

            /* renamed from: f  reason: collision with root package name */
            public int f40597f;

            /* renamed from: g  reason: collision with root package name */
            public int f40598g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f40599h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f40600i;

            /* renamed from: j  reason: collision with root package name */
            public int f40601j;

            /* renamed from: k  reason: collision with root package name */
            public int f40602k;

            /* renamed from: l  reason: collision with root package name */
            public int f40603l;

            /* renamed from: m  reason: collision with root package name */
            public int f40604m;

            /* renamed from: n  reason: collision with root package name */
            public String f40605n;

            /* renamed from: o  reason: collision with root package name */
            public String f40606o;

            public g() {
            }

            public g(boolean z3, String str, String str2, long j4, boolean z4, int i2, int i4, boolean z5, boolean z6, int i5, int i6, int i7, String str3, String str4, int i8) {
                this.f40592a = z3;
                this.f40593b = str;
                this.f40594c = str2;
                this.f40595d = j4;
                this.f40596e = z4;
                this.f40597f = i2;
                this.f40598g = i4;
                this.f40604m = i8;
                this.f40599h = z5;
                this.f40600i = z6;
                this.f40601j = i5;
                this.f40602k = i6;
                this.f40603l = i7;
                this.f40605n = str3;
                this.f40606o = str4;
            }
        }

        /* loaded from: classes3.dex */
        public static class h {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f40607a;

            /* renamed from: b  reason: collision with root package name */
            public List<String> f40608b;

            /* renamed from: c  reason: collision with root package name */
            public int f40609c;

            public h(List<ForumBean.ForumPostsBean.ResBean> list, List<String> list2, int i2) {
                this.f40607a = list;
                this.f40608b = list2;
                this.f40609c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class i implements com.join.android.app.component.optimizetext.c {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40610a;

            /* renamed from: b  reason: collision with root package name */
            public String f40611b;

            /* renamed from: c  reason: collision with root package name */
            public int f40612c;

            /* renamed from: d  reason: collision with root package name */
            public int f40613d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40614e;

            /* renamed from: f  reason: collision with root package name */
            public String f40615f;

            /* renamed from: g  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f40616g;

            /* renamed from: h  reason: collision with root package name */
            public SpannableStringBuilder f40617h;

            public i() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f40617h;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f40612c + "";
            }

            public i(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, SpannableStringBuilder spannableStringBuilder) {
                this.f40610a = z3;
                this.f40611b = str;
                this.f40612c = i2;
                this.f40613d = i4;
                this.f40614e = z4;
                this.f40615f = str2;
                this.f40616g = list;
                this.f40617h = spannableStringBuilder;
            }
        }

        /* loaded from: classes3.dex */
        public static class j {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40618a;

            /* renamed from: b  reason: collision with root package name */
            public String f40619b;

            /* renamed from: c  reason: collision with root package name */
            public int f40620c;

            /* renamed from: d  reason: collision with root package name */
            public int f40621d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40622e;

            /* renamed from: f  reason: collision with root package name */
            public String f40623f;

            /* renamed from: g  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f40624g;

            public j() {
            }

            public j(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
                this.f40618a = z3;
                this.f40619b = str;
                this.f40620c = i2;
                this.f40621d = i4;
                this.f40622e = z4;
                this.f40623f = str2;
                this.f40624g = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class k {

            /* renamed from: a  reason: collision with root package name */
            public int f40625a;

            /* renamed from: b  reason: collision with root package name */
            public String f40626b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f40627c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f40628d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40629e;

            public k() {
            }

            public k(int i2, String str, boolean z3, boolean z4, boolean z5) {
                this.f40625a = i2;
                this.f40626b = str;
                this.f40627c = z3;
                this.f40628d = z4;
                this.f40629e = z5;
            }
        }

        /* loaded from: classes3.dex */
        public static class l {

            /* renamed from: a  reason: collision with root package name */
            public String f40630a;

            /* renamed from: b  reason: collision with root package name */
            public String f40631b;

            /* renamed from: c  reason: collision with root package name */
            public String f40632c;

            public l(String str, String str2, String str3) {
                this.f40630a = str;
                this.f40631b = str2;
                this.f40632c = str3;
            }
        }

        public t() {
        }

        public Object a() {
            return this.f40571b;
        }

        public ViewType b() {
            return this.f40570a;
        }

        public void c(Object obj) {
            this.f40571b = obj;
        }

        public void d(ViewType viewType) {
            this.f40570a = viewType;
        }

        public t(ViewType viewType, Object obj) {
            this.f40570a = viewType;
            this.f40571b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class u {
        u() {
        }
    }

    public ForumTopicAdapter(Context context, com.join.android.app.component.video.c cVar) {
        this.f40504e = cVar;
        this.f40502c = context;
        this.f40500a = new com.join.android.app.component.optimizetext.b(context);
        this.f40501b = p(context);
        s();
    }

    private void F(ImageView imageView, String str) {
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

    private View e(int i2, View view, ViewGroup viewGroup) {
        l lVar;
        if (view != null) {
            lVar = (l) view.getTag();
        } else {
            lVar = new l();
            view = LayoutInflater.from(this.f40502c).inflate(R.layout.mg_forum_forum_topic_a_item_top, (ViewGroup) null);
            lVar.f40532b = (SimpleDraweeView) view.findViewById(R.id.banner);
            view.setTag(lVar);
        }
        try {
            MyImageLoader.h(lVar.f40532b, ((t.a) getItem(i2)).f40572a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, r(this.f40502c));
            SimpleDraweeView simpleDraweeView = lVar.f40532b;
            if (simpleDraweeView != null) {
                simpleDraweeView.setLayoutParams(layoutParams);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View h(int i2, View view, ViewGroup viewGroup) {
        n nVar;
        t.f fVar;
        if (view != null) {
            nVar = (n) view.getTag();
        } else {
            nVar = new n();
            view = LayoutInflater.from(this.f40502c).inflate(R.layout.mg_forum_welcome_item_post_footer, (ViewGroup) null);
            nVar.f40540b = (TextView) view.findViewById(R.id.forum_name);
            nVar.f40541c = (TextView) view.findViewById(R.id.forum_post_view);
            nVar.f40542d = (TextView) view.findViewById(R.id.forum_post_commit);
            nVar.f40543e = (TextView) view.findViewById(R.id.forum_post_praise);
            view.setTag(nVar);
        }
        try {
            fVar = (t.f) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (fVar == null) {
            return view;
        }
        if (fVar.f40591h) {
            view.findViewById(R.id.post_footer_divider).setVisibility(0);
        } else {
            view.findViewById(R.id.post_footer_divider).setVisibility(8);
        }
        nVar.f40540b.setText(fVar.f40585b);
        if (com.join.mgps.Util.d2.h(fVar.f40585b)) {
            ((ViewGroup) nVar.f40540b.getParent()).setVisibility(8);
        } else {
            ((ViewGroup) nVar.f40540b.getParent()).setVisibility(0);
        }
        TextView textView = nVar.f40541c;
        com.join.mgps.Util.i0.D1(textView, fVar.f40586c + "", "0");
        TextView textView2 = nVar.f40542d;
        com.join.mgps.Util.i0.D1(textView2, fVar.f40587d + "", "0");
        u(view, fVar.f40590g, fVar.f40588e);
        int i4 = fVar.f40584a;
        ((View) nVar.f40543e.getParent()).setOnClickListener(new c(i4));
        C(view, i4);
        u((View) nVar.f40543e.getParent(), fVar.f40590g, fVar.f40588e);
        E((View) nVar.f40543e.getParent(), i4);
        return view;
    }

    private View i(int i2, View view, ViewGroup viewGroup) {
        o oVar;
        t.g gVar;
        if (view != null) {
            oVar = (o) view.getTag();
        } else {
            oVar = new o();
            view = LayoutInflater.from(this.f40502c).inflate(R.layout.mg_forum_welcome_item_post_header, (ViewGroup) null);
            oVar.f40549f = view.findViewById(R.id.forum_post_divider);
            oVar.f40545b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            oVar.f40546c = (TextView) view.findViewById(R.id.forum_post_nickname);
            oVar.f40547d = (TextView) view.findViewById(R.id.forum_post_add_time);
            oVar.f40548e = (TextView) view.findViewById(R.id.forum_post_stickie);
            oVar.f40551h = (ImageView) view.findViewById(R.id.forum_post_moderator);
            oVar.f40550g = (RelativeLayout) view.findViewById(R.id.forumExtFunc);
            oVar.f40552i = (ImageView) view.findViewById(R.id.flagBestAnswer);
            oVar.f40553j = (VipView) view.findViewById(R.id.vipFlag);
            oVar.f40554k = (TextView) view.findViewById(R.id.copperTitleTv);
            view.setTag(oVar);
        }
        try {
            gVar = (t.g) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (gVar == null) {
            return view;
        }
        oVar.f40550g.setVisibility(0);
        try {
            oVar.f40553j.setVipData(gVar.f40602k, gVar.f40603l);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (gVar.f40601j != 1) {
            oVar.f40552i.setVisibility(8);
        } else {
            oVar.f40552i.setVisibility(0);
        }
        if (gVar.f40592a) {
            oVar.f40549f.setVisibility(8);
        } else {
            oVar.f40549f.setVisibility(0);
        }
        oVar.f40546c.setText(gVar.f40594c);
        oVar.f40547d.setText(com.join.android.app.common.utils.c.a(gVar.f40595d * 1000));
        if (gVar.f40596e) {
            oVar.f40548e.setVisibility(0);
        } else {
            oVar.f40548e.setVisibility(8);
        }
        if (gVar.f40600i) {
            oVar.f40546c.setTextColor(this.f40502c.getResources().getColor(R.color.app_blue_color));
            oVar.f40551h.setVisibility(0);
        } else {
            UtilsMy.M2(this.f40502c, oVar.f40546c, gVar.f40602k, gVar.f40603l, R.color.forum_nickname_color);
            oVar.f40551h.setVisibility(8);
        }
        MyImageLoader.w(oVar.f40545b, gVar.f40593b);
        oVar.f40545b.setOnClickListener(new b(gVar));
        int i4 = gVar.f40597f;
        C(view, i4);
        H(oVar.f40550g, i4);
        com.join.mgps.Util.i0.S0(oVar.f40545b, oVar.f40546c, oVar.f40547d);
        com.join.mgps.Util.i0.U0(oVar.f40553j);
        String str = gVar.f40605n;
        String str2 = gVar.f40606o;
        if (oVar.f40554k != null) {
            if (!TextUtils.isEmpty(str)) {
                oVar.f40554k.setVisibility(0);
                oVar.f40554k.setText(str);
                Drawable drawable = this.f40502c.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                oVar.f40554k.setBackgroundDrawable(drawable);
            } else {
                oVar.f40554k.setVisibility(8);
            }
        }
        return view;
    }

    private View j(int i2, View view, ViewGroup viewGroup) {
        p pVar;
        t.h hVar;
        if (view != null) {
            pVar = (p) view.getTag();
        } else {
            pVar = new p();
            view = LayoutInflater.from(this.f40502c).inflate(R.layout.mg_forum_welcome_item_post_thumbnail, (ViewGroup) null);
            pVar.f40557c = (RelativeLayout) view.findViewById(R.id.forum_post_media_container);
            pVar.f40556b = (TextView) view.findViewById(R.id.images_count);
            pVar.f40558d = (SimpleDraweeView) view.findViewById(R.id.img_m_1);
            pVar.f40559e = (SimpleDraweeView) view.findViewById(R.id.img_m_2);
            pVar.f40560f = (SimpleDraweeView) view.findViewById(R.id.img_m_3);
            view.setTag(pVar);
        }
        try {
            hVar = (t.h) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (hVar == null) {
            return view;
        }
        t(pVar, hVar);
        C(view, hVar.f40609c);
        return view;
    }

    private View k(int i2, View view, ViewGroup viewGroup) {
        q qVar;
        t.i iVar;
        if (view != null) {
            qVar = (q) view.getTag();
        } else {
            qVar = new q();
            view = LayoutInflater.from(this.f40502c).inflate(R.layout.mg_forum_post_activity_item_post_message1, (ViewGroup) null);
            qVar.f40562b = (StaticLayoutView) view.findViewById(R.id.forum_post_message);
            view.setTag(qVar);
        }
        try {
            iVar = (t.i) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (iVar == null) {
            return view;
        }
        com.join.android.app.component.optimizetext.b bVar = this.f40500a;
        if (bVar.d(iVar.f40612c + "") == null) {
            this.f40500a.e(iVar);
        }
        StaticLayoutView staticLayoutView = qVar.f40562b;
        com.join.android.app.component.optimizetext.b bVar2 = this.f40500a;
        staticLayoutView.setLayout(bVar2.d(iVar.f40612c + ""));
        com.join.mgps.Util.i0.X0(qVar.f40562b);
        C(view, iVar.f40612c);
        return view;
    }

    private View l(int i2, View view, ViewGroup viewGroup) {
        r rVar;
        t.j jVar;
        if (view != null) {
            rVar = (r) view.getTag();
        } else {
            rVar = new r();
            view = LayoutInflater.from(this.f40502c).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            rVar.f40564b = (Button) view.findViewById(R.id.forum_post_best);
            rVar.f40565c = (TextView) view.findViewById(R.id.forum_post_subject);
            view.setTag(rVar);
        }
        try {
            jVar = (t.j) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (jVar == null) {
            return view;
        }
        w(rVar.f40565c, jVar.f40619b, jVar.f40618a, jVar.f40622e, jVar.f40623f, jVar.f40624g);
        C(view, jVar.f40620c);
        return view;
    }

    private View m(int i2, View view, ViewGroup viewGroup) {
        m mVar;
        t.k kVar;
        try {
            if (view != null) {
                mVar = (m) view.getTag();
            } else {
                mVar = new m();
                view = LayoutInflater.from(this.f40502c).inflate(R.layout.mg_forum_forum_activity_top_item, (ViewGroup) null);
                mVar.f40534b = (TextView) view.findViewById(R.id.forum_post_subject);
                mVar.f40535c = (TextView) view.findViewById(R.id.forum_post_stickie);
                mVar.f40536d = (Button) view.findViewById(R.id.forum_post_best);
                mVar.f40537e = (ImageView) view.findViewById(R.id.forum_post_pic);
                mVar.f40538f = (ImageView) view.findViewById(R.id.forum_post_video);
                view.setTag(mVar);
            }
            kVar = (t.k) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (kVar == null) {
            return view;
        }
        if (com.join.mgps.Util.d2.h(kVar.f40626b)) {
            mVar.f40534b.setVisibility(8);
        } else {
            mVar.f40534b.setVisibility(0);
            mVar.f40534b.setText(kVar.f40626b);
        }
        if (kVar.f40627c) {
            mVar.f40536d.setVisibility(0);
        } else {
            mVar.f40536d.setVisibility(8);
        }
        if (kVar.f40628d) {
            mVar.f40537e.setVisibility(0);
        } else {
            mVar.f40537e.setVisibility(8);
        }
        if (kVar.f40629e) {
            mVar.f40538f.setVisibility(0);
        } else {
            mVar.f40538f.setVisibility(8);
        }
        view.setOnClickListener(new d(kVar.f40625a));
        return view;
    }

    private int n(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f40505f == 0) {
            Resources resources = context.getResources();
            this.f40505f = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f40505f;
    }

    private View o(int i2, View view, ViewGroup viewGroup) {
        s sVar;
        t.l lVar;
        if (view != null) {
            sVar = (s) view.getTag();
        } else {
            sVar = new s();
            view = LayoutInflater.from(this.f40502c).inflate(R.layout.mg_forum_post_activity_item_post_video1, (ViewGroup) null);
            sVar.f40568c = (FrameLayout) view.findViewById(R.id.videoContner);
            sVar.f40567b = (SimpleDraweeView) view.findViewById(R.id.bannerView);
            view.setTag(sVar);
        }
        try {
            lVar = (t.l) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (lVar == null) {
            return view;
        }
        int n4 = n(this.f40502c);
        String str = lVar.f40631b;
        String str2 = lVar.f40630a;
        if (sVar.f40568c != null) {
            sVar.f40568c.setLayoutParams(new RelativeLayout.LayoutParams(-1, n4));
            MyImageLoader.d(sVar.f40567b, R.drawable.video_bg, str2);
            sVar.f40567b.setTag(Integer.valueOf(i2));
            if (com.join.mgps.Util.d2.i(str)) {
                com.danikula.videocache.i iVar = this.f40501b;
                if (iVar != null) {
                    str = iVar.j(str);
                }
                this.f40504e.d(i2, new c.k(i2, str, str2), new boolean[0]);
            }
        }
        return view;
    }

    private int r(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f40507h == 0) {
            Resources resources = context.getResources();
            int i2 = resources.getDisplayMetrics().widthPixels;
            resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
            this.f40507h = (int) (((i2 - 0) * 1.0f) / 2.07f);
        }
        return this.f40507h;
    }

    private void s() {
        if (this.f40506g == null) {
            this.f40506g = q();
        }
    }

    private void t(p pVar, t.h hVar) {
        if (hVar != null && hVar.f40607a.size() != 0) {
            if (this.f40506g == null) {
                this.f40506g = q();
            }
            List<String> list = hVar.f40608b;
            TextView textView = pVar.f40556b;
            if (list != null && list.size() > 3) {
                textView.setVisibility(0);
                textView.setText("共" + list.size() + "张");
            } else {
                textView.setVisibility(8);
            }
            SimpleDraweeView[] simpleDraweeViewArr = {pVar.f40558d, pVar.f40559e, pVar.f40560f};
            int i2 = 0;
            for (int i4 = 0; i4 < 3; i4++) {
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i4];
                if (i4 >= hVar.f40607a.size()) {
                    simpleDraweeView.setVisibility(8);
                } else {
                    ForumBean.ForumPostsBean.ResBean resBean = hVar.f40607a.get(i4);
                    if (resBean.getType().equals("pic")) {
                        y(simpleDraweeView, i4, resBean.getThumb(), i4 - i2, list);
                    } else if (resBean.getType().equals("video")) {
                        i2++;
                        G(simpleDraweeView, i4, resBean.getThumb(), resBean.getRaw());
                    }
                }
            }
            return;
        }
        pVar.f40557c.setVisibility(8);
    }

    private void u(View view, boolean z3, int i2) {
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

    private void v(View view, ForumBean.ForumPostsBean forumPostsBean) {
        boolean is_praise = forumPostsBean.is_praise();
        int praise = forumPostsBean.getPraise();
        forumPostsBean.setPraise(is_praise ? praise - 1 : praise + 1);
        forumPostsBean.setIs_praise(!is_praise);
        u(view, forumPostsBean.is_praise(), forumPostsBean.getPraise());
    }

    private void w(TextView textView, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
        com.join.mgps.Util.i0.w1(textView, str, z3, z4, str2, list);
    }

    public void A(com.join.android.app.component.optimizetext.b bVar) {
        this.f40500a = bVar;
    }

    public void B(View view, int i2) {
        view.setOnClickListener(new h(i2));
    }

    public void C(View view, int i2) {
        view.setOnClickListener(new g(i2));
    }

    public void D(View view, String str, String str2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new a(str2));
    }

    public void E(View view, int i2) {
        view.setOnClickListener(new j(i2));
    }

    void G(SimpleDraweeView simpleDraweeView, int i2, String str, String str2) {
        if (this.f40506g == null) {
            this.f40506g = q();
        }
        int i4 = (int) (this.f40502c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f40506g;
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
            simpleDraweeView.setOnClickListener(new f(str2));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public void H(View view, int i2) {
        view.setOnClickListener(new i(i2));
    }

    LinearLayout.LayoutParams c(int i2) {
        if (this.f40509j == null) {
            float f4 = this.f40502c.getResources().getDisplayMetrics().scaledDensity;
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
            this.f40509j = layoutParams;
        }
        return this.f40509j;
    }

    LinearLayout.LayoutParams d(View view) {
        if (this.f40508i == null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, ((int) view.getContext().getResources().getDisplayMetrics().density) * 6);
            this.f40508i = layoutParams;
        }
        return this.f40508i;
    }

    public List<t> f() {
        return this.f40503d;
    }

    public com.join.android.app.component.optimizetext.b g() {
        return this.f40500a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<t> list = this.f40503d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<t> list = this.f40503d;
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
        List<t> list = this.f40503d;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.FORUM_TOPIC_TOP.ordinal()) {
            return e(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return i(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return h(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return j(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return o(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return k(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_SUBJECT.ordinal()) {
            return l(i2, view, viewGroup);
        }
        return itemViewType == ViewType.POST_TOP.ordinal() ? m(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public com.danikula.videocache.i p(Context context) {
        return MApplication.p(context);
    }

    LinearLayout.LayoutParams q() {
        DisplayMetrics displayMetrics = this.f40502c.getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        int i2 = (int) (210.0f * f4);
        int i4 = (int) (160.0f * f4);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f40502c.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f4)) * f4) * 2.0f))) / 3;
        if (dimensionPixelSize <= i2) {
            i2 = dimensionPixelSize > i4 ? i4 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i2, i2);
    }

    public void x(k kVar) {
        this.f40510k = kVar;
    }

    void y(SimpleDraweeView simpleDraweeView, int i2, String str, int i4, List<String> list) {
        if (this.f40506g == null) {
            this.f40506g = q();
        }
        int i5 = (int) (this.f40502c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f40506g;
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
            simpleDraweeView.setOnClickListener(new e(list, i4));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public void z(List<t> list) {
        if (list == null) {
            return;
        }
        if (this.f40503d == null) {
            this.f40503d = new ArrayList();
        }
        this.f40503d.clear();
        this.f40503d.addAll(list);
    }
}
