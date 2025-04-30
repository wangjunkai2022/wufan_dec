package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
/* loaded from: classes3.dex */
public class ForumProfileMessageReplyAdapter extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    private Context f40312b;

    /* renamed from: d  reason: collision with root package name */
    LinearLayout.LayoutParams f40314d;

    /* renamed from: f  reason: collision with root package name */
    n f40316f;

    /* renamed from: g  reason: collision with root package name */
    Hashtable<String, p> f40317g;

    /* renamed from: a  reason: collision with root package name */
    private String f40311a = "ForumProfileMessageReplyAdapter";

    /* renamed from: e  reason: collision with root package name */
    private o f40315e = null;

    /* renamed from: c  reason: collision with root package name */
    private List<u> f40313c = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        PROFILE_HEADER,
        PROFILE_MESSAGE_ITEM,
        PROFILE_COMMENT_IMAGE,
        PROFILE_MESSAGE_REPLY_ITEM
    }

    /* loaded from: classes3.dex */
    class a implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40318a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40319b;

        a(int i2, int i4) {
            this.f40318a = i2;
            this.f40319b = i4;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (ForumProfileMessageReplyAdapter.this.f40315e != null) {
                ForumProfileMessageReplyAdapter.this.f40315e.e(view, this.f40318a, this.f40319b);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40321a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40322b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f40323c;

        b(int i2, int i4, String str) {
            this.f40321a = i2;
            this.f40322b = i4;
            this.f40323c = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileMessageReplyAdapter.this.f40315e != null) {
                ForumProfileMessageReplyAdapter.this.f40315e.c(this.f40321a, this.f40322b, this.f40323c);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40325a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40326b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40327c;

        c(int i2, int i4, int i5) {
            this.f40325a = i2;
            this.f40326b = i4;
            this.f40327c = i5;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (ForumProfileMessageReplyAdapter.this.f40315e != null) {
                ForumProfileMessageReplyAdapter.this.f40315e.l(view, this.f40325a, this.f40326b, this.f40327c);
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40329a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f40330b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f40331c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f40332d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f40333e;

        d(int i2, boolean z3, boolean z4, int i4, String str) {
            this.f40329a = i2;
            this.f40330b = z3;
            this.f40331c = z4;
            this.f40332d = i4;
            this.f40333e = str;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (ForumProfileMessageReplyAdapter.this.f40315e != null) {
                ForumProfileMessageReplyAdapter.this.f40315e.i(view, this.f40329a);
            }
            ForumProfileMessageReplyAdapter.this.D(view, 2, this.f40330b, this.f40331c, this.f40329a, this.f40332d, this.f40333e);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u.b f40335a;

        e(u.b bVar) {
            this.f40335a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f40335a.f40408f).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40337a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40338b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40339c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ u.d f40340d;

        f(int i2, int i4, int i5, u.d dVar) {
            this.f40337a = i2;
            this.f40338b = i4;
            this.f40339c = i5;
            this.f40340d = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40337a == 0) {
                return;
            }
            ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f40337a; i2 >= 0; i2--) {
                u uVar = (u) ForumProfileMessageReplyAdapter.this.f40313c.get(this.f40338b - i2);
                u.d dVar = uVar.b() == ViewType.PROFILE_MESSAGE_REPLY_ITEM ? (u.d) uVar.a() : null;
                if (dVar != null && this.f40339c == dVar.f40414a) {
                    arrayList.addAll(dVar.f40415b.getReply_list());
                }
            }
            for (int i4 = 0; i4 <= this.f40337a; i4++) {
                ForumProfileMessageReplyAdapter.this.f40313c.remove(this.f40338b - i4);
            }
            forumCommentBean.setReply_list(arrayList);
            ForumProfileMessageReplyAdapter.this.f40313c.add(this.f40338b - this.f40337a, ForumProfileMessageReplyAdapter.this.g(this.f40339c, forumCommentBean, this.f40340d.f40416c, true));
            ForumProfileMessageReplyAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40342a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f40343b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40344c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ u.d f40345d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f40346e;

        g(int i2, ForumBean.ForumCommentBean forumCommentBean, int i4, u.d dVar, int i5) {
            this.f40342a = i2;
            this.f40343b = forumCommentBean;
            this.f40344c = i4;
            this.f40345d = dVar;
            this.f40346e = i5;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f40342a) {
                ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean(this.f40343b);
                List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
                ArrayList arrayList = new ArrayList();
                int i5 = i2 + 3;
                if (i5 < reply_list.size()) {
                    arrayList.addAll(reply_list.subList(i2, i5));
                } else {
                    arrayList.addAll(reply_list.subList(i2, reply_list.size()));
                    z3 = true;
                }
                forumCommentBean.setReply_list(arrayList);
                u g4 = ForumProfileMessageReplyAdapter.this.g(this.f40344c, forumCommentBean, this.f40345d.f40416c, i4 == 0);
                u.d dVar = (u.d) g4.a();
                dVar.f40418e = i4;
                dVar.f40419f = z3;
                dVar.f40420g = i4 == 0;
                ForumProfileMessageReplyAdapter.this.t(g4, !z3);
                ForumProfileMessageReplyAdapter.this.f40313c.add(this.f40346e + i4 + 1, g4);
                i4++;
                i2 = i5;
            }
            ForumProfileMessageReplyAdapter.this.f40313c.remove(this.f40346e);
            ForumProfileMessageReplyAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f40348a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ u.d f40349b;

        h(View view, u.d dVar) {
            this.f40348a = view;
            this.f40349b = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyAdapter.this.q(this.f40348a, this.f40349b, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f40351a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ u.d f40352b;

        i(View view, u.d dVar) {
            this.f40351a = view;
            this.f40352b = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyAdapter.this.q(this.f40351a, this.f40352b, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.f> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f40354a;

        j(SimpleDraweeView simpleDraweeView) {
            this.f40354a = simpleDraweeView;
        }

        @Override // com.facebook.drawee.controller.c
        public void b(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        public void c(String str) {
        }

        @Override // com.facebook.drawee.controller.c
        public void e(String str, Object obj) {
            SimpleDraweeView simpleDraweeView = this.f40354a;
            simpleDraweeView.setLayoutParams(ForumProfileMessageReplyAdapter.this.h(simpleDraweeView.getContext()));
        }

        @Override // com.facebook.drawee.controller.c
        public void f(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        /* renamed from: g */
        public void d(String str, com.facebook.imagepipeline.image.f fVar, Animatable animatable) {
            try {
                ForumProfileMessageReplyAdapter.this.s(str, this.f40354a, fVar);
                if (fVar != null) {
                    p pVar = new p();
                    pVar.f40375a = fVar.a();
                    pVar.f40376b = fVar.getHeight();
                    ForumProfileMessageReplyAdapter.this.e(str, pVar);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // com.facebook.drawee.controller.c
        /* renamed from: h */
        public void a(String str, com.facebook.imagepipeline.image.f fVar) {
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40356a;

        k(int i2) {
            this.f40356a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileMessageReplyAdapter.this.f40315e != null) {
                ForumProfileMessageReplyAdapter.this.f40315e.b(this.f40356a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileMessageReplyAdapter.this.f40315e != null) {
                ForumProfileMessageReplyAdapter.this.f40315e.m();
            }
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f40359a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f40360b;

        m(int i2, String str) {
            this.f40359a = i2;
            this.f40360b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumProfileMessageReplyAdapter.this.f40315e != null) {
                ForumProfileMessageReplyAdapter.this.f40315e.h(this.f40359a, this.f40360b);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class n extends com.join.mgps.customview.h implements View.OnClickListener {

        /* renamed from: m  reason: collision with root package name */
        public static final int f40362m = 1;

        /* renamed from: n  reason: collision with root package name */
        public static final int f40363n = 2;

        /* renamed from: o  reason: collision with root package name */
        public static final int f40364o = 3;

        /* renamed from: c  reason: collision with root package name */
        View f40365c;

        /* renamed from: d  reason: collision with root package name */
        View f40366d;

        /* renamed from: e  reason: collision with root package name */
        View f40367e;

        /* renamed from: f  reason: collision with root package name */
        View f40368f;

        /* renamed from: g  reason: collision with root package name */
        View f40369g;

        /* renamed from: h  reason: collision with root package name */
        int f40370h;

        /* renamed from: i  reason: collision with root package name */
        int f40371i;

        /* renamed from: j  reason: collision with root package name */
        String f40372j;

        /* renamed from: k  reason: collision with root package name */
        int f40373k;

        public n(Context context) {
            super(context);
            c();
            i();
        }

        private void i() {
            View inflate = LayoutInflater.from(this.f46887a).inflate(R.layout.mg_forum_popupwindow_layout, (ViewGroup) null);
            this.f40365c = inflate.findViewById(R.id.btn_forum_comment_delete);
            this.f40366d = inflate.findViewById(R.id.divider_forum_comment_1);
            this.f40367e = inflate.findViewById(R.id.btn_forum_comment);
            this.f40368f = inflate.findViewById(R.id.divider_2);
            this.f40369g = inflate.findViewById(R.id.btn_forum_report);
            this.f40365c.setOnClickListener(this);
            this.f40367e.setOnClickListener(this);
            this.f40369g.setOnClickListener(this);
            setContentView(inflate);
            setWidth(-2);
            setHeight(-2);
        }

        void c() {
            setAnimationStyle(0);
            setFocusable(false);
        }

        public int d() {
            return this.f40370h;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void dismiss() {
            super.dismiss();
            this.f40370h = 0;
            this.f40371i = 0;
            this.f40372j = "";
        }

        public View e() {
            return this.f40365c;
        }

        public int f() {
            return this.f40373k;
        }

        public String g() {
            return this.f40372j;
        }

        public int h() {
            return this.f40371i;
        }

        void j() {
            if (ForumProfileMessageReplyAdapter.this.f40315e == null) {
                return;
            }
            int i2 = this.f40373k;
            if (i2 == 1) {
                ForumProfileMessageReplyAdapter.this.f40315e.h(this.f40370h, this.f40372j);
            } else if (i2 == 2) {
                ForumProfileMessageReplyAdapter.this.f40315e.k(this.f40370h, this.f40371i, this.f40372j);
            }
        }

        void k() {
            if (ForumProfileMessageReplyAdapter.this.f40315e == null) {
                return;
            }
            int i2 = this.f40373k;
            if (i2 == 1) {
                ForumProfileMessageReplyAdapter.this.f40315e.d(this.f40370h);
            } else if (i2 == 2) {
                ForumProfileMessageReplyAdapter.this.f40315e.g(this.f40371i);
            }
        }

        void l() {
            if (ForumProfileMessageReplyAdapter.this.f40315e == null) {
                return;
            }
            int i2 = this.f40373k;
            if (i2 == 1) {
                ForumProfileMessageReplyAdapter.this.f40315e.j(this.f40370h);
            } else if (i2 == 2) {
                ForumProfileMessageReplyAdapter.this.f40315e.f(this.f40371i);
            }
        }

        public void m() {
            View view = this.f40365c;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = this.f40367e;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            View view3 = this.f40369g;
            if (view3 != null) {
                view3.setVisibility(0);
            }
        }

        public void n(int i2) {
            this.f40370h = i2;
        }

        public void o(int i2) {
            View view = this.f40367e;
            if (view != null) {
                view.setVisibility(i2);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.btn_forum_comment /* 2131296727 */:
                    j();
                    break;
                case R.id.btn_forum_comment_delete /* 2131296729 */:
                    k();
                    break;
                case R.id.btn_forum_report /* 2131296730 */:
                    l();
                    break;
            }
            dismiss();
        }

        public void p(View view) {
            this.f40365c = view;
        }

        public void q(int i2) {
            View view = this.f40365c;
            if (view != null) {
                view.setVisibility(i2);
            }
            if (i2 == 0) {
                this.f40366d.setVisibility(0);
            } else {
                this.f40366d.setVisibility(8);
            }
        }

        public void r(int i2) {
            this.f40373k = i2;
        }

        public void s(String str) {
            this.f40372j = str;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void showAsDropDown(View view) {
            showAsDropDown(view, 0, (view.getMeasuredHeight() * (-1)) - this.f46887a.getResources().getDimensionPixelSize(R.dimen.mg_forum_popupwindow_height));
            b();
        }

        void t(int i2) {
            View view = this.f40369g;
            if (view != null) {
                view.setVisibility(i2);
            }
            if (i2 == 0) {
                this.f40368f.setVisibility(0);
            } else {
                this.f40368f.setVisibility(8);
            }
        }

        public void u(int i2) {
            this.f40371i = i2;
        }
    }

    /* loaded from: classes3.dex */
    public interface o {
        void a(int i2);

        void b(int i2);

        void c(int i2, int i4, String str);

        void d(int i2);

        void e(View view, int i2, int i4);

        void f(int i2);

        void g(int i2);

        void h(int i2, String str);

        void i(View view, int i2);

        void j(int i2);

        void k(int i2, int i4, String str);

        void l(View view, int i2, int i4, int i5);

        void m();
    }

    /* loaded from: classes3.dex */
    public class p {

        /* renamed from: a  reason: collision with root package name */
        public int f40375a;

        /* renamed from: b  reason: collision with root package name */
        public int f40376b;

        public p() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q extends v {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40378b;

        q() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r extends v {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f40380b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40381c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40382d;

        /* renamed from: e  reason: collision with root package name */
        public View f40383e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f40384f;

        /* renamed from: g  reason: collision with root package name */
        public ImageView f40385g;

        /* renamed from: h  reason: collision with root package name */
        public VipView f40386h;

        r() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s extends v {

        /* renamed from: b  reason: collision with root package name */
        public TextView f40388b;

        /* renamed from: c  reason: collision with root package name */
        public View f40389c;

        s() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t extends v {

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f40391b;

        /* renamed from: c  reason: collision with root package name */
        public View f40392c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f40393d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40394e;

        /* renamed from: f  reason: collision with root package name */
        public View f40395f;

        /* renamed from: g  reason: collision with root package name */
        public View f40396g;

        t() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    public static class u {

        /* renamed from: a  reason: collision with root package name */
        ViewType f40398a;

        /* renamed from: b  reason: collision with root package name */
        Object f40399b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public String f40400a;

            /* renamed from: b  reason: collision with root package name */
            int f40401b;

            /* renamed from: c  reason: collision with root package name */
            List<String> f40402c;

            public a() {
            }

            public a(String str, int i2, List<String> list) {
                this.f40400a = str;
                this.f40401b = i2;
                this.f40402c = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public boolean f40403a;

            /* renamed from: b  reason: collision with root package name */
            public String f40404b;

            /* renamed from: c  reason: collision with root package name */
            public String f40405c;

            /* renamed from: d  reason: collision with root package name */
            public long f40406d;

            /* renamed from: e  reason: collision with root package name */
            public int f40407e;

            /* renamed from: f  reason: collision with root package name */
            public int f40408f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f40409g;

            /* renamed from: h  reason: collision with root package name */
            public int f40410h;

            /* renamed from: i  reason: collision with root package name */
            public int f40411i;

            public b() {
            }

            public b(boolean z3, String str, String str2, long j4, int i2, boolean z4, int i4, int i5, int i6) {
                this.f40403a = z3;
                this.f40404b = str;
                this.f40405c = str2;
                this.f40406d = j4;
                this.f40407e = i2;
                this.f40408f = i6;
                this.f40409g = z4;
                this.f40410h = i4;
                this.f40411i = i5;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f40412a;

            /* renamed from: b  reason: collision with root package name */
            public String f40413b;

            public c() {
            }

            public c(int i2, String str) {
                this.f40412a = i2;
                this.f40413b = str;
            }
        }

        public u() {
        }

        public Object a() {
            return this.f40399b;
        }

        public ViewType b() {
            return this.f40398a;
        }

        public void c(Object obj) {
            this.f40399b = obj;
        }

        public void d(ViewType viewType) {
            this.f40398a = viewType;
        }

        public u(ViewType viewType, Object obj) {
            this.f40398a = viewType;
            this.f40399b = obj;
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            public int f40414a;

            /* renamed from: b  reason: collision with root package name */
            public ForumBean.ForumCommentBean f40415b;

            /* renamed from: c  reason: collision with root package name */
            public int f40416c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f40417d;

            /* renamed from: e  reason: collision with root package name */
            public int f40418e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f40419f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f40420g;

            public d(int i2, ForumBean.ForumCommentBean forumCommentBean, int i4) {
                this.f40414a = i2;
                this.f40415b = forumCommentBean;
                this.f40416c = i4;
            }

            public d(int i2, ForumBean.ForumCommentBean forumCommentBean, int i4, boolean z3) {
                this.f40414a = i2;
                this.f40415b = forumCommentBean;
                this.f40416c = i4;
                this.f40420g = z3;
            }
        }
    }

    /* loaded from: classes3.dex */
    class v {
        v() {
        }
    }

    public ForumProfileMessageReplyAdapter(Context context) {
        this.f40312b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinearLayout.LayoutParams h(Context context) {
        if (context == null) {
            return null;
        }
        if (this.f40314d == null) {
            Resources resources = context.getResources();
            int i2 = resources.getDisplayMetrics().widthPixels;
            float f4 = context.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = (int) ((i2 - resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding)) - (30 * f4));
            int i4 = (int) (4 * f4);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, (int) ((dimensionPixelSize * 1.0f) / 1.5f));
            layoutParams.setMargins(0, i4, 0, i4);
            this.f40314d = layoutParams;
        }
        return this.f40314d;
    }

    private View k(int i2, View view, ViewGroup viewGroup) {
        q qVar;
        SimpleDraweeView simpleDraweeView;
        if (view != null) {
            qVar = (q) view.getTag();
        } else {
            qVar = new q();
            view = LayoutInflater.from(this.f40312b).inflate(R.layout.mg_profile_comment_image, (ViewGroup) null);
            qVar.f40378b = (SimpleDraweeView) view.findViewById(R.id.comment_img);
            view.setTag(qVar);
        }
        try {
            u.a aVar = (u.a) getItem(i2);
            if (aVar != null && (simpleDraweeView = qVar.f40378b) != null) {
                p(this.f40312b, aVar.f40402c.get(aVar.f40401b));
                p j4 = j(aVar.f40400a);
                if (j4 != null) {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(j4.f40375a, j4.f40376b);
                    int i4 = (int) (8 * this.f40312b.getResources().getDisplayMetrics().density);
                    layoutParams.setMargins(0, i4, 0, i4);
                    simpleDraweeView.setLayoutParams(layoutParams);
                    MyImageLoader.h(simpleDraweeView, aVar.f40400a);
                } else {
                    o(simpleDraweeView, aVar.f40400a);
                }
                com.join.mgps.Util.i0.C1(simpleDraweeView, aVar.f40401b, aVar.f40402c);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View l(int i2, View view, ViewGroup viewGroup) {
        r rVar;
        u.b bVar;
        if (view != null) {
            rVar = (r) view.getTag();
        } else {
            rVar = new r();
            view = LayoutInflater.from(this.f40312b).inflate(R.layout.mg_forum_profile_reply_header, (ViewGroup) null);
            rVar.f40383e = view.findViewById(R.id.forum_post_divider);
            rVar.f40380b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            rVar.f40381c = (TextView) view.findViewById(R.id.forum_post_nickname);
            rVar.f40382d = (TextView) view.findViewById(R.id.forum_post_add_time);
            rVar.f40384f = (LinearLayout) view.findViewById(R.id.forum_post_func_container);
            rVar.f40385g = (ImageView) view.findViewById(R.id.forum_post_reply);
            rVar.f40386h = (VipView) view.findViewById(R.id.vipFlag);
            view.setTag(rVar);
        }
        try {
            bVar = (u.b) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (bVar == null) {
            return view;
        }
        try {
            UtilsMy.M2(this.f40312b, rVar.f40381c, bVar.f40410h, bVar.f40411i, R.color.forum_nickname_color);
            rVar.f40386h.setVipData(bVar.f40410h, bVar.f40411i);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (bVar.f40403a) {
            rVar.f40383e.setVisibility(8);
        } else {
            rVar.f40383e.setVisibility(0);
        }
        rVar.f40381c.setText(bVar.f40405c);
        rVar.f40382d.setText(com.join.android.app.common.utils.c.a(bVar.f40406d * 1000));
        MyImageLoader.w(rVar.f40380b, bVar.f40404b);
        rVar.f40380b.setOnClickListener(new e(bVar));
        com.join.mgps.Util.i0.S0(rVar.f40380b, rVar.f40381c, rVar.f40382d);
        com.join.mgps.Util.i0.U0(rVar.f40386h);
        return view;
    }

    private View m(int i2, View view, ViewGroup viewGroup) {
        s sVar;
        u.c cVar;
        if (view != null) {
            sVar = (s) view.getTag();
        } else {
            sVar = new s();
            view = LayoutInflater.from(this.f40312b).inflate(R.layout.mg_forum_profile_reply_message_item, (ViewGroup) null);
            sVar.f40388b = (TextView) view.findViewById(R.id.mg_forum_profile_message_tv);
            sVar.f40389c = view.findViewById(R.id.mg_forum_profile_message_divider);
            view.setTag(sVar);
        }
        try {
            cVar = (u.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar == null) {
            return view;
        }
        sVar.f40389c.setVisibility(8);
        com.join.mgps.Util.i0.D1(sVar.f40388b, cVar.f40413b, "");
        return view;
    }

    private View n(int i2, View view, ViewGroup viewGroup) {
        t tVar;
        u.d dVar;
        try {
            if (view != null) {
                tVar = (t) view.getTag();
            } else {
                tVar = new t();
                view = LayoutInflater.from(this.f40312b).inflate(R.layout.mg_forum_profile_reply_message_reply_item, (ViewGroup) null);
                tVar.f40391b = (LinearLayout) view.findViewById(R.id.comment_reply_container);
                tVar.f40392c = view.findViewById(R.id.comment_reply_divider);
                tVar.f40393d = (TextView) view.findViewById(R.id.comment_reply_content);
                tVar.f40394e = (TextView) view.findViewById(R.id.comment_reply_more);
                tVar.f40395f = view.findViewById(R.id.line);
                tVar.f40396g = view.findViewById(R.id.bottom);
                view.setTag(tVar);
            }
            dVar = (u.d) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (dVar == null || dVar.f40415b == null) {
            return view;
        }
        if (dVar.f40420g) {
            tVar.f40392c.setVisibility(0);
        } else {
            tVar.f40392c.setVisibility(8);
        }
        if (!dVar.f40417d) {
            tVar.f40395f.setVisibility(0);
            tVar.f40396g.setVisibility(0);
        } else {
            tVar.f40395f.setVisibility(8);
            tVar.f40396g.setVisibility(8);
        }
        List<ForumBean.ForumCommentReplyBean> reply_list = dVar.f40415b.getReply_list();
        if (reply_list != null && reply_list.size() != 0) {
            r(tVar.f40391b, dVar, true, i2);
        } else {
            tVar.f40391b.removeAllViews();
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(View view, u.d dVar, boolean z3) {
        int i2 = dVar.f40414a;
        List<ForumBean.ForumCommentReplyBean> reply_list = dVar.f40415b.getReply_list();
        LinearLayout linearLayout = (LinearLayout) view;
        linearLayout.removeAllViews();
        for (int i4 = 0; i4 < reply_list.size() + 1; i4++) {
            if (i4 <= Integer.MAX_VALUE || !z3) {
                View inflate = LayoutInflater.from(this.f40312b).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                inflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) inflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) inflate.findViewById(R.id.comment_reply_more);
                int size = reply_list.size();
                if (i4 == size && size > Integer.MAX_VALUE) {
                    textView.setVisibility(8);
                    textView2.setVisibility(0);
                    textView2.setText("收起");
                    inflate.setOnClickListener(new h(view, dVar));
                } else if (i4 == Integer.MAX_VALUE && z3 && size > Integer.MAX_VALUE) {
                    textView.setVisibility(8);
                    textView2.setVisibility(0);
                    textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - Integer.MAX_VALUE)));
                    inflate.setOnClickListener(new i(view, dVar));
                } else if (i4 < reply_list.size() && (i4 < Integer.MAX_VALUE || !z3)) {
                    ForumBean.ForumCommentReplyBean forumCommentReplyBean = reply_list.get(i4);
                    String nickname = forumCommentReplyBean.getNickname();
                    String rnickname = forumCommentReplyBean.getRnickname();
                    if (forumCommentReplyBean.getRrid() == 0) {
                        rnickname = "";
                    }
                    String message = forumCommentReplyBean.getMessage();
                    textView.setVisibility(0);
                    textView2.setVisibility(8);
                    com.join.mgps.Util.i0.u1(textView, nickname, rnickname, message);
                    int rid = forumCommentReplyBean.getRid();
                    int uid = forumCommentReplyBean.getUid();
                    String nickname2 = forumCommentReplyBean.getNickname();
                    A(inflate, i2, rid, nickname2);
                    AccountBean accountData = AccountUtil_.getInstance_(this.f40312b).getAccountData();
                    int i5 = dVar.f40416c;
                    boolean z4 = accountData != null && uid == accountData.getUid();
                    z(inflate, i5 == 3 || i5 == 99 || z4, !z4, i2, rid, nickname2);
                }
                linearLayout.addView(inflate);
            }
        }
    }

    private void r(View view, u.d dVar, boolean z3, int i2) {
        int i4;
        boolean z4;
        View view2;
        int i5;
        ForumBean.ForumCommentBean forumCommentBean;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        int i6 = dVar.f40414a;
        int i7 = dVar.f40418e;
        boolean z5 = dVar.f40419f;
        ForumBean.ForumCommentBean forumCommentBean2 = dVar.f40415b;
        List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean2.getReply_list();
        LinearLayout linearLayout3 = (LinearLayout) view;
        linearLayout3.removeAllViews();
        int size = reply_list.size();
        int i8 = 0;
        int i9 = 0;
        while (i9 < size + 1) {
            if (i9 <= 3 || !z3) {
                View inflate = LayoutInflater.from(this.f40312b).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                inflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) inflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) inflate.findViewById(R.id.comment_reply_more);
                if ((i9 != size || size <= 3) && !(i7 > 0 && z5 && i9 == size)) {
                    i4 = i7;
                    z4 = z5;
                    view2 = inflate;
                    i5 = i9;
                    if (i5 == 3 && z3 && size > 3) {
                        textView.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        forumCommentBean = forumCommentBean2;
                        linearLayout = linearLayout3;
                        view2.setOnClickListener(new g(size, forumCommentBean2, i6, dVar, i2));
                    } else {
                        forumCommentBean = forumCommentBean2;
                        linearLayout = linearLayout3;
                        if (i5 >= size || (i5 >= 3 && z3)) {
                            linearLayout2 = linearLayout;
                        } else {
                            ForumBean.ForumCommentReplyBean forumCommentReplyBean = reply_list.get(i5);
                            String nickname = forumCommentReplyBean.getNickname();
                            String rnickname = forumCommentReplyBean.getRnickname();
                            if (forumCommentReplyBean.getRrid() == 0) {
                                rnickname = "";
                            }
                            String message = forumCommentReplyBean.getMessage();
                            textView.setVisibility(0);
                            textView2.setVisibility(8);
                            com.join.mgps.Util.i0.u1(textView, nickname, rnickname, message);
                            int rid = forumCommentReplyBean.getRid();
                            int uid = forumCommentReplyBean.getUid();
                            String nickname2 = forumCommentReplyBean.getNickname();
                            A(view2, i6, rid, nickname2);
                            AccountBean accountData = AccountUtil_.getInstance_(this.f40312b).getAccountData();
                            int i10 = dVar.f40416c;
                            boolean z6 = accountData != null && uid == accountData.getUid();
                            z(view2, i10 == 3 || i10 == 99 || z6, !z6, i6, rid, nickname2);
                        }
                    }
                    linearLayout2 = linearLayout;
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(i8);
                    textView2.setText("收起");
                    int i11 = i7;
                    i4 = i7;
                    view2 = inflate;
                    z4 = z5;
                    i5 = i9;
                    view2.setOnClickListener(new f(i11, i2, i6, dVar));
                    forumCommentBean = forumCommentBean2;
                    linearLayout2 = linearLayout3;
                }
                linearLayout2.addView(view2);
            } else {
                i4 = i7;
                z4 = z5;
                forumCommentBean = forumCommentBean2;
                linearLayout2 = linearLayout3;
                i5 = i9;
            }
            i9 = i5 + 1;
            linearLayout3 = linearLayout2;
            i7 = i4;
            z5 = z4;
            forumCommentBean2 = forumCommentBean;
            i8 = 0;
        }
    }

    public void A(View view, int i2, int i4, String str) {
        com.join.mgps.Util.u0.e("setOnCommentReplyReply", "cid=" + i2 + " rid=" + i4 + " rNickname=" + str);
        view.setOnClickListener(new b(i2, i4, str));
    }

    public void B(View view, int i2) {
        view.setOnClickListener(new k(i2));
    }

    public void C(o oVar) {
        this.f40315e = oVar;
    }

    void D(View view, int i2, boolean z3, boolean z4, int i4, int i5, String str) {
        if (this.f40316f == null) {
            this.f40316f = new n(this.f40312b);
        }
        this.f40316f.n(i4);
        this.f40316f.u(i5);
        this.f40316f.r(i2);
        if (z3) {
            this.f40316f.q(0);
        } else {
            this.f40316f.q(8);
        }
        if (z4) {
            this.f40316f.t(0);
        } else {
            this.f40316f.t(8);
        }
        if (com.join.mgps.Util.d2.h(str)) {
            str = "";
        }
        this.f40316f.s(str);
        this.f40316f.showAsDropDown(view);
    }

    void e(String str, p pVar) {
        if (this.f40317g == null) {
            this.f40317g = new Hashtable<>();
        }
        this.f40317g.put(str, pVar);
    }

    public void f() {
        Hashtable<String, p> hashtable = this.f40317g;
        if (hashtable != null) {
            hashtable.clear();
            System.gc();
        }
    }

    u g(int i2, ForumBean.ForumCommentBean forumCommentBean, int i4, boolean z3) {
        return new u(ViewType.PROFILE_MESSAGE_REPLY_ITEM, new u.d(i2, forumCommentBean, i4, z3));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<u> list = this.f40313c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<u> list = this.f40313c;
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
        List<u> list = this.f40313c;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.PROFILE_HEADER.ordinal()) {
            return l(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.PROFILE_MESSAGE_ITEM.ordinal()) {
            return m(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.PROFILE_COMMENT_IMAGE.ordinal()) {
            return k(i2, view, viewGroup);
        }
        return itemViewType == ViewType.PROFILE_MESSAGE_REPLY_ITEM.ordinal() ? n(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public List<u> i() {
        return this.f40313c;
    }

    p j(String str) {
        Hashtable<String, p> hashtable = this.f40317g;
        if (hashtable == null) {
            return null;
        }
        return hashtable.get(str);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void o(SimpleDraweeView simpleDraweeView, String str) {
        try {
            simpleDraweeView.getHierarchy().H(R.drawable.main_normal_icon);
            simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().H(new j(simpleDraweeView)).a(MyImageLoader.G(str)).build());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void p(Context context, String str) {
        Integer[] i02 = com.join.mgps.Util.i0.i0(str);
        if (i02 != null) {
            p pVar = new p();
            int intValue = i02[0].intValue();
            int intValue2 = i02[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = (int) ((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) - (resources.getDisplayMetrics().density * 58.0f));
            pVar.f40375a = dimensionPixelSize;
            pVar.f40376b = (int) (dimensionPixelSize * 1.0f * ((intValue2 * 1.0f) / intValue));
            e(str, pVar);
        }
    }

    LinearLayout.LayoutParams s(String str, View view, com.facebook.imagepipeline.image.f fVar) {
        if (fVar != null) {
            int a4 = fVar.a();
            int height = fVar.getHeight();
            Context context = view.getContext();
            Resources resources = context.getResources();
            int i2 = resources.getDisplayMetrics().widthPixels;
            float f4 = context.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = (int) ((i2 - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) - (40 * f4));
            int i4 = (int) (4 * f4);
            float f5 = (height * 1.0f) / a4;
            int i5 = (int) (dimensionPixelSize * 1.0f * f5);
            com.join.mgps.Util.u0.e(this.f40311a + "setCommentImageItemParams-->rawHeight=" + height + " rawWidth=" + a4 + " ratio=" + f5 + " itemHeight=" + i5 + " itemWidth=" + dimensionPixelSize + "\n" + str);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, i5);
            layoutParams.setMargins(0, i4, 0, i4);
            view.setLayoutParams(layoutParams);
            return layoutParams;
        }
        return null;
    }

    void t(u uVar, boolean z3) {
        if (uVar == null) {
            return;
        }
        try {
            ((u.d) uVar.a()).f40417d = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void u(List<u> list) {
        if (list == null) {
            return;
        }
        if (this.f40313c == null) {
            this.f40313c = new ArrayList();
        }
        this.f40313c.clear();
        this.f40313c.addAll(list);
    }

    public void v(View view, int i2, int i4) {
        view.setOnLongClickListener(new a(i2, i4));
    }

    public void w(View view, int i2, String str) {
        view.setOnClickListener(new m(i2, str));
    }

    public void x(View view) {
        view.setOnClickListener(new l());
    }

    public void y(View view, int i2, int i4, int i5) {
        com.join.mgps.Util.u0.e("setOnCommentReplyLongClick", "cid=" + i2 + " rid=" + i4 + " ruid=" + i5);
        view.setOnLongClickListener(new c(i2, i4, i5));
    }

    public void z(View view, boolean z3, boolean z4, int i2, int i4, String str) {
        view.setOnLongClickListener(new d(i2, z3, z4, i4, str));
    }
}
