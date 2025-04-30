package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
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
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumProfileMessageAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f40246a;

    /* renamed from: b  reason: collision with root package name */
    private List<j> f40247b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private d f40248c;

    /* loaded from: classes3.dex */
    public enum ViewType {
        PROFILE_HEADER,
        PROFILE_MESSAGE_ITEM,
        PROFILE_FOOTER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j.b f40249a;

        a(j.b bVar) {
            this.f40249a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f40249a.f40298l).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40251a;

        b(int i2) {
            this.f40251a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileMessageAdapter.this.f40248c != null) {
                ForumProfileMessageAdapter.this.f40248c.d(this.f40251a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40253a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40254b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40255c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f40256d;

        c(int i2, int i4, int i5, String str) {
            this.f40253a = i2;
            this.f40254b = i4;
            this.f40255c = i5;
            this.f40256d = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileMessageAdapter.this.f40248c != null) {
                ForumProfileMessageAdapter.this.f40248c.a(this.f40253a, this.f40254b, this.f40255c, this.f40256d);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(int i2, int i4, int i5, String str);

        void d(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends k {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40258b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40259c;

        /* renamed from: d  reason: collision with root package name */
        public RelativeLayout f40260d;

        e() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class f extends k {
        f() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends k {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40263b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40264c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40265d;

        /* renamed from: e  reason: collision with root package name */
        public View f40266e;

        /* renamed from: f  reason: collision with root package name */
        public RelativeLayout f40267f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f40268g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f40269h;

        /* renamed from: i  reason: collision with root package name */
        public VipView f40270i;

        /* renamed from: j  reason: collision with root package name */
        public ImageView f40271j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f40272k;

        g() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends k {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40274b;

        /* renamed from: c  reason: collision with root package name */
        public View f40275c;

        h() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class i extends k {
        i() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class j {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40278a;

        /* renamed from: b  reason: collision with root package name */
        Object f40279b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public int f40280a;

            /* renamed from: b  reason: collision with root package name */
            public String f40281b;

            /* renamed from: c  reason: collision with root package name */
            public String f40282c;

            /* renamed from: d  reason: collision with root package name */
            public int f40283d;

            /* renamed from: e  reason: collision with root package name */
            public String f40284e;

            /* renamed from: f  reason: collision with root package name */
            public String f40285f;

            /* renamed from: g  reason: collision with root package name */
            public int f40286g;

            public a(int i2, String str, String str2, int i4, String str3, String str4, int i5) {
                this.f40280a = i2;
                this.f40281b = str;
                this.f40282c = str2;
                this.f40283d = i4;
                this.f40284e = str3;
                this.f40285f = str4;
                this.f40286g = i5;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40287a;

            /* renamed from: b  reason: collision with root package name */
            public String f40288b;

            /* renamed from: c  reason: collision with root package name */
            public String f40289c;

            /* renamed from: d  reason: collision with root package name */
            public long f40290d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f40291e;

            /* renamed from: f  reason: collision with root package name */
            public int f40292f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f40293g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f40294h;

            /* renamed from: i  reason: collision with root package name */
            public int f40295i;

            /* renamed from: j  reason: collision with root package name */
            public String f40296j;

            /* renamed from: k  reason: collision with root package name */
            public int f40297k;

            /* renamed from: l  reason: collision with root package name */
            public int f40298l;

            /* renamed from: m  reason: collision with root package name */
            public int f40299m;

            /* renamed from: n  reason: collision with root package name */
            public int f40300n;

            /* renamed from: o  reason: collision with root package name */
            public String f40301o;

            /* renamed from: p  reason: collision with root package name */
            public String f40302p;

            public b(boolean z3, String str, String str2, long j4, boolean z4, int i2, boolean z5, boolean z6, int i4, String str3, int i5, int i6, int i7, String str4, String str5, int i8) {
                this.f40287a = z3;
                this.f40288b = str;
                this.f40289c = str2;
                this.f40290d = j4;
                this.f40291e = z4;
                this.f40292f = i2;
                this.f40298l = i8;
                this.f40293g = z5;
                this.f40294h = z6;
                this.f40295i = i4;
                this.f40296j = str3;
                this.f40297k = i5;
                this.f40299m = i6;
                this.f40300n = i7;
                this.f40301o = str4;
                this.f40302p = str5;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f40303a;

            /* renamed from: b  reason: collision with root package name */
            public String f40304b;

            /* renamed from: c  reason: collision with root package name */
            public String f40305c;

            /* renamed from: d  reason: collision with root package name */
            public String f40306d;

            /* renamed from: e  reason: collision with root package name */
            public int f40307e;

            /* renamed from: f  reason: collision with root package name */
            public int f40308f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f40309g;

            public c(int i2, String str, String str2, String str3, int i4, int i5, boolean z3) {
                this.f40303a = i2;
                this.f40304b = str;
                this.f40305c = str2;
                this.f40306d = str3;
                this.f40307e = i4;
                this.f40308f = i5;
                this.f40309g = z3;
            }
        }

        public j() {
        }

        public Object a() {
            return this.f40279b;
        }

        public ViewType b() {
            return this.f40278a;
        }

        public void c(Object obj) {
            this.f40279b = obj;
        }

        public void d(ViewType viewType) {
            this.f40278a = viewType;
        }

        public j(ViewType viewType, Object obj) {
            this.f40278a = viewType;
            this.f40279b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class k {
        k() {
        }
    }

    public ForumProfileMessageAdapter(Context context) {
        this.f40246a = context;
    }

    private View c(int i2, View view, ViewGroup viewGroup) {
        e eVar;
        j.a aVar;
        try {
            if (view != null) {
                eVar = (e) view.getTag();
            } else {
                eVar = new e();
                view = LayoutInflater.from(this.f40246a).inflate(R.layout.mg_forum_profile_footer, (ViewGroup) null);
                eVar.f40260d = (RelativeLayout) view.findViewById(R.id.post_profile_post_profile);
                eVar.f40258b = (SimpleDraweeView) view.findViewById(R.id.post_profile_image);
                eVar.f40259c = (TextView) view.findViewById(R.id.post_profile_message);
                view.setTag(eVar);
            }
            aVar = (j.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar == null) {
            return view;
        }
        if (com.join.mgps.Util.d2.h(aVar.f40281b)) {
            eVar.f40258b.setVisibility(8);
        } else {
            eVar.f40258b.setVisibility(0);
            MyImageLoader.h(eVar.f40258b, aVar.f40281b);
        }
        com.join.mgps.Util.i0.D1(eVar.f40259c, aVar.f40282c, "");
        f(eVar.f40260d, aVar.f40280a);
        i(view, aVar.f40284e, aVar.f40280a, aVar.f40283d, aVar.f40286g, aVar.f40285f);
        return view;
    }

    private View d(int i2, View view, ViewGroup viewGroup) {
        g gVar;
        View view2;
        j.b bVar;
        if (view != null) {
            gVar = (g) view.getTag();
            view2 = view;
        } else {
            gVar = new g();
            View inflate = LayoutInflater.from(this.f40246a).inflate(R.layout.mg_forum_profile_header, (ViewGroup) null);
            gVar.f40266e = inflate.findViewById(R.id.forum_post_divider);
            gVar.f40263b = (SimpleDraweeView) inflate.findViewById(R.id.forum_post_avatar_src);
            gVar.f40264c = (TextView) inflate.findViewById(R.id.forum_post_nickname);
            gVar.f40265d = (TextView) inflate.findViewById(R.id.forum_post_add_time);
            gVar.f40267f = (RelativeLayout) inflate.findViewById(R.id.forumExtFunc);
            gVar.f40268g = (ImageView) inflate.findViewById(R.id.moreFunc);
            gVar.f40269h = (ImageView) inflate.findViewById(R.id.replyFunc);
            gVar.f40270i = (VipView) inflate.findViewById(R.id.vipFlag);
            gVar.f40271j = (ImageView) inflate.findViewById(R.id.officialIcon);
            gVar.f40272k = (TextView) inflate.findViewById(R.id.copperTitleTv);
            inflate.setTag(gVar);
            view2 = inflate;
        }
        try {
            bVar = (j.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null) {
            return view2;
        }
        UtilsMy.M2(this.f40246a, gVar.f40264c, bVar.f40299m, bVar.f40300n, R.color.forum_nickname_color);
        gVar.f40270i.setVipData(bVar.f40299m, bVar.f40300n);
        gVar.f40267f.setVisibility(0);
        gVar.f40268g.setVisibility(8);
        gVar.f40269h.setVisibility(0);
        if (bVar.f40287a) {
            gVar.f40266e.setVisibility(8);
        } else {
            gVar.f40266e.setVisibility(0);
        }
        if (bVar.f40294h) {
            gVar.f40271j.setVisibility(0);
        } else {
            gVar.f40271j.setVisibility(8);
        }
        gVar.f40264c.setText(bVar.f40289c);
        gVar.f40265d.setText(com.join.android.app.common.utils.c.a(bVar.f40290d * 1000));
        MyImageLoader.w(gVar.f40263b, bVar.f40288b);
        gVar.f40263b.setOnClickListener(new a(bVar));
        i(view2, bVar.f40296j, bVar.f40292f, bVar.f40295i, bVar.f40297k, bVar.f40289c);
        i(gVar.f40269h, bVar.f40296j, bVar.f40292f, bVar.f40295i, bVar.f40297k, bVar.f40289c);
        com.join.mgps.Util.i0.S0(gVar.f40263b, gVar.f40264c, gVar.f40265d);
        com.join.mgps.Util.i0.U0(gVar.f40270i);
        String str = bVar.f40301o;
        String str2 = bVar.f40302p;
        if (gVar.f40272k != null) {
            if (!TextUtils.isEmpty(str)) {
                gVar.f40272k.setVisibility(0);
                gVar.f40272k.setText(str);
                Drawable drawable = this.f40246a.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                gVar.f40272k.setBackgroundDrawable(drawable);
            } else {
                gVar.f40272k.setVisibility(8);
            }
        }
        return view2;
    }

    private View e(int i2, View view, ViewGroup viewGroup) {
        h hVar;
        j.c cVar;
        if (view != null) {
            hVar = (h) view.getTag();
        } else {
            hVar = new h();
            view = LayoutInflater.from(this.f40246a).inflate(R.layout.mg_forum_profile_message_item, (ViewGroup) null);
            hVar.f40274b = (TextView) view.findViewById(R.id.mg_forum_profile_message_tv);
            hVar.f40275c = view.findViewById(R.id.mg_forum_profile_message_divider);
            view.setTag(hVar);
        }
        try {
            cVar = (j.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar == null) {
            return view;
        }
        hVar.f40275c.setVisibility(8);
        if (cVar.f40309g && !cVar.f40305c.contains("#*#")) {
            cVar.f40305c += "#*#";
        }
        com.join.mgps.Util.i0.B1(hVar.f40274b, cVar.f40304b, cVar.f40305c, cVar.f40306d);
        i(view, cVar.f40304b, cVar.f40303a, cVar.f40307e, cVar.f40308f, cVar.f40305c);
        return view;
    }

    private void f(View view, int i2) {
        view.setOnClickListener(new b(i2));
    }

    private void g(View view, int i2, int i4, int i5, String str) {
        view.setOnClickListener(new c(i2, i4, i5, str));
    }

    private void k(LinearLayout linearLayout, List<ForumBean.ForumProfileCommentBean> list) {
        View inflate;
        if (list != null && list.size() != 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (i2 < linearLayout.getChildCount()) {
                    inflate = linearLayout.getChildAt(i2);
                } else {
                    inflate = LayoutInflater.from(this.f40246a).inflate(R.layout.mg_forum_profile_message_item, (ViewGroup) null);
                    linearLayout.addView(inflate);
                }
                TextView textView = (TextView) inflate.findViewById(R.id.mg_forum_profile_message_tv);
                View findViewById = inflate.findViewById(R.id.mg_forum_profile_message_divider);
                if (i2 == list.size() - 1) {
                    findViewById.setVisibility(8);
                } else {
                    findViewById.setVisibility(0);
                }
                ForumBean.ForumProfileCommentBean forumProfileCommentBean = list.get(i2);
                if (forumProfileCommentBean != null) {
                    com.join.mgps.Util.i0.B1(textView, forumProfileCommentBean.getType(), forumProfileCommentBean.getRnickname(), forumProfileCommentBean.getMessage());
                }
            }
            if (linearLayout.getChildCount() > list.size()) {
                linearLayout.removeViews(list.size(), linearLayout.getChildCount() - list.size());
                return;
            }
            return;
        }
        linearLayout.setVisibility(8);
    }

    public List<j> b() {
        return this.f40247b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<j> list = this.f40247b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<j> list = this.f40247b;
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
        List<j> list = this.f40247b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.PROFILE_HEADER.ordinal()) {
            return d(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.PROFILE_MESSAGE_ITEM.ordinal()) {
            return e(i2, view, viewGroup);
        }
        return itemViewType == ViewType.PROFILE_FOOTER.ordinal() ? c(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public void h(List<j> list) {
        if (list == null) {
            return;
        }
        if (this.f40247b == null) {
            this.f40247b = new ArrayList();
        }
        this.f40247b.clear();
        this.f40247b.addAll(list);
    }

    void i(View view, String str, int i2, int i4, int i5, String str2) {
        if (str.equals("comment")) {
            g(view, i2, i4, 0, str2);
        } else if (str.equals("reply")) {
            g(view, i2, i4, i5, str2);
        } else if (str.equals("praise") || str.equals("best") || str.equals("bestanswer")) {
            f(view, i2);
        }
    }

    public void j(d dVar) {
        this.f40248c = dVar;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
