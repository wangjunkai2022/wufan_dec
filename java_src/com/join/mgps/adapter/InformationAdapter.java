package com.join.mgps.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
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
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.InformationCommentBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class InformationAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f40786a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f40787b;

    /* renamed from: c  reason: collision with root package name */
    private List<n> f40788c;

    /* renamed from: d  reason: collision with root package name */
    l f40789d = null;

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
        final /* synthetic */ int f40790a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40791b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f40792c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ n.b f40793d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f40794e;

        a(int i2, InformationCommentBean informationCommentBean, String str, n.b bVar, int i4) {
            this.f40790a = i2;
            this.f40791b = informationCommentBean;
            this.f40792c = str;
            this.f40793d = bVar;
            this.f40794e = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f40790a) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f40791b);
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
                n d4 = InformationAdapter.this.d(this.f40792c, informationCommentBean, this.f40793d.f40838c, i4 == 0);
                n.b bVar = (n.b) d4.a();
                bVar.f40840e = i4;
                bVar.f40841f = z3;
                bVar.f40839d = i4 == 0;
                InformationAdapter.this.k(d4, !z3);
                InformationAdapter.this.f40788c.add(this.f40794e + i4 + 1, d4);
                i4++;
                i2 = i5;
            }
            InformationAdapter.this.f40788c.remove(this.f40794e);
            InformationAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40796a;

        b(InformationCommentBean informationCommentBean) {
            this.f40796a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message = new Message();
            message.what = 2;
            message.obj = this.f40796a;
            InformationAdapter.this.f40787b.sendMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40798a;

        c(InformationCommentBean informationCommentBean) {
            this.f40798a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40798a.isHasPraised()) {
                com.join.mgps.Util.i2.a(InformationAdapter.this.f40786a).b("你已赞过");
            } else if (IntentUtil.getInstance().goLoginInteractive(InformationAdapter.this.f40786a)) {
            } else {
                ((ImageView) view).setImageResource(R.drawable.like);
                view.startAnimation(AnimationUtils.loadAnimation(InformationAdapter.this.f40786a, R.anim.scale_reset));
                Message message = new Message();
                message.what = 1;
                message.obj = this.f40798a;
                InformationAdapter.this.f40787b.sendMessage(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f40800a;

        d(p pVar) {
            this.f40800a = pVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f40800a.f40850f.getLayout();
            if (layout != null) {
                int lineCount = layout.getLineCount();
                if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) > 0) {
                        this.f40800a.f40854j.setVisibility(0);
                        return;
                    } else {
                        this.f40800a.f40854j.setVisibility(8);
                        return;
                    }
                }
                return;
            }
            this.f40800a.f40854j.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f40802a;

        e(p pVar) {
            this.f40802a = pVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40802a.f40854j.getText().toString().equals("查看全部")) {
                this.f40802a.f40850f.setMaxLines(Integer.MAX_VALUE);
                this.f40802a.f40854j.setText("收起");
                return;
            }
            this.f40802a.f40850f.setMaxLines(5);
            this.f40802a.f40854j.setText("查看全部");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40804a;

        f(InformationCommentBean informationCommentBean) {
            this.f40804a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f40804a.getUser_id())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40806a;

        g(InformationCommentBean informationCommentBean) {
            this.f40806a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40806a.isHasPraised()) {
                com.join.mgps.Util.i2.a(InformationAdapter.this.f40786a).b("你已赞过");
            } else if (AccountUtil_.getInstance_(InformationAdapter.this.f40786a).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(InformationAdapter.this.f40786a);
            } else {
                ((ImageView) view).setImageResource(R.drawable.like);
                view.startAnimation(AnimationUtils.loadAnimation(InformationAdapter.this.f40786a, R.anim.scale_reset));
                l lVar = InformationAdapter.this.f40789d;
                if (lVar != null) {
                    lVar.a(this.f40806a);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f40808a;

        h(InformationCommentBean.Sub sub) {
            this.f40808a = sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l lVar = InformationAdapter.this.f40789d;
            if (lVar != null) {
                lVar.b(this.f40808a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40810a;

        i(InformationCommentBean informationCommentBean) {
            this.f40810a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l lVar = InformationAdapter.this.f40789d;
            if (lVar != null) {
                lVar.c(this.f40810a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40812a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40813b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f40814c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ n.b f40815d;

        j(int i2, int i4, String str, n.b bVar) {
            this.f40812a = i2;
            this.f40813b = i4;
            this.f40814c = str;
            this.f40815d = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40812a == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f40812a; i2 >= 0; i2--) {
                n nVar = (n) InformationAdapter.this.f40788c.get(this.f40813b - i2);
                n.b bVar = nVar.b() == ViewType.REPLY ? (n.b) nVar.a() : null;
                if (bVar != null && this.f40814c == bVar.f40836a) {
                    arrayList.addAll(bVar.f40837b.getSub());
                }
            }
            for (int i4 = 0; i4 <= this.f40812a; i4++) {
                InformationAdapter.this.f40788c.remove(this.f40813b - i4);
            }
            informationCommentBean.setSub(arrayList);
            InformationAdapter.this.f40788c.add(this.f40813b - this.f40812a, InformationAdapter.this.d(this.f40814c, informationCommentBean, this.f40815d.f40838c, true));
            InformationAdapter.this.notifyDataSetChanged();
        }
    }

    /* loaded from: classes3.dex */
    class k extends p {

        /* renamed from: l  reason: collision with root package name */
        private RelativeLayout f40817l;

        /* renamed from: m  reason: collision with root package name */
        private SimpleDraweeView f40818m;

        /* renamed from: n  reason: collision with root package name */
        private ImageView f40819n;

        /* renamed from: o  reason: collision with root package name */
        private TextView f40820o;

        /* renamed from: p  reason: collision with root package name */
        private TextView f40821p;

        /* renamed from: q  reason: collision with root package name */
        private TextView f40822q;

        /* renamed from: r  reason: collision with root package name */
        private TextView f40823r;

        /* renamed from: s  reason: collision with root package name */
        private VipView f40824s;

        k() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public interface l {
        void a(InformationCommentBean informationCommentBean);

        void b(InformationCommentBean.Sub sub);

        void c(InformationCommentBean informationCommentBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends p {

        /* renamed from: l  reason: collision with root package name */
        public LinearLayout f40826l;

        /* renamed from: m  reason: collision with root package name */
        public View f40827m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f40828n;

        /* renamed from: o  reason: collision with root package name */
        public TextView f40829o;

        /* renamed from: p  reason: collision with root package name */
        public View f40830p;

        /* renamed from: q  reason: collision with root package name */
        public View f40831q;

        m() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class n {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40833a;

        /* renamed from: b  reason: collision with root package name */
        Object f40834b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public InformationCommentBean f40835a;

            public a(InformationCommentBean informationCommentBean) {
                this.f40835a = informationCommentBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f40836a;

            /* renamed from: b  reason: collision with root package name */
            public InformationCommentBean f40837b;

            /* renamed from: c  reason: collision with root package name */
            public int f40838c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f40839d;

            /* renamed from: e  reason: collision with root package name */
            public int f40840e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f40841f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f40842g;

            public b(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
                this.f40836a = str;
                this.f40837b = informationCommentBean;
                this.f40838c = i2;
                this.f40839d = z3;
            }
        }

        public n() {
        }

        public Object a() {
            return this.f40834b;
        }

        public ViewType b() {
            return this.f40833a;
        }

        public void c(Object obj) {
            this.f40834b = obj;
        }

        public void d(ViewType viewType) {
            this.f40833a = viewType;
        }

        public n(ViewType viewType, Object obj) {
            this.f40833a = viewType;
            this.f40834b = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o {

        /* renamed from: a  reason: collision with root package name */
        private TextView f40843a;

        o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p {

        /* renamed from: a  reason: collision with root package name */
        private RelativeLayout f40845a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f40846b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f40847c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f40848d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f40849e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f40850f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f40851g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f40852h;

        /* renamed from: i  reason: collision with root package name */
        public VipView f40853i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f40854j;

        p() {
        }
    }

    public InformationAdapter(Context context, Handler handler, List<n> list) {
        this.f40786a = context;
        this.f40787b = handler;
        this.f40788c = list;
    }

    private View g(int i2, View view, ViewGroup viewGroup) {
        m mVar;
        n.b bVar;
        try {
            if (view != null) {
                mVar = (m) view.getTag();
            } else {
                mVar = new m();
                view = LayoutInflater.from(this.f40786a).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, (ViewGroup) null);
                mVar.f40826l = (LinearLayout) view.findViewById(R.id.comment_reply_container);
                mVar.f40827m = view.findViewById(R.id.comment_reply_divider);
                mVar.f40828n = (TextView) view.findViewById(R.id.comment_reply_content);
                mVar.f40829o = (TextView) view.findViewById(R.id.comment_reply_more);
                mVar.f40830p = view.findViewById(R.id.line);
                mVar.f40831q = view.findViewById(R.id.bottom);
                view.setTag(mVar);
            }
            bVar = (n.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null || bVar.f40837b == null) {
            return view;
        }
        if (bVar.f40839d) {
            mVar.f40827m.setVisibility(0);
        } else {
            mVar.f40827m.setVisibility(8);
        }
        if (!bVar.f40842g) {
            mVar.f40830p.setVisibility(0);
            mVar.f40831q.setVisibility(0);
        } else {
            mVar.f40830p.setVisibility(8);
            mVar.f40831q.setVisibility(8);
        }
        List<InformationCommentBean.Sub> sub = bVar.f40837b.getSub();
        if (sub != null && sub.size() != 0) {
            j(mVar.f40826l, bVar, true, i2);
        } else {
            mVar.f40826l.removeAllViews();
        }
        return view;
    }

    private void j(View view, n.b bVar, boolean z3, int i2) {
        View view2;
        int i4;
        boolean z4;
        int i5;
        int i6;
        String str = bVar.f40836a;
        int i7 = bVar.f40840e;
        boolean z5 = bVar.f40841f;
        InformationCommentBean informationCommentBean = bVar.f40837b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) view;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i8 = 0;
        int i9 = 0;
        while (i9 < size + 1) {
            if (i9 <= 3 || !z3) {
                View inflate = LayoutInflater.from(this.f40786a).inflate(R.layout.comment_reply_item, (ViewGroup) null);
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
                        view2.setOnClickListener(new a(size, informationCommentBean, str, bVar, i2));
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
                                n(view2, sub2);
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
                    view2.setOnClickListener(new j(i10, i2, str, bVar));
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

    private void n(View view, InformationCommentBean.Sub sub) {
        view.setOnClickListener(new h(sub));
    }

    private void o(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new g(informationCommentBean));
    }

    private void p(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new i(informationCommentBean));
    }

    n d(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
        return new n(ViewType.REPLY, new n.b(str, informationCommentBean, i2, z3));
    }

    public View e(int i2, View view, ViewGroup viewGroup) {
        View view2;
        k kVar;
        if (view == null) {
            kVar = new k();
            view2 = LayoutInflater.from(this.f40786a).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
            kVar.f40817l = (RelativeLayout) view2.findViewById(R.id.main);
            kVar.f40818m = (SimpleDraweeView) view2.findViewById(R.id.usericon);
            kVar.f40819n = (ImageView) view2.findViewById(R.id.parise);
            kVar.f40820o = (TextView) view2.findViewById(R.id.username);
            kVar.f40821p = (TextView) view2.findViewById(R.id.time);
            kVar.f40822q = (TextView) view2.findViewById(R.id.content);
            kVar.f40823r = (TextView) view2.findViewById(R.id.pariseNumber);
            kVar.f40824s = (VipView) view2.findViewById(R.id.levelTv);
            view2.setTag(kVar);
        } else {
            view2 = view;
            kVar = (k) view.getTag();
        }
        n.a aVar = (n.a) getItem(i2);
        if (aVar == null) {
            return null;
        }
        InformationCommentBean informationCommentBean = aVar.f40835a;
        kVar.f40821p.setText(com.join.android.app.common.utils.c.a(Long.parseLong(informationCommentBean.getTimes() + "000")));
        kVar.f40822q.setText(informationCommentBean.getContent());
        TextView textView = kVar.f40823r;
        textView.setText(informationCommentBean.getPraise_count() + "");
        if (informationCommentBean.isHasPraised()) {
            kVar.f40819n.setImageResource(R.drawable.like);
        } else {
            kVar.f40819n.setImageResource(R.drawable.unlike);
        }
        if (com.join.mgps.Util.d2.i(informationCommentBean.getHead_portrait())) {
            UtilsMy.E2(this.f40786a, informationCommentBean.getHead_portrait(), kVar.f40818m);
        }
        kVar.f40820o.setText(Html.fromHtml(informationCommentBean.getUser_name()));
        kVar.f40824s.setVipData(informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
        o(kVar.f40819n, informationCommentBean);
        p(view2, informationCommentBean);
        com.join.mgps.Util.i0.S0(kVar.f40818m, kVar.f40820o, kVar.f40821p);
        com.join.mgps.Util.i0.U0(kVar.f40824s);
        return view2;
    }

    public List<n> f() {
        return this.f40788c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<n> list = this.f40788c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<n> list = this.f40788c;
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
        List<n> list = this.f40788c;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.COMMENT.ordinal()) {
            return h(i2, view, viewGroup, 2);
        }
        if (itemViewType == ViewType.TITLE.ordinal()) {
            return h(i2, view, viewGroup, 1);
        }
        return itemViewType == ViewType.REPLY.ordinal() ? g(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public View h(int i2, View view, ViewGroup viewGroup, int i4) {
        o oVar;
        InformationCommentBean informationCommentBean = ((n.a) getItem(i2)).f40835a;
        p pVar = null;
        if (view == null) {
            if (i4 != 1) {
                if (i4 == 2) {
                    p pVar2 = new p();
                    View inflate = LayoutInflater.from(this.f40786a).inflate(R.layout.gameinformation_commit_item_layout, (ViewGroup) null);
                    pVar2.f40845a = (RelativeLayout) inflate.findViewById(R.id.main);
                    pVar2.f40846b = (SimpleDraweeView) inflate.findViewById(R.id.usericon);
                    pVar2.f40847c = (ImageView) inflate.findViewById(R.id.parise);
                    pVar2.f40848d = (TextView) inflate.findViewById(R.id.username);
                    pVar2.f40849e = (TextView) inflate.findViewById(R.id.time);
                    pVar2.f40850f = (TextView) inflate.findViewById(R.id.content);
                    pVar2.f40851g = (TextView) inflate.findViewById(R.id.pariseNumber);
                    pVar2.f40852h = (TextView) inflate.findViewById(R.id.levelTv);
                    pVar2.f40853i = (VipView) inflate.findViewById(R.id.levelVip);
                    pVar2.f40854j = (TextView) inflate.findViewById(R.id.more);
                    inflate.setTag(pVar2);
                    pVar = pVar2;
                    view = inflate;
                    oVar = null;
                }
                oVar = null;
            } else {
                o oVar2 = new o();
                View inflate2 = LayoutInflater.from(this.f40786a).inflate(R.layout.gameinformation_comment_item_title, (ViewGroup) null);
                oVar2.f40843a = (TextView) inflate2.findViewById(R.id.title);
                inflate2.setTag(oVar2);
                oVar = oVar2;
                view = inflate2;
            }
        } else if (i4 != 1) {
            if (i4 == 2) {
                oVar = null;
                pVar = (p) view.getTag();
            }
            oVar = null;
        } else {
            oVar = (o) view.getTag();
        }
        if (i4 != 1) {
            if (i4 == 2) {
                pVar.f40848d.setText(Html.fromHtml(informationCommentBean.getUser_name()));
                pVar.f40849e.setText(com.join.android.app.common.utils.c.b(Long.parseLong(informationCommentBean.getTimes() + "000")));
                pVar.f40850f.setText(informationCommentBean.getContent());
                pVar.f40851g.setText(informationCommentBean.getPraise_count() + "");
                if (informationCommentBean.isHasPraised()) {
                    pVar.f40847c.setImageResource(R.drawable.like);
                } else {
                    pVar.f40847c.setImageResource(R.drawable.unlike);
                }
                if (com.join.mgps.Util.d2.i(informationCommentBean.getHead_portrait())) {
                    UtilsMy.E2(this.f40786a, informationCommentBean.getHead_portrait(), pVar.f40846b);
                }
                try {
                    UtilsMy.L2(this.f40786a, pVar.f40848d, informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
                    pVar.f40853i.setVipData(informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                com.join.mgps.Util.r.h(informationCommentBean.getUser_level(), pVar.f40852h);
                pVar.f40852h.setText("LV." + informationCommentBean.getUser_level());
                pVar.f40845a.setOnClickListener(new b(informationCommentBean));
                pVar.f40847c.setOnClickListener(new c(informationCommentBean));
                pVar.f40850f.post(new d(pVar));
                pVar.f40854j.setOnClickListener(new e(pVar));
                com.join.mgps.Util.i0.S0(pVar.f40846b, pVar.f40848d, pVar.f40849e);
                pVar.f40846b.setOnClickListener(new f(informationCommentBean));
                com.join.mgps.Util.i0.U0(pVar.f40853i);
            }
        } else if (informationCommentBean.getIs_hot() == 1) {
            oVar.f40843a.setText("热门评论");
        } else {
            oVar.f40843a.setText("最新评论");
        }
        return view;
    }

    public l i() {
        return this.f40789d;
    }

    void k(n nVar, boolean z3) {
        if (nVar == null) {
            return;
        }
        try {
            ((n.b) nVar.a()).f40842g = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void l(List<n> list) {
        if (list == null) {
            return;
        }
        if (this.f40788c == null) {
            list = new ArrayList<>();
        }
        this.f40788c.clear();
        this.f40788c.addAll(list);
    }

    public void m(l lVar) {
        this.f40789d = lVar;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
