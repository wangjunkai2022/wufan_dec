package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumTMemberAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f40457a;

    /* renamed from: c  reason: collision with root package name */
    private c f40459c = null;

    /* renamed from: b  reason: collision with root package name */
    private List<i> f40458b = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        MEMBER_HEADER,
        MEMBER_ITEM,
        MEMBER_MODERATORS,
        MEMBER_MY
    }

    /* loaded from: classes3.dex */
    class a extends SimpleAdapter {
        a(Context context, List list, int i2, String[] strArr, int[] iArr) {
            super(context, list, i2, strArr, iArr);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40461a;

        b(int i2) {
            this.f40461a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumTMemberAdapter.this.f40459c != null) {
                Context context = view.getContext();
                if (com.join.mgps.Util.i0.Y0(context)) {
                    ForumTMemberAdapter.this.f40459c.a(this.f40461a);
                    return;
                }
                com.join.mgps.Util.i2.a(context).b("用户未登录，请登录");
                com.join.mgps.Util.i0.L0(context);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class c {
        public abstract void a(int i2);
    }

    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        public View f40463a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f40464b;

        public d() {
        }
    }

    /* loaded from: classes3.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f40466a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f40467b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40468c;

        /* renamed from: d  reason: collision with root package name */
        public RelativeLayout f40469d;

        public e() {
        }
    }

    /* loaded from: classes3.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        public HListView f40471a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f40472b;
    }

    /* loaded from: classes3.dex */
    public static class g {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f40473a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f40474b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40475c;

        /* renamed from: d  reason: collision with root package name */
        public RelativeLayout f40476d;

        /* renamed from: e  reason: collision with root package name */
        public Button f40477e;

        /* renamed from: f  reason: collision with root package name */
        public Button f40478f;
    }

    /* loaded from: classes3.dex */
    public class h extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        final String f40479a = "itemImg";

        /* renamed from: b  reason: collision with root package name */
        final String f40480b = "itemName";

        /* renamed from: c  reason: collision with root package name */
        private ArrayList<HashMap<String, Object>> f40481c;

        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            public SimpleDraweeView f40483a;

            /* renamed from: b  reason: collision with root package name */
            public TextView f40484b;

            /* renamed from: c  reason: collision with root package name */
            public TextView f40485c;

            a() {
            }
        }

        public h() {
        }

        public ArrayList<HashMap<String, Object>> a() {
            return this.f40481c;
        }

        public void b(ArrayList<HashMap<String, Object>> arrayList) {
            this.f40481c = arrayList;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            ArrayList<HashMap<String, Object>> arrayList = this.f40481c;
            if (arrayList == null) {
                return 0;
            }
            return arrayList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            ArrayList<HashMap<String, Object>> arrayList = this.f40481c;
            if (arrayList == null) {
                return null;
            }
            return arrayList.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            try {
                if (view != null) {
                    aVar = (a) view.getTag();
                } else {
                    aVar = new a();
                    view = LayoutInflater.from(ForumTMemberAdapter.this.f40457a).inflate(R.layout.mg_forum_forum_t_member_item_moderators_item, (ViewGroup) null);
                    aVar.f40483a = (SimpleDraweeView) view.findViewById(R.id.itemImg);
                    aVar.f40484b = (TextView) view.findViewById(R.id.itemName);
                    view.setTag(aVar);
                }
                HashMap hashMap = (HashMap) getItem(i2);
                MyImageLoader.h(aVar.f40483a, (String) hashMap.get("itemImg"));
                aVar.f40484b.setText((String) hashMap.get("itemName"));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }
    }

    /* loaded from: classes3.dex */
    public static class i {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40487a;

        /* renamed from: b  reason: collision with root package name */
        Object f40488b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public String f40489a;

            public a(String str) {
                this.f40489a = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f40490a;

            /* renamed from: b  reason: collision with root package name */
            public String f40491b;

            /* renamed from: c  reason: collision with root package name */
            public String f40492c;

            public b(String str, String str2, String str3) {
                this.f40490a = str;
                this.f40491b = str2;
                this.f40492c = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public ArrayList<HashMap<String, Object>> f40493a;

            public c(ArrayList<HashMap<String, Object>> arrayList) {
                this.f40493a = arrayList;
            }
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            public String f40494a;

            /* renamed from: b  reason: collision with root package name */
            public String f40495b;

            /* renamed from: c  reason: collision with root package name */
            public String f40496c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f40497d;

            /* renamed from: e  reason: collision with root package name */
            public int f40498e;

            public d(String str, String str2, String str3, boolean z3, int i2) {
                this.f40494a = str;
                this.f40495b = str2;
                this.f40496c = str3;
                this.f40497d = z3;
                this.f40498e = i2;
            }
        }

        public i() {
        }

        public Object a() {
            return this.f40488b;
        }

        public ViewType b() {
            return this.f40487a;
        }

        public void c(Object obj) {
            this.f40488b = obj;
        }

        public void d(ViewType viewType) {
            this.f40487a = viewType;
        }

        public i(ViewType viewType, Object obj) {
            this.f40487a = viewType;
            this.f40488b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class j {
        j() {
        }
    }

    public ForumTMemberAdapter(Context context) {
        this.f40457a = context;
    }

    private View d(int i2, View view, ViewGroup viewGroup) {
        d dVar;
        i.a aVar;
        if (view != null) {
            dVar = (d) view.getTag();
        } else {
            dVar = new d();
            view = LayoutInflater.from(this.f40457a).inflate(R.layout.mg_forum_forum_t_member_item_header, (ViewGroup) null);
            dVar.f40463a = view.findViewById(R.id.dividerTop);
            dVar.f40464b = (TextView) view.findViewById(R.id.sectionTitle);
            view.setTag(dVar);
        }
        try {
            aVar = (i.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar == null) {
            return view;
        }
        dVar.f40464b.setText(aVar.f40489a);
        return view;
    }

    private View e(int i2, View view, ViewGroup viewGroup) {
        e eVar;
        i.b bVar;
        if (view != null) {
            eVar = (e) view.getTag();
        } else {
            eVar = new e();
            view = LayoutInflater.from(this.f40457a).inflate(R.layout.mg_forum_forum_t_member_item, (ViewGroup) null);
            eVar.f40466a = (SimpleDraweeView) view.findViewById(R.id.avatar);
            eVar.f40467b = (TextView) view.findViewById(R.id.nickName);
            eVar.f40468c = (TextView) view.findViewById(R.id.desc);
            eVar.f40469d = (RelativeLayout) view.findViewById(R.id.follow);
            view.setTag(eVar);
        }
        try {
            bVar = (i.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null) {
            return view;
        }
        SimpleDraweeView simpleDraweeView = eVar.f40466a;
        MyImageLoader.h(simpleDraweeView, bVar.f40490a + "");
        eVar.f40467b.setText(bVar.f40491b);
        eVar.f40468c.setText(bVar.f40492c);
        eVar.f40469d.setVisibility(8);
        return view;
    }

    private View f(int i2, View view, ViewGroup viewGroup) {
        f fVar;
        i.c cVar;
        if (view != null) {
            fVar = (f) view.getTag();
        } else {
            fVar = new f();
            view = LayoutInflater.from(this.f40457a).inflate(R.layout.mg_forum_forum_t_member_item_moderators, (ViewGroup) null);
            fVar.f40471a = (HListView) view.findViewById(R.id.list);
            fVar.f40472b = (TextView) view.findViewById(R.id.noMoreModerator);
            view.setTag(fVar);
        }
        try {
            cVar = (i.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar == null) {
            fVar.f40471a.setVisibility(8);
            fVar.f40472b.setVisibility(0);
            return view;
        }
        fVar.f40471a.setVisibility(0);
        fVar.f40472b.setVisibility(8);
        h hVar = (h) fVar.f40471a.getAdapter();
        if (hVar == null) {
            hVar = new h();
            fVar.f40471a.setAdapter((ListAdapter) hVar);
        }
        hVar.b(cVar.f40493a);
        hVar.notifyDataSetChanged();
        return view;
    }

    private View g(int i2, View view, ViewGroup viewGroup) {
        g gVar;
        i.d dVar;
        if (view != null) {
            gVar = (g) view.getTag();
        } else {
            gVar = new g();
            view = LayoutInflater.from(this.f40457a).inflate(R.layout.mg_forum_forum_t_member_item_my, (ViewGroup) null);
            gVar.f40473a = (SimpleDraweeView) view.findViewById(R.id.avatar);
            gVar.f40474b = (TextView) view.findViewById(R.id.nickName);
            gVar.f40475c = (TextView) view.findViewById(R.id.desc);
            gVar.f40476d = (RelativeLayout) view.findViewById(R.id.follow);
            gVar.f40477e = (Button) view.findViewById(R.id.followImg);
            gVar.f40478f = (Button) view.findViewById(R.id.followedImg);
            view.setTag(gVar);
        }
        try {
            dVar = (i.d) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (dVar == null) {
            return view;
        }
        SimpleDraweeView simpleDraweeView = gVar.f40473a;
        MyImageLoader.h(simpleDraweeView, dVar.f40494a + "");
        gVar.f40474b.setText(dVar.f40495b);
        gVar.f40475c.setText(dVar.f40496c);
        return view;
    }

    private SimpleAdapter h(ArrayList<HashMap<String, Object>> arrayList) {
        return new a(this.f40457a, arrayList, R.layout.mg_forum_forum_t_member_item_moderators_item, new String[]{"itemImg", "itemName"}, new int[]{R.id.itemImg, R.id.itemName});
    }

    public List<i> c() {
        return this.f40458b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<i> list = this.f40458b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<i> list = this.f40458b;
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
        List<i> list = this.f40458b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.MEMBER_HEADER.ordinal()) {
            return d(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.MEMBER_ITEM.ordinal()) {
            return e(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.MEMBER_MODERATORS.ordinal()) {
            return f(i2, view, viewGroup);
        }
        return itemViewType == ViewType.MEMBER_MY.ordinal() ? g(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public void i(c cVar) {
        this.f40459c = cVar;
    }

    public void j(List<i> list) {
        if (list == null) {
            return;
        }
        if (this.f40458b == null) {
            this.f40458b = new ArrayList();
        }
        this.f40458b.clear();
        this.f40458b.addAll(list);
    }

    public void k(View view, int i2) {
        view.setOnClickListener(new b(i2));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
