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
import java.util.List;
/* loaded from: classes3.dex */
public class ForumProfileAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private com.join.android.app.component.optimizetext.b f39829a;

    /* renamed from: b  reason: collision with root package name */
    com.danikula.videocache.i f39830b;

    /* renamed from: c  reason: collision with root package name */
    private Context f39831c;

    /* renamed from: f  reason: collision with root package name */
    LinearLayout.LayoutParams f39834f;

    /* renamed from: g  reason: collision with root package name */
    LinearLayout.LayoutParams f39835g;

    /* renamed from: e  reason: collision with root package name */
    int f39833e = 0;

    /* renamed from: h  reason: collision with root package name */
    private j f39836h = null;

    /* renamed from: d  reason: collision with root package name */
    private List<r> f39832d = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        POST_HEADER,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE_THUMBNAIL,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r.f f39837a;

        a(r.f fVar) {
            this.f39837a = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39837a.f39914m).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39839a;

        b(int i2) {
            this.f39839a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileAdapter.this.f39836h != null) {
                ForumProfileAdapter.this.f39836h.a(this.f39839a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f39841a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39842b;

        c(List list, int i2) {
            this.f39841a = list;
            this.f39842b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String[] strArr = new String[this.f39841a.size()];
            this.f39841a.toArray(strArr);
            com.join.mgps.Util.i0.G0(view.getContext(), this.f39842b, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39844a;

        d(String str) {
            this.f39844a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.Q0(view.getContext(), this.f39844a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39846a;

        e(int i2) {
            this.f39846a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileAdapter.this.f39836h != null) {
                ForumProfileAdapter.this.f39836h.g(this.f39846a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39848a;

        f(int i2) {
            this.f39848a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileAdapter.this.f39836h != null) {
                ForumProfileAdapter.this.f39836h.f(this.f39848a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39850a;

        g(int i2) {
            this.f39850a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileAdapter.this.f39836h != null) {
                ForumProfileAdapter.this.f39836h.b(this.f39850a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39852a;

        h(int i2) {
            this.f39852a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.findViewById(R.id.forum_post_praise_icon).startAnimation(AnimationUtils.loadAnimation(ForumProfileAdapter.this.f39831c, R.anim.scale_reset));
            if (ForumProfileAdapter.this.f39836h != null) {
                Context context = view.getContext();
                if (com.join.mgps.Util.i0.Y0(context)) {
                    ForumProfileAdapter.this.f39836h.a(this.f39852a);
                    return;
                }
                com.join.mgps.Util.i2.a(context).b("用户未登录，请登录");
                com.join.mgps.Util.i0.L0(context);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39854a;

        i(String str) {
            this.f39854a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int parseInt = Integer.parseInt(this.f39854a);
            if (ForumProfileAdapter.this.f39836h != null) {
                ForumProfileAdapter.this.f39836h.c(parseInt);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface j {
        void a(int i2);

        void b(int i2);

        void c(int i2);

        void f(int i2);

        void g(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends s {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39856b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39857c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39858d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39859e;

        k() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l extends s {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39861b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39862c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39863d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39864e;

        /* renamed from: f  reason: collision with root package name */
        public View f39865f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f39866g;

        /* renamed from: h  reason: collision with root package name */
        public RelativeLayout f39867h;

        /* renamed from: i  reason: collision with root package name */
        public VipView f39868i;

        /* renamed from: j  reason: collision with root package name */
        public ImageView f39869j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f39870k;

        l() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends s {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39872b;

        /* renamed from: c  reason: collision with root package name */
        public RelativeLayout f39873c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f39874d;

        /* renamed from: e  reason: collision with root package name */
        public SimpleDraweeView f39875e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f39876f;

        m() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class n extends s {

        /* renamed from: b  reason: collision with root package name */
        public ImageView f39878b;

        n() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o extends s {

        /* renamed from: b  reason: collision with root package name */
        public StaticLayoutView f39880b;

        o() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends s {

        /* renamed from: b  reason: collision with root package name */
        public Button f39882b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39883c;

        p() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q extends s {

        /* renamed from: b  reason: collision with root package name */
        public ImageView f39885b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f39886c;

        /* renamed from: d  reason: collision with root package name */
        public FrameLayout f39887d;

        q() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class r {

        /* renamed from: a  reason: collision with root package name */
        ViewType f39889a;

        /* renamed from: b  reason: collision with root package name */
        Object f39890b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumWelcomeAdItemBean> f39891a;

            public a() {
            }

            public a(List<ForumBean.ForumWelcomeAdItemBean> list) {
                this.f39891a = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {
        }

        /* loaded from: classes3.dex */
        public static class c {
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            ForumBean f39892a;

            /* renamed from: b  reason: collision with root package name */
            ForumBean f39893b;

            public d() {
            }

            public d(ForumBean forumBean, ForumBean forumBean2) {
                this.f39892a = forumBean;
                this.f39893b = forumBean2;
            }
        }

        /* loaded from: classes3.dex */
        public static class e {

            /* renamed from: a  reason: collision with root package name */
            public int f39894a;

            /* renamed from: b  reason: collision with root package name */
            public String f39895b;

            /* renamed from: c  reason: collision with root package name */
            public int f39896c;

            /* renamed from: d  reason: collision with root package name */
            public int f39897d;

            /* renamed from: e  reason: collision with root package name */
            public int f39898e;

            /* renamed from: f  reason: collision with root package name */
            public int f39899f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39900g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39901h;

            public e() {
            }

            public e(int i2, int i4, String str, int i5, int i6, int i7, boolean z3, boolean z4) {
                this.f39894a = i2;
                this.f39899f = i4;
                this.f39895b = str;
                this.f39896c = i5;
                this.f39897d = i6;
                this.f39898e = i7;
                this.f39900g = z3;
                this.f39901h = z4;
            }
        }

        /* loaded from: classes3.dex */
        public static class f {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39902a;

            /* renamed from: b  reason: collision with root package name */
            public String f39903b;

            /* renamed from: c  reason: collision with root package name */
            public String f39904c;

            /* renamed from: d  reason: collision with root package name */
            public long f39905d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39906e;

            /* renamed from: f  reason: collision with root package name */
            public int f39907f;

            /* renamed from: g  reason: collision with root package name */
            public int f39908g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39909h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f39910i;

            /* renamed from: j  reason: collision with root package name */
            public boolean f39911j;

            /* renamed from: k  reason: collision with root package name */
            public int f39912k;

            /* renamed from: l  reason: collision with root package name */
            public int f39913l;

            /* renamed from: m  reason: collision with root package name */
            public int f39914m;

            /* renamed from: n  reason: collision with root package name */
            public String f39915n;

            /* renamed from: o  reason: collision with root package name */
            public String f39916o;

            public f() {
            }

            public f(boolean z3, String str, String str2, long j4, boolean z4, int i2, int i4, boolean z5, int i5, int i6, boolean z6, String str3, String str4, int i7) {
                this.f39902a = z3;
                this.f39903b = str;
                this.f39904c = str2;
                this.f39905d = j4;
                this.f39906e = z4;
                this.f39907f = i2;
                this.f39908g = i4;
                this.f39914m = i7;
                this.f39909h = z5;
                this.f39912k = i5;
                this.f39913l = i6;
                this.f39911j = z6;
                this.f39915n = str3;
                this.f39916o = str4;
            }
        }

        /* loaded from: classes3.dex */
        public static class g {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f39917a;

            /* renamed from: b  reason: collision with root package name */
            public List<String> f39918b;

            /* renamed from: c  reason: collision with root package name */
            public int f39919c;

            public g(List<ForumBean.ForumPostsBean.ResBean> list, List<String> list2, int i2) {
                this.f39917a = list;
                this.f39918b = list2;
                this.f39919c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class h implements com.join.android.app.component.optimizetext.c {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39920a;

            /* renamed from: b  reason: collision with root package name */
            public String f39921b;

            /* renamed from: c  reason: collision with root package name */
            public int f39922c;

            /* renamed from: d  reason: collision with root package name */
            public int f39923d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39924e;

            /* renamed from: f  reason: collision with root package name */
            public String f39925f;

            /* renamed from: g  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39926g;

            /* renamed from: h  reason: collision with root package name */
            public SpannableStringBuilder f39927h;

            public h() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f39927h;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f39922c + "";
            }

            public h(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, SpannableStringBuilder spannableStringBuilder) {
                this.f39920a = z3;
                this.f39921b = str;
                this.f39922c = i2;
                this.f39923d = i4;
                this.f39924e = z4;
                this.f39925f = str2;
                this.f39926g = list;
                this.f39927h = spannableStringBuilder;
            }
        }

        /* loaded from: classes3.dex */
        public static class i {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39928a;

            /* renamed from: b  reason: collision with root package name */
            public String f39929b;

            /* renamed from: c  reason: collision with root package name */
            public int f39930c;

            /* renamed from: d  reason: collision with root package name */
            public int f39931d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39932e;

            /* renamed from: f  reason: collision with root package name */
            public String f39933f;

            /* renamed from: g  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39934g;

            public i() {
            }

            public i(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
                this.f39928a = z3;
                this.f39929b = str;
                this.f39930c = i2;
                this.f39931d = i4;
                this.f39932e = z4;
                this.f39933f = str2;
                this.f39934g = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class j {

            /* renamed from: a  reason: collision with root package name */
            public String f39935a;

            /* renamed from: b  reason: collision with root package name */
            public String f39936b;

            /* renamed from: c  reason: collision with root package name */
            public String f39937c;

            public j(String str, String str2, String str3) {
                this.f39935a = str;
                this.f39936b = str2;
                this.f39937c = str3;
            }
        }

        public r() {
        }

        public Object a() {
            return this.f39890b;
        }

        public ViewType b() {
            return this.f39889a;
        }

        public void c(Object obj) {
            this.f39890b = obj;
        }

        public void d(ViewType viewType) {
            this.f39889a = viewType;
        }

        public r(ViewType viewType, Object obj) {
            this.f39889a = viewType;
            this.f39890b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class s {
        s() {
        }
    }

    public ForumProfileAdapter(Context context) {
        this.f39831c = context;
        this.f39829a = new com.join.android.app.component.optimizetext.b(context);
        this.f39830b = m(context);
        o();
    }

    private View f(int i2, View view, ViewGroup viewGroup) {
        k kVar;
        r.e eVar;
        if (view != null) {
            kVar = (k) view.getTag();
        } else {
            kVar = new k();
            view = LayoutInflater.from(this.f39831c).inflate(R.layout.mg_forum_welcome_item_post_footer, (ViewGroup) null);
            kVar.f39856b = (TextView) view.findViewById(R.id.forum_name);
            kVar.f39857c = (TextView) view.findViewById(R.id.forum_post_view);
            kVar.f39858d = (TextView) view.findViewById(R.id.forum_post_commit);
            kVar.f39859e = (TextView) view.findViewById(R.id.forum_post_praise);
            view.setTag(kVar);
        }
        try {
            eVar = (r.e) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (eVar == null) {
            return view;
        }
        if (eVar.f39901h) {
            view.findViewById(R.id.post_footer_divider).setVisibility(0);
        } else {
            view.findViewById(R.id.post_footer_divider).setVisibility(8);
        }
        kVar.f39856b.setText(eVar.f39895b);
        if (com.join.mgps.Util.d2.h(eVar.f39895b)) {
            ((ViewGroup) kVar.f39856b.getParent()).setVisibility(8);
        } else {
            ((ViewGroup) kVar.f39856b.getParent()).setVisibility(0);
        }
        TextView textView = kVar.f39857c;
        com.join.mgps.Util.i0.D1(textView, eVar.f39896c + "", "0");
        TextView textView2 = kVar.f39858d;
        com.join.mgps.Util.i0.D1(textView2, eVar.f39897d + "", "0");
        p(view, eVar.f39900g, eVar.f39898e);
        int i4 = eVar.f39894a;
        ((View) kVar.f39859e.getParent()).setOnClickListener(new b(i4));
        y(view, i4);
        x((View) kVar.f39856b.getParent(), eVar.f39899f);
        A((View) kVar.f39859e.getParent(), i4, eVar.f39900g, eVar.f39898e);
        return view;
    }

    private View g(int i2, View view, ViewGroup viewGroup) {
        l lVar;
        r.f fVar;
        if (view != null) {
            lVar = (l) view.getTag();
        } else {
            lVar = new l();
            view = LayoutInflater.from(this.f39831c).inflate(R.layout.mg_forum_welcome_item_post_header, (ViewGroup) null);
            lVar.f39865f = view.findViewById(R.id.forum_post_divider);
            lVar.f39861b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            lVar.f39862c = (TextView) view.findViewById(R.id.forum_post_nickname);
            lVar.f39863d = (TextView) view.findViewById(R.id.forum_post_add_time);
            lVar.f39864e = (TextView) view.findViewById(R.id.forum_post_stickie);
            lVar.f39867h = (RelativeLayout) view.findViewById(R.id.forumExtFunc);
            lVar.f39866g = (ImageView) view.findViewById(R.id.forum_post_moderator);
            lVar.f39869j = (ImageView) view.findViewById(R.id.officialIcon);
            lVar.f39868i = (VipView) view.findViewById(R.id.vipFlag);
            lVar.f39870k = (TextView) view.findViewById(R.id.copperTitleTv);
            view.setTag(lVar);
        }
        try {
            fVar = (r.f) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (fVar == null) {
            return view;
        }
        try {
            UtilsMy.M2(this.f39831c, lVar.f39862c, fVar.f39912k, fVar.f39913l, R.color.forum_nickname_color);
            lVar.f39868i.setVipData(fVar.f39912k, fVar.f39913l);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        lVar.f39867h.setVisibility(0);
        if (fVar.f39902a) {
            lVar.f39865f.setVisibility(8);
        } else {
            lVar.f39865f.setVisibility(0);
        }
        lVar.f39862c.setText(fVar.f39904c);
        lVar.f39863d.setText(com.join.android.app.common.utils.c.a(fVar.f39905d * 1000));
        if (fVar.f39906e) {
            lVar.f39864e.setVisibility(0);
        } else {
            lVar.f39864e.setVisibility(8);
        }
        if (fVar.f39910i) {
            lVar.f39866g.setVisibility(0);
        } else {
            lVar.f39866g.setVisibility(8);
        }
        if (fVar.f39911j) {
            lVar.f39869j.setVisibility(0);
        } else {
            lVar.f39869j.setVisibility(8);
        }
        MyImageLoader.w(lVar.f39861b, fVar.f39903b);
        lVar.f39861b.setOnClickListener(new a(fVar));
        int i4 = fVar.f39907f;
        y(view, i4);
        C(lVar.f39867h, i4);
        com.join.mgps.Util.i0.S0(lVar.f39861b, lVar.f39862c, lVar.f39863d);
        com.join.mgps.Util.i0.U0(lVar.f39868i);
        String str = fVar.f39915n;
        String str2 = fVar.f39916o;
        if (lVar.f39870k != null) {
            if (!TextUtils.isEmpty(str)) {
                lVar.f39870k.setVisibility(0);
                lVar.f39870k.setText(str);
                Drawable drawable = this.f39831c.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                lVar.f39870k.setBackgroundDrawable(drawable);
            } else {
                lVar.f39870k.setVisibility(8);
            }
        }
        return view;
    }

    private View h(int i2, View view, ViewGroup viewGroup) {
        m mVar;
        r.g gVar;
        if (view != null) {
            mVar = (m) view.getTag();
        } else {
            mVar = new m();
            view = LayoutInflater.from(this.f39831c).inflate(R.layout.mg_forum_welcome_item_post_thumbnail, (ViewGroup) null);
            mVar.f39873c = (RelativeLayout) view.findViewById(R.id.forum_post_media_container);
            mVar.f39872b = (TextView) view.findViewById(R.id.images_count);
            mVar.f39874d = (SimpleDraweeView) view.findViewById(R.id.img_m_1);
            mVar.f39875e = (SimpleDraweeView) view.findViewById(R.id.img_m_2);
            mVar.f39876f = (SimpleDraweeView) view.findViewById(R.id.img_m_3);
            view.setTag(mVar);
        }
        try {
            gVar = (r.g) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (gVar == null) {
            return view;
        }
        q(mVar, gVar);
        y(view, gVar.f39919c);
        return view;
    }

    private View i(int i2, View view, ViewGroup viewGroup) {
        o oVar;
        r.h hVar;
        if (view != null) {
            oVar = (o) view.getTag();
        } else {
            oVar = new o();
            view = LayoutInflater.from(this.f39831c).inflate(R.layout.mg_forum_post_activity_item_post_message1, (ViewGroup) null);
            oVar.f39880b = (StaticLayoutView) view.findViewById(R.id.forum_post_message);
            view.setTag(oVar);
        }
        try {
            hVar = (r.h) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (hVar == null) {
            return view;
        }
        com.join.android.app.component.optimizetext.b bVar = this.f39829a;
        if (bVar.d(hVar.f39922c + "") == null) {
            this.f39829a.e(hVar);
        }
        StaticLayoutView staticLayoutView = oVar.f39880b;
        com.join.android.app.component.optimizetext.b bVar2 = this.f39829a;
        staticLayoutView.setLayout(bVar2.d(hVar.f39922c + ""));
        com.join.mgps.Util.i0.X0(oVar.f39880b);
        y(view, hVar.f39922c);
        return view;
    }

    private View j(int i2, View view, ViewGroup viewGroup) {
        p pVar;
        r.i iVar;
        if (view != null) {
            pVar = (p) view.getTag();
        } else {
            pVar = new p();
            view = LayoutInflater.from(this.f39831c).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            pVar.f39882b = (Button) view.findViewById(R.id.forum_post_best);
            pVar.f39883c = (TextView) view.findViewById(R.id.forum_post_subject);
            view.setTag(pVar);
        }
        try {
            iVar = (r.i) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (iVar == null) {
            return view;
        }
        s(pVar.f39883c, iVar.f39929b, iVar.f39928a, iVar.f39932e, iVar.f39933f, iVar.f39934g);
        y(view, iVar.f39930c);
        return view;
    }

    private int k(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f39833e == 0) {
            Resources resources = context.getResources();
            this.f39833e = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f39833e;
    }

    private View l(int i2, View view, ViewGroup viewGroup) {
        q qVar;
        r.j jVar;
        if (view != null) {
            qVar = (q) view.getTag();
        } else {
            qVar = new q();
            view = LayoutInflater.from(this.f39831c).inflate(R.layout.mg_forum_post_activity_item_post_video1, (ViewGroup) null);
            qVar.f39887d = (FrameLayout) view.findViewById(R.id.videoContner);
            qVar.f39886c = (SimpleDraweeView) view.findViewById(R.id.bannerView);
            view.setTag(qVar);
        }
        try {
            jVar = (r.j) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (jVar == null) {
            return view;
        }
        k(this.f39831c);
        String str = jVar.f39936b;
        String str2 = jVar.f39935a;
        if (qVar.f39887d != null) {
            MyImageLoader.d(qVar.f39886c, R.drawable.video_bg, str2);
            if (com.join.mgps.Util.d2.i(str)) {
                new c.k(i2, str, str2);
            }
        }
        return view;
    }

    private void o() {
        if (this.f39834f == null) {
            this.f39834f = n();
        }
    }

    private void p(View view, boolean z3, int i2) {
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

    private void q(m mVar, r.g gVar) {
        if (gVar != null && gVar.f39917a.size() != 0) {
            if (this.f39834f == null) {
                this.f39834f = n();
            }
            List<String> list = gVar.f39918b;
            TextView textView = mVar.f39872b;
            if (list != null && list.size() > 3) {
                textView.setVisibility(0);
                textView.setText("共" + list.size() + "张");
            } else {
                textView.setVisibility(8);
            }
            SimpleDraweeView[] simpleDraweeViewArr = {mVar.f39874d, mVar.f39875e, mVar.f39876f};
            int i2 = 0;
            for (int i4 = 0; i4 < 3; i4++) {
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i4];
                if (i4 >= gVar.f39917a.size()) {
                    simpleDraweeView.setVisibility(8);
                } else {
                    ForumBean.ForumPostsBean.ResBean resBean = gVar.f39917a.get(i4);
                    if (resBean.getType().equals("pic")) {
                        u(simpleDraweeView, i4, resBean.getThumb(), i4 - i2, list);
                    } else if (resBean.getType().equals("video")) {
                        i2++;
                        B(simpleDraweeView, i4, resBean.getThumb(), resBean.getRaw());
                    }
                }
            }
            return;
        }
        mVar.f39873c.setVisibility(8);
    }

    private void r(View view, ForumBean.ForumPostsBean forumPostsBean) {
        boolean is_praise = forumPostsBean.is_praise();
        int praise = forumPostsBean.getPraise();
        forumPostsBean.setPraise(is_praise ? praise - 1 : praise + 1);
        forumPostsBean.setIs_praise(!is_praise);
        p(view, forumPostsBean.is_praise(), forumPostsBean.getPraise());
    }

    private void s(TextView textView, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list) {
        com.join.mgps.Util.i0.w1(textView, str, z3, z4, str2, list);
    }

    public void A(View view, int i2, boolean z3, int i4) {
        view.setOnClickListener(new h(i2));
    }

    void B(SimpleDraweeView simpleDraweeView, int i2, String str, String str2) {
        if (this.f39834f == null) {
            this.f39834f = n();
        }
        int i4 = (int) (this.f39831c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f39834f;
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

    public void C(View view, int i2) {
        view.setOnClickListener(new g(i2));
    }

    LinearLayout.LayoutParams c(View view) {
        if (this.f39835g == null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, ((int) view.getContext().getResources().getDisplayMetrics().density) * 6);
            this.f39835g = layoutParams;
        }
        return this.f39835g;
    }

    public List<r> d() {
        return this.f39832d;
    }

    public com.join.android.app.component.optimizetext.b e() {
        return this.f39829a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<r> list = this.f39832d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<r> list = this.f39832d;
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
        List<r> list = this.f39832d;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return g(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return f(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return h(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return l(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return i(i2, view, viewGroup);
        }
        return itemViewType == ViewType.POST_SUBJECT.ordinal() ? j(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public com.danikula.videocache.i m(Context context) {
        return MApplication.p(context);
    }

    LinearLayout.LayoutParams n() {
        DisplayMetrics displayMetrics = this.f39831c.getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        int i2 = (int) (210.0f * f4);
        int i4 = (int) (160.0f * f4);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f39831c.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f4)) * f4) * 2.0f))) / 3;
        if (dimensionPixelSize <= i2) {
            i2 = dimensionPixelSize > i4 ? i4 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i2, i2);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void t(j jVar) {
        this.f39836h = jVar;
    }

    void u(SimpleDraweeView simpleDraweeView, int i2, String str, int i4, List<String> list) {
        if (this.f39834f == null) {
            this.f39834f = n();
        }
        int i5 = (int) (this.f39831c.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f39834f;
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
            simpleDraweeView.setOnClickListener(new c(list, i4));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public void v(List<r> list) {
        if (list == null) {
            return;
        }
        if (this.f39832d == null) {
            this.f39832d = new ArrayList();
        }
        this.f39832d.clear();
        this.f39832d.addAll(list);
    }

    public void w(com.join.android.app.component.optimizetext.b bVar) {
        this.f39829a = bVar;
    }

    public void x(View view, int i2) {
        view.setOnClickListener(new f(i2));
    }

    public void y(View view, int i2) {
        view.setOnClickListener(new e(i2));
    }

    public void z(View view, String str, String str2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new i(str2));
    }
}
