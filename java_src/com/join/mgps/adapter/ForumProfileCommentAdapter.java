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
public class ForumProfileCommentAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f39939a;

    /* renamed from: b  reason: collision with root package name */
    private List<i> f39940b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private c f39941c;

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
        final /* synthetic */ i.b f39942a;

        a(i.b bVar) {
            this.f39942a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39942a.f39976g).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39944a;

        b(int i2) {
            this.f39944a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileCommentAdapter.this.f39941c != null) {
                ForumProfileCommentAdapter.this.f39941c.d(this.f39944a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void d(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends j {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39946b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39947c;

        d() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class e extends j {
        e() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends j {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39950b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39951c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39952d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39953e;

        /* renamed from: f  reason: collision with root package name */
        public View f39954f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f39955g;

        /* renamed from: h  reason: collision with root package name */
        public RelativeLayout f39956h;

        /* renamed from: i  reason: collision with root package name */
        public VipView f39957i;

        /* renamed from: j  reason: collision with root package name */
        public ImageView f39958j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f39959k;

        f() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends j {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39961b;

        /* renamed from: c  reason: collision with root package name */
        public View f39962c;

        g() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class h extends j {
        h() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class i {

        /* renamed from: a  reason: collision with root package name */
        ViewType f39965a;

        /* renamed from: b  reason: collision with root package name */
        Object f39966b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public int f39967a;

            /* renamed from: b  reason: collision with root package name */
            public String f39968b;

            /* renamed from: c  reason: collision with root package name */
            public String f39969c;

            public a() {
            }

            public a(int i2, String str, String str2) {
                this.f39967a = i2;
                this.f39968b = str;
                this.f39969c = str2;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39970a;

            /* renamed from: b  reason: collision with root package name */
            public String f39971b;

            /* renamed from: c  reason: collision with root package name */
            public String f39972c;

            /* renamed from: d  reason: collision with root package name */
            public long f39973d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39974e;

            /* renamed from: f  reason: collision with root package name */
            public int f39975f;

            /* renamed from: g  reason: collision with root package name */
            public int f39976g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39977h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f39978i;

            /* renamed from: j  reason: collision with root package name */
            public int f39979j;

            /* renamed from: k  reason: collision with root package name */
            public int f39980k;

            /* renamed from: l  reason: collision with root package name */
            public String f39981l;

            /* renamed from: m  reason: collision with root package name */
            public String f39982m;

            public b() {
            }

            public b(boolean z3, String str, String str2, long j4, boolean z4, int i2, int i4, int i5, String str3, String str4, int i6) {
                this.f39970a = z3;
                this.f39971b = str;
                this.f39972c = str2;
                this.f39973d = j4;
                this.f39974e = z4;
                this.f39975f = i2;
                this.f39976g = i6;
                this.f39979j = i4;
                this.f39980k = i5;
                this.f39981l = str3;
                this.f39982m = str4;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f39983a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f39984b;

            /* renamed from: c  reason: collision with root package name */
            public ForumBean.ForumProfileCommentBean f39985c;

            public c() {
            }

            public c(int i2, boolean z3, ForumBean.ForumProfileCommentBean forumProfileCommentBean) {
                this.f39983a = i2;
                this.f39984b = z3;
                this.f39985c = forumProfileCommentBean;
            }
        }

        public i() {
        }

        public Object a() {
            return this.f39966b;
        }

        public ViewType b() {
            return this.f39965a;
        }

        public void c(Object obj) {
            this.f39966b = obj;
        }

        public void d(ViewType viewType) {
            this.f39965a = viewType;
        }

        public i(ViewType viewType, Object obj) {
            this.f39965a = viewType;
            this.f39966b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class j {
        j() {
        }
    }

    public ForumProfileCommentAdapter(Context context) {
        this.f39939a = context;
    }

    private View c(int i2, View view, ViewGroup viewGroup) {
        d dVar;
        i.a aVar;
        try {
            if (view != null) {
                dVar = (d) view.getTag();
            } else {
                dVar = new d();
                view = LayoutInflater.from(this.f39939a).inflate(R.layout.mg_forum_profile_footer, (ViewGroup) null);
                dVar.f39946b = (SimpleDraweeView) view.findViewById(R.id.post_profile_image);
                dVar.f39947c = (TextView) view.findViewById(R.id.post_profile_message);
                view.setTag(dVar);
            }
            aVar = (i.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar == null) {
            return view;
        }
        f(view, aVar.f39967a);
        if (com.join.mgps.Util.d2.h(aVar.f39968b)) {
            dVar.f39946b.setVisibility(8);
        } else {
            dVar.f39946b.setVisibility(0);
            MyImageLoader.h(dVar.f39946b, aVar.f39968b);
        }
        com.join.mgps.Util.i0.D1(dVar.f39947c, aVar.f39969c, "");
        return view;
    }

    private View d(int i2, View view, ViewGroup viewGroup) {
        f fVar;
        i.b bVar;
        if (view != null) {
            fVar = (f) view.getTag();
        } else {
            fVar = new f();
            view = LayoutInflater.from(this.f39939a).inflate(R.layout.mg_forum_profile_header, (ViewGroup) null);
            fVar.f39954f = view.findViewById(R.id.forum_post_divider);
            fVar.f39950b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            fVar.f39951c = (TextView) view.findViewById(R.id.forum_post_nickname);
            fVar.f39952d = (TextView) view.findViewById(R.id.forum_post_add_time);
            fVar.f39953e = (TextView) view.findViewById(R.id.forum_post_stickie);
            fVar.f39955g = (ImageView) view.findViewById(R.id.forum_post_moderator);
            fVar.f39958j = (ImageView) view.findViewById(R.id.officialIcon);
            fVar.f39956h = (RelativeLayout) view.findViewById(R.id.forumExtFunc);
            fVar.f39957i = (VipView) view.findViewById(R.id.vipFlag);
            fVar.f39959k = (TextView) view.findViewById(R.id.copperTitleTv);
            view.setTag(fVar);
        }
        try {
            bVar = (i.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null) {
            return view;
        }
        UtilsMy.M2(this.f39939a, fVar.f39951c, bVar.f39979j, bVar.f39980k, R.color.forum_nickname_color);
        fVar.f39957i.setVipData(bVar.f39979j, bVar.f39980k);
        fVar.f39956h.setVisibility(8);
        if (bVar.f39970a) {
            fVar.f39954f.setVisibility(8);
        } else {
            fVar.f39954f.setVisibility(0);
        }
        fVar.f39951c.setText(bVar.f39972c);
        fVar.f39952d.setText(com.join.android.app.common.utils.c.a(bVar.f39973d * 1000));
        TextView textView = fVar.f39953e;
        if (textView != null) {
            if (bVar.f39974e) {
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
        ImageView imageView = fVar.f39955g;
        if (imageView != null) {
            if (bVar.f39977h) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        if (bVar.f39978i) {
            fVar.f39958j.setVisibility(0);
        } else {
            fVar.f39958j.setVisibility(8);
        }
        MyImageLoader.w(fVar.f39950b, bVar.f39971b);
        fVar.f39950b.setOnClickListener(new a(bVar));
        f(view, bVar.f39975f);
        com.join.mgps.Util.i0.S0(fVar.f39950b, fVar.f39951c, fVar.f39952d);
        com.join.mgps.Util.i0.U0(fVar.f39957i);
        String str = bVar.f39981l;
        String str2 = bVar.f39982m;
        if (fVar.f39959k != null) {
            if (!TextUtils.isEmpty(str)) {
                fVar.f39959k.setVisibility(0);
                fVar.f39959k.setText(str);
                Drawable drawable = this.f39939a.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                fVar.f39959k.setBackgroundDrawable(drawable);
            } else {
                fVar.f39959k.setVisibility(8);
            }
        }
        return view;
    }

    private View e(int i2, View view, ViewGroup viewGroup) {
        g gVar;
        i.c cVar;
        if (view != null) {
            gVar = (g) view.getTag();
        } else {
            gVar = new g();
            view = LayoutInflater.from(this.f39939a).inflate(R.layout.mg_forum_profile_message_item, (ViewGroup) null);
            gVar.f39961b = (TextView) view.findViewById(R.id.mg_forum_profile_message_tv);
            gVar.f39962c = view.findViewById(R.id.mg_forum_profile_message_divider);
            view.setTag(gVar);
        }
        try {
            cVar = (i.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar == null) {
            return view;
        }
        if (cVar.f39984b) {
            gVar.f39962c.setVisibility(8);
        } else {
            gVar.f39962c.setVisibility(0);
        }
        ForumBean.ForumProfileCommentBean forumProfileCommentBean = cVar.f39985c;
        if (forumProfileCommentBean == null) {
            return view;
        }
        String rnickname = forumProfileCommentBean.getRnickname();
        if (com.join.mgps.Util.d2.h(rnickname)) {
            rnickname = "我";
        }
        com.join.mgps.Util.i0.B1(gVar.f39961b, forumProfileCommentBean.getType(), rnickname, forumProfileCommentBean.getMessage());
        f(view, cVar.f39983a);
        return view;
    }

    private void f(View view, int i2) {
        view.setOnClickListener(new b(i2));
    }

    private void i(LinearLayout linearLayout, List<ForumBean.ForumProfileCommentBean> list) {
        View inflate;
        if (list != null && list.size() != 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (i2 < linearLayout.getChildCount()) {
                    inflate = linearLayout.getChildAt(i2);
                } else {
                    inflate = LayoutInflater.from(this.f39939a).inflate(R.layout.mg_forum_profile_message_item, (ViewGroup) null);
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

    public List<i> b() {
        return this.f39940b;
    }

    public void g(List<i> list) {
        if (list == null) {
            return;
        }
        if (this.f39940b == null) {
            this.f39940b = new ArrayList();
        }
        this.f39940b.clear();
        this.f39940b.addAll(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<i> list = this.f39940b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<i> list = this.f39940b;
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
        List<i> list = this.f39940b;
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

    public void h(c cVar) {
        this.f39941c = cVar;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
