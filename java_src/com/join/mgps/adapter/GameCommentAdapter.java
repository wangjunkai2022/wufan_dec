package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.InformationCommentBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class GameCommentAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f40651a;

    /* renamed from: b  reason: collision with root package name */
    private List<l> f40652b;

    /* renamed from: c  reason: collision with root package name */
    j f40653c;

    /* loaded from: classes3.dex */
    public enum ViewType {
        TITLE,
        COMMENT,
        REPLY
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40654a;

        a(InformationCommentBean informationCommentBean) {
            this.f40654a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f40654a.getUser_id())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f40656a;

        b(i iVar) {
            this.f40656a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f40656a.f40682g.getLayout();
            if (layout != null) {
                int lineCount = layout.getLineCount();
                if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) > 0) {
                        this.f40656a.f40686k.setVisibility(0);
                        return;
                    } else {
                        this.f40656a.f40686k.setVisibility(8);
                        return;
                    }
                }
                return;
            }
            this.f40656a.f40686k.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f40658a;

        c(i iVar) {
            this.f40658a = iVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40658a.f40686k.getText().toString().equals("查看全部")) {
                this.f40658a.f40682g.setMaxLines(Integer.MAX_VALUE);
                this.f40658a.f40686k.setText("收起");
            } else {
                this.f40658a.f40682g.setMaxLines(5);
                this.f40658a.f40686k.setText("查看全部");
            }
            this.f40658a.f40686k.postInvalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40660a;

        d(InformationCommentBean informationCommentBean) {
            this.f40660a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40660a.isHasPraised()) {
                com.join.mgps.Util.i2.a(GameCommentAdapter.this.f40651a).b("你已赞过");
            } else if (IntentUtil.getInstance().goLoginInteractive(GameCommentAdapter.this.f40651a)) {
            } else {
                ((ImageView) view).setImageResource(R.drawable.like);
                view.startAnimation(AnimationUtils.loadAnimation(GameCommentAdapter.this.f40651a, R.anim.scale_reset));
                j jVar = GameCommentAdapter.this.f40653c;
                if (jVar != null) {
                    jVar.a(this.f40660a);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f40662a;

        e(InformationCommentBean.Sub sub) {
            this.f40662a = sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j jVar = GameCommentAdapter.this.f40653c;
            if (jVar != null) {
                jVar.b(this.f40662a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40664a;

        f(InformationCommentBean informationCommentBean) {
            this.f40664a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j jVar = GameCommentAdapter.this.f40653c;
            if (jVar != null) {
                jVar.c(this.f40664a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40666a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40667b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f40668c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ l.b f40669d;

        g(int i2, int i4, String str, l.b bVar) {
            this.f40666a = i2;
            this.f40667b = i4;
            this.f40668c = str;
            this.f40669d = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40666a == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f40666a; i2 >= 0; i2--) {
                l lVar = (l) GameCommentAdapter.this.f40652b.get(this.f40667b - i2);
                l.b bVar = lVar.b() == ViewType.REPLY ? (l.b) lVar.a() : null;
                if (bVar != null && this.f40668c == bVar.f40699a) {
                    arrayList.addAll(bVar.f40700b.getSub());
                }
            }
            for (int i4 = 0; i4 <= this.f40666a; i4++) {
                GameCommentAdapter.this.f40652b.remove(this.f40667b - i4);
            }
            informationCommentBean.setSub(arrayList);
            GameCommentAdapter.this.f40652b.add(this.f40667b - this.f40666a, GameCommentAdapter.this.c(this.f40668c, informationCommentBean, this.f40669d.f40701c, true));
            GameCommentAdapter.this.notifyDataSetChanged();
            GameCommentAdapter.this.f40653c.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40671a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40672b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f40673c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ l.b f40674d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f40675e;

        h(int i2, InformationCommentBean informationCommentBean, String str, l.b bVar, int i4) {
            this.f40671a = i2;
            this.f40672b = informationCommentBean;
            this.f40673c = str;
            this.f40674d = bVar;
            this.f40675e = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f40671a) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f40672b);
                List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
                ArrayList arrayList = new ArrayList();
                int i5 = i2 + 3;
                if (i5 < sub.size()) {
                    arrayList.addAll(sub.subList(i2, i5));
                } else {
                    arrayList.addAll(sub.subList(i2, sub.size()));
                    z3 = true;
                }
                informationCommentBean.setSub(arrayList);
                l c4 = GameCommentAdapter.this.c(this.f40673c, informationCommentBean, this.f40674d.f40701c, i4 == 0);
                l.b bVar = (l.b) c4.a();
                bVar.f40703e = i4;
                bVar.f40704f = z3;
                bVar.f40702d = i4 == 0;
                GameCommentAdapter.this.i(c4, !z3);
                GameCommentAdapter.this.f40652b.add(this.f40675e + i4 + 1, c4);
                i4++;
                i2 = i5;
            }
            GameCommentAdapter.this.f40652b.remove(this.f40675e);
            GameCommentAdapter.this.notifyDataSetChanged();
            GameCommentAdapter.this.f40653c.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends n {

        /* renamed from: b  reason: collision with root package name */
        private RelativeLayout f40677b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f40678c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f40679d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f40680e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f40681f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f40682g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f40683h;

        /* renamed from: i  reason: collision with root package name */
        private TextView f40684i;

        /* renamed from: j  reason: collision with root package name */
        public View f40685j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f40686k;

        /* renamed from: l  reason: collision with root package name */
        public VipView f40687l;

        i() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public interface j {
        void a(InformationCommentBean informationCommentBean);

        void b(InformationCommentBean.Sub sub);

        void c(InformationCommentBean informationCommentBean);

        void d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends n {

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f40689b;

        /* renamed from: c  reason: collision with root package name */
        public View f40690c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40691d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40692e;

        /* renamed from: f  reason: collision with root package name */
        public View f40693f;

        /* renamed from: g  reason: collision with root package name */
        public View f40694g;

        k() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40696a;

        /* renamed from: b  reason: collision with root package name */
        Object f40697b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public InformationCommentBean f40698a;

            public a(InformationCommentBean informationCommentBean) {
                this.f40698a = informationCommentBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f40699a;

            /* renamed from: b  reason: collision with root package name */
            public InformationCommentBean f40700b;

            /* renamed from: c  reason: collision with root package name */
            public int f40701c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f40702d;

            /* renamed from: e  reason: collision with root package name */
            public int f40703e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f40704f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f40705g;

            public b(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
                this.f40699a = str;
                this.f40700b = informationCommentBean;
                this.f40701c = i2;
                this.f40702d = z3;
            }
        }

        public l() {
        }

        public Object a() {
            return this.f40697b;
        }

        public ViewType b() {
            return this.f40696a;
        }

        public void c(Object obj) {
            this.f40697b = obj;
        }

        public void d(ViewType viewType) {
            this.f40696a = viewType;
        }

        public l(ViewType viewType, Object obj) {
            this.f40696a = viewType;
            this.f40697b = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m {

        /* renamed from: a  reason: collision with root package name */
        private TextView f40706a;

        m() {
        }
    }

    /* loaded from: classes3.dex */
    class n {
        n() {
        }
    }

    public GameCommentAdapter(Context context, List<l> list, j jVar) {
        this.f40653c = null;
        this.f40651a = context;
        this.f40652b = list;
        this.f40653c = jVar;
    }

    private View f(int i2, View view, ViewGroup viewGroup) {
        k kVar;
        l.b bVar;
        try {
            if (view != null) {
                kVar = (k) view.getTag();
            } else {
                kVar = new k();
                view = LayoutInflater.from(this.f40651a).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, (ViewGroup) null);
                kVar.f40689b = (LinearLayout) view.findViewById(R.id.comment_reply_container);
                kVar.f40690c = view.findViewById(R.id.comment_reply_divider);
                kVar.f40691d = (TextView) view.findViewById(R.id.comment_reply_content);
                kVar.f40692e = (TextView) view.findViewById(R.id.comment_reply_more);
                kVar.f40693f = view.findViewById(R.id.line);
                kVar.f40694g = view.findViewById(R.id.bottom);
                view.setTag(kVar);
            }
            bVar = (l.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null || bVar.f40700b == null) {
            return view;
        }
        if (bVar.f40702d) {
            kVar.f40690c.setVisibility(0);
        } else {
            kVar.f40690c.setVisibility(8);
        }
        if (!bVar.f40705g) {
            kVar.f40693f.setVisibility(0);
            kVar.f40694g.setVisibility(0);
        } else {
            kVar.f40693f.setVisibility(8);
            kVar.f40694g.setVisibility(8);
        }
        List<InformationCommentBean.Sub> sub = bVar.f40700b.getSub();
        if (sub != null && sub.size() != 0) {
            h(kVar.f40689b, bVar, true, i2);
        } else {
            kVar.f40689b.removeAllViews();
        }
        return view;
    }

    private void h(View view, l.b bVar, boolean z3, int i2) {
        View view2;
        int i4;
        boolean z4;
        int i5;
        int i6;
        String str = bVar.f40699a;
        int i7 = bVar.f40703e;
        boolean z5 = bVar.f40704f;
        InformationCommentBean informationCommentBean = bVar.f40700b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) view;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i8 = 0;
        int i9 = 0;
        while (i9 < size + 1) {
            if (i9 <= 3 || !z3) {
                View inflate = LayoutInflater.from(this.f40651a).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                inflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) inflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) inflate.findViewById(R.id.comment_reply_more);
                if ((i9 != size || size <= 3) && !(i7 > 0 && z5 && i9 == size)) {
                    view2 = inflate;
                    i4 = i7;
                    z4 = z5;
                    i5 = i9;
                    if (i5 == 3 && z3 && size > 3) {
                        textView.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        i6 = size;
                        view2.setOnClickListener(new h(size, informationCommentBean, str, bVar, i2));
                    } else {
                        i6 = size;
                        if (i5 < i6 && (i5 < 3 || !z3)) {
                            textView.setVisibility(0);
                            textView2.setVisibility(8);
                            InformationCommentBean.Sub sub2 = sub.get(i5);
                            String content = sub2.getContent();
                            sub2.getComment_id();
                            try {
                                textView.setText(Html.fromHtml(content));
                                l(view2, sub2);
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            linearLayout.addView(view2);
                        }
                    }
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(i8);
                    textView2.setText("收起");
                    int i10 = i7;
                    view2 = inflate;
                    i4 = i7;
                    i5 = i9;
                    z4 = z5;
                    view2.setOnClickListener(new g(i10, i2, str, bVar));
                    i6 = size;
                }
                linearLayout.addView(view2);
            } else {
                i4 = i7;
                z4 = z5;
                i5 = i9;
                i6 = size;
            }
            i9 = i5 + 1;
            size = i6;
            i7 = i4;
            z5 = z4;
            i8 = 0;
        }
    }

    private void l(View view, InformationCommentBean.Sub sub) {
        view.setOnClickListener(new e(sub));
    }

    private void m(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new d(informationCommentBean));
    }

    private void n(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new f(informationCommentBean));
    }

    l c(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
        return new l(ViewType.REPLY, new l.b(str, informationCommentBean, i2, z3));
    }

    public View d(int i2, View view, ViewGroup viewGroup, int i4) {
        View view2;
        m mVar;
        i iVar;
        l.a aVar = (l.a) getItem(i2);
        if (view == null) {
            if (i4 != 1) {
                if (i4 == 2) {
                    i iVar2 = new i();
                    View inflate = LayoutInflater.from(this.f40651a).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
                    iVar2.f40677b = (RelativeLayout) inflate.findViewById(R.id.main);
                    iVar2.f40678c = (SimpleDraweeView) inflate.findViewById(R.id.usericon);
                    iVar2.f40679d = (ImageView) inflate.findViewById(R.id.parise);
                    iVar2.f40680e = (TextView) inflate.findViewById(R.id.username);
                    iVar2.f40681f = (TextView) inflate.findViewById(R.id.time);
                    iVar2.f40682g = (TextView) inflate.findViewById(R.id.content);
                    iVar2.f40683h = (TextView) inflate.findViewById(R.id.pariseNumber);
                    iVar2.f40684i = (TextView) inflate.findViewById(R.id.levelTv);
                    iVar2.f40687l = (VipView) inflate.findViewById(R.id.levelVip);
                    iVar2.f40685j = inflate.findViewById(R.id.line);
                    iVar2.f40686k = (TextView) inflate.findViewById(R.id.more);
                    inflate.setTag(iVar2);
                    view2 = inflate;
                    iVar = iVar2;
                    mVar = null;
                }
                view2 = view;
                mVar = null;
                iVar = null;
            } else {
                mVar = new m();
                View inflate2 = LayoutInflater.from(this.f40651a).inflate(R.layout.gameinformation_comment_item_title, (ViewGroup) null);
                mVar.f40706a = (TextView) inflate2.findViewById(R.id.title);
                inflate2.setTag(mVar);
                view2 = inflate2;
                iVar = null;
            }
        } else if (i4 != 1) {
            if (i4 == 2) {
                iVar = (i) view.getTag();
                view2 = view;
                mVar = null;
            }
            view2 = view;
            mVar = null;
            iVar = null;
        } else {
            view2 = view;
            mVar = (m) view.getTag();
            iVar = null;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                if (aVar == null) {
                    return null;
                }
                InformationCommentBean informationCommentBean = aVar.f40698a;
                if (informationCommentBean.getSub() != null && informationCommentBean.getSub().size() > 0) {
                    iVar.f40685j.setVisibility(8);
                } else {
                    iVar.f40685j.setVisibility(0);
                }
                iVar.f40681f.setText(com.join.android.app.common.utils.c.a(Long.parseLong(informationCommentBean.getTimes() + "000")));
                iVar.f40682g.setText(informationCommentBean.getContent());
                iVar.f40683h.setText(informationCommentBean.getPraise_count() + "");
                if (informationCommentBean.isHasPraised()) {
                    iVar.f40679d.setImageResource(R.drawable.like);
                } else {
                    iVar.f40679d.setImageResource(R.drawable.unlike);
                }
                if (com.join.mgps.Util.d2.i(informationCommentBean.getHead_portrait())) {
                    UtilsMy.E2(this.f40651a, informationCommentBean.getHead_portrait(), iVar.f40678c);
                }
                com.join.mgps.Util.r.h(informationCommentBean.getUser_level(), iVar.f40684i);
                iVar.f40684i.setText("LV." + informationCommentBean.getUser_level());
                iVar.f40680e.setText(Html.fromHtml(informationCommentBean.getUser_name()));
                UtilsMy.L2(iVar.f40680e.getContext(), iVar.f40680e, informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
                iVar.f40687l.setVipData(informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
                m(iVar.f40679d, informationCommentBean);
                n(view2, informationCommentBean);
                com.join.mgps.Util.i0.S0(iVar.f40678c, iVar.f40680e, iVar.f40681f);
                com.join.mgps.Util.i0.U0(iVar.f40687l);
                iVar.f40678c.setOnClickListener(new a(informationCommentBean));
                iVar.f40682g.post(new b(iVar));
                iVar.f40686k.setOnClickListener(new c(iVar));
            }
        } else if (aVar.f40698a.getIs_hot() == 1) {
            mVar.f40706a.setText("热门评论");
        } else {
            mVar.f40706a.setText("最新评论");
        }
        return view2;
    }

    public List<l> e() {
        return this.f40652b;
    }

    public j g() {
        return this.f40653c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<l> list = this.f40652b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<l> list = this.f40652b;
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
        List<l> list = this.f40652b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.COMMENT.ordinal()) {
            return d(i2, view, viewGroup, 2);
        }
        if (itemViewType == ViewType.TITLE.ordinal()) {
            return d(i2, view, viewGroup, 1);
        }
        return itemViewType == ViewType.REPLY.ordinal() ? f(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    void i(l lVar, boolean z3) {
        if (lVar == null) {
            return;
        }
        try {
            ((l.b) lVar.a()).f40705g = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void j(List<l> list) {
        if (list == null) {
            return;
        }
        if (this.f40652b == null) {
            list = new ArrayList<>();
        }
        this.f40652b.clear();
        this.f40652b.addAll(list);
    }

    public void k(j jVar) {
        this.f40653c = jVar;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public GameCommentAdapter(Context context) {
        this.f40653c = null;
        this.f40651a = context;
        this.f40652b = new ArrayList();
    }
}
