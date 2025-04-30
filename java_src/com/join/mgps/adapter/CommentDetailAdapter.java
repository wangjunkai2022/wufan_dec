package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
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
import com.join.mgps.adapter.InformationAdapter;
import com.join.mgps.customview.CopyTextView;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CommentDetailBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class CommentDetailAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f38858a;

    /* renamed from: b  reason: collision with root package name */
    private List<j> f38859b;

    /* renamed from: c  reason: collision with root package name */
    h f38860c;

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
        final /* synthetic */ CommentDetailBean.MainCommentBean f38861a;

        a(CommentDetailBean.MainCommentBean mainCommentBean) {
            this.f38861a = mainCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f38861a.getUid())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f38863a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38864b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f38865c;

        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(b.this.f38865c.getText().toString()).longValue();
                TextView textView = b.this.f38865c;
                textView.setText((longValue + 1) + "");
                b bVar = b.this;
                CommentDetailAdapter.this.c(bVar.f38864b);
                b bVar2 = b.this;
                h hVar = CommentDetailAdapter.this.f38860c;
                if (hVar != null) {
                    hVar.x0(bVar2.f38863a, bVar2.f38864b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        b(CommentDetailBean.MainCommentBean mainCommentBean, int i2, TextView textView) {
            this.f38863a = mainCommentBean;
            this.f38864b = i2;
            this.f38865c = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentDetailBean.MainCommentBean mainCommentBean;
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailAdapter.this.f38858a) || (mainCommentBean = this.f38863a) == null) {
                return;
            }
            if (mainCommentBean.getIs_praise() == 1) {
                CommentDetailAdapter.this.q(this.f38864b);
                ((ImageView) view).setImageResource(R.drawable.up_ic);
                h hVar = CommentDetailAdapter.this.f38860c;
                if (hVar != null) {
                    hVar.x0(this.f38863a, this.f38864b, 2);
                    return;
                }
                return;
            }
            this.f38863a.setIs_praise(1);
            if (AccountUtil_.getInstance_(CommentDetailAdapter.this.f38858a).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(CommentDetailAdapter.this.f38858a);
                return;
            }
            ((ImageView) view).setImageResource(R.drawable.like);
            Animation loadAnimation = AnimationUtils.loadAnimation(CommentDetailAdapter.this.f38858a, R.anim.scale_reset);
            view.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38868a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean.SubCommentBean f38869b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f38870c;

        c(int i2, CommentDetailBean.MainCommentBean.SubCommentBean subCommentBean, int i4) {
            this.f38868a = i2;
            this.f38869b = subCommentBean;
            this.f38870c = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            int i2 = this.f38868a;
            while (true) {
                if (i2 < 0) {
                    str = "";
                    break;
                } else if (((j) CommentDetailAdapter.this.f38859b.get(i2)).b() == ViewType.COMMENT) {
                    str = ((j.a) ((j) CommentDetailAdapter.this.f38859b.get(i2)).a()).f38908a.getId();
                    break;
                } else {
                    i2--;
                }
            }
            h hVar = CommentDetailAdapter.this.f38860c;
            if (hVar != null) {
                hVar.m(this.f38869b, this.f38870c, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f38872a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38873b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CopyTextView f38874c;

        d(CommentDetailBean.MainCommentBean mainCommentBean, int i2, CopyTextView copyTextView) {
            this.f38872a = mainCommentBean;
            this.f38873b = i2;
            this.f38874c = copyTextView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h hVar = CommentDetailAdapter.this.f38860c;
            if (hVar != null) {
                hVar.r(this.f38872a, this.f38873b);
            }
            this.f38874c.clearFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38876a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38877b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f38878c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ j.b f38879d;

        e(int i2, int i4, String str, j.b bVar) {
            this.f38876a = i2;
            this.f38877b = i4;
            this.f38878c = str;
            this.f38879d = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f38876a == 0) {
                return;
            }
            CommentDetailBean.MainCommentBean mainCommentBean = new CommentDetailBean.MainCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f38876a; i2 >= 0; i2--) {
                j jVar = (j) CommentDetailAdapter.this.f38859b.get(this.f38877b - i2);
                j.b bVar = jVar.b() == ViewType.REPLY ? (j.b) jVar.a() : null;
                if (bVar != null && this.f38878c == bVar.f38909a) {
                    arrayList.addAll(bVar.f38910b.getSub_comment());
                }
            }
            for (int i4 = 0; i4 <= this.f38876a; i4++) {
                CommentDetailAdapter.this.f38859b.remove(this.f38877b - i4);
            }
            mainCommentBean.setSub_comment(arrayList);
            CommentDetailAdapter.this.f38859b.add(this.f38877b - this.f38876a, CommentDetailAdapter.this.d(this.f38878c, mainCommentBean, this.f38879d.f38911c, true));
            CommentDetailAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38881a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f38882b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f38883c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ j.b f38884d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f38885e;

        f(int i2, CommentDetailBean.MainCommentBean mainCommentBean, String str, j.b bVar, int i4) {
            this.f38881a = i2;
            this.f38882b = mainCommentBean;
            this.f38883c = str;
            this.f38884d = bVar;
            this.f38885e = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f38881a) {
                CommentDetailBean.MainCommentBean mainCommentBean = new CommentDetailBean.MainCommentBean(this.f38882b);
                List<CommentDetailBean.MainCommentBean.SubCommentBean> sub_comment = mainCommentBean.getSub_comment();
                ArrayList arrayList = new ArrayList();
                int i5 = i2 + 3;
                if (i5 < sub_comment.size()) {
                    arrayList.addAll(sub_comment.subList(i2, i5));
                } else {
                    arrayList.addAll(sub_comment.subList(i2, sub_comment.size()));
                    z3 = true;
                }
                mainCommentBean.setSub_comment(arrayList);
                j d4 = CommentDetailAdapter.this.d(this.f38883c, mainCommentBean, this.f38884d.f38911c, i4 == 0);
                j.b bVar = (j.b) d4.a();
                bVar.f38913e = i4;
                bVar.f38914f = z3;
                bVar.f38912d = i4 == 0;
                CommentDetailAdapter.this.k(d4, !z3);
                CommentDetailAdapter.this.f38859b.add(this.f38885e + i4 + 1, d4);
                i4++;
                i2 = i5;
            }
            CommentDetailAdapter.this.f38859b.remove(this.f38885e);
            CommentDetailAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends l {

        /* renamed from: b  reason: collision with root package name */
        private RelativeLayout f38887b;

        /* renamed from: c  reason: collision with root package name */
        private SimpleDraweeView f38888c;

        /* renamed from: d  reason: collision with root package name */
        private VipView f38889d;

        /* renamed from: e  reason: collision with root package name */
        private ImageView f38890e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f38891f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f38892g;

        /* renamed from: h  reason: collision with root package name */
        private CopyTextView f38893h;

        /* renamed from: i  reason: collision with root package name */
        private CopyTextViewNew f38894i;

        /* renamed from: j  reason: collision with root package name */
        private TextView f38895j;

        /* renamed from: k  reason: collision with root package name */
        private TextView f38896k;

        /* renamed from: l  reason: collision with root package name */
        public View f38897l;

        g() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
        void m(CommentDetailBean.MainCommentBean.SubCommentBean subCommentBean, int i2, String str);

        void r(CommentDetailBean.MainCommentBean mainCommentBean, int i2);

        void x0(CommentDetailBean.MainCommentBean mainCommentBean, int i2, int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends l {

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f38899b;

        /* renamed from: c  reason: collision with root package name */
        public View f38900c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f38901d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f38902e;

        /* renamed from: f  reason: collision with root package name */
        public View f38903f;

        /* renamed from: g  reason: collision with root package name */
        public View f38904g;

        i() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class j {

        /* renamed from: a  reason: collision with root package name */
        ViewType f38906a;

        /* renamed from: b  reason: collision with root package name */
        Object f38907b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public CommentDetailBean.MainCommentBean f38908a;

            public a(CommentDetailBean.MainCommentBean mainCommentBean) {
                this.f38908a = mainCommentBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f38909a;

            /* renamed from: b  reason: collision with root package name */
            public CommentDetailBean.MainCommentBean f38910b;

            /* renamed from: c  reason: collision with root package name */
            public int f38911c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f38912d;

            /* renamed from: e  reason: collision with root package name */
            public int f38913e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f38914f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f38915g;

            public b(String str, CommentDetailBean.MainCommentBean mainCommentBean, int i2, boolean z3) {
                this.f38909a = str;
                this.f38910b = mainCommentBean;
                this.f38911c = i2;
                this.f38912d = z3;
            }
        }

        public j() {
        }

        public Object a() {
            return this.f38907b;
        }

        public ViewType b() {
            return this.f38906a;
        }

        public void c(Object obj) {
            this.f38907b = obj;
        }

        public void d(ViewType viewType) {
            this.f38906a = viewType;
        }

        public j(ViewType viewType, Object obj) {
            this.f38906a = viewType;
            this.f38907b = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k {

        /* renamed from: a  reason: collision with root package name */
        private TextView f38916a;

        k() {
        }
    }

    /* loaded from: classes3.dex */
    class l {
        l() {
        }
    }

    public CommentDetailAdapter(Context context, List<j> list, h hVar) {
        this.f38860c = null;
        this.f38858a = context;
        this.f38859b = list;
        this.f38860c = hVar;
    }

    private View g(int i2, View view, ViewGroup viewGroup) {
        i iVar;
        j.b bVar;
        try {
            if (view != null) {
                iVar = (i) view.getTag();
            } else {
                iVar = new i();
                view = LayoutInflater.from(this.f38858a).inflate(R.layout.detail_comment_activity_item_comment_message_reply, (ViewGroup) null);
                iVar.f38899b = (LinearLayout) view.findViewById(R.id.comment_reply_container);
                iVar.f38900c = view.findViewById(R.id.comment_reply_divider);
                iVar.f38901d = (TextView) view.findViewById(R.id.comment_reply_content);
                iVar.f38902e = (TextView) view.findViewById(R.id.comment_reply_more);
                iVar.f38903f = view.findViewById(R.id.line);
                iVar.f38904g = view.findViewById(R.id.bottom);
                view.setTag(iVar);
            }
            bVar = (j.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null || bVar.f38910b == null) {
            return view;
        }
        if (bVar.f38912d) {
            iVar.f38900c.setVisibility(0);
        } else {
            iVar.f38900c.setVisibility(8);
        }
        if (!bVar.f38915g) {
            iVar.f38903f.setVisibility(0);
            iVar.f38904g.setVisibility(0);
        } else {
            iVar.f38903f.setVisibility(8);
            iVar.f38904g.setVisibility(8);
        }
        List<CommentDetailBean.MainCommentBean.SubCommentBean> sub_comment = bVar.f38910b.getSub_comment();
        if (sub_comment != null && sub_comment.size() != 0) {
            i(iVar.f38899b, bVar, true, i2);
        } else {
            iVar.f38899b.removeAllViews();
        }
        return view;
    }

    private void i(View view, j.b bVar, boolean z3, int i2) {
        int i4;
        List<CommentDetailBean.MainCommentBean.SubCommentBean> list;
        int i5;
        boolean z4;
        View view2;
        int i6;
        CommentDetailBean.MainCommentBean mainCommentBean;
        CommentDetailAdapter commentDetailAdapter;
        List<CommentDetailBean.MainCommentBean.SubCommentBean> list2;
        LinearLayout linearLayout;
        String[] split;
        CommentDetailAdapter commentDetailAdapter2 = this;
        String str = bVar.f38909a;
        int i7 = bVar.f38913e;
        boolean z5 = bVar.f38914f;
        CommentDetailBean.MainCommentBean mainCommentBean2 = bVar.f38910b;
        List<CommentDetailBean.MainCommentBean.SubCommentBean> sub_comment = mainCommentBean2.getSub_comment();
        LinearLayout linearLayout2 = (LinearLayout) view;
        linearLayout2.removeAllViews();
        int size = sub_comment.size();
        int i8 = 0;
        while (i8 < size + 1) {
            if (i8 <= 3 || !z3) {
                View inflate = LayoutInflater.from(commentDetailAdapter2.f38858a).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                LinearLayout linearLayout3 = linearLayout2;
                inflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) inflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) inflate.findViewById(R.id.comment_reply_more);
                if ((i8 != size || size <= 3) && !(i7 > 0 && z5 && i8 == size)) {
                    i4 = i8;
                    list = sub_comment;
                    i5 = i7;
                    z4 = z5;
                    view2 = inflate;
                    i6 = size;
                    if (i4 == 3 && z3 && i6 > 3) {
                        textView.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(i6 - 3)));
                        commentDetailAdapter = this;
                        mainCommentBean = mainCommentBean2;
                        view2.setOnClickListener(new f(i6, mainCommentBean2, str, bVar, i2));
                    } else {
                        mainCommentBean = mainCommentBean2;
                        if (i4 >= i6 || (i4 >= 3 && z3)) {
                            commentDetailAdapter = this;
                            list2 = list;
                            linearLayout = linearLayout3;
                        } else {
                            textView.setVisibility(0);
                            textView2.setVisibility(8);
                            CommentDetailBean.MainCommentBean.SubCommentBean subCommentBean = list.get(i4);
                            String content = subCommentBean.getContent();
                            try {
                                String str2 = subCommentBean.getUser_name() + " ";
                                String str3 = "";
                                if (content.contains(":")) {
                                    String[] split2 = content.split(":");
                                    if (split2.length == 2) {
                                        try {
                                            if (split2[0].contains("@")) {
                                                if (!split2[0].split("@")[1].equals("")) {
                                                    str3 = " " + split[1];
                                                }
                                            }
                                            com.join.mgps.Util.i0.v1(textView, str2, subCommentBean.getVip_level(), subCommentBean.getSvip_level(), str3, subCommentBean.getReply_vip_level(), subCommentBean.getReply_svip_level(), split2[1]);
                                        } catch (Exception e4) {
                                            e = e4;
                                            commentDetailAdapter = this;
                                            list2 = list;
                                            e.printStackTrace();
                                            linearLayout = linearLayout3;
                                            linearLayout.addView(view2);
                                            linearLayout2 = linearLayout;
                                            commentDetailAdapter2 = commentDetailAdapter;
                                            sub_comment = list2;
                                            size = i6;
                                            z5 = z4;
                                            i7 = i5;
                                            mainCommentBean2 = mainCommentBean;
                                            i8 = i4 + 1;
                                        }
                                    } else {
                                        com.join.mgps.Util.i0.v1(textView, str2, subCommentBean.getVip_level(), subCommentBean.getSvip_level(), "", subCommentBean.getReply_vip_level(), subCommentBean.getReply_svip_level(), content);
                                    }
                                } else {
                                    com.join.mgps.Util.i0.v1(textView, str2, subCommentBean.getVip_level(), subCommentBean.getSvip_level(), "", subCommentBean.getReply_vip_level(), subCommentBean.getReply_svip_level(), content);
                                }
                                commentDetailAdapter = this;
                                list2 = list;
                            } catch (Exception e5) {
                                e = e5;
                            }
                            try {
                                commentDetailAdapter.n(view2, subCommentBean, mainCommentBean.getPn(), i2);
                            } catch (Exception e6) {
                                e = e6;
                                e.printStackTrace();
                                linearLayout = linearLayout3;
                                linearLayout.addView(view2);
                                linearLayout2 = linearLayout;
                                commentDetailAdapter2 = commentDetailAdapter;
                                sub_comment = list2;
                                size = i6;
                                z5 = z4;
                                i7 = i5;
                                mainCommentBean2 = mainCommentBean;
                                i8 = i4 + 1;
                            }
                            linearLayout = linearLayout3;
                            linearLayout.addView(view2);
                        }
                    }
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(0);
                    textView2.setText("收起");
                    i4 = i8;
                    commentDetailAdapter = this;
                    z4 = z5;
                    int i9 = i7;
                    i6 = size;
                    i5 = i7;
                    view2 = inflate;
                    list = sub_comment;
                    view2.setOnClickListener(new e(i9, i2, str, bVar));
                    mainCommentBean = mainCommentBean2;
                }
                list2 = list;
                linearLayout = linearLayout3;
                linearLayout.addView(view2);
            } else {
                i4 = i8;
                linearLayout = linearLayout2;
                mainCommentBean = mainCommentBean2;
                commentDetailAdapter = commentDetailAdapter2;
                i5 = i7;
                z4 = z5;
                i6 = size;
                list2 = sub_comment;
            }
            linearLayout2 = linearLayout;
            commentDetailAdapter2 = commentDetailAdapter;
            sub_comment = list2;
            size = i6;
            z5 = z4;
            i7 = i5;
            mainCommentBean2 = mainCommentBean;
            i8 = i4 + 1;
        }
    }

    private void n(View view, CommentDetailBean.MainCommentBean.SubCommentBean subCommentBean, int i2, int i4) {
        view.setOnClickListener(new c(i4, subCommentBean, i2));
    }

    private void o(View view, TextView textView, CommentDetailBean.MainCommentBean mainCommentBean, int i2) {
        view.setOnClickListener(new b(mainCommentBean, i2, textView));
    }

    private void p(View view, CommentDetailBean.MainCommentBean mainCommentBean, int i2, CopyTextView copyTextView) {
        view.setOnClickListener(new d(mainCommentBean, i2, copyTextView));
    }

    public void c(int i2) {
        j.a aVar = (j.a) getItem(i2);
        if (aVar == null) {
            return;
        }
        long longValue = Long.valueOf(aVar.f38908a.getPraise_count()).longValue();
        aVar.f38908a.setIs_praise(1);
        CommentDetailBean.MainCommentBean mainCommentBean = aVar.f38908a;
        mainCommentBean.setPraise_count((longValue + 1) + "");
        notifyDataSetChanged();
    }

    j d(String str, CommentDetailBean.MainCommentBean mainCommentBean, int i2, boolean z3) {
        return new j(ViewType.REPLY, new j.b(str, mainCommentBean, i2, z3));
    }

    public View e(int i2, View view, ViewGroup viewGroup, int i4) {
        j.a aVar = (j.a) getItem(i2);
        g gVar = null;
        if (view == null) {
            if (i4 == 1) {
                k kVar = new k();
                View inflate = LayoutInflater.from(this.f38858a).inflate(R.layout.gameinformation_comment_item_title, (ViewGroup) null);
                kVar.f38916a = (TextView) inflate.findViewById(R.id.title);
                inflate.setTag(kVar);
                view = inflate;
            } else if (i4 == 2) {
                g gVar2 = new g();
                View inflate2 = LayoutInflater.from(this.f38858a).inflate(R.layout.detail_commit_item_layout, (ViewGroup) null);
                gVar2.f38887b = (RelativeLayout) inflate2.findViewById(R.id.main);
                gVar2.f38888c = (SimpleDraweeView) inflate2.findViewById(R.id.usericon);
                gVar2.f38889d = (VipView) inflate2.findViewById(R.id.levelTv);
                gVar2.f38890e = (ImageView) inflate2.findViewById(R.id.parise);
                gVar2.f38891f = (TextView) inflate2.findViewById(R.id.username);
                gVar2.f38892g = (TextView) inflate2.findViewById(R.id.time);
                gVar2.f38893h = (CopyTextView) inflate2.findViewById(R.id.content);
                gVar2.f38894i = (CopyTextViewNew) inflate2.findViewById(R.id.contentWeb);
                gVar2.f38896k = (TextView) inflate2.findViewById(R.id.pariseNumber);
                gVar2.f38895j = (TextView) inflate2.findViewById(R.id.isConnoisseurs);
                gVar2.f38897l = inflate2.findViewById(R.id.line0);
                inflate2.setTag(gVar2);
                gVar = gVar2;
                view = inflate2;
            }
        } else if (i4 == 1) {
            k kVar2 = (k) view.getTag();
        } else if (i4 == 2) {
            gVar = (g) view.getTag();
        }
        if (aVar == null) {
            return view;
        }
        CommentDetailBean.MainCommentBean mainCommentBean = aVar.f38908a;
        if (i4 == 2) {
            gVar.f38892g.setText(com.join.android.app.common.utils.c.a(Long.parseLong(mainCommentBean.getAdd_times() + "000")));
            gVar.f38891f.setTextColor(-16777216);
            if (mainCommentBean.getVip_level() > 0) {
                gVar.f38891f.setTextColor(this.f38858a.getResources().getColor(R.color.vip_color));
            }
            if (mainCommentBean.getSvip_level() > 0) {
                gVar.f38891f.setTextColor(this.f38858a.getResources().getColor(R.color.vip_svip_color));
            }
            gVar.f38889d.setVipData(mainCommentBean.getVip_level(), mainCommentBean.getSvip_level());
            String content = mainCommentBean.getContent();
            if (content.contains(":") && !content.endsWith(":")) {
                content = content.split(":")[1];
            }
            gVar.f38894i.setText(content);
            TextView textView = gVar.f38896k;
            textView.setText(mainCommentBean.getPraise_count() + "");
            if (mainCommentBean.getIs_praise() == 1) {
                gVar.f38890e.setImageResource(R.drawable.like);
            } else {
                gVar.f38890e.setImageResource(R.drawable.unlike);
            }
            UtilsMy.E2(this.f38858a, mainCommentBean.getHead_portrait(), gVar.f38888c);
            gVar.f38888c.setOnClickListener(new a(mainCommentBean));
            gVar.f38891f.setText(Html.fromHtml(mainCommentBean.getUser_name()));
            if (mainCommentBean.getRank().equals("")) {
                gVar.f38895j.setVisibility(8);
            } else {
                gVar.f38895j.setVisibility(0);
                gVar.f38895j.setText(mainCommentBean.getRank());
            }
            if (i2 == 0) {
                gVar.f38897l.setVisibility(8);
            } else {
                gVar.f38897l.setVisibility(0);
            }
            o(gVar.f38890e, gVar.f38896k, mainCommentBean, i2);
            p(view, mainCommentBean, i2, gVar.f38893h);
            p(gVar.f38894i, mainCommentBean, i2, gVar.f38893h);
        }
        return view;
    }

    public List<j> f() {
        return this.f38859b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<j> list = this.f38859b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<j> list = this.f38859b;
        if (list == null || i2 >= list.size()) {
            return null;
        }
        return this.f38859b.get(i2).a();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        List<j> list = this.f38859b;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.COMMENT.ordinal()) {
            return e(i2, view, viewGroup, 2);
        }
        if (itemViewType == ViewType.TITLE.ordinal()) {
            return e(i2, view, viewGroup, 1);
        }
        return itemViewType == InformationAdapter.ViewType.REPLY.ordinal() ? g(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public h h() {
        return this.f38860c;
    }

    public void j(int i2) {
        j.a aVar = (j.a) getItem(i2);
        if (aVar == null) {
            return;
        }
        long longValue = Long.valueOf(aVar.f38908a.getPraise_count()).longValue();
        if (aVar.f38908a.getIs_praise() == 1) {
            aVar.f38908a.setIs_praise(0);
            long j4 = longValue - 1;
            if (j4 < 0) {
                aVar.f38908a.setPraise_count("0");
            } else {
                CommentDetailBean.MainCommentBean mainCommentBean = aVar.f38908a;
                mainCommentBean.setPraise_count(j4 + "");
            }
        } else {
            aVar.f38908a.setIs_praise(1);
            CommentDetailBean.MainCommentBean mainCommentBean2 = aVar.f38908a;
            mainCommentBean2.setPraise_count((longValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    void k(j jVar, boolean z3) {
        if (jVar == null) {
            return;
        }
        try {
            ((j.b) jVar.a()).f38915g = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void l(List<j> list) {
        if (list == null) {
            return;
        }
        if (this.f38859b == null) {
            list = new ArrayList<>();
        }
        this.f38859b.clear();
        this.f38859b.addAll(list);
    }

    public void m(h hVar) {
        this.f38860c = hVar;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void q(int i2) {
        j.a aVar = (j.a) getItem(i2);
        if (aVar == null) {
            return;
        }
        long longValue = Long.valueOf(aVar.f38908a.getPraise_count()).longValue();
        aVar.f38908a.setIs_praise(0);
        long j4 = longValue - 1;
        if (j4 < 0) {
            aVar.f38908a.setPraise_count("0");
        } else {
            CommentDetailBean.MainCommentBean mainCommentBean = aVar.f38908a;
            mainCommentBean.setPraise_count(j4 + "");
        }
        notifyDataSetChanged();
    }

    public CommentDetailAdapter(Context context) {
        this.f38860c = null;
        this.f38858a = context;
        this.f38859b = new ArrayList();
    }
}
