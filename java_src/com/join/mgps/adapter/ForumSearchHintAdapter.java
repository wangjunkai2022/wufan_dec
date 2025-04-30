package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumSearchHintAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f40422a;

    /* renamed from: c  reason: collision with root package name */
    private b f40424c = null;

    /* renamed from: b  reason: collision with root package name */
    private List<f> f40423b = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        POST_SUBJECT,
        POST_MESSAGE,
        POST_FOOTER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40425a;

        a(String str) {
            this.f40425a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumSearchHintAdapter.this.f40424c != null) {
                ForumSearchHintAdapter.this.f40424c.c(this.f40425a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void c(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends g {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40427b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40428c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40429d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40430e;

        /* renamed from: f  reason: collision with root package name */
        public View f40431f;

        /* renamed from: g  reason: collision with root package name */
        public View f40432g;

        /* renamed from: h  reason: collision with root package name */
        public View f40433h;

        c() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends g {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40435b;

        /* renamed from: c  reason: collision with root package name */
        public View f40436c;

        d() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends g {

        /* renamed from: b  reason: collision with root package name */
        public Button f40438b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40439c;

        /* renamed from: d  reason: collision with root package name */
        public View f40440d;

        e() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40442a;

        /* renamed from: b  reason: collision with root package name */
        Object f40443b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public String f40444a;

            /* renamed from: b  reason: collision with root package name */
            public String f40445b;

            /* renamed from: c  reason: collision with root package name */
            public String f40446c;

            /* renamed from: d  reason: collision with root package name */
            public String f40447d;

            /* renamed from: e  reason: collision with root package name */
            public String f40448e;

            public a() {
            }

            public a(String str, String str2, String str3, String str4, String str5) {
                this.f40444a = str;
                this.f40445b = str2;
                this.f40446c = str3;
                this.f40447d = str4;
                this.f40448e = str5;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f40449a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f40450b;

            /* renamed from: c  reason: collision with root package name */
            public String f40451c;

            /* renamed from: d  reason: collision with root package name */
            public String f40452d;

            public b() {
            }

            public b(String str, String str2, String str3, boolean z3) {
                this.f40452d = str2;
                this.f40451c = str3;
                this.f40450b = z3;
                this.f40449a = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public String f40453a;

            /* renamed from: b  reason: collision with root package name */
            public String f40454b;

            /* renamed from: c  reason: collision with root package name */
            public String f40455c;

            public c() {
            }

            public c(String str, String str2, String str3) {
                this.f40455c = str2;
                this.f40454b = str3;
                this.f40453a = str;
            }
        }

        public f() {
        }

        public Object a() {
            return this.f40443b;
        }

        public ViewType b() {
            return this.f40442a;
        }

        public void c(Object obj) {
            this.f40443b = obj;
        }

        public void d(ViewType viewType) {
            this.f40442a = viewType;
        }

        public f(ViewType viewType, Object obj) {
            this.f40442a = viewType;
            this.f40443b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class g {
        g() {
        }
    }

    public ForumSearchHintAdapter(Context context) {
        this.f40422a = context;
    }

    private View c(int i2, View view, ViewGroup viewGroup) {
        c cVar;
        f.a aVar;
        if (view != null) {
            cVar = (c) view.getTag();
        } else {
            cVar = new c();
            view = LayoutInflater.from(this.f40422a).inflate(R.layout.mg_forum_search_item_post_footer, (ViewGroup) null);
            cVar.f40428c = (TextView) view.findViewById(R.id.forum_post_view);
            cVar.f40429d = (TextView) view.findViewById(R.id.forum_post_commit);
            cVar.f40430e = (TextView) view.findViewById(R.id.forum_post_praise);
            cVar.f40431f = view.findViewById(R.id.viewParent);
            cVar.f40432g = view.findViewById(R.id.commentParent);
            cVar.f40433h = view.findViewById(R.id.forum_post_praise_parent);
            try {
                int a4 = com.join.android.app.component.optimizetext.a.a(6.0f);
                g(cVar.f40431f, a4);
                g(cVar.f40432g, a4);
                g(cVar.f40433h, a4);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            view.setTag(cVar);
        }
        try {
            aVar = (f.a) getItem(i2);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (aVar == null) {
            return view;
        }
        com.join.mgps.Util.i0.D1(cVar.f40428c, aVar.f40446c, "0");
        com.join.mgps.Util.i0.D1(cVar.f40429d, aVar.f40447d, "0");
        com.join.mgps.Util.i0.D1(cVar.f40430e, aVar.f40448e, "0");
        i(view, aVar.f40445b);
        return view;
    }

    private View d(int i2, View view, ViewGroup viewGroup) {
        d dVar;
        f.b bVar;
        int a4;
        if (view != null) {
            dVar = (d) view.getTag();
        } else {
            dVar = new d();
            view = LayoutInflater.from(this.f40422a).inflate(R.layout.mg_forum_post_activity_item_post_message, (ViewGroup) null);
            dVar.f40435b = (TextView) view.findViewById(R.id.forum_post_message);
            dVar.f40436c = view.findViewById(R.id.messageParent);
            view.setTag(dVar);
        }
        try {
            bVar = (f.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null) {
            return view;
        }
        String str = bVar.f40451c;
        String g4 = com.join.mgps.Util.d2.g(bVar.f40449a);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int color = this.f40422a.getResources().getColor(R.color.search_high_light);
        int indexOf = str.indexOf(g4);
        int length = g4.length() + indexOf;
        try {
            if (length <= str.length() && indexOf >= 0) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(color), indexOf, length, 33);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        com.join.mgps.Util.i0.A1(dVar.f40435b, spannableStringBuilder);
        i(view, bVar.f40452d);
        try {
            if (bVar.f40450b) {
                dVar.f40435b.setTextColor(Color.parseColor("#3b3b3b"));
                a4 = com.join.android.app.component.optimizetext.a.a(10.0f);
            } else {
                a4 = com.join.android.app.component.optimizetext.a.a(2.0f);
                dVar.f40435b.setTextColor(Color.parseColor("#8a8a8a"));
            }
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) dVar.f40435b.getLayoutParams();
            layoutParams.topMargin = a4;
            dVar.f40435b.setLayoutParams(layoutParams);
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        return view;
    }

    private View e(int i2, View view, ViewGroup viewGroup) {
        e eVar;
        f.c cVar;
        if (view != null) {
            eVar = (e) view.getTag();
        } else {
            eVar = new e();
            view = LayoutInflater.from(this.f40422a).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            eVar.f40438b = (Button) view.findViewById(R.id.forum_post_best);
            eVar.f40439c = (TextView) view.findViewById(R.id.forum_post_subject);
            View findViewById = view.findViewById(R.id.subject_parent);
            eVar.f40440d = findViewById;
            findViewById.setPadding(findViewById.getPaddingLeft(), com.join.android.app.component.optimizetext.a.a(10.0f), eVar.f40440d.getPaddingRight(), eVar.f40440d.getPaddingBottom());
            view.setTag(eVar);
        }
        try {
            cVar = (f.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar == null) {
            return view;
        }
        String str = cVar.f40454b;
        String g4 = com.join.mgps.Util.d2.g(cVar.f40453a);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int color = this.f40422a.getResources().getColor(R.color.search_high_light);
        int indexOf = str.indexOf(g4);
        int length = g4.length() + indexOf;
        try {
            if (length <= str.length() && indexOf >= 0) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(color), indexOf, length, 33);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        eVar.f40439c.setText(spannableStringBuilder);
        i(view, cVar.f40455c);
        return view;
    }

    public List<f> b() {
        return this.f40423b;
    }

    public void f(b bVar) {
        this.f40424c = bVar;
    }

    void g(View view, int i2) {
        if (view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), i2, view.getPaddingRight(), i2);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<f> list = this.f40423b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<f> list = this.f40423b;
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
        List<f> list = this.f40423b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return c(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return d(i2, view, viewGroup);
        }
        return itemViewType == ViewType.POST_SUBJECT.ordinal() ? e(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public void h(List<f> list) {
        if (list == null) {
            return;
        }
        if (this.f40423b == null) {
            this.f40423b = new ArrayList();
        }
        this.f40423b.clear();
        this.f40423b.addAll(list);
    }

    public void i(View view, String str) {
        view.setOnClickListener(new a(str));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
