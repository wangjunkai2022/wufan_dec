package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import java.util.Arrays;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.UiThread;
/* compiled from: ForumExtFuncPopWindow.java */
@EBean
/* loaded from: classes3.dex */
public class e extends PopupWindow implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f46807a;

    /* renamed from: b  reason: collision with root package name */
    private View f46808b;

    /* renamed from: c  reason: collision with root package name */
    private View f46809c;

    /* renamed from: d  reason: collision with root package name */
    private View f46810d;

    /* renamed from: e  reason: collision with root package name */
    private View f46811e;

    /* renamed from: f  reason: collision with root package name */
    private View f46812f;

    /* renamed from: g  reason: collision with root package name */
    private View f46813g;

    /* renamed from: h  reason: collision with root package name */
    private View f46814h;

    /* renamed from: i  reason: collision with root package name */
    private View f46815i;

    /* renamed from: j  reason: collision with root package name */
    private final int f46816j;

    /* renamed from: k  reason: collision with root package name */
    private final int f46817k;

    /* renamed from: l  reason: collision with root package name */
    private final int f46818l;

    /* renamed from: m  reason: collision with root package name */
    private final int f46819m;

    /* renamed from: n  reason: collision with root package name */
    private final int f46820n;

    /* renamed from: o  reason: collision with root package name */
    private int f46821o;

    /* renamed from: p  reason: collision with root package name */
    com.join.mgps.rpc.h f46822p;

    /* renamed from: q  reason: collision with root package name */
    private Object[] f46823q;

    /* renamed from: r  reason: collision with root package name */
    private ForumBean.ForumPostsBean f46824r;

    /* renamed from: s  reason: collision with root package name */
    d f46825s;

    /* renamed from: t  reason: collision with root package name */
    private com.join.mgps.dialog.p0 f46826t;

    /* renamed from: u  reason: collision with root package name */
    private int f46827u;

    /* renamed from: v  reason: collision with root package name */
    boolean f46828v;

    /* renamed from: w  reason: collision with root package name */
    boolean f46829w;

    /* renamed from: x  reason: collision with root package name */
    boolean f46830x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumExtFuncPopWindow.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                e.this.dismiss();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumExtFuncPopWindow.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.f46826t.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumExtFuncPopWindow.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.g();
            e.this.f46826t.dismiss();
        }
    }

    /* compiled from: ForumExtFuncPopWindow.java */
    /* loaded from: classes3.dex */
    public interface d {
        void a(int i2);

        void b(ForumBean.ForumPostsBean forumPostsBean);

        void c(int i2, boolean z3);

        void d(ForumBean.ForumPostsBean forumPostsBean);

        void e(ForumBean.ForumPostsBean forumPostsBean);

        void onCancel();
    }

    public e(Context context) {
        super(context);
        this.f46816j = 0;
        this.f46817k = 1;
        this.f46818l = 2;
        this.f46819m = 3;
        this.f46820n = 99;
        this.f46821o = 0;
        this.f46828v = false;
        this.f46829w = false;
        this.f46830x = false;
        this.f46807a = context;
        this.f46822p = com.join.mgps.rpc.impl.f.A0();
        View inflate = LayoutInflater.from(context).inflate(R.layout.mg_forum_ext_func_popwindow, (ViewGroup) null);
        this.f46809c = inflate;
        setContentView(inflate);
        setWidth(this.f46807a.getResources().getDimensionPixelSize(R.dimen.mg_forum_ext_func_width));
        setHeight(-2);
        o();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f46823q == null) {
            return;
        }
        switch (this.f46827u) {
            case R.id.extFuncBest /* 2131297367 */:
                d();
                return;
            case R.id.extFuncBestTv /* 2131297368 */:
            case R.id.extFuncFavoriteTv /* 2131297372 */:
            default:
                return;
            case R.id.extFuncCancel /* 2131297369 */:
                dismiss();
                return;
            case R.id.extFuncDelete /* 2131297370 */:
                c();
                return;
            case R.id.extFuncFavorite /* 2131297371 */:
                e();
                return;
            case R.id.extFuncReply /* 2131297373 */:
                k();
                return;
            case R.id.extFuncReport /* 2131297374 */:
                f();
                return;
        }
    }

    private void h() {
        this.f46808b = this.f46809c.findViewById(R.id.extFuncShare);
        this.f46810d = this.f46809c.findViewById(R.id.extFuncFavorite);
        this.f46811e = this.f46809c.findViewById(R.id.extFuncBest);
        this.f46812f = this.f46809c.findViewById(R.id.extFuncReply);
        this.f46813g = this.f46809c.findViewById(R.id.extFuncReport);
        this.f46814h = this.f46809c.findViewById(R.id.extFuncDelete);
        this.f46815i = this.f46809c.findViewById(R.id.extFuncCancel);
        this.f46808b.setOnClickListener(this);
        this.f46810d.setOnClickListener(this);
        this.f46811e.setOnClickListener(this);
        this.f46812f.setOnClickListener(this);
        this.f46813g.setOnClickListener(this);
        this.f46814h.setOnClickListener(this);
        this.f46815i.setOnClickListener(this);
    }

    private void o() {
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    private void q() {
        String str;
        dismiss();
        switch (this.f46827u) {
            case R.id.extFuncBest /* 2131297367 */:
                if (this.f46824r.getBest() != 1) {
                    str = "确定要设为精华吗？";
                    break;
                } else {
                    str = "确定要取消精华吗？";
                    break;
                }
            case R.id.extFuncBestTv /* 2131297368 */:
            case R.id.extFuncCancel /* 2131297369 */:
            case R.id.extFuncFavoriteTv /* 2131297372 */:
            default:
                return;
            case R.id.extFuncDelete /* 2131297370 */:
                str = "确定要删除吗？";
                break;
            case R.id.extFuncFavorite /* 2131297371 */:
                e();
                return;
            case R.id.extFuncReply /* 2131297373 */:
                str = "确定要回复吗？";
                break;
            case R.id.extFuncReport /* 2131297374 */:
                str = "确定要设为举报吗？";
                break;
            case R.id.extFuncShare /* 2131297375 */:
                com.join.mgps.Util.i0.H1(this.f46807a, this.f46824r);
                return;
        }
        if (this.f46807a == null) {
            return;
        }
        if (this.f46826t == null) {
            this.f46826t = new com.join.mgps.dialog.p0(this.f46807a);
        }
        this.f46826t.f("确定");
        this.f46826t.d("取消");
        this.f46826t.b(8);
        this.f46826t.g(str).c(new b());
        this.f46826t.e(new c());
        if (this.f46826t.isShowing()) {
            return;
        }
        this.f46826t.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c() {
        ForumData.ForumPostsDeleteData data;
        Context context = this.f46807a;
        int pid = this.f46824r.getPid();
        try {
            if (com.join.mgps.Util.i0.c0(context, pid) != null) {
                ForumResponse<ForumData.ForumPostsDeleteData> q02 = this.f46822p.q0(com.join.mgps.Util.i0.c0(context, pid).getParams());
                i(pid, q02 != null && q02.getError() == 0 && (data = q02.getData()) != null && data.isResult());
            }
        } catch (Exception unused) {
            i(pid, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d() {
        if (this.f46829w) {
            return;
        }
        int i2 = 1;
        this.f46829w = true;
        Context context = this.f46807a;
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        try {
            ForumBean.ForumPostsBean forumPostsBean2 = this.f46824r;
            if (forumPostsBean2 != null) {
                forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
            }
        } catch (CloneNotSupportedException e4) {
            e4.printStackTrace();
        }
        if (com.join.android.app.common.utils.f.j(context)) {
            try {
                try {
                } catch (Exception e5) {
                    d dVar = this.f46825s;
                    if (dVar != null) {
                        dVar.e(forumPostsBean);
                    }
                    r(context.getString(R.string.forum_post_best_fail));
                    e5.printStackTrace();
                }
                if (!com.join.mgps.Util.i0.Y0(context)) {
                    com.join.mgps.Util.i0.L0(context);
                    r(context.getString(R.string.forum_user_not_login));
                    this.f46829w = false;
                    return;
                }
                AccountBean T = com.join.mgps.Util.i0.T(context);
                ForumResponse<ForumData.ForumPostsBestData> r02 = this.f46822p.r0(new ForumRequestBean.ForumPostsFavoritesRequestBean(T.getUid(), T.getToken(), forumPostsBean.getPid(), "").getParams());
                if (r02 != null) {
                    int error = r02.getError();
                    if (error == 0) {
                        ForumData.ForumPostsBestData data = r02.getData();
                        if (data != null) {
                            if (data.isResult()) {
                                boolean z3 = data.getBest() == 1;
                                if (z3) {
                                    r(context.getString(R.string.forum_post_best_success));
                                } else {
                                    r(context.getString(R.string.forum_post_debest_success));
                                }
                                if (!z3) {
                                    i2 = 0;
                                }
                                forumPostsBean.setBest(i2);
                            } else if (d2.i(data.getMessage())) {
                                r(data.getMessage());
                            }
                        } else {
                            r(context.getString(R.string.forum_post_best_fail));
                        }
                    } else if (error == 701) {
                        r(context.getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    r(context.getString(R.string.forum_post_best_fail));
                }
                d dVar2 = this.f46825s;
                if (dVar2 != null) {
                    dVar2.e(forumPostsBean);
                }
                return;
            } finally {
                this.f46829w = false;
            }
        }
        r(context.getString(R.string.net_connect_failed));
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        d dVar = this.f46825s;
        if (dVar != null) {
            dVar.onCancel();
        }
        Activity activity = (Activity) this.f46807a;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 1.0f;
        activity.getWindow().setAttributes(attributes);
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e() {
        ForumBean.ForumPostsBean forumPostsBean;
        Context context = this.f46807a;
        ForumBean.ForumPostsBean forumPostsBean2 = new ForumBean.ForumPostsBean();
        try {
            forumPostsBean = this.f46824r;
        } catch (CloneNotSupportedException e4) {
            e4.printStackTrace();
        }
        if (forumPostsBean != null) {
            forumPostsBean2 = (ForumBean.ForumPostsBean) forumPostsBean.clone();
            if (com.join.android.app.common.utils.f.j(context)) {
                AccountUtil_.getInstance_(context).getAccountData();
                if (IntentUtil.getInstance().goLoginInteractive(context)) {
                    return;
                }
                this.f46828v = true;
                try {
                    try {
                    } catch (Exception e5) {
                        d dVar = this.f46825s;
                        if (dVar != null) {
                            dVar.d(forumPostsBean2);
                        }
                        r(context.getString(R.string.forum_post_favorite_fail));
                        e5.printStackTrace();
                    }
                    if (!com.join.mgps.Util.i0.Y0(context)) {
                        com.join.mgps.Util.i0.L0(context);
                        r(context.getString(R.string.forum_user_not_login));
                        this.f46828v = false;
                        return;
                    }
                    AccountBean T = com.join.mgps.Util.i0.T(context);
                    ForumRequestBean.ForumPostsFavoritesRequestBean forumPostsFavoritesRequestBean = new ForumRequestBean.ForumPostsFavoritesRequestBean(T.getUid(), T.getToken(), forumPostsBean2.getPid(), "");
                    int y3 = com.join.android.app.common.utils.j.n(context).y();
                    String z3 = com.join.android.app.common.utils.j.n(context).z();
                    forumPostsFavoritesRequestBean.setApp_ver(y3 + "_" + z3);
                    ForumResponse<ForumData.ForumPostsFavoritesData> k02 = this.f46822p.k0(forumPostsFavoritesRequestBean.getParams());
                    if (k02 != null) {
                        int error = k02.getError();
                        if (error == 0) {
                            ForumData.ForumPostsFavoritesData data = k02.getData();
                            if (data != null) {
                                forumPostsBean2.setIs_favorite(data.isFavorites());
                                if (data.isFavorites()) {
                                    r(context.getString(R.string.forum_post_favorite_success));
                                } else {
                                    r(context.getString(R.string.forum_post_defavorite_success));
                                }
                                com.join.mgps.Util.i0.f1(forumPostsBean2.getPid(), data.isFavorites());
                            } else {
                                r(context.getString(R.string.forum_post_favorite_fail));
                            }
                        } else if (error == 701) {
                            r(context.getString(R.string.forum_user_login_invalid));
                        }
                    } else {
                        r(context.getString(R.string.forum_post_favorite_fail));
                    }
                    d dVar2 = this.f46825s;
                    if (dVar2 != null) {
                        dVar2.d(forumPostsBean2);
                    }
                    return;
                } finally {
                    this.f46828v = false;
                }
            }
            r(context.getString(R.string.net_connect_failed));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f() {
        if (this.f46830x) {
            return;
        }
        this.f46830x = true;
        Context context = this.f46807a;
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        try {
            ForumBean.ForumPostsBean forumPostsBean2 = this.f46824r;
            if (forumPostsBean2 != null) {
                forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
            }
        } catch (CloneNotSupportedException e4) {
            e4.printStackTrace();
        }
        if (com.join.android.app.common.utils.f.j(context)) {
            try {
                try {
                } finally {
                    this.f46830x = false;
                }
            } catch (Exception e5) {
                d dVar = this.f46825s;
                if (dVar != null) {
                    dVar.b(forumPostsBean);
                }
                r(context.getString(R.string.forum_post_report_fail));
                e5.printStackTrace();
            }
            if (!com.join.mgps.Util.i0.Y0(context)) {
                com.join.mgps.Util.i0.L0(context);
                r(context.getString(R.string.forum_user_not_login));
                this.f46830x = false;
                return;
            }
            AccountBean T = com.join.mgps.Util.i0.T(context);
            ForumResponse<ForumData.ForumPostsReportData> c4 = this.f46822p.c(new ForumRequestBean.ForumPostsFavoritesRequestBean(T.getUid(), T.getToken(), forumPostsBean.getPid(), "").getParams());
            if (c4 != null) {
                int error = c4.getError();
                if (error == 0) {
                    ForumData.ForumPostsReportData data = c4.getData();
                    if (data != null) {
                        if (data.isResult()) {
                            r(context.getString(R.string.forum_post_report_success));
                        } else {
                            r(context.getString(R.string.forum_post_report_fail));
                        }
                    } else {
                        r(context.getString(R.string.forum_post_report_fail));
                    }
                } else if (error == 701) {
                    r(context.getString(R.string.forum_user_login_invalid));
                }
            } else {
                r(context.getString(R.string.forum_post_report_fail));
            }
            d dVar2 = this.f46825s;
            if (dVar2 != null) {
                dVar2.b(forumPostsBean);
            }
            return;
        }
        r(context.getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i(int i2, boolean z3) {
        if (z3) {
            i2.a(this.f46807a).b("删除成功");
        } else {
            i2.a(this.f46807a).b("删除失败");
        }
        d dVar = this.f46825s;
        if (dVar != null) {
            dVar.c(i2, z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j(ForumBean.ForumPostsBean forumPostsBean) {
        TextView textView = (TextView) this.f46810d.findViewById(R.id.extFuncFavoriteTv);
        if (forumPostsBean.is_favorite()) {
            textView.setText("取消收藏");
        } else {
            textView.setText("收藏");
        }
        TextView textView2 = (TextView) this.f46811e.findViewById(R.id.extFuncBestTv);
        if (forumPostsBean.getBest() == 1) {
            textView2.setText("取消精华");
        } else {
            textView2.setText("精华");
        }
    }

    void k() {
        ForumBean.ForumPostsBean forumPostsBean = this.f46824r;
        if (forumPostsBean == null) {
            return;
        }
        Context context = this.f46807a;
        if (context != null) {
            com.join.mgps.Util.i0.v0(context, forumPostsBean);
        }
        d dVar = this.f46825s;
        if (dVar != null) {
            dVar.a(this.f46824r.getPid());
        }
    }

    public int l(Object[] objArr) {
        try {
            this.f46823q = objArr;
            if (objArr != null && objArr.length != 0) {
                ForumBean.ForumPostsBean forumPostsBean = (ForumBean.ForumPostsBean) objArr[0];
                this.f46824r = forumPostsBean;
                j(forumPostsBean);
            }
            ForumBean.ForumPostsBean forumPostsBean2 = this.f46824r;
            if (forumPostsBean2 == null) {
                return 7;
            }
            int auth = forumPostsBean2.getAuth();
            if (auth == 0) {
                this.f46821o = 0;
            } else if (auth == 1) {
                this.f46821o = 1;
            } else if (auth == 2) {
                this.f46821o = 2;
            } else if (auth == 3) {
                this.f46821o = 3;
            } else if (auth != 99) {
                this.f46821o = 0;
            } else {
                this.f46821o = 99;
            }
            return n(this.f46821o);
        } catch (Exception e4) {
            e4.printStackTrace();
            return 7;
        }
    }

    public void m(d dVar) {
        this.f46825s = dVar;
    }

    public int n(int i2) {
        this.f46821o = i2;
        boolean z3 = false;
        if (!Arrays.asList(0, 2, 1, 3, 99).contains(Integer.valueOf(this.f46821o))) {
            this.f46821o = 0;
        }
        this.f46808b.setVisibility(0);
        this.f46810d.setVisibility(0);
        this.f46811e.setVisibility(0);
        this.f46812f.setVisibility(0);
        this.f46813g.setVisibility(0);
        this.f46814h.setVisibility(0);
        this.f46815i.setVisibility(0);
        this.f46812f.setVisibility(8);
        int i4 = this.f46821o;
        if (i4 == 0) {
            this.f46811e.setVisibility(8);
            this.f46814h.setVisibility(8);
        } else if (i4 == 1) {
            this.f46811e.setVisibility(8);
            this.f46814h.setVisibility(8);
        } else if (i4 != 2) {
            if (i4 == 3) {
                AccountBean accountData = AccountUtil_.getInstance_(this.f46807a).getAccountData();
                if (accountData != null && accountData.getUid() == this.f46824r.getUid()) {
                    z3 = true;
                }
                if (z3) {
                    this.f46813g.setVisibility(8);
                    return 5;
                }
            }
            return 6;
        } else {
            this.f46811e.setVisibility(8);
            this.f46813g.setVisibility(8);
        }
        return 4;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.extFuncCancel) {
            dismiss();
        }
        this.f46827u = view.getId();
        q();
    }

    public void p(View view, Object... objArr) {
        if (view == null) {
            return;
        }
        Activity activity = (Activity) view.getContext();
        l(objArr);
        setAnimationStyle(R.style.animation_image_pager_popup);
        activity.getResources().getDimension(R.dimen.mg_forum_ext_func_item_height);
        showAtLocation(((Activity) this.f46807a).findViewById(16908290), 17, 0, 0);
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 0.3f;
        activity.getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r(String str) {
        i2.a(this.f46807a).b(str);
    }
}
