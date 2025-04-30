package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.GameAndProfileActivity_;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.FavoritesCenterData;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class CommentSelfListAdapter extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    private Context f38920b;

    /* renamed from: d  reason: collision with root package name */
    private int f38922d;

    /* renamed from: a  reason: collision with root package name */
    private final String f38919a = getClass().getSimpleName();

    /* renamed from: e  reason: collision with root package name */
    j f38923e = null;

    /* renamed from: c  reason: collision with root package name */
    private List<k> f38921c = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        FAVORITES_TITLE,
        FAVORITES_ITEM_TITLE,
        FAVORITES_F,
        COMMENT_LIST_ITEM_HEADER,
        COMMENT_LIST_ITEM_CONTENT,
        COMMENT_LIST_ITEM_FOOTER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameAndProfileActivity_.F0(view.getContext()).a(0).b(CommentSelfListAdapter.this.f38922d).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameAndProfileActivity_.F0(view.getContext()).a(1).b(CommentSelfListAdapter.this.f38922d).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f38926a;

        c(g gVar) {
            this.f38926a = gVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f38926a.f38941c.getText().toString().equals("查看更多")) {
                this.f38926a.f38940b.setMaxLines(Integer.MAX_VALUE);
                this.f38926a.f38941c.setText("收起");
                return;
            }
            this.f38926a.f38940b.setMaxLines(7);
            this.f38926a.f38941c.setText("查看更多");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38928a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f38929b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f38930c;

        d(int i2, String str, int i4) {
            this.f38928a = i2;
            this.f38929b = str;
            this.f38930c = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.startAnimation(AnimationUtils.loadAnimation(CommentSelfListAdapter.this.f38920b, R.anim.scale_reset));
            j jVar = CommentSelfListAdapter.this.f38923e;
            if (jVar != null) {
                jVar.b(this.f38928a, this.f38929b, this.f38930c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38932a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f38933b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f38934c;

        e(int i2, String str, int i4) {
            this.f38932a = i2;
            this.f38933b = str;
            this.f38934c = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.startAnimation(AnimationUtils.loadAnimation(CommentSelfListAdapter.this.f38920b, R.anim.scale_reset));
            j jVar = CommentSelfListAdapter.this.f38923e;
            if (jVar != null) {
                jVar.a(this.f38932a, this.f38933b, this.f38934c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38936a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f38937b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f38938c;

        f(int i2, String str, String str2) {
            this.f38936a = i2;
            this.f38937b = str;
            this.f38938c = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = view.getContext();
            intentUtil.goCommentDetailActivity(context, this.f38936a + "", this.f38937b, this.f38938c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends l {

        /* renamed from: b  reason: collision with root package name */
        public TextView f38940b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f38941c;

        g() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends l {

        /* renamed from: b  reason: collision with root package name */
        public TextView f38943b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f38944c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f38945d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f38946e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f38947f;

        /* renamed from: g  reason: collision with root package name */
        public View f38948g;

        /* renamed from: h  reason: collision with root package name */
        public View f38949h;

        h() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends l {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f38951b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f38952c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f38953d;

        /* renamed from: e  reason: collision with root package name */
        public MStarBar f38954e;

        /* renamed from: f  reason: collision with root package name */
        public View f38955f;

        /* renamed from: g  reason: collision with root package name */
        public View f38956g;

        i() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public interface j {
        void a(int i2, String str, int i4);

        void b(int i2, String str, int i4);

        void c(int i2, String str, String str2);
    }

    /* loaded from: classes3.dex */
    public static class k {

        /* renamed from: a  reason: collision with root package name */
        ViewType f38958a;

        /* renamed from: b  reason: collision with root package name */
        Object f38959b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public int f38960a;

            /* renamed from: b  reason: collision with root package name */
            public String f38961b;

            /* renamed from: c  reason: collision with root package name */
            public String f38962c;

            /* renamed from: d  reason: collision with root package name */
            public int f38963d;

            /* renamed from: e  reason: collision with root package name */
            public int f38964e;

            public a(int i2, String str, String str2, int i4, int i5) {
                this.f38960a = i2;
                this.f38961b = str;
                this.f38962c = str2;
                this.f38963d = i4;
                this.f38964e = i5;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public int f38965a;

            /* renamed from: b  reason: collision with root package name */
            public String f38966b;

            /* renamed from: c  reason: collision with root package name */
            public int f38967c;

            /* renamed from: d  reason: collision with root package name */
            public int f38968d;

            /* renamed from: e  reason: collision with root package name */
            public int f38969e;

            /* renamed from: f  reason: collision with root package name */
            public int f38970f;

            /* renamed from: g  reason: collision with root package name */
            public int f38971g;

            /* renamed from: h  reason: collision with root package name */
            public int f38972h;

            /* renamed from: i  reason: collision with root package name */
            public int f38973i;

            public b(int i2, String str, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                this.f38965a = i2;
                this.f38966b = str;
                this.f38967c = i4;
                this.f38968d = i5;
                this.f38969e = i6;
                this.f38970f = i7;
                this.f38971g = i8;
                this.f38972h = i9;
                this.f38973i = i10;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public boolean f38974a;

            /* renamed from: b  reason: collision with root package name */
            public int f38975b;

            /* renamed from: c  reason: collision with root package name */
            public String f38976c;

            /* renamed from: d  reason: collision with root package name */
            public String f38977d;

            /* renamed from: e  reason: collision with root package name */
            public String f38978e;

            /* renamed from: f  reason: collision with root package name */
            public int f38979f;

            /* renamed from: g  reason: collision with root package name */
            public long f38980g;

            /* renamed from: h  reason: collision with root package name */
            public double f38981h;

            /* renamed from: i  reason: collision with root package name */
            public int f38982i;

            public c(boolean z3, int i2, String str, String str2, String str3, int i4, long j4, double d4, int i5) {
                this.f38974a = z3;
                this.f38975b = i2;
                this.f38976c = str;
                this.f38977d = str2;
                this.f38978e = str3;
                this.f38979f = i4;
                this.f38980g = j4;
                this.f38981h = d4;
                this.f38982i = i5;
            }
        }

        public k() {
        }

        public Object a() {
            return this.f38959b;
        }

        public ViewType b() {
            return this.f38958a;
        }

        public void c(Object obj) {
            this.f38959b = obj;
        }

        public void d(ViewType viewType) {
            this.f38958a = viewType;
        }

        public k(ViewType viewType, Object obj) {
            this.f38958a = viewType;
            this.f38959b = obj;
        }
    }

    /* loaded from: classes3.dex */
    class l {
        l() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m {

        /* renamed from: a  reason: collision with root package name */
        HListView f38984a;

        public m(View view) {
            this.f38984a = (HListView) view.findViewById(R.id.favoriteList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n {

        /* renamed from: a  reason: collision with root package name */
        ImageView f38986a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f38987b;

        /* renamed from: c  reason: collision with root package name */
        TextView f38988c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f38989d;

        /* renamed from: e  reason: collision with root package name */
        ImageView f38990e;

        /* renamed from: f  reason: collision with root package name */
        TextView f38991f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f38992g;

        /* renamed from: h  reason: collision with root package name */
        VipView f38993h;

        public n(View view) {
            this.f38986a = (ImageView) view.findViewById(R.id.titleImg);
            this.f38987b = (SimpleDraweeView) view.findViewById(R.id.userIcon);
            this.f38988c = (TextView) view.findViewById(R.id.userName);
            this.f38991f = (TextView) view.findViewById(R.id.tipName);
            this.f38992g = (LinearLayout) view.findViewById(R.id.tipsLayout);
            this.f38989d = (ImageView) view.findViewById(R.id.vip);
            this.f38993h = (VipView) view.findViewById(R.id.svip);
            this.f38990e = (ImageView) view.findViewById(R.id.sexImg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o {

        /* renamed from: a  reason: collision with root package name */
        public TextView f38995a;

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f38996b;

        /* renamed from: c  reason: collision with root package name */
        public View f38997c;

        /* renamed from: d  reason: collision with root package name */
        public View f38998d;

        public o(View view) {
            this.f38995a = (TextView) view.findViewById(R.id.titleText);
            this.f38998d = view.findViewById(R.id.line_h);
            this.f38996b = (LinearLayout) view.findViewById(R.id.look_other);
            this.f38997c = view.findViewById(R.id.layoutTop);
        }
    }

    public CommentSelfListAdapter(Context context) {
        this.f38920b = context;
    }

    private View e(int i2, View view, ViewGroup viewGroup) {
        g gVar;
        k.a aVar;
        if (view != null) {
            gVar = (g) view.getTag();
        } else {
            gVar = new g();
            view = LayoutInflater.from(this.f38920b).inflate(R.layout.comment_list_item_content, (ViewGroup) null);
            gVar.f38940b = (TextView) view.findViewById(R.id.content);
            gVar.f38941c = (TextView) view.findViewById(R.id.more);
            view.setTag(gVar);
        }
        try {
            aVar = (k.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar == null) {
            return view;
        }
        gVar.f38940b.setText(aVar.f38962c);
        if (gVar.f38940b.getLineCount() > 7) {
            gVar.f38941c.setVisibility(0);
            gVar.f38941c.setOnClickListener(new c(gVar));
        } else {
            gVar.f38941c.setVisibility(8);
        }
        String str = "0";
        if (aVar.f38963d != 1 && aVar.f38964e == 1) {
            str = "1";
        }
        p(view, aVar.f38960a, aVar.f38961b, str);
        return view;
    }

    private View f(int i2, View view, ViewGroup viewGroup) {
        h hVar;
        k.b bVar;
        if (view != null) {
            hVar = (h) view.getTag();
        } else {
            hVar = new h();
            view = LayoutInflater.from(this.f38920b).inflate(R.layout.comment_list_item_footer, (ViewGroup) null);
            hVar.f38943b = (TextView) view.findViewById(R.id.likeCount);
            hVar.f38944c = (TextView) view.findViewById(R.id.unlikeCount);
            hVar.f38945d = (TextView) view.findViewById(R.id.viewCount);
            hVar.f38946e = (ImageView) view.findViewById(R.id.like);
            hVar.f38947f = (ImageView) view.findViewById(R.id.unlike);
            hVar.f38948g = view.findViewById(R.id.llLike);
            hVar.f38949h = view.findViewById(R.id.llUnlike);
            view.setTag(hVar);
        }
        try {
            bVar = (k.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null) {
            return view;
        }
        hVar.f38943b.setText(com.join.mgps.Util.i0.R(bVar.f38967c));
        hVar.f38944c.setText(com.join.mgps.Util.i0.R(bVar.f38968d));
        hVar.f38945d.setText(com.join.mgps.Util.i0.R(bVar.f38969e));
        String str = "0";
        if (bVar.f38972h != 1 && bVar.f38973i == 1) {
            str = "1";
        }
        p(view, bVar.f38965a, bVar.f38966b, str);
        if (bVar.f38970f == 1) {
            hVar.f38946e.setImageResource(R.drawable.uped_ic);
        } else {
            hVar.f38946e.setImageResource(R.drawable.up_ic);
        }
        if (bVar.f38971g == 1) {
            hVar.f38947f.setImageResource(R.drawable.downed_ic);
        } else {
            hVar.f38947f.setImageResource(R.drawable.down_ic);
        }
        int i4 = bVar.f38965a;
        String str2 = bVar.f38966b;
        hVar.f38948g.setOnClickListener(new d(i4, str2, bVar.f38970f == 1 ? 2 : 1));
        hVar.f38949h.setOnClickListener(new e(i4, str2, bVar.f38971g == 1 ? 2 : 1));
        return view;
    }

    private View g(int i2, View view, ViewGroup viewGroup) {
        i iVar;
        k.c cVar;
        if (view != null) {
            iVar = (i) view.getTag();
        } else {
            iVar = new i();
            view = LayoutInflater.from(this.f38920b).inflate(R.layout.comment_list_item_header, (ViewGroup) null);
            iVar.f38951b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            iVar.f38952c = (TextView) view.findViewById(R.id.addTime);
            iVar.f38955f = view.findViewById(R.id.divider);
            iVar.f38953d = (TextView) view.findViewById(R.id.username);
            iVar.f38954e = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            iVar.f38956g = view.findViewById(R.id.commentAllRootLl);
            view.setTag(iVar);
        }
        try {
            cVar = (k.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar == null) {
            return view;
        }
        if (cVar.f38974a) {
            iVar.f38955f.setVisibility(8);
        } else {
            iVar.f38955f.setVisibility(0);
        }
        String str = "0";
        if (cVar.f38982i != 1 && cVar.f38979f == 1) {
            iVar.f38954e.setVisibility(0);
            str = "1";
            iVar.f38954e.setStarCount((int) cVar.f38981h);
            iVar.f38954e.setStarMark(cVar.f38981h);
            iVar.f38954e.setEnabled(false);
            MyImageLoader.h(iVar.f38951b, cVar.f38977d);
            iVar.f38953d.setText(cVar.f38978e);
            iVar.f38952c.setText(com.join.android.app.common.utils.c.a(cVar.f38980g * 1000));
            p(iVar.f38956g, cVar.f38975b, cVar.f38976c, str);
            return view;
        }
        iVar.f38954e.setVisibility(4);
        iVar.f38954e.setStarCount((int) cVar.f38981h);
        iVar.f38954e.setStarMark(cVar.f38981h);
        iVar.f38954e.setEnabled(false);
        MyImageLoader.h(iVar.f38951b, cVar.f38977d);
        iVar.f38953d.setText(cVar.f38978e);
        iVar.f38952c.setText(com.join.android.app.common.utils.c.a(cVar.f38980g * 1000));
        p(iVar.f38956g, cVar.f38975b, cVar.f38976c, str);
        return view;
    }

    private View h(int i2, View view, ViewGroup viewGroup) {
        m mVar;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_favortis_layout, (ViewGroup) null);
            mVar = new m(view);
            view.setTag(mVar);
        } else {
            mVar = (m) view.getTag();
        }
        mVar.f38984a.setAdapter((ListAdapter) new com.join.mgps.adapter.l(this.f38920b, (List) getItem(i2), 2));
        return view;
    }

    private View j(int i2, View view, ViewGroup viewGroup) {
        o oVar;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_title, (ViewGroup) null);
            oVar = new o(view);
            view.setTag(oVar);
        } else {
            oVar = (o) view.getTag();
        }
        int intValue = ((Integer) getItem(i2)).intValue();
        String str = "订阅的游戏单";
        if (intValue == 1) {
            oVar.f38996b.setVisibility(8);
        } else if (intValue == 2) {
            oVar.f38996b.setVisibility(0);
            oVar.f38996b.setOnClickListener(new a());
        } else {
            if (intValue == 3) {
                oVar.f38996b.setVisibility(8);
            } else if (intValue == 4) {
                oVar.f38996b.setVisibility(0);
                oVar.f38996b.setOnClickListener(new b());
            } else {
                oVar.f38996b.setVisibility(8);
                str = "点评的游戏";
            }
            oVar.f38995a.setText(str);
            oVar.f38998d.setVisibility(8);
            return view;
        }
        str = "创建的游戏单";
        oVar.f38995a.setText(str);
        oVar.f38998d.setVisibility(8);
        return view;
    }

    private View l(int i2, View view, ViewGroup viewGroup) {
        n nVar;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.favoriose_title_layout, (ViewGroup) null);
            nVar = new n(view);
            view.setTag(nVar);
        } else {
            nVar = (n) view.getTag();
        }
        FavoritesCenterData.MemberInfoBean memberInfoBean = (FavoritesCenterData.MemberInfoBean) getItem(i2);
        MyImageLoader.h(nVar.f38987b, memberInfoBean.getPortrait());
        nVar.f38988c.setText(memberInfoBean.getNick_name());
        if (com.join.mgps.Util.d2.i(memberInfoBean.getRank())) {
            nVar.f38991f.setText(memberInfoBean.getRank());
            nVar.f38991f.setVisibility(0);
        } else {
            nVar.f38991f.setVisibility(8);
        }
        if ("1".equals(memberInfoBean.getSex())) {
            nVar.f38990e.setImageResource(R.drawable.favorite_sex_men);
        } else {
            nVar.f38990e.setImageResource(R.drawable.favorite_sex_wumen);
        }
        int vip = memberInfoBean.getVip();
        int svip = memberInfoBean.getSvip();
        if (vip > 0) {
            nVar.f38989d.setVisibility(0);
        } else {
            nVar.f38989d.setVisibility(8);
        }
        if (svip > 0) {
            nVar.f38993h.setVipData(0, svip);
        }
        String tag_info = memberInfoBean.getTag_info();
        if (com.join.mgps.Util.d2.i(tag_info)) {
            String[] split = tag_info.split(",");
            nVar.f38992g.removeAllViews();
            for (String str : split) {
                View inflate = LayoutInflater.from(this.f38920b).inflate(R.layout.favoritecenter_item_tipitem, (ViewGroup) null);
                nVar.f38992g.addView(inflate);
                ((TextView) inflate.findViewById(R.id.tipText)).setText(str);
            }
        }
        return view;
    }

    public void c(k kVar) {
        if (kVar == null) {
            return;
        }
        if (this.f38921c == null) {
            this.f38921c = new ArrayList();
        }
        this.f38921c.add(kVar);
    }

    public void d(List<k> list) {
        if (list == null) {
            return;
        }
        if (this.f38921c == null) {
            this.f38921c = new ArrayList();
        }
        this.f38921c.addAll(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<k> list = this.f38921c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<k> list = this.f38921c;
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
        List<k> list = this.f38921c;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.COMMENT_LIST_ITEM_HEADER.ordinal()) {
            return g(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMENT_LIST_ITEM_CONTENT.ordinal()) {
            return e(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMENT_LIST_ITEM_FOOTER.ordinal()) {
            return f(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.FAVORITES_ITEM_TITLE.ordinal()) {
            return j(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.FAVORITES_TITLE.ordinal()) {
            return l(i2, view, viewGroup);
        }
        return itemViewType == ViewType.FAVORITES_F.ordinal() ? h(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public List<k> i() {
        return this.f38921c;
    }

    public List<k> k() {
        return this.f38921c;
    }

    public void m(List<k> list) {
        if (list == null) {
            return;
        }
        if (this.f38921c == null) {
            list = new ArrayList<>();
        }
        this.f38921c.clear();
        this.f38921c.addAll(list);
    }

    public void n(List<k> list) {
        if (list == null) {
            return;
        }
        if (this.f38921c == null) {
            this.f38921c = new ArrayList();
        }
        this.f38921c.clear();
        this.f38921c.addAll(list);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void o(j jVar) {
        this.f38923e = jVar;
    }

    void p(View view, int i2, String str, String str2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new f(i2, str, str2));
    }

    public CommentSelfListAdapter(Context context, int i2) {
        this.f38920b = context;
        this.f38922d = i2;
    }
}
