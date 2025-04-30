package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class GameTopicAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private com.join.android.app.component.optimizetext.b f40735a;

    /* renamed from: b  reason: collision with root package name */
    private Context f40736b;

    /* renamed from: d  reason: collision with root package name */
    LinearLayout.LayoutParams f40738d;

    /* renamed from: e  reason: collision with root package name */
    int f40739e = 0;

    /* renamed from: c  reason: collision with root package name */
    private List<g> f40737c = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        POST_SUBJECT,
        POST_HEADER,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f40740a;

        a(g.b bVar) {
            this.f40740a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f40740a.f40767e).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40742a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40743b;

        b(String str, int i2) {
            this.f40742a = str;
            this.f40743b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTopicAdapter gameTopicAdapter = GameTopicAdapter.this;
            String str = this.f40742a;
            gameTopicAdapter.j(str, this.f40743b + "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends h {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40745b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40746c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40747d;

        c() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends h {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40749b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40750c;

        d() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends h {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40752b;

        e() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends h {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40754b;

        f() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class g {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40756a;

        /* renamed from: b  reason: collision with root package name */
        Object f40757b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public int f40758a;

            /* renamed from: b  reason: collision with root package name */
            public String f40759b;

            /* renamed from: c  reason: collision with root package name */
            public String f40760c;

            /* renamed from: d  reason: collision with root package name */
            public int f40761d;

            /* renamed from: e  reason: collision with root package name */
            public int f40762e;

            public a(int i2, String str, String str2, int i4, int i5) {
                this.f40758a = i2;
                this.f40759b = str;
                this.f40760c = str2;
                this.f40761d = i4;
                this.f40762e = i5;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f40763a;

            /* renamed from: b  reason: collision with root package name */
            public String f40764b;

            /* renamed from: c  reason: collision with root package name */
            public String f40765c;

            /* renamed from: d  reason: collision with root package name */
            public int f40766d;

            /* renamed from: e  reason: collision with root package name */
            public int f40767e;

            public b(int i2, String str, String str2, String str3, int i4) {
                this.f40766d = i2;
                this.f40767e = i4;
                this.f40765c = str;
                this.f40763a = str2;
                this.f40764b = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f40768a;

            /* renamed from: b  reason: collision with root package name */
            public List<String> f40769b;

            /* renamed from: c  reason: collision with root package name */
            public int f40770c;

            public c(List<ForumBean.ForumPostsBean.ResBean> list, List<String> list2, int i2) {
                this.f40768a = list;
                this.f40769b = list2;
                this.f40770c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class d implements com.join.android.app.component.optimizetext.c {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40771a;

            /* renamed from: b  reason: collision with root package name */
            public String f40772b;

            /* renamed from: c  reason: collision with root package name */
            public int f40773c;

            /* renamed from: d  reason: collision with root package name */
            public int f40774d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40775e;

            /* renamed from: f  reason: collision with root package name */
            public String f40776f;

            /* renamed from: g  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f40777g;

            /* renamed from: h  reason: collision with root package name */
            public SpannableStringBuilder f40778h;

            public d() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f40778h;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f40773c + "";
            }

            public d(boolean z3, String str, int i2, int i4, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, SpannableStringBuilder spannableStringBuilder) {
                this.f40771a = z3;
                this.f40772b = str;
                this.f40773c = i2;
                this.f40774d = i4;
                this.f40775e = z4;
                this.f40776f = str2;
                this.f40777g = list;
                this.f40778h = spannableStringBuilder;
            }
        }

        /* loaded from: classes3.dex */
        public static class e {

            /* renamed from: a  reason: collision with root package name */
            public int f40779a;

            /* renamed from: b  reason: collision with root package name */
            public String f40780b;

            /* renamed from: c  reason: collision with root package name */
            public String f40781c;

            public e(int i2, String str, String str2) {
                this.f40779a = i2;
                this.f40780b = str;
                this.f40781c = str2;
            }
        }

        /* loaded from: classes3.dex */
        public static class f {

            /* renamed from: a  reason: collision with root package name */
            public int f40782a;

            /* renamed from: b  reason: collision with root package name */
            public String f40783b;

            /* renamed from: c  reason: collision with root package name */
            public String f40784c;

            public f(int i2, String str, String str2) {
                this.f40782a = i2;
                this.f40783b = str;
                this.f40784c = str2;
            }
        }

        public g() {
        }

        public Object a() {
            return this.f40757b;
        }

        public ViewType b() {
            return this.f40756a;
        }

        public void c(Object obj) {
            this.f40757b = obj;
        }

        public void d(ViewType viewType) {
            this.f40756a = viewType;
        }

        public g(ViewType viewType, Object obj) {
            this.f40756a = viewType;
            this.f40757b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class h {
        h() {
        }
    }

    public GameTopicAdapter(Context context) {
        this.f40736b = context;
        this.f40735a = new com.join.android.app.component.optimizetext.b(context);
        k();
    }

    private View d(int i2, View view, ViewGroup viewGroup) {
        c cVar;
        g.a aVar;
        if (view != null) {
            cVar = (c) view.getTag();
        } else {
            cVar = new c();
            view = LayoutInflater.from(this.f40736b).inflate(R.layout.mg_fragment_game_topic_footer, (ViewGroup) null);
            cVar.f40745b = (TextView) view.findViewById(R.id.forum_name);
            cVar.f40746c = (TextView) view.findViewById(R.id.forum_post_view);
            cVar.f40747d = (TextView) view.findViewById(R.id.forum_post_commit);
            view.setTag(cVar);
        }
        try {
            aVar = (g.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar == null) {
            return view;
        }
        cVar.f40745b.setText(aVar.f40760c);
        TextView textView = cVar.f40746c;
        com.join.mgps.Util.i0.D1(textView, aVar.f40761d + "", "0");
        TextView textView2 = cVar.f40747d;
        com.join.mgps.Util.i0.D1(textView2, aVar.f40762e + "", "0");
        n(view, aVar.f40759b, aVar.f40758a);
        return view;
    }

    private View e(int i2, View view, ViewGroup viewGroup) {
        d dVar;
        g.b bVar;
        if (view != null) {
            dVar = (d) view.getTag();
        } else {
            dVar = new d();
            view = LayoutInflater.from(this.f40736b).inflate(R.layout.mg_fragment_game_topic_header, (ViewGroup) null);
            dVar.f40749b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            dVar.f40750c = (TextView) view.findViewById(R.id.forum_post_nickname);
            view.setTag(dVar);
        }
        try {
            bVar = (g.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null) {
            return view;
        }
        String str = bVar.f40763a;
        String string = view.getContext().getResources().getString(R.string.game_topic_nickname, str);
        int indexOf = string.indexOf(str);
        int length = str.length() + indexOf;
        SpannableString spannableString = new SpannableString(string);
        if (length <= string.length()) {
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FC9234")), indexOf, length, 33);
        }
        dVar.f40750c.setText(spannableString);
        MyImageLoader.w(dVar.f40749b, bVar.f40764b);
        dVar.f40749b.setOnClickListener(new a(bVar));
        n(view, bVar.f40765c, bVar.f40766d);
        return view;
    }

    private View f(int i2, View view, ViewGroup viewGroup) {
        e eVar;
        g.e eVar2;
        if (view != null) {
            eVar = (e) view.getTag();
        } else {
            eVar = new e();
            view = LayoutInflater.from(this.f40736b).inflate(R.layout.mg_fragment_game_topic_title, (ViewGroup) null);
            eVar.f40752b = (TextView) view.findViewById(R.id.forum_post_subject);
            view.setTag(eVar);
        }
        try {
            eVar2 = (g.e) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (eVar2 == null) {
            return view;
        }
        eVar.f40752b.setText(eVar2.f40781c);
        n(view, eVar2.f40780b, eVar2.f40779a);
        return view;
    }

    private int g(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f40739e == 0) {
            Resources resources = context.getResources();
            this.f40739e = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 2.46f);
        }
        return this.f40739e;
    }

    private View h(int i2, View view, ViewGroup viewGroup) {
        f fVar;
        g.f fVar2;
        if (view != null) {
            fVar = (f) view.getTag();
        } else {
            fVar = new f();
            view = LayoutInflater.from(this.f40736b).inflate(R.layout.mg_fragment_game_topic_cover, (ViewGroup) null);
            fVar.f40754b = (SimpleDraweeView) view.findViewById(R.id.cover);
            view.setTag(fVar);
        }
        try {
            fVar2 = (g.f) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (fVar2 == null) {
            return view;
        }
        fVar.f40754b.setLayoutParams(new RelativeLayout.LayoutParams(-1, g(this.f40736b)));
        String str = fVar2.f40784c;
        SimpleDraweeView simpleDraweeView = fVar.f40754b;
        if (simpleDraweeView != null) {
            simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
            MyImageLoader.h(fVar.f40754b, str);
        }
        n(view, fVar2.f40783b, fVar2.f40782a);
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(String str, String str2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(2);
        intentDateBean.setTpl_type(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        intentDateBean.setCrc_link_type_val(str + "");
        intentDateBean.setExtBean(new ExtBean("current_topic", str2 + "", str));
        IntentUtil.getInstance().intentActivity(this.f40736b, intentDateBean);
    }

    private void k() {
        if (this.f40738d == null) {
            this.f40738d = i();
        }
    }

    public List<g> b() {
        return this.f40737c;
    }

    public com.join.android.app.component.optimizetext.b c() {
        return this.f40735a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<g> list = this.f40737c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<g> list = this.f40737c;
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
        List<g> list = this.f40737c;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return e(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return d(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return h(i2, view, viewGroup);
        }
        return itemViewType == ViewType.POST_SUBJECT.ordinal() ? f(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    LinearLayout.LayoutParams i() {
        DisplayMetrics displayMetrics = this.f40736b.getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        int i2 = (int) (210.0f * f4);
        int i4 = (int) (160.0f * f4);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f40736b.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f4)) * f4) * 2.0f))) / 3;
        if (dimensionPixelSize <= i2) {
            i2 = dimensionPixelSize > i4 ? i4 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i2, i2);
    }

    public void l(List<g> list) {
        if (list == null) {
            return;
        }
        if (this.f40737c == null) {
            this.f40737c = new ArrayList();
        }
        this.f40737c.clear();
        this.f40737c.addAll(list);
    }

    public void m(com.join.android.app.component.optimizetext.b bVar) {
        this.f40735a = bVar;
    }

    void n(View view, String str, int i2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new b(str, i2));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
