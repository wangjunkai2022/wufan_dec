package com.join.mgps.adapter;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.StandardVideoViewJC;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.ForumPostsCopyActivity_;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.TextViewWithHyperlink;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ForumPostsAdapter extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    com.danikula.videocache.i f39501b;

    /* renamed from: d  reason: collision with root package name */
    private Context f39503d;

    /* renamed from: f  reason: collision with root package name */
    j0 f39505f;

    /* renamed from: h  reason: collision with root package name */
    LinearLayout.LayoutParams f39507h;

    /* renamed from: k  reason: collision with root package name */
    LinearLayout.LayoutParams f39510k;

    /* renamed from: l  reason: collision with root package name */
    Hashtable<String, k0> f39511l;

    /* renamed from: m  reason: collision with root package name */
    d0 f39512m;

    /* renamed from: o  reason: collision with root package name */
    h0 f39514o;

    /* renamed from: a  reason: collision with root package name */
    private final String f39500a = getClass().getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private String f39502c = "";

    /* renamed from: g  reason: collision with root package name */
    private Map<Integer, Integer> f39506g = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    int f39508i = 0;

    /* renamed from: j  reason: collision with root package name */
    int f39509j = 0;

    /* renamed from: n  reason: collision with root package name */
    boolean f39513n = false;

    /* renamed from: p  reason: collision with root package name */
    private i0 f39515p = null;

    /* renamed from: e  reason: collision with root package name */
    private List<u0> f39504e = new ArrayList();

    /* loaded from: classes3.dex */
    public enum ViewType {
        POST_HEADER,
        POST_HEADER1,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE,
        POST_VIDEO,
        POST_IMAGE_THUMBNAIL,
        POST_GAME,
        POST_GAME_RES_LINK,
        POST_FOOTER,
        COMMENT_HEADER,
        COMMENT_MESSAGE,
        COMMENT_IMAGE,
        COMMENT_MESSAGE_REPLY,
        EMPLOYEE_TAGS,
        POST_FOOTER1,
        BAIDUADBANNER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements TextViewWithHyperlink.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39516a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39517b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f39518c;

        a(int i2, int i4, String str) {
            this.f39516a = i2;
            this.f39517b = i4;
            this.f39518c = str;
        }

        @Override // com.join.mgps.customview.TextViewWithHyperlink.a
        public void a() {
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.k(this.f39516a, this.f39517b, this.f39518c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39520b;

        a0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f39522a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39523b;

        b(List list, int i2) {
            this.f39522a = list;
            this.f39523b = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String[] strArr = new String[this.f39522a.size()];
            this.f39522a.toArray(strArr);
            com.join.mgps.Util.i0.G0(view.getContext(), this.f39523b, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f39525b;

        /* renamed from: c  reason: collision with root package name */
        public View f39526c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39527d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39528e;

        /* renamed from: f  reason: collision with root package name */
        public View f39529f;

        /* renamed from: g  reason: collision with root package name */
        public View f39530g;

        b0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.f> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f39532a;

        c(SimpleDraweeView simpleDraweeView) {
            this.f39532a = simpleDraweeView;
        }

        @Override // com.facebook.drawee.controller.c
        public void b(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        public void c(String str) {
        }

        @Override // com.facebook.drawee.controller.c
        public void e(String str, Object obj) {
            SimpleDraweeView simpleDraweeView = this.f39532a;
            simpleDraweeView.setMinimumHeight(ForumPostsAdapter.this.I(simpleDraweeView.getContext()));
        }

        @Override // com.facebook.drawee.controller.c
        public void f(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        /* renamed from: g */
        public void d(String str, com.facebook.imagepipeline.image.f fVar, Animatable animatable) {
            try {
                ForumPostsAdapter.this.z0(str, this.f39532a, fVar);
                if (fVar != null) {
                    k0 k0Var = new k0();
                    k0Var.f39592a = fVar.a();
                    k0Var.f39593b = fVar.getHeight();
                    ForumPostsAdapter.this.l(str, k0Var);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39534b;

        c0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.f> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f39536a;

        d(SimpleDraweeView simpleDraweeView) {
            this.f39536a = simpleDraweeView;
        }

        @Override // com.facebook.drawee.controller.c
        public void b(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        public void c(String str) {
        }

        @Override // com.facebook.drawee.controller.c
        public void e(String str, Object obj) {
            SimpleDraweeView simpleDraweeView = this.f39536a;
            simpleDraweeView.setLayoutParams(ForumPostsAdapter.this.u(simpleDraweeView.getContext()));
        }

        @Override // com.facebook.drawee.controller.c
        public void f(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        /* renamed from: g */
        public void d(String str, com.facebook.imagepipeline.image.f fVar, Animatable animatable) {
            try {
                ForumPostsAdapter.this.d0(str, this.f39536a, fVar);
                if (fVar != null) {
                    k0 k0Var = new k0();
                    k0Var.f39592a = fVar.a();
                    k0Var.f39593b = fVar.getHeight();
                    ForumPostsAdapter.this.l(str, k0Var);
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
    public class d0 extends com.join.mgps.customview.h implements View.OnClickListener {

        /* renamed from: c  reason: collision with root package name */
        int f39538c;

        /* renamed from: d  reason: collision with root package name */
        int f39539d;

        /* renamed from: e  reason: collision with root package name */
        String f39540e;

        /* renamed from: f  reason: collision with root package name */
        View f39541f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d0.this.f39538c = view.getId();
                ForumPostsAdapter.this.f39512m.dismiss();
            }
        }

        public d0(Context context) {
            super(context);
            View inflate = LayoutInflater.from(this.f46887a).inflate(R.layout.mg_forum_forum_post_a_comment_reply_popwindow, (ViewGroup) null);
            int dimensionPixelSize = this.f46887a.getResources().getDimensionPixelSize(R.dimen.mg_forum_forum_post_a_comment_reply_popwindow_width);
            int dimensionPixelSize2 = this.f46887a.getResources().getDimensionPixelSize(R.dimen.mg_forum_forum_post_a_comment_reply_popwindow_height);
            setContentView(inflate);
            setWidth(dimensionPixelSize);
            setHeight(dimensionPixelSize2);
            setAnimationStyle(R.style.animationCommentReplyPop);
            g(inflate);
            setFocusable(false);
        }

        private void g(View view) {
            View findViewById = view.findViewById(R.id.resolve);
            View findViewById2 = view.findViewById(R.id.report);
            View findViewById3 = view.findViewById(R.id.reply);
            View findViewById4 = view.findViewById(R.id.delete);
            a aVar = new a();
            findViewById.setOnClickListener(aVar);
            findViewById2.setOnClickListener(aVar);
            findViewById3.setOnClickListener(aVar);
            findViewById4.setOnClickListener(aVar);
        }

        public int d() {
            return this.f39539d;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void dismiss() {
            super.dismiss();
            View view = this.f39541f;
            if (view != null) {
                view.setClickable(true);
                this.f39541f.setFocusable(true);
            }
            switch (this.f39538c) {
                case R.id.delete /* 2131297079 */:
                    if (ForumPostsAdapter.this.f39515p != null) {
                        ForumPostsAdapter.this.f39515p.d(this.f39539d);
                        return;
                    }
                    return;
                case R.id.reply /* 2131299607 */:
                    if (ForumPostsAdapter.this.f39515p != null) {
                        ForumPostsAdapter.this.f39515p.h(this.f39539d, this.f39540e);
                        return;
                    }
                    return;
                case R.id.report /* 2131299611 */:
                    if (ForumPostsAdapter.this.f39515p != null) {
                        ForumPostsAdapter.this.f39515p.l();
                        return;
                    }
                    return;
                case R.id.resolve /* 2131299619 */:
                    if (ForumPostsAdapter.this.f39515p != null) {
                        ForumPostsAdapter.this.f39515p.p(this.f39539d);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        public String e() {
            return this.f39540e;
        }

        public void f(int i2) {
            this.f39539d = i2;
        }

        public void h(String str) {
            this.f39540e = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void showAsDropDown(View view, int i2, int i4) {
            this.f39541f = view;
            super.showAsDropDown(view, i2, i4);
            b();
            this.f39538c = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f39544a;

        e(View view) {
            this.f39544a = view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            com.join.mgps.Util.u0.e("mPopWindow.setTouchInterceptor", motionEvent.toString());
            ForumPostsAdapter forumPostsAdapter = ForumPostsAdapter.this;
            if (forumPostsAdapter.m(forumPostsAdapter.f39512m, motionEvent) && !ForumPostsAdapter.this.n(this.f39544a, motionEvent)) {
                ForumPostsAdapter.this.f39513n = true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e0 extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        private Context f39546a;

        /* renamed from: b  reason: collision with root package name */
        private String f39547b;

        public e0(Context context, String str) {
            this.f39546a = context;
            this.f39547b = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(this.f39546a, this.f39547b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39549a;

        f(int i2) {
            this.f39549a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.b(this.f39549a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final Object f39551a;

        public f0(Object obj) {
            this.f39551a = obj;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2;
            int i4;
            int i5;
            Context context = view.getContext();
            DownloadTask downloadTask = (DownloadTask) this.f39551a;
            if (downloadTask != null) {
                String ver = downloadTask.getVer();
                String ver_name = downloadTask.getVer_name();
                downloadTask.getPackageName();
                downloadTask.getTipBeans();
                downloadTask.getSource_down_url();
                List<DownloadUrlBean> tp_down_url = downloadTask.getTp_down_url();
                int other_down_switch = downloadTask.getOther_down_switch();
                int cdn_down_switch = downloadTask.getCdn_down_switch();
                Object obj = this.f39551a;
                if (obj instanceof CollectionBeanSubBusiness) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) obj;
                    downloadTask = collectionBeanSubBusiness.getDownloadTask();
                    ver = collectionBeanSubBusiness.getVer();
                    if (collectionBeanSubBusiness.getPay_tag_info() != null) {
                        i5 = collectionBeanSubBusiness.getPay_tag_info().getPay_game_amount();
                        i2 = i5;
                    } else {
                        i5 = 0;
                        i2 = 0;
                    }
                    if (i5 > 0) {
                        n1.e0.o().p(collectionBeanSubBusiness.getCrc_sign_id());
                    }
                } else if (obj instanceof RecomDatabeanBusiness) {
                    AppBean game_info = ((RecomDatabeanBusiness) obj).getSub().get(0).getGame_info();
                    if (game_info.getPay_tag_info() != null) {
                        i4 = game_info.getPay_tag_info().getPay_game_amount();
                        i2 = i4;
                    } else {
                        i4 = 0;
                        i2 = 0;
                    }
                    if (i4 > 0) {
                        n1.e0.o().p(game_info.getCrc_sign_id());
                    }
                } else {
                    i2 = 0;
                }
                String plugin_num = downloadTask.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    IntentDateBean intentDateBean = new IntentDateBean();
                    intentDateBean.setLink_type(4);
                    intentDateBean.setLink_type_val(downloadTask.getUrl());
                    UtilsMy.h2(downloadTask, context);
                    IntentUtil.getInstance().intentActivity(context, intentDateBean);
                    return;
                }
                int status = downloadTask.getStatus();
                if (UtilsMy.n0(i2, downloadTask.getCrc_link_type_val()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status != 13) {
                        if (status != 2) {
                            if (status != 3) {
                                if (status == 5) {
                                    UtilsMy.c3(context, downloadTask);
                                    return;
                                } else if (status != 6) {
                                    if (status != 7) {
                                        if (status == 42) {
                                            if (!com.join.android.app.common.utils.f.j(context)) {
                                                com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                return;
                                            } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                return;
                                            } else {
                                                DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                                downloadTask.setId(B.getId());
                                                downloadTask.setVer(ver);
                                                downloadTask.setVer_name(ver_name);
                                                downloadTask.setUrl(B.getUrl());
                                                UtilsMy.w3(context, downloadTask);
                                                return;
                                            }
                                        } else if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    if (!com.join.android.app.common.utils.f.j(context)) {
                                                        com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                        return;
                                                    }
                                                    Object obj2 = this.f39551a;
                                                    if (obj2 instanceof CollectionBeanSubBusiness) {
                                                        CollectionBeanSubBusiness collectionBeanSubBusiness2 = (CollectionBeanSubBusiness) obj2;
                                                        if (UtilsMy.T0(context, downloadTask)) {
                                                            return;
                                                        }
                                                        if (collectionBeanSubBusiness2.getDown_status() == 5) {
                                                            UtilsMy.R0(context, downloadTask);
                                                            return;
                                                        }
                                                    } else if (obj2 instanceof RecomDatabeanBusiness) {
                                                        AppBean game_info2 = ((RecomDatabeanBusiness) obj2).getSub().get(0).getGame_info();
                                                        if (UtilsMy.T0(context, downloadTask)) {
                                                            return;
                                                        }
                                                        if (game_info2.getDown_status() == 5) {
                                                            UtilsMy.R0(context, downloadTask);
                                                            return;
                                                        }
                                                    }
                                                    if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                        return;
                                                    }
                                                    DownloadTask B2 = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                                    downloadTask.setId(B2.getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(ver);
                                                    downloadTask.setVer_name(ver_name);
                                                    downloadTask.setUrl(B2.getUrl());
                                                    com.php25.PDownload.d.c(downloadTask, context);
                                                    return;
                                                case 10:
                                                    break;
                                                case 11:
                                                    UtilsMy.j3(downloadTask, context);
                                                    return;
                                                default:
                                                    return;
                                            }
                                        }
                                    }
                                }
                            }
                            com.php25.PDownload.d.c(downloadTask, context);
                            return;
                        }
                        com.php25.PDownload.d.h(downloadTask);
                        return;
                    }
                    com.php25.PDownload.d.k(context, downloadTask);
                    return;
                }
                if (UtilsMy.n0(i2, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(context, downloadTask.getCrc_link_type_val());
                    return;
                }
                Object obj3 = this.f39551a;
                if (obj3 instanceof CollectionBeanSubBusiness) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness3 = (CollectionBeanSubBusiness) obj3;
                    UtilsMy.c1(downloadTask, collectionBeanSubBusiness3);
                    if (UtilsMy.T0(context, downloadTask)) {
                        return;
                    }
                    if (collectionBeanSubBusiness3.getDown_status() == 5) {
                        UtilsMy.R0(context, downloadTask);
                    } else {
                        UtilsMy.F0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                    }
                } else if (obj3 instanceof RecomDatabeanBusiness) {
                    AppBean game_info3 = ((RecomDatabeanBusiness) obj3).getSub().get(0).getGame_info();
                    UtilsMy.b1(downloadTask, game_info3);
                    if (UtilsMy.T0(context, downloadTask)) {
                        return;
                    }
                    if (game_info3.getDown_status() == 5) {
                        UtilsMy.R0(context, downloadTask);
                    } else {
                        UtilsMy.F0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.o();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public HListView f39554b;

        g0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0.a f39556a;

        h(u0.a aVar) {
            this.f39556a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean booleanValue;
            View view2;
            com.join.mgps.Util.u0.e("v.setOnClickListener");
            d0 d0Var = ForumPostsAdapter.this.f39512m;
            if (d0Var != null && (view2 = d0Var.f39541f) != null && view2 != view) {
                view2.setTag(Boolean.FALSE);
            }
            if (view.getTag() == null) {
                view.setTag(Boolean.TRUE);
                booleanValue = false;
            } else {
                booleanValue = ((Boolean) view.getTag()).booleanValue();
            }
            if (!booleanValue || ForumPostsAdapter.this.f39513n) {
                ForumPostsAdapter.this.D0(view, this.f39556a);
                view.setTag(Boolean.TRUE);
                ForumPostsAdapter.this.f39513n = false;
                return;
            }
            view.setTag(Boolean.FALSE);
        }
    }

    /* loaded from: classes3.dex */
    public class h0 extends com.join.mgps.customview.h implements View.OnClickListener {

        /* renamed from: o  reason: collision with root package name */
        public static final int f39558o = 1;

        /* renamed from: p  reason: collision with root package name */
        public static final int f39559p = 2;

        /* renamed from: q  reason: collision with root package name */
        public static final int f39560q = 3;

        /* renamed from: c  reason: collision with root package name */
        View f39561c;

        /* renamed from: d  reason: collision with root package name */
        View f39562d;

        /* renamed from: e  reason: collision with root package name */
        View f39563e;

        /* renamed from: f  reason: collision with root package name */
        View f39564f;

        /* renamed from: g  reason: collision with root package name */
        View f39565g;

        /* renamed from: h  reason: collision with root package name */
        View f39566h;

        /* renamed from: i  reason: collision with root package name */
        int f39567i;

        /* renamed from: j  reason: collision with root package name */
        int f39568j;

        /* renamed from: k  reason: collision with root package name */
        String f39569k;

        /* renamed from: l  reason: collision with root package name */
        String f39570l;

        /* renamed from: m  reason: collision with root package name */
        int f39571m;

        public h0(Context context) {
            super(context);
            c();
            k();
        }

        private void k() {
            View inflate = LayoutInflater.from(this.f46887a).inflate(R.layout.mg_forum_popupwindow_layout, (ViewGroup) null);
            this.f39561c = inflate.findViewById(R.id.btn_forum_comment_delete);
            this.f39562d = inflate.findViewById(R.id.btn_forum_comment_copy);
            this.f39563e = inflate.findViewById(R.id.divider_forum_comment_1);
            this.f39564f = inflate.findViewById(R.id.btn_forum_comment);
            this.f39565g = inflate.findViewById(R.id.divider_2);
            this.f39566h = inflate.findViewById(R.id.btn_forum_report);
            this.f39561c.setOnClickListener(this);
            this.f39562d.setOnClickListener(this);
            this.f39564f.setOnClickListener(this);
            this.f39566h.setOnClickListener(this);
            setContentView(inflate);
            setWidth(-2);
            setHeight(-2);
        }

        public void A(int i2) {
            this.f39568j = i2;
        }

        void c() {
            setAnimationStyle(0);
            setFocusable(false);
        }

        public int d() {
            return this.f39567i;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void dismiss() {
            super.dismiss();
            this.f39567i = 0;
            this.f39568j = 0;
            this.f39569k = "";
            this.f39570l = "";
        }

        public View e() {
            return this.f39562d;
        }

        public View f() {
            return this.f39561c;
        }

        public int g() {
            return this.f39571m;
        }

        public String h() {
            return this.f39570l;
        }

        public String i() {
            return this.f39569k;
        }

        public int j() {
            return this.f39568j;
        }

        void l() {
            if (ForumPostsAdapter.this.f39515p == null) {
                return;
            }
            int i2 = this.f39571m;
            if (i2 == 1) {
                ForumPostsAdapter.this.f39515p.h(this.f39567i, this.f39569k);
            } else if (i2 == 2) {
                ForumPostsAdapter.this.f39515p.k(this.f39567i, this.f39568j, this.f39569k);
            }
        }

        void m() {
            String charSequence;
            if (ForumPostsAdapter.this.f39515p == null) {
                return;
            }
            if (Build.VERSION.SDK_INT > 11) {
                ClipboardManager clipboardManager = (ClipboardManager) this.f46887a.getSystemService("clipboard");
                clipboardManager.setPrimaryClip(ClipData.newPlainText("wufan", this.f39570l));
                charSequence = clipboardManager.getText().toString();
            } else {
                android.text.ClipboardManager clipboardManager2 = (android.text.ClipboardManager) this.f46887a.getSystemService("clipboard");
                clipboardManager2.setText(this.f39570l);
                charSequence = clipboardManager2.getText().toString();
            }
            if (charSequence.equals(this.f39570l.toString())) {
                com.join.mgps.Util.i2.a(this.f46887a).b("已复制到剪贴板！");
            }
        }

        void n() {
            if (ForumPostsAdapter.this.f39515p == null) {
                return;
            }
            int i2 = this.f39571m;
            if (i2 == 1) {
                ForumPostsAdapter.this.f39515p.d(this.f39567i);
            } else if (i2 == 2) {
                ForumPostsAdapter.this.f39515p.g(this.f39568j);
            }
        }

        void o() {
            if (ForumPostsAdapter.this.f39515p == null) {
                return;
            }
            int i2 = this.f39571m;
            if (i2 == 1) {
                ForumPostsAdapter.this.f39515p.j(this.f39567i);
            } else if (i2 == 2) {
                ForumPostsAdapter.this.f39515p.f(this.f39568j);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.btn_forum_comment /* 2131296727 */:
                    l();
                    break;
                case R.id.btn_forum_comment_copy /* 2131296728 */:
                    m();
                    break;
                case R.id.btn_forum_comment_delete /* 2131296729 */:
                    n();
                    break;
                case R.id.btn_forum_report /* 2131296730 */:
                    o();
                    break;
            }
            dismiss();
        }

        public void p() {
            View view = this.f39561c;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = this.f39564f;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            View view3 = this.f39566h;
            if (view3 != null) {
                view3.setVisibility(0);
            }
        }

        public void q(int i2) {
            this.f39567i = i2;
        }

        public void r(int i2) {
            View view = this.f39564f;
            if (view != null) {
                view.setVisibility(i2);
            }
        }

        public void s(View view) {
            this.f39562d = view;
        }

        @Override // com.join.mgps.customview.h, android.widget.PopupWindow
        public void showAsDropDown(View view) {
            showAsDropDown(view, 0, (view.getMeasuredHeight() * (-1)) - this.f46887a.getResources().getDimensionPixelSize(R.dimen.mg_forum_popupwindow_height));
            b();
        }

        public void t(int i2) {
            View view = this.f39562d;
            if (view != null) {
                view.setVisibility(i2);
            }
            if (i2 == 0) {
                this.f39562d.setVisibility(0);
            } else {
                this.f39562d.setVisibility(8);
            }
        }

        public void u(View view) {
            this.f39561c = view;
        }

        public void v(int i2) {
            View view = this.f39561c;
            if (view != null) {
                view.setVisibility(i2);
            }
            if (i2 == 0) {
                this.f39563e.setVisibility(0);
            } else {
                this.f39563e.setVisibility(8);
            }
        }

        public void w(int i2) {
            this.f39571m = i2;
        }

        public void x(String str) {
            this.f39570l = str;
        }

        public void y(String str) {
            this.f39569k = str;
        }

        void z(int i2) {
            View view = this.f39566h;
            if (view != null) {
                view.setVisibility(i2);
            }
            if (i2 == 0) {
                this.f39565g.setVisibility(0);
            } else {
                this.f39565g.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0.c f39573a;

        i(u0.c cVar) {
            this.f39573a = cVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.n(view, this.f39573a.f39710a);
            }
            ForumPostsAdapter forumPostsAdapter = ForumPostsAdapter.this;
            u0.c cVar = this.f39573a;
            forumPostsAdapter.C0(view, 1, cVar.f39715f, cVar.f39714e, cVar.f39710a, 0, cVar.f39712c, cVar.f39711b);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface i0 {
        void a(int i2);

        void b(int i2);

        void c(int i2);

        void d(int i2);

        void e(String str);

        void f(int i2);

        void g(int i2);

        void h(int i2, String str);

        void i(View view, int i2);

        void j(int i2);

        void k(int i2, int i4, String str);

        void l();

        void m(int i2);

        void n(View view, int i2);

        void o();

        void p(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39575a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39576b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f39577c;

        j(int i2, int i4, String str) {
            this.f39575a = i2;
            this.f39576b = i4;
            this.f39577c = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.k(this.f39575a, this.f39576b, this.f39577c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f39587a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f39588b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f39589c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f39590d;

        k(ForumBean.GameInfo gameInfo, DownloadTask downloadTask, String str, String str2) {
            this.f39587a = gameInfo;
            this.f39588b = downloadTask;
            this.f39589c = str;
            this.f39590d = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String plugin_num = this.f39587a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f39587a.getGame_down_url_remote());
                UtilsMy.h2(this.f39588b, ForumPostsAdapter.this.f39503d);
                IntentUtil.getInstance().intentActivity(ForumPostsAdapter.this.f39503d, intentDateBean);
                return;
            }
            Context context = view.getContext();
            com.papa.sim.statistic.p.l(context).p0(this.f39589c, this.f39590d, AccountUtil_.getInstance_(context).getUid());
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.e(this.f39590d);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class k0 {

        /* renamed from: a  reason: collision with root package name */
        public int f39592a;

        /* renamed from: b  reason: collision with root package name */
        public int f39593b;

        public k0() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39595a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f39596b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f39597c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f39598d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f39599e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f39600f;

        l(int i2, boolean z3, boolean z4, int i4, String str, String str2) {
            this.f39595a = i2;
            this.f39596b = z3;
            this.f39597c = z4;
            this.f39598d = i4;
            this.f39599e = str;
            this.f39600f = str2;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.i(view, this.f39595a);
            }
            ForumPostsAdapter.this.C0(view, 2, this.f39596b, this.f39597c, this.f39595a, this.f39598d, this.f39599e, this.f39600f);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39602b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39603c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39604d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39605e;

        l0() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f39607a;

        m(ForumBean.GameInfo gameInfo) {
            this.f39607a = gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.I0(view.getContext(), this.f39607a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39609b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39610c;

        /* renamed from: d  reason: collision with root package name */
        public Button f39611d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39612e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39613f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f39614g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f39615h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f39616i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f39617j;

        /* renamed from: k  reason: collision with root package name */
        public ProgressBar f39618k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f39619l;

        /* renamed from: m  reason: collision with root package name */
        public View f39620m;

        /* renamed from: n  reason: collision with root package name */
        public View f39621n;

        m0() {
            super();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39623a;

        n(String str) {
            this.f39623a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.e(this.f39623a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39625b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39626c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39627d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39628e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39629f;

        /* renamed from: g  reason: collision with root package name */
        public View f39630g;

        /* renamed from: h  reason: collision with root package name */
        public Button f39631h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f39632i;

        /* renamed from: j  reason: collision with root package name */
        public RelativeLayout f39633j;

        /* renamed from: k  reason: collision with root package name */
        public ImageView f39634k;

        /* renamed from: l  reason: collision with root package name */
        public VipView f39635l;

        /* renamed from: m  reason: collision with root package name */
        public ImageView f39636m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f39637n;

        /* renamed from: o  reason: collision with root package name */
        public TextView f39638o;

        /* renamed from: p  reason: collision with root package name */
        public TextView f39639p;

        /* renamed from: q  reason: collision with root package name */
        public TextView f39640q;

        /* renamed from: r  reason: collision with root package name */
        public View f39641r;

        n0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39643a;

        o(String str) {
            this.f39643a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int parseInt = Integer.parseInt(this.f39643a);
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.c(parseInt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39645b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39646c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39647d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f39648e;

        /* renamed from: f  reason: collision with root package name */
        public View f39649f;

        /* renamed from: g  reason: collision with root package name */
        public Button f39650g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f39651h;

        /* renamed from: i  reason: collision with root package name */
        public RelativeLayout f39652i;

        /* renamed from: j  reason: collision with root package name */
        public ImageView f39653j;

        /* renamed from: k  reason: collision with root package name */
        public VipView f39654k;

        /* renamed from: l  reason: collision with root package name */
        public ImageView f39655l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f39656m;

        o0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39658a;

        p(int i2) {
            this.f39658a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumGroupActivity(view.getContext(), this.f39658a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39660b;

        /* renamed from: c  reason: collision with root package name */
        public RelativeLayout f39661c;

        p0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39663a;

        q(int i2) {
            this.f39663a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39663a).start();
            String uid = AccountUtil_.getInstance_(view.getContext()).getUid();
            if (TextUtils.isEmpty(uid)) {
                return;
            }
            if (uid.equals(this.f39663a + "") || ForumPostsAdapter.this.f39515p == null) {
                return;
            }
            ForumPostsAdapter.this.f39515p.m(this.f39663a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39665b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39666c;

        q0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f39668a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f39669b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f39670c;

        r(String str, String str2, ForumBean.GameInfo gameInfo) {
            this.f39668a = str;
            this.f39669b = str2;
            this.f39670c = gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            com.papa.sim.statistic.p.l(context).q0(this.f39668a, this.f39669b, AccountUtil_.getInstance_(context).getUid());
            com.join.mgps.Util.i0.J0(view.getContext(), this.f39670c, 13203);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public TextView f39672b;

        r0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0.i f39674a;

        s(u0.i iVar) {
            this.f39674a = iVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39674a.f39769l).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public Button f39676b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39677c;

        s0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0.h f39679a;

        t(u0.h hVar) {
            this.f39679a = hVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39679a.f39739b).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t0 extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public ImageView f39681b;

        /* renamed from: c  reason: collision with root package name */
        public SimpleDraweeView f39682c;

        /* renamed from: d  reason: collision with root package name */
        public StandardVideoViewJC f39683d;

        t0() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39685a;

        u(int i2) {
            this.f39685a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.findViewById(R.id.forum_post_praise_icon).startAnimation(AnimationUtils.loadAnimation(ForumPostsAdapter.this.f39503d, R.anim.scale_reset));
            if (ForumPostsAdapter.this.f39515p != null) {
                ForumPostsAdapter.this.f39515p.a(this.f39685a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class u0 {

        /* renamed from: a  reason: collision with root package name */
        ViewType f39687a;

        /* renamed from: b  reason: collision with root package name */
        Object f39688b;

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39689a;

            /* renamed from: b  reason: collision with root package name */
            public int f39690b;

            /* renamed from: c  reason: collision with root package name */
            public int f39691c;

            /* renamed from: d  reason: collision with root package name */
            public String f39692d;

            /* renamed from: e  reason: collision with root package name */
            public String f39693e;

            /* renamed from: f  reason: collision with root package name */
            public long f39694f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39695g;

            /* renamed from: h  reason: collision with root package name */
            public int f39696h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f39697i;

            /* renamed from: j  reason: collision with root package name */
            public boolean f39698j;

            /* renamed from: k  reason: collision with root package name */
            public int f39699k;

            /* renamed from: l  reason: collision with root package name */
            public boolean f39700l;

            /* renamed from: m  reason: collision with root package name */
            public boolean f39701m;

            /* renamed from: n  reason: collision with root package name */
            public boolean f39702n;

            /* renamed from: o  reason: collision with root package name */
            public int f39703o;

            /* renamed from: p  reason: collision with root package name */
            public int f39704p;

            /* renamed from: q  reason: collision with root package name */
            public boolean f39705q;

            /* renamed from: r  reason: collision with root package name */
            public String f39706r;

            public a() {
            }

            public a(boolean z3, int i2, int i4, String str, String str2, long j4, boolean z4, int i5, boolean z5, boolean z6, int i6, boolean z7, boolean z8, boolean z9, int i7, int i8, boolean z10, String str3) {
                this.f39689a = z3;
                this.f39690b = i2;
                this.f39691c = i4;
                this.f39692d = str;
                this.f39693e = str2;
                this.f39694f = j4;
                this.f39695g = z4;
                this.f39696h = i5;
                this.f39697i = z5;
                this.f39698j = z6;
                this.f39699k = i6;
                this.f39700l = z7;
                this.f39701m = z8;
                this.f39702n = z9;
                this.f39703o = i7;
                this.f39704p = i8;
                this.f39705q = z10;
                this.f39706r = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public String f39707a;

            /* renamed from: b  reason: collision with root package name */
            public int f39708b;

            /* renamed from: c  reason: collision with root package name */
            public List<String> f39709c;

            public b() {
            }

            public b(String str, int i2, List<String> list) {
                this.f39707a = str;
                this.f39708b = i2;
                this.f39709c = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f39710a;

            /* renamed from: b  reason: collision with root package name */
            public String f39711b;

            /* renamed from: c  reason: collision with root package name */
            public String f39712c;

            /* renamed from: d  reason: collision with root package name */
            public int f39713d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39714e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f39715f;

            public c() {
            }

            public c(int i2, String str, String str2, int i4, boolean z3, boolean z4) {
                this.f39710a = i2;
                this.f39711b = str;
                this.f39712c = str2;
                this.f39713d = i4;
                this.f39714e = z3;
                this.f39715f = z4;
            }
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            public int f39716a;

            /* renamed from: b  reason: collision with root package name */
            public ForumBean.ForumCommentBean f39717b;

            /* renamed from: c  reason: collision with root package name */
            public int f39718c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f39719d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39720e;

            /* renamed from: f  reason: collision with root package name */
            public int f39721f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39722g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39723h;

            public d(int i2, ForumBean.ForumCommentBean forumCommentBean, int i4, boolean z3, boolean z4) {
                this.f39716a = i2;
                this.f39717b = forumCommentBean;
                this.f39718c = i4;
                this.f39719d = z3;
                this.f39720e = z4;
            }
        }

        /* loaded from: classes3.dex */
        public static class e {

            /* renamed from: a  reason: collision with root package name */
            public List<RecommendLabelTag> f39724a;

            /* renamed from: b  reason: collision with root package name */
            public int f39725b;

            /* renamed from: c  reason: collision with root package name */
            public String f39726c;

            public e(List<RecommendLabelTag> list, int i2, String str) {
                this.f39724a = list;
                this.f39725b = i2;
                this.f39726c = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class f {

            /* renamed from: a  reason: collision with root package name */
            public int f39727a;

            /* renamed from: b  reason: collision with root package name */
            public String f39728b;

            /* renamed from: c  reason: collision with root package name */
            public int f39729c;

            /* renamed from: d  reason: collision with root package name */
            public int f39730d;

            /* renamed from: e  reason: collision with root package name */
            public int f39731e;

            /* renamed from: f  reason: collision with root package name */
            public int f39732f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39733g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39734h;

            public f() {
            }

            public f(int i2, int i4, String str, int i5, int i6, int i7, boolean z3, boolean z4) {
                this.f39727a = i2;
                this.f39732f = i4;
                this.f39728b = str;
                this.f39729c = i5;
                this.f39730d = i6;
                this.f39731e = i7;
                this.f39733g = z3;
                this.f39734h = z4;
            }
        }

        /* loaded from: classes3.dex */
        public static class g {

            /* renamed from: a  reason: collision with root package name */
            public String f39735a;

            /* renamed from: b  reason: collision with root package name */
            public ForumBean.GameInfo f39736b;

            /* renamed from: c  reason: collision with root package name */
            public String f39737c;

            public g(String str, ForumBean.GameInfo gameInfo, String str2) {
                this.f39735a = str;
                this.f39736b = gameInfo;
                this.f39737c = str2;
            }
        }

        /* loaded from: classes3.dex */
        public static class h {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39738a;

            /* renamed from: b  reason: collision with root package name */
            public int f39739b;

            /* renamed from: c  reason: collision with root package name */
            public String f39740c;

            /* renamed from: d  reason: collision with root package name */
            public String f39741d;

            /* renamed from: e  reason: collision with root package name */
            public long f39742e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f39743f;

            /* renamed from: g  reason: collision with root package name */
            public int f39744g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39745h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f39746i;

            /* renamed from: j  reason: collision with root package name */
            public int f39747j;

            /* renamed from: k  reason: collision with root package name */
            public int f39748k;

            /* renamed from: l  reason: collision with root package name */
            public int f39749l;

            /* renamed from: m  reason: collision with root package name */
            public String f39750m;

            /* renamed from: n  reason: collision with root package name */
            public String f39751n;

            /* renamed from: o  reason: collision with root package name */
            public boolean f39752o;

            /* renamed from: p  reason: collision with root package name */
            public String f39753p;

            /* renamed from: q  reason: collision with root package name */
            public String f39754q;

            /* renamed from: r  reason: collision with root package name */
            public int f39755r;

            /* renamed from: s  reason: collision with root package name */
            public boolean f39756s;

            /* renamed from: t  reason: collision with root package name */
            public String f39757t;

            public h() {
            }

            public h(boolean z3, int i2, String str, String str2, long j4, boolean z4, int i4, boolean z5, boolean z6, int i5, int i6, int i7, String str3, String str4, boolean z7, String str5, String str6, int i8, boolean z8, String str7) {
                this.f39738a = z3;
                this.f39739b = i2;
                this.f39740c = str;
                this.f39741d = str2;
                this.f39742e = j4;
                this.f39743f = z4;
                this.f39744g = i4;
                this.f39745h = z5;
                this.f39746i = z6;
                this.f39747j = i5;
                this.f39748k = i6;
                this.f39749l = i7;
                this.f39750m = str3;
                this.f39751n = str4;
                this.f39752o = z7;
                this.f39753p = str5;
                this.f39754q = str6;
                this.f39755r = i8;
                this.f39756s = z8;
                this.f39757t = str7;
            }
        }

        /* loaded from: classes3.dex */
        public static class i {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39758a;

            /* renamed from: b  reason: collision with root package name */
            public String f39759b;

            /* renamed from: c  reason: collision with root package name */
            public String f39760c;

            /* renamed from: d  reason: collision with root package name */
            public long f39761d;

            /* renamed from: e  reason: collision with root package name */
            public boolean f39762e;

            /* renamed from: f  reason: collision with root package name */
            public int f39763f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f39764g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f39765h;

            /* renamed from: i  reason: collision with root package name */
            public int f39766i;

            /* renamed from: j  reason: collision with root package name */
            public int f39767j;

            /* renamed from: k  reason: collision with root package name */
            public int f39768k;

            /* renamed from: l  reason: collision with root package name */
            public int f39769l;

            /* renamed from: m  reason: collision with root package name */
            public String f39770m;

            /* renamed from: n  reason: collision with root package name */
            public String f39771n;

            public i() {
            }

            public i(boolean z3, String str, String str2, long j4, boolean z4, int i2, boolean z5, boolean z6, int i4, int i5, int i6, String str3, String str4, int i7) {
                this.f39758a = z3;
                this.f39759b = str;
                this.f39760c = str2;
                this.f39761d = j4;
                this.f39762e = z4;
                this.f39763f = i2;
                this.f39764g = z5;
                this.f39765h = z6;
                this.f39766i = i4;
                this.f39767j = i5;
                this.f39768k = i6;
                this.f39770m = str3;
                this.f39771n = str4;
                this.f39769l = i7;
            }
        }

        /* loaded from: classes3.dex */
        public static class j {

            /* renamed from: a  reason: collision with root package name */
            public String f39772a;

            /* renamed from: b  reason: collision with root package name */
            int f39773b;

            /* renamed from: c  reason: collision with root package name */
            List<String> f39774c;

            public j() {
            }

            public j(String str, int i2, List<String> list) {
                this.f39772a = str;
                this.f39773b = i2;
                this.f39774c = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class k {

            /* renamed from: a  reason: collision with root package name */
            public List<String> f39775a;

            /* renamed from: b  reason: collision with root package name */
            List<String> f39776b;

            public k() {
            }

            public k(List<String> list, List<String> list2) {
                this.f39775a = list;
                this.f39776b = list2;
            }
        }

        /* loaded from: classes3.dex */
        public static class l {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39777a;

            /* renamed from: b  reason: collision with root package name */
            public SpannableStringBuilder f39778b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f39779c;

            /* renamed from: d  reason: collision with root package name */
            public String f39780d;

            /* renamed from: e  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39781e;

            public l() {
            }

            public l(boolean z3, SpannableStringBuilder spannableStringBuilder, boolean z4, String str, List<ForumBean.ForumPostsBean.TagInfo> list) {
                this.f39777a = z3;
                this.f39778b = spannableStringBuilder;
                this.f39779c = z4;
                this.f39780d = str;
                this.f39781e = list;
            }

            public l(boolean z3, SpannableStringBuilder spannableStringBuilder, List<ForumBean.ForumPostsBean.TagInfo> list) {
                this.f39777a = z3;
                this.f39778b = spannableStringBuilder;
                this.f39781e = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class m {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39782a;

            /* renamed from: b  reason: collision with root package name */
            public SpannableStringBuilder f39783b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f39784c;

            /* renamed from: d  reason: collision with root package name */
            public String f39785d;

            /* renamed from: e  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39786e;

            public m(boolean z3, SpannableStringBuilder spannableStringBuilder, boolean z4, String str, List<ForumBean.ForumPostsBean.TagInfo> list) {
                this.f39782a = z3;
                this.f39783b = spannableStringBuilder;
                this.f39784c = z4;
                this.f39785d = str;
                this.f39786e = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class n {

            /* renamed from: a  reason: collision with root package name */
            public boolean f39787a;

            /* renamed from: b  reason: collision with root package name */
            public String f39788b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f39789c;

            /* renamed from: d  reason: collision with root package name */
            public String f39790d;

            /* renamed from: e  reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f39791e;

            /* renamed from: f  reason: collision with root package name */
            public List<RecommendLabelTag> f39792f;

            /* renamed from: g  reason: collision with root package name */
            public int f39793g;

            /* renamed from: h  reason: collision with root package name */
            public String f39794h;

            public n() {
            }

            public n(boolean z3, String str, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, List<RecommendLabelTag> list2, int i2, String str3) {
                this.f39787a = z3;
                this.f39788b = str;
                this.f39789c = z4;
                this.f39790d = str2;
                this.f39791e = list;
                this.f39792f = list2;
                this.f39793g = i2;
                this.f39794h = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class o {

            /* renamed from: a  reason: collision with root package name */
            public String f39795a;

            /* renamed from: b  reason: collision with root package name */
            public String f39796b;

            /* renamed from: c  reason: collision with root package name */
            public String f39797c;

            public o(String str, String str2, String str3) {
                this.f39795a = str;
                this.f39796b = str2;
                this.f39797c = str3;
            }
        }

        public u0() {
        }

        public Object a() {
            return this.f39688b;
        }

        public ViewType b() {
            return this.f39687a;
        }

        public void c(Object obj) {
            this.f39688b = obj;
        }

        public void d(ViewType viewType) {
            this.f39687a = viewType;
        }

        public u0(ViewType viewType, Object obj) {
            this.f39687a = viewType;
            this.f39688b = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.join.mgps.dialog.b0 f39799a;

            a(com.join.mgps.dialog.b0 b0Var) {
                this.f39799a = b0Var;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsCopyActivity_.D0(ForumPostsAdapter.this.f39503d).a(ForumPostsAdapter.this.f39502c).start();
                this.f39799a.dismiss();
            }
        }

        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.d2.h(ForumPostsAdapter.this.f39502c)) {
                return;
            }
            com.join.mgps.dialog.b0 b0Var = new com.join.mgps.dialog.b0(ForumPostsAdapter.this.f39503d);
            b0Var.show();
            b0Var.a(new a(b0Var));
        }
    }

    /* loaded from: classes3.dex */
    class v0 {
        v0() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0.a f39802a;

        w(u0.a aVar) {
            this.f39802a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(this.f39802a.f39690b).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39804a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39805b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f39806c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ u0.d f39807d;

        x(int i2, int i4, int i5, u0.d dVar) {
            this.f39804a = i2;
            this.f39805b = i4;
            this.f39806c = i5;
            this.f39807d = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f39804a == 0) {
                return;
            }
            ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f39804a; i2 >= 0; i2--) {
                u0 u0Var = (u0) ForumPostsAdapter.this.f39504e.get(this.f39805b - i2);
                u0.d dVar = u0Var.b() == ViewType.COMMENT_MESSAGE_REPLY ? (u0.d) u0Var.a() : null;
                if (dVar != null && this.f39806c == dVar.f39716a) {
                    arrayList.addAll(dVar.f39717b.getReply_list());
                }
            }
            for (int i4 = 0; i4 <= this.f39804a; i4++) {
                ForumPostsAdapter.this.f39504e.remove(this.f39805b - i4);
            }
            forumCommentBean.setReply_list(arrayList);
            ForumPostsAdapter forumPostsAdapter = ForumPostsAdapter.this;
            int i5 = this.f39806c;
            u0.d dVar2 = this.f39807d;
            ForumPostsAdapter.this.f39504e.add(this.f39805b - this.f39804a, forumPostsAdapter.q(i5, forumCommentBean, dVar2.f39718c, true, dVar2.f39720e));
            ForumPostsAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39809a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f39810b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f39811c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ u0.d f39812d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f39813e;

        y(int i2, ForumBean.ForumCommentBean forumCommentBean, int i4, u0.d dVar, int i5) {
            this.f39809a = i2;
            this.f39810b = forumCommentBean;
            this.f39811c = i4;
            this.f39812d = dVar;
            this.f39813e = i5;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f39809a) {
                ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean(this.f39810b);
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
                ForumPostsAdapter forumPostsAdapter = ForumPostsAdapter.this;
                int i6 = this.f39811c;
                u0.d dVar = this.f39812d;
                u0 q3 = forumPostsAdapter.q(i6, forumCommentBean, dVar.f39718c, i4 == 0, dVar.f39720e);
                u0.d dVar2 = (u0.d) q3.a();
                dVar2.f39721f = i4;
                dVar2.f39722g = z3;
                dVar2.f39719d = i4 == 0;
                ForumPostsAdapter.this.e0(q3, !z3);
                ForumPostsAdapter.this.f39504e.add(this.f39813e + i4 + 1, q3);
                i4++;
                i2 = i5;
            }
            ForumPostsAdapter.this.f39504e.remove(this.f39813e);
            ForumPostsAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z extends v0 {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f39815b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f39816c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f39817d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f39818e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f39819f;

        /* renamed from: g  reason: collision with root package name */
        public Button f39820g;

        /* renamed from: h  reason: collision with root package name */
        public ImageView f39821h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f39822i;

        /* renamed from: j  reason: collision with root package name */
        public ImageView f39823j;

        /* renamed from: k  reason: collision with root package name */
        public VipView f39824k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f39825l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f39826m;

        /* renamed from: n  reason: collision with root package name */
        public View f39827n;

        z() {
            super();
        }
    }

    public ForumPostsAdapter(Context context) {
        this.f39503d = context;
        this.f39501b = P(context);
        R();
    }

    private void A0(View view, CharSequence charSequence) {
        if (view == null) {
            return;
        }
        if (view instanceof TextView) {
            ((TextView) view).setText(charSequence);
        } else if (view instanceof Button) {
            ((Button) view).setText(charSequence);
        }
    }

    private void B0(View view, int i2) {
        if (view == null) {
            return;
        }
        if (view instanceof TextView) {
            ((TextView) view).setTextColor(i2);
        } else if (view instanceof Button) {
            ((Button) view).setTextColor(i2);
        }
    }

    private View C(int i2, View view, ViewGroup viewGroup) {
        if (view != null) {
            l0 l0Var = (l0) view.getTag();
            return view;
        }
        l0 l0Var2 = new l0();
        View inflate = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_footer1, (ViewGroup) null);
        inflate.setTag(l0Var2);
        return inflate;
    }

    private View D(int i2, View view, ViewGroup viewGroup) {
        l0 l0Var;
        u0.f fVar;
        if (view != null) {
            l0Var = (l0) view.getTag();
        } else {
            l0Var = new l0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_footer, (ViewGroup) null);
            l0Var.f39602b = (TextView) view.findViewById(R.id.forum_name);
            l0Var.f39603c = (TextView) view.findViewById(R.id.forum_post_view);
            l0Var.f39604d = (TextView) view.findViewById(R.id.forum_post_commit);
            l0Var.f39605e = (TextView) view.findViewById(R.id.forum_post_praise);
            view.setTag(l0Var);
        }
        try {
            fVar = (u0.f) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (fVar == null) {
            return view;
        }
        if (fVar.f39734h) {
            view.findViewById(R.id.post_footer_divider).setVisibility(0);
        } else {
            view.findViewById(R.id.post_footer_divider).setVisibility(8);
        }
        l0Var.f39602b.setText(fVar.f39728b);
        if (com.join.mgps.Util.d2.h(fVar.f39728b)) {
            ((ViewGroup) l0Var.f39602b.getParent()).setVisibility(8);
        } else {
            ((ViewGroup) l0Var.f39602b.getParent()).setVisibility(0);
        }
        TextView textView = l0Var.f39603c;
        com.join.mgps.Util.i0.D1(textView, fVar.f39729c + "", "0");
        TextView textView2 = l0Var.f39604d;
        com.join.mgps.Util.i0.D1(textView2, fVar.f39730d + "", "0");
        W(view, fVar.f39733g, fVar.f39731e);
        ((View) l0Var.f39605e.getParent()).setOnClickListener(new u(fVar.f39727a));
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D0(View view, u0.a aVar) {
        if (aVar == null) {
            return;
        }
        d0 d0Var = this.f39512m;
        if (d0Var != null && d0Var.isShowing()) {
            this.f39512m.dismiss();
        }
        if (this.f39512m == null) {
            this.f39512m = new d0(this.f39503d);
        }
        this.f39512m.f(aVar.f39691c);
        this.f39512m.h(aVar.f39693e);
        int dimensionPixelSize = this.f39503d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forum_post_a_comment_reply_popwindow_width);
        int dimensionPixelSize2 = this.f39503d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forum_post_a_comment_reply_popwindow_height);
        int dimensionPixelSize3 = this.f39503d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forum_post_a_comment_reply_popwindow_btn_width) + this.f39503d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forum_post_a_comment_reply_popwindow_padding);
        if (aVar.f39700l) {
            this.f39512m.getContentView().findViewById(R.id.resolve).setVisibility(0);
        } else {
            this.f39512m.getContentView().findViewById(R.id.resolve).setVisibility(8);
            dimensionPixelSize -= dimensionPixelSize3;
        }
        if (aVar.f39701m) {
            this.f39512m.getContentView().findViewById(R.id.report).setVisibility(0);
        } else {
            this.f39512m.getContentView().findViewById(R.id.report).setVisibility(8);
            dimensionPixelSize -= dimensionPixelSize3;
        }
        if (aVar.f39702n) {
            this.f39512m.getContentView().findViewById(R.id.delete).setVisibility(0);
        } else {
            this.f39512m.getContentView().findViewById(R.id.delete).setVisibility(8);
            dimensionPixelSize -= dimensionPixelSize3;
        }
        this.f39512m.setWidth(dimensionPixelSize);
        int width = this.f39512m.getWidth();
        int height = this.f39512m.getHeight();
        int i2 = -width;
        if (height != 0) {
            dimensionPixelSize2 = height;
        }
        this.f39512m.showAsDropDown(view, i2, -((dimensionPixelSize2 / 2) + (view.getMeasuredHeight() / 2)));
        this.f39512m.setTouchInterceptor(new e(view));
    }

    private View E(int i2, View view, ViewGroup viewGroup) {
        final u0.g gVar;
        m0 m0Var = null;
        try {
            if (view != null) {
                if (view.getTag() instanceof m0) {
                    m0Var = (m0) view.getTag();
                }
            } else {
                m0 m0Var2 = new m0();
                view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_game_res_link, (ViewGroup) null);
                m0Var2.f39609b = (SimpleDraweeView) view.findViewById(R.id.mgListviewItemIcon);
                m0Var2.f39610c = (TextView) view.findViewById(R.id.mgListviewItemAppname);
                m0Var2.f39611d = (Button) view.findViewById(R.id.mgListviewItemInstall);
                m0Var2.f39612e = (TextView) view.findViewById(R.id.mgListviewItemSize);
                m0Var2.f39613f = (TextView) view.findViewById(R.id.mgListviewItemDescribe);
                m0Var2.f39614g = (LinearLayout) view.findViewById(R.id.linearLayout2);
                m0Var2.f39615h = (LinearLayout) view.findViewById(R.id.tipsLayout);
                m0Var2.f39616i = (TextView) view.findViewById(R.id.appSize);
                m0Var2.f39617j = (TextView) view.findViewById(R.id.loding_info);
                m0Var2.f39618k = (ProgressBar) view.findViewById(R.id.progressBar);
                m0Var2.f39619l = (ProgressBar) view.findViewById(R.id.progressBarZip);
                m0Var2.f39620m = view.findViewById(R.id.line);
                m0Var2.f39621n = view.findViewById(R.id.relateLayoutApp);
                view.setTag(m0Var2);
                m0Var = m0Var2;
            }
            gVar = (u0.g) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (gVar != null && m0Var != null) {
            ForumBean.GameInfo gameInfo = gVar.f39736b;
            gameInfo.getGame_id();
            m0Var.f39611d.setBackgroundResource(R.drawable.detial_fourm_butn_selector1);
            int dimensionPixelSize = this.f39503d.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) m0Var.f39611d.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            m0Var.f39611d.setLayoutParams(layoutParams);
            m0Var.f39611d.setText("打开");
            m0Var.f39610c.setText(gameInfo.getGame_name());
            MyImageLoader.j(m0Var.f39609b, gameInfo.getGame_ico_remote(), MyImageLoader.z(this.f39503d));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ForumPostsAdapter.this.T(gVar, view2);
                }
            };
            m0Var.f39611d.setOnClickListener(onClickListener);
            m0Var.f39621n.setOnClickListener(onClickListener);
            return view;
        }
        return view;
    }

    private void E0(m0 m0Var, int i2) {
        if (i2 == 0) {
            m0Var.f39614g.setVisibility(8);
            m0Var.f39618k.setVisibility(8);
            m0Var.f39619l.setVisibility(8);
            m0Var.f39615h.setVisibility(0);
            m0Var.f39613f.setVisibility(0);
            return;
        }
        m0Var.f39614g.setVisibility(0);
        if (i2 == 17) {
            m0Var.f39618k.setVisibility(8);
            m0Var.f39619l.setVisibility(0);
        } else {
            m0Var.f39619l.setVisibility(8);
            m0Var.f39618k.setVisibility(0);
        }
        m0Var.f39615h.setVisibility(8);
        m0Var.f39613f.setVisibility(8);
    }

    private View F(int i2, View view, ViewGroup viewGroup) {
        m0 m0Var;
        View view2;
        u0.g gVar;
        if (view != null) {
            m0Var = (m0) view.getTag();
            view2 = view;
        } else {
            m0Var = new m0();
            View inflate = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_game, (ViewGroup) null);
            m0Var.f39609b = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
            m0Var.f39610c = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
            m0Var.f39611d = (Button) inflate.findViewById(R.id.mgListviewItemInstall);
            m0Var.f39612e = (TextView) inflate.findViewById(R.id.mgListviewItemSize);
            m0Var.f39613f = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
            m0Var.f39614g = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
            m0Var.f39615h = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
            m0Var.f39616i = (TextView) inflate.findViewById(R.id.appSize);
            m0Var.f39617j = (TextView) inflate.findViewById(R.id.loding_info);
            m0Var.f39618k = (ProgressBar) inflate.findViewById(R.id.progressBar);
            m0Var.f39619l = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
            m0Var.f39620m = inflate.findViewById(R.id.line);
            m0Var.f39621n = inflate.findViewById(R.id.relateLayoutApp);
            inflate.setTag(m0Var);
            view2 = inflate;
        }
        try {
            gVar = (u0.g) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (gVar == null) {
            return view2;
        }
        ForumBean.GameInfo gameInfo = gVar.f39736b;
        String str = gVar.f39735a;
        String game_id = gameInfo.getGame_id();
        m0Var.f39611d.setBackgroundResource(R.drawable.detial_fourm_butn_selector1);
        int dimensionPixelSize = this.f39503d.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) m0Var.f39611d.getLayoutParams();
        layoutParams.width = dimensionPixelSize;
        m0Var.f39611d.setLayoutParams(layoutParams);
        m0Var.f39610c.setText(gameInfo.getGame_name());
        m0Var.f39613f.setText(gameInfo.getGame_desc());
        String game_size = gameInfo.getGame_size();
        MyImageLoader.j(m0Var.f39609b, gameInfo.getGame_ico_remote(), MyImageLoader.z(this.f39503d));
        List<ForumBean.GameInfo.GameTagInfo> game_tag_info = gameInfo.getGame_tag_info();
        E0(m0Var, 0);
        DownloadTask downloadTask = gameInfo.getDownloadTask();
        if (downloadTask != null) {
            l0(m0Var, downloadTask);
        } else {
            if (gameInfo.getPay_tag_info() != null && gameInfo.getPay_tag_info().getPay_game_amount() > 0 && !n1.e0.o().p(gameInfo.getGame_id())) {
                k0(m0Var.f39611d, gameInfo.getPay_tag_info().getPay_game_amount());
            } else {
                j0(m0Var.f39611d, gameInfo.getDown_status());
            }
            m0Var.f39611d.setOnClickListener(new k(gameInfo, downloadTask, str, game_id));
        }
        if ((ConstantIntEnum.H5.value() + "").equals(gameInfo.getPlugin_num())) {
            m0Var.f39615h.setVisibility(8);
            m0Var.f39611d.setBackgroundResource(R.drawable.recom_blue_butn);
            m0Var.f39611d.setText("开始");
            m0Var.f39611d.setTextColor(this.f39503d.getResources().getColor(R.color.app_blue_color));
        } else {
            m0Var.f39615h.setVisibility(0);
            com.join.mgps.Util.i0.c(game_tag_info, m0Var.f39615h, this.f39503d);
            UtilsMy.C(gameInfo.getScore(), gameInfo.getDown_count(), game_size, gameInfo.getSp_tag_info(), null, m0Var.f39615h, this.f39503d);
            UtilsMy.v2(gameInfo.getSp_tag_info(), view2, gameInfo.getDownloadTask());
        }
        m0Var.f39621n.setOnClickListener(new r(str, game_id, gameInfo));
        return view2;
    }

    private View G(int i2, View view, ViewGroup viewGroup) {
        n0 n0Var;
        u0.h hVar;
        if (view != null) {
            n0Var = (n0) view.getTag();
        } else {
            n0Var = new n0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_header1, (ViewGroup) null);
            n0Var.f39630g = view.findViewById(R.id.forum_post_divider);
            n0Var.f39625b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            n0Var.f39626c = (TextView) view.findViewById(R.id.forum_post_nickname);
            n0Var.f39627d = (TextView) view.findViewById(R.id.forum_post_add_time);
            n0Var.f39628e = (TextView) view.findViewById(R.id.topMoneyTx);
            n0Var.f39629f = (TextView) view.findViewById(R.id.forum_post_stickie);
            n0Var.f39632i = (ImageView) view.findViewById(R.id.forum_post_moderator);
            n0Var.f39636m = (ImageView) view.findViewById(R.id.officialIcon);
            n0Var.f39633j = (RelativeLayout) view.findViewById(R.id.forumExtFunc);
            n0Var.f39631h = (Button) view.findViewById(R.id.forum_post_host);
            n0Var.f39634k = (ImageView) view.findViewById(R.id.flagBestAnswer);
            n0Var.f39635l = (VipView) view.findViewById(R.id.vipFlag);
            n0Var.f39637n = (TextView) view.findViewById(R.id.copperTitleTv);
            n0Var.f39638o = (TextView) view.findViewById(R.id.groupName);
            n0Var.f39639p = (TextView) view.findViewById(R.id.moderator);
            n0Var.f39640q = (TextView) view.findViewById(R.id.member_honor);
            n0Var.f39641r = view.findViewById(R.id.groupParent);
            view.setTag(n0Var);
        }
        try {
            hVar = (u0.h) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (hVar == null) {
            return view;
        }
        try {
            n0Var.f39635l.setVipData(hVar.f39748k, hVar.f39749l);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (hVar.f39747j != 1) {
            n0Var.f39634k.setVisibility(8);
        } else {
            n0Var.f39634k.setVisibility(0);
        }
        if (hVar.f39738a) {
            n0Var.f39630g.setVisibility(8);
        } else {
            n0Var.f39630g.setVisibility(0);
        }
        n0Var.f39631h.setVisibility(0);
        n0Var.f39626c.setText(hVar.f39741d);
        n0Var.f39627d.setText(com.join.android.app.common.utils.c.a(hVar.f39742e * 1000));
        if (hVar.f39743f) {
            n0Var.f39629f.setVisibility(0);
        } else {
            n0Var.f39629f.setVisibility(8);
        }
        if (hVar.f39746i) {
            n0Var.f39636m.setVisibility(0);
        } else {
            n0Var.f39636m.setVisibility(8);
        }
        if (hVar.f39745h) {
            n0Var.f39626c.setTextColor(this.f39503d.getResources().getColor(R.color.app_blue_color));
            n0Var.f39632i.setVisibility(0);
        } else {
            UtilsMy.M2(this.f39503d, n0Var.f39626c, hVar.f39748k, hVar.f39749l, R.color.forum_nickname_color);
            n0Var.f39632i.setVisibility(8);
        }
        MyImageLoader.w(n0Var.f39625b, hVar.f39740c);
        n0Var.f39625b.setOnClickListener(new t(hVar));
        if (hVar.f39752o) {
            n0Var.f39639p.setVisibility(0);
        } else {
            n0Var.f39639p.setVisibility(8);
        }
        if (!TextUtils.isEmpty(hVar.f39753p)) {
            n0Var.f39640q.setVisibility(0);
            n0Var.f39640q.setText(hVar.f39753p);
        } else {
            n0Var.f39640q.setVisibility(8);
        }
        n0Var.f39638o.setText(hVar.f39754q);
        v0(n0Var.f39641r, hVar.f39755r);
        q0(view);
        n0Var.f39633j.setVisibility(8);
        t0(n0Var.f39633j, hVar.f39744g);
        com.join.mgps.Util.i0.S0(n0Var.f39625b, n0Var.f39626c, n0Var.f39627d);
        com.join.mgps.Util.i0.U0(n0Var.f39635l);
        String str = hVar.f39750m;
        String str2 = hVar.f39751n;
        if (n0Var.f39637n != null) {
            if (!TextUtils.isEmpty(str)) {
                n0Var.f39637n.setVisibility(0);
                n0Var.f39637n.setText(str);
                Drawable drawable = this.f39503d.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                n0Var.f39637n.setBackgroundDrawable(drawable);
            } else {
                n0Var.f39637n.setVisibility(8);
            }
        }
        if (hVar.f39756s) {
            TextView textView = n0Var.f39628e;
            textView.setText("赏" + hVar.f39757t + "铜板");
            n0Var.f39628e.setGravity(17);
            n0Var.f39628e.setVisibility(0);
        } else {
            n0Var.f39628e.setVisibility(8);
        }
        y0(n0Var.f39625b, hVar.f39739b);
        return view;
    }

    private View H(int i2, View view, ViewGroup viewGroup) {
        o0 o0Var;
        u0.i iVar;
        if (view != null) {
            o0Var = (o0) view.getTag();
        } else {
            o0Var = new o0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_header, (ViewGroup) null);
            o0Var.f39649f = view.findViewById(R.id.forum_post_divider);
            o0Var.f39645b = (SimpleDraweeView) view.findViewById(R.id.forum_post_avatar_src);
            o0Var.f39646c = (TextView) view.findViewById(R.id.forum_post_nickname);
            o0Var.f39647d = (TextView) view.findViewById(R.id.forum_post_add_time);
            o0Var.f39648e = (TextView) view.findViewById(R.id.forum_post_stickie);
            o0Var.f39651h = (ImageView) view.findViewById(R.id.forum_post_moderator);
            o0Var.f39655l = (ImageView) view.findViewById(R.id.officialIcon);
            o0Var.f39652i = (RelativeLayout) view.findViewById(R.id.forumExtFunc);
            o0Var.f39650g = (Button) view.findViewById(R.id.forum_post_host);
            o0Var.f39653j = (ImageView) view.findViewById(R.id.flagBestAnswer);
            o0Var.f39654k = (VipView) view.findViewById(R.id.vipFlag);
            o0Var.f39656m = (TextView) view.findViewById(R.id.copperTitleTv);
            view.setTag(o0Var);
        }
        try {
            iVar = (u0.i) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (iVar == null) {
            return view;
        }
        try {
            o0Var.f39654k.setVipData(iVar.f39767j, iVar.f39768k);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (iVar.f39766i != 1) {
            o0Var.f39653j.setVisibility(8);
        } else {
            o0Var.f39653j.setVisibility(0);
        }
        o0Var.f39652i.setVisibility(0);
        if (iVar.f39758a) {
            o0Var.f39649f.setVisibility(8);
        } else {
            o0Var.f39649f.setVisibility(0);
        }
        o0Var.f39650g.setVisibility(0);
        o0Var.f39646c.setText(iVar.f39760c);
        o0Var.f39647d.setText(com.join.android.app.common.utils.c.a(iVar.f39761d * 1000));
        if (iVar.f39762e) {
            o0Var.f39648e.setVisibility(0);
        } else {
            o0Var.f39648e.setVisibility(8);
        }
        if (iVar.f39765h) {
            o0Var.f39655l.setVisibility(0);
        } else {
            o0Var.f39655l.setVisibility(8);
        }
        if (iVar.f39764g) {
            o0Var.f39646c.setTextColor(this.f39503d.getResources().getColor(R.color.app_blue_color));
            o0Var.f39651h.setVisibility(0);
        } else {
            UtilsMy.M2(this.f39503d, o0Var.f39646c, iVar.f39767j, iVar.f39768k, R.color.forum_nickname_color);
            o0Var.f39651h.setVisibility(8);
        }
        MyImageLoader.w(o0Var.f39645b, iVar.f39759b);
        o0Var.f39645b.setOnClickListener(new s(iVar));
        q0(view);
        o0Var.f39652i.setVisibility(8);
        t0(o0Var.f39652i, iVar.f39763f);
        com.join.mgps.Util.i0.S0(o0Var.f39645b, o0Var.f39646c, o0Var.f39647d);
        com.join.mgps.Util.i0.U0(o0Var.f39654k);
        String str = iVar.f39770m;
        String str2 = iVar.f39771n;
        if (o0Var.f39656m != null) {
            if (!TextUtils.isEmpty(str)) {
                o0Var.f39656m.setVisibility(0);
                o0Var.f39656m.setText(str);
                Drawable drawable = this.f39503d.getResources().getDrawable(R.drawable.forum_post_host);
                if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                    str2 = "#2fccdf";
                }
                drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                o0Var.f39656m.setBackgroundDrawable(drawable);
            } else {
                o0Var.f39656m.setVisibility(8);
            }
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int I(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f39509j == 0) {
            Resources resources = context.getResources();
            this.f39509j = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.5f);
        }
        return this.f39509j;
    }

    private View J(int i2, View view, ViewGroup viewGroup) {
        p0 p0Var;
        u0.k kVar;
        if (view != null) {
            p0Var = (p0) view.getTag();
        } else {
            p0Var = new p0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_image_thumbnail, (ViewGroup) null);
            p0Var.f39661c = (RelativeLayout) view.findViewById(R.id.forum_post_media_container);
            p0Var.f39660b = (TextView) view.findViewById(R.id.images_count);
            view.setTag(p0Var);
        }
        try {
            kVar = (u0.k) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (kVar == null) {
            return view;
        }
        b0(p0Var.f39661c, kVar.f39775a, kVar.f39776b);
        return view;
    }

    private View K(int i2, View view, ViewGroup viewGroup) {
        q0 q0Var;
        u0.j jVar;
        if (view != null) {
            q0Var = (q0) view.getTag();
        } else {
            q0Var = new q0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_image, (ViewGroup) null);
            q0Var.f39665b = (SimpleDraweeView) view.findViewById(R.id.img);
            q0Var.f39666c = (TextView) view.findViewById(R.id.img_tag_gif);
            view.setTag(q0Var);
        }
        try {
            jVar = (u0.j) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (jVar == null) {
            return view;
        }
        Y(this.f39503d, jVar.f39774c.get(jVar.f39773b));
        k0 B = B(jVar.f39772a);
        if (B != null) {
            q0Var.f39665b.setLayoutParams(new RelativeLayout.LayoutParams(B.f39592a, B.f39593b));
            MyImageLoader.h(q0Var.f39665b, jVar.f39772a);
        } else {
            V(q0Var.f39665b, jVar.f39772a);
        }
        com.join.mgps.Util.i0.C1(q0Var.f39665b, jVar.f39773b, jVar.f39774c);
        return view;
    }

    private View L(int i2, View view, ViewGroup viewGroup) {
        r0 r0Var;
        u0.l lVar;
        if (view != null) {
            r0Var = (r0) view.getTag();
        } else {
            r0Var = new r0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_message, (ViewGroup) null);
            r0Var.f39672b = (TextView) view.findViewById(R.id.forum_post_message);
            view.setTag(r0Var);
        }
        try {
            lVar = (u0.l) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (lVar == null) {
            return view;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            r0Var.f39672b.setLetterSpacing(0.02f);
        }
        S(r0Var.f39672b);
        r0Var.f39672b.setTextSize(0, this.f39503d.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_message_size));
        r0Var.f39672b.setTextColor(this.f39503d.getResources().getColor(R.color.forum_post_detail_item_message));
        r0Var.f39672b.setLineSpacing(0.0f, 1.4f);
        r0Var.f39672b.setMovementMethod(LinkMovementMethod.getInstance());
        r0Var.f39672b.setMaxLines(Integer.MAX_VALUE);
        r0Var.f39672b.setOnClickListener(new v());
        i0(r0Var.f39672b, lVar.f39778b, lVar.f39777a, lVar.f39779c, lVar.f39780d, lVar.f39781e);
        q0(view);
        return view;
    }

    private View M(int i2, View view, ViewGroup viewGroup) {
        s0 s0Var;
        u0.n nVar;
        if (view != null) {
            s0Var = (s0) view.getTag();
        } else {
            s0Var = new s0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_subject, (ViewGroup) null);
            s0Var.f39676b = (Button) view.findViewById(R.id.forum_post_best);
            s0Var.f39677c = (TextView) view.findViewById(R.id.forum_post_subject);
            view.setTag(s0Var);
        }
        try {
            nVar = (u0.n) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (nVar == null) {
            return view;
        }
        s0Var.f39677c.setTextSize(0, this.f39503d.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_subject_size));
        s0Var.f39677c.setTypeface(Typeface.DEFAULT_BOLD);
        s0Var.f39677c.setMovementMethod(LinkMovementMethod.getInstance());
        g0(s0Var.f39677c, nVar.f39788b, nVar.f39787a, nVar.f39789c, nVar.f39790d, nVar.f39791e, nVar.f39792f, nVar.f39793g, nVar.f39794h);
        q0(view);
        return view;
    }

    private int N(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f39508i == 0) {
            Resources resources = context.getResources();
            this.f39508i = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f39508i;
    }

    private View O(int i2, View view, ViewGroup viewGroup) {
        t0 t0Var;
        u0.o oVar;
        if (view != null) {
            t0Var = (t0) view.getTag();
        } else {
            t0Var = new t0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_post_videojc, (ViewGroup) null);
            t0Var.f39683d = (StandardVideoViewJC) view.findViewById(R.id.videoPlayer);
            view.setTag(t0Var);
        }
        try {
            oVar = (u0.o) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (oVar == null) {
            return view;
        }
        int N = N(this.f39503d);
        String str = oVar.f39796b;
        String str2 = oVar.f39795a;
        if (t0Var.f39682c != null) {
            t0Var.f39682c.setLayoutParams(new RelativeLayout.LayoutParams(-1, N));
            t0Var.f39682c.setScaleType(ImageView.ScaleType.FIT_XY);
            MyImageLoader.h(t0Var.f39682c, str2);
            SimpleDraweeView simpleDraweeView = t0Var.f39682c;
            x0(simpleDraweeView, str, i2 + "");
        }
        StandardVideoViewJC standardVideoViewJC = t0Var.f39683d;
        if (standardVideoViewJC != null) {
            standardVideoViewJC.setMuteWhenPlay(false);
            t0Var.f39683d.setLayoutParams(new RelativeLayout.LayoutParams(-1, N));
            MyImageLoader.d(t0Var.f39683d.S0, R.drawable.video_bg, str2);
            com.danikula.videocache.i iVar = this.f39501b;
            if (iVar != null) {
                str = iVar.j(str);
            }
            t0Var.f39683d.setUp(str, 1, "", str2);
        }
        return view;
    }

    private void R() {
        if (this.f39507h == null) {
            this.f39507h = Q();
        }
    }

    private void S(TextView textView) {
        textView.setMovementMethod(com.join.mgps.Util.w.a());
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            int length = text.length();
            Spannable spannable = (Spannable) textView.getText();
            URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, length, URLSpan.class);
            if (uRLSpanArr.length == 0) {
                return;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
            for (URLSpan uRLSpan : uRLSpanArr) {
                String url = uRLSpan.getURL();
                if (url.indexOf("http://") == 0 || url.indexOf("https://") == 0) {
                    spannableStringBuilder.setSpan(new e0(textView.getContext(), url), spannable.getSpanStart(uRLSpan), spannable.getSpanEnd(uRLSpan), 17);
                }
            }
            textView.setText(spannableStringBuilder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T(u0.g gVar, View view) {
        if (TextUtils.isEmpty(gVar.f39737c)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(gVar.f39737c);
        IntentUtil.getInstance().intentActivity(this.f39503d, intentDateBean);
    }

    private void W(View view, boolean z3, int i2) {
        TextView textView = (TextView) view.findViewById(R.id.forum_post_praise);
        ImageView imageView = (ImageView) view.findViewById(R.id.forum_post_praise_icon);
        if (z3) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(i2 + "");
            return;
        }
        imageView.setImageResource(R.drawable.unlike);
        textView.setText(i2 + "");
    }

    private void Z(Context context, String str) {
        Integer[] i02 = com.join.mgps.Util.i0.i0(str);
        if (i02 != null) {
            k0 k0Var = new k0();
            int intValue = i02[0].intValue();
            int intValue2 = i02[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = (int) ((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) - (resources.getDisplayMetrics().density * 40.0f));
            k0Var.f39592a = dimensionPixelSize;
            k0Var.f39593b = (int) (dimensionPixelSize * 1.0f * ((intValue2 * 1.0f) / intValue));
            l(str, k0Var);
        }
    }

    private void a0(View view, u0.d dVar, boolean z3, int i2) {
        int i4;
        boolean z4;
        View view2;
        int i5;
        ForumBean.ForumCommentBean forumCommentBean;
        LinearLayout linearLayout;
        int i6;
        int i7 = dVar.f39716a;
        int i8 = dVar.f39721f;
        boolean z5 = dVar.f39722g;
        ForumBean.ForumCommentBean forumCommentBean2 = dVar.f39717b;
        List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean2.getReply_list();
        LinearLayout linearLayout2 = (LinearLayout) view;
        linearLayout2.removeAllViews();
        int size = reply_list.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size + 1) {
            if (i10 <= 3 || !z3) {
                View inflate = LayoutInflater.from(this.f39503d).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                inflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextViewWithHyperlink textViewWithHyperlink = (TextViewWithHyperlink) inflate.findViewById(R.id.comment_reply_content);
                TextView textView = (TextView) inflate.findViewById(R.id.comment_reply_more);
                if ((i10 != size || size <= 3) && !(i8 > 0 && z5 && i10 == size)) {
                    i4 = i8;
                    z4 = z5;
                    view2 = inflate;
                    i5 = i10;
                    if (i5 == 3 && z3 && size > 3) {
                        textViewWithHyperlink.setVisibility(8);
                        textView.setVisibility(0);
                        textView.setText(textView.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        forumCommentBean = forumCommentBean2;
                        view2.setOnClickListener(new y(size, forumCommentBean2, i7, dVar, i2));
                        linearLayout = linearLayout2;
                    } else {
                        forumCommentBean = forumCommentBean2;
                        LinearLayout linearLayout3 = linearLayout2;
                        if (i5 >= size || (i5 >= 3 && z3)) {
                            linearLayout = linearLayout3;
                        } else {
                            ForumBean.ForumCommentReplyBean forumCommentReplyBean = reply_list.get(i5);
                            String nickname = forumCommentReplyBean.getNickname();
                            String rnickname = forumCommentReplyBean.getRnickname();
                            if (forumCommentReplyBean.getRrid() == 0) {
                                rnickname = "";
                            }
                            String message = forumCommentReplyBean.getMessage();
                            textViewWithHyperlink.setVisibility(0);
                            textView.setVisibility(8);
                            if (forumCommentReplyBean.isOfficialAccount()) {
                                nickname = nickname + "#*#";
                            }
                            if (com.join.mgps.Util.d2.i(rnickname) && forumCommentReplyBean.isrOfficialAccount()) {
                                rnickname = rnickname + "#*#";
                            }
                            com.join.mgps.Util.i0.u1(textViewWithHyperlink, nickname, rnickname, message);
                            BannerBean jump_info = forumCommentReplyBean.getJump_info();
                            int rid = forumCommentReplyBean.getRid();
                            int uid = forumCommentReplyBean.getUid();
                            String nickname2 = forumCommentReplyBean.getNickname();
                            if (jump_info != null) {
                                textViewWithHyperlink.a(this.f39503d, jump_info.getTitle(), jump_info.getIntentDataBean(), new a(i7, rid, nickname2));
                            }
                            s0(view2, i7, rid, nickname2);
                            AccountBean accountData = AccountUtil_.getInstance_(this.f39503d).getAccountData();
                            int i11 = dVar.f39718c;
                            boolean z6 = dVar.f39720e;
                            boolean z7 = accountData != null && uid == accountData.getUid();
                            i6 = size;
                            r0(view2, i11 == 3 || i11 == 99 || z7 || z6, !z7, i7, rid, nickname2, forumCommentReplyBean.getMessage());
                            linearLayout = linearLayout3;
                            linearLayout.addView(view2);
                            i10 = i5 + 1;
                            linearLayout2 = linearLayout;
                            size = i6;
                            i8 = i4;
                            z5 = z4;
                            forumCommentBean2 = forumCommentBean;
                            i9 = 0;
                        }
                    }
                } else {
                    textViewWithHyperlink.setVisibility(8);
                    textView.setVisibility(i9);
                    textView.setText("收起");
                    int i12 = i8;
                    i4 = i8;
                    view2 = inflate;
                    z4 = z5;
                    i5 = i10;
                    view2.setOnClickListener(new x(i12, i2, i7, dVar));
                    forumCommentBean = forumCommentBean2;
                    linearLayout = linearLayout2;
                }
                i6 = size;
                linearLayout.addView(view2);
                i10 = i5 + 1;
                linearLayout2 = linearLayout;
                size = i6;
                i8 = i4;
                z5 = z4;
                forumCommentBean2 = forumCommentBean;
                i9 = 0;
            } else {
                i4 = i8;
                z4 = z5;
                forumCommentBean = forumCommentBean2;
                linearLayout = linearLayout2;
                i5 = i10;
            }
            i6 = size;
            i10 = i5 + 1;
            linearLayout2 = linearLayout;
            size = i6;
            i8 = i4;
            z5 = z4;
            forumCommentBean2 = forumCommentBean;
            i9 = 0;
        }
    }

    private void b0(RelativeLayout relativeLayout, List<String> list, List<String> list2) {
        if (list != null && list.size() != 0) {
            if (this.f39507h == null) {
                this.f39507h = Q();
            }
            TextView textView = (TextView) relativeLayout.findViewById(R.id.images_count);
            if (list.size() > 3) {
                textView.setVisibility(0);
                textView.setText("共" + list.size() + "张");
            } else {
                textView.setVisibility(8);
            }
            int i2 = (int) (this.f39503d.getResources().getDisplayMetrics().density * 6.0f);
            int[] iArr = {R.id.img_m_1, R.id.img_m_2, R.id.img_m_3};
            for (int i4 = 0; i4 < 3; i4++) {
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) relativeLayout.findViewById(iArr[i4]);
                LinearLayout.LayoutParams layoutParams = this.f39507h;
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
                if (i4 < list.size()) {
                    String str = list.get(i4);
                    simpleDraweeView.setVisibility(0);
                    if (i4 > 0) {
                        layoutParams2.setMargins(i2, 0, 0, 0);
                    } else {
                        layoutParams2.setMargins(0, 0, 0, 0);
                    }
                    simpleDraweeView.setLayoutParams(layoutParams2);
                    simpleDraweeView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    MyImageLoader.i(simpleDraweeView, str, r.c.f12144g);
                    simpleDraweeView.setOnClickListener(new b(list2, i4));
                } else {
                    simpleDraweeView.setVisibility(8);
                }
            }
            return;
        }
        relativeLayout.setVisibility(8);
    }

    private void f0(TextView textView, SpannableStringBuilder spannableStringBuilder, boolean z3, boolean z4, String str, List<ForumBean.ForumPostsBean.TagInfo> list) {
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        com.join.mgps.Util.i0.h(textView.getContext(), spannableStringBuilder2, list);
        com.join.mgps.Util.i0.g(textView, spannableStringBuilder2, z3, z4, str);
        spannableStringBuilder2.append((CharSequence) spannableStringBuilder);
        textView.setText(spannableStringBuilder2.toString().replace("<br/>", ""));
    }

    private void g0(TextView textView, String str, boolean z3, boolean z4, String str2, List<ForumBean.ForumPostsBean.TagInfo> list, List<RecommendLabelTag> list2, int i2, String str3) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        com.join.mgps.Util.i0.h(textView.getContext(), spannableStringBuilder, list);
        com.join.mgps.Util.i0.i(textView.getContext(), spannableStringBuilder, list2, i2, str3);
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        spannableStringBuilder.append((CharSequence) str);
        textView.setText(spannableStringBuilder);
    }

    private void h0(CopyTextViewNew copyTextViewNew, SpannableStringBuilder spannableStringBuilder, boolean z3, boolean z4, String str, List<ForumBean.ForumPostsBean.TagInfo> list) {
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        com.join.mgps.Util.i0.h(copyTextViewNew.getContext(), spannableStringBuilder2, list);
        spannableStringBuilder2.append((CharSequence) spannableStringBuilder);
        copyTextViewNew.setTextForum(spannableStringBuilder2.toString());
    }

    private void i0(TextView textView, SpannableStringBuilder spannableStringBuilder, boolean z3, boolean z4, String str, List<ForumBean.ForumPostsBean.TagInfo> list) {
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        com.join.mgps.Util.i0.h(textView.getContext(), spannableStringBuilder2, list);
        spannableStringBuilder2.append((CharSequence) spannableStringBuilder);
        textView.setText(spannableStringBuilder2.toString().replace("<br/>", ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m(PopupWindow popupWindow, MotionEvent motionEvent) {
        View contentView;
        if (popupWindow == null || motionEvent == null || (contentView = popupWindow.getContentView()) == null) {
            return false;
        }
        return !n(contentView, motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n(View view, MotionEvent motionEvent) {
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        return iArr[0] < rawX && iArr[1] < rawY && rawX < iArr[0] + view.getWidth() && rawY < iArr[1] + view.getHeight();
    }

    private View s(int i2, View view, ViewGroup viewGroup) {
        return (View) getItem(i2);
    }

    private View t(int i2, View view, ViewGroup viewGroup) {
        z zVar;
        u0.a aVar;
        String string;
        if (view != null) {
            zVar = (z) view.getTag();
        } else {
            zVar = new z();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_comment_header, (ViewGroup) null);
            zVar.f39815b = (SimpleDraweeView) view.findViewById(R.id.comment_avatar_src);
            zVar.f39816c = (TextView) view.findViewById(R.id.comment_nickname);
            zVar.f39817d = (TextView) view.findViewById(R.id.comment_add_time);
            zVar.f39818e = (ImageView) view.findViewById(R.id.comment_reply);
            zVar.f39819f = (TextView) view.findViewById(R.id.comment_floor);
            zVar.f39820g = (Button) view.findViewById(R.id.forum_post_host);
            zVar.f39821h = (ImageView) view.findViewById(R.id.forum_post_moderator);
            zVar.f39822i = (ImageView) view.findViewById(R.id.isOfficial);
            zVar.f39823j = (ImageView) view.findViewById(R.id.flagBestAnswer);
            zVar.f39824k = (VipView) view.findViewById(R.id.vipFlag);
            zVar.f39825l = (TextView) view.findViewById(R.id.moderator);
            zVar.f39826m = (TextView) view.findViewById(R.id.member_honor);
            zVar.f39827n = view.findViewById(R.id.divider);
            view.setTag(zVar);
        }
        try {
            aVar = (u0.a) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (aVar == null) {
            return view;
        }
        if (aVar.f39689a) {
            zVar.f39827n.setVisibility(0);
        } else {
            zVar.f39827n.setVisibility(8);
        }
        try {
            zVar.f39824k.setVipData(aVar.f39703o, aVar.f39704p);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (aVar.f39699k != 1) {
            zVar.f39823j.setVisibility(8);
        } else {
            zVar.f39823j.setVisibility(0);
        }
        zVar.f39816c.setText(aVar.f39693e);
        zVar.f39817d.setText(com.join.android.app.common.utils.c.a(aVar.f39694f * 1000));
        MyImageLoader.w(zVar.f39815b, aVar.f39692d);
        zVar.f39815b.setOnClickListener(new w(aVar));
        if (aVar.f39695g) {
            zVar.f39820g.setVisibility(0);
        } else {
            zVar.f39820g.setVisibility(8);
        }
        if (aVar.f39698j) {
            zVar.f39822i.setVisibility(0);
        } else {
            zVar.f39822i.setVisibility(8);
        }
        if (aVar.f39697i) {
            zVar.f39816c.setTextColor(this.f39503d.getResources().getColor(R.color.app_blue_color));
            zVar.f39821h.setVisibility(0);
        } else {
            UtilsMy.M2(this.f39503d, zVar.f39816c, aVar.f39703o, aVar.f39704p, R.color.forum_nickname_color);
            zVar.f39821h.setVisibility(8);
        }
        if (aVar.f39705q) {
            zVar.f39825l.setVisibility(0);
        } else {
            zVar.f39825l.setVisibility(8);
        }
        if (!TextUtils.isEmpty(aVar.f39706r)) {
            zVar.f39826m.setVisibility(0);
            zVar.f39826m.setText(aVar.f39706r);
        } else {
            zVar.f39826m.setVisibility(8);
        }
        int i4 = aVar.f39696h;
        if (i4 == 1) {
            string = this.f39503d.getResources().getString(R.string.comment_item_floor_1st);
        } else if (i4 == 2) {
            string = this.f39503d.getResources().getString(R.string.comment_item_floor_2nd);
        } else {
            string = this.f39503d.getResources().getString(R.string.comment_item_floor, Integer.valueOf(aVar.f39696h));
        }
        zVar.f39819f.setText(string);
        q0(view);
        p0(zVar.f39818e, aVar);
        com.join.mgps.Util.i0.S0(zVar.f39815b, zVar.f39816c, zVar.f39817d);
        com.join.mgps.Util.i0.U0(zVar.f39824k);
        y0(zVar.f39815b, aVar.f39690b);
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinearLayout.LayoutParams u(Context context) {
        if (context == null) {
            return null;
        }
        if (this.f39510k == null) {
            Resources resources = context.getResources();
            int i2 = resources.getDisplayMetrics().widthPixels;
            float f4 = context.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = (int) ((i2 - resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding)) - (30 * f4));
            int i4 = (int) (4 * f4);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, (int) ((dimensionPixelSize * 1.0f) / 1.5f));
            layoutParams.setMargins(0, i4, 0, i4);
            this.f39510k = layoutParams;
        }
        return this.f39510k;
    }

    private void u0(View view, String str) {
        view.setOnClickListener(new n(str));
    }

    private View v(int i2, View view, ViewGroup viewGroup) {
        a0 a0Var;
        SimpleDraweeView simpleDraweeView;
        if (view != null) {
            a0Var = (a0) view.getTag();
        } else {
            a0Var = new a0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_comment_image, (ViewGroup) null);
            a0Var.f39520b = (SimpleDraweeView) view.findViewById(R.id.comment_img);
            view.setTag(a0Var);
        }
        try {
            u0.b bVar = (u0.b) getItem(i2);
            if (bVar != null && (simpleDraweeView = a0Var.f39520b) != null) {
                Z(this.f39503d, bVar.f39709c.get(bVar.f39708b));
                k0 B = B(bVar.f39707a);
                if (B != null) {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(B.f39592a, B.f39593b);
                    int i4 = (int) (4 * this.f39503d.getResources().getDisplayMetrics().density);
                    layoutParams.setMargins(0, i4, 0, i4);
                    simpleDraweeView.setLayoutParams(layoutParams);
                    MyImageLoader.h(simpleDraweeView, bVar.f39707a);
                } else {
                    U(simpleDraweeView, bVar.f39707a);
                }
                com.join.mgps.Util.i0.C1(simpleDraweeView, bVar.f39708b, bVar.f39709c);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private void v0(View view, int i2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new p(i2));
    }

    private View w(int i2, View view, ViewGroup viewGroup) {
        b0 b0Var;
        u0.d dVar;
        try {
            if (view != null) {
                b0Var = (b0) view.getTag();
            } else {
                b0Var = new b0();
                view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_comment_message_reply, (ViewGroup) null);
                b0Var.f39525b = (LinearLayout) view.findViewById(R.id.comment_reply_container);
                b0Var.f39526c = view.findViewById(R.id.comment_reply_divider);
                b0Var.f39527d = (TextView) view.findViewById(R.id.comment_reply_content);
                b0Var.f39528e = (TextView) view.findViewById(R.id.comment_reply_more);
                b0Var.f39529f = view.findViewById(R.id.line);
                b0Var.f39530g = view.findViewById(R.id.bottom);
                view.setTag(b0Var);
            }
            dVar = (u0.d) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (dVar == null || dVar.f39717b == null) {
            return view;
        }
        if (dVar.f39719d) {
            b0Var.f39526c.setVisibility(0);
        } else {
            b0Var.f39526c.setVisibility(8);
        }
        if (!dVar.f39723h) {
            b0Var.f39529f.setVisibility(0);
            b0Var.f39530g.setVisibility(0);
        } else {
            b0Var.f39529f.setVisibility(8);
            b0Var.f39530g.setVisibility(8);
        }
        List<ForumBean.ForumCommentReplyBean> reply_list = dVar.f39717b.getReply_list();
        if (reply_list != null && reply_list.size() != 0) {
            a0(b0Var.f39525b, dVar, true, i2);
        } else {
            b0Var.f39525b.removeAllViews();
        }
        return view;
    }

    private void w0(View view, ForumBean.GameInfo gameInfo) {
        view.setOnClickListener(new m(gameInfo));
    }

    private View x(int i2, View view, ViewGroup viewGroup) {
        c0 c0Var;
        u0.c cVar;
        if (view != null) {
            c0Var = (c0) view.getTag();
        } else {
            c0Var = new c0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_comment_message, (ViewGroup) null);
            c0Var.f39534b = (TextView) view.findViewById(R.id.comment_message);
            view.setTag(c0Var);
        }
        try {
            cVar = (u0.c) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (cVar == null) {
            return view;
        }
        c0Var.f39534b.setText(cVar.f39711b);
        S(c0Var.f39534b);
        q0(view);
        o0(c0Var.f39534b, cVar);
        return view;
    }

    private View y(int i2, View view, ViewGroup viewGroup) {
        g0 g0Var;
        u0.e eVar;
        if (view != null) {
            g0Var = (g0) view.getTag();
        } else {
            g0Var = new g0();
            view = LayoutInflater.from(this.f39503d).inflate(R.layout.mg_forum_post_activity_item_employee_tags, (ViewGroup) null);
            g0Var.f39554b = (HListView) view.findViewById(R.id.list);
            view.setTag(g0Var);
        }
        try {
            eVar = (u0.e) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (eVar == null) {
            return view;
        }
        if (this.f39505f == null) {
            this.f39505f = new j0(this.f39503d);
        }
        this.f39505f.d(eVar.f39725b);
        this.f39505f.e(eVar.f39726c);
        this.f39505f.c().clear();
        this.f39505f.c().addAll(eVar.f39724a);
        g0Var.f39554b.setAdapter((ListAdapter) this.f39505f);
        return view;
    }

    private void y0(View view, int i2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new q(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup.LayoutParams z0(String str, View view, com.facebook.imagepipeline.image.f fVar) {
        if (fVar != null) {
            int a4 = fVar.a();
            int height = fVar.getHeight();
            Resources resources = view.getContext().getResources();
            int dimensionPixelSize = resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
            float f4 = (height * 1.0f) / a4;
            int i2 = (int) (dimensionPixelSize * 1.0f * f4);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            layoutParams.height = i2;
            com.join.mgps.Util.u0.e(this.f39500a + "setPostImageParam-->rawHeight=" + height + " rawWidth=" + a4 + " ratio=" + f4 + " itemHeight=" + i2 + " itemWidth=" + dimensionPixelSize + "\n" + str);
            view.setMinimumHeight(0);
            view.setLayoutParams(layoutParams);
            return layoutParams;
        }
        return null;
    }

    public List<u0> A() {
        return this.f39504e;
    }

    k0 B(String str) {
        Hashtable<String, k0> hashtable = this.f39511l;
        if (hashtable == null) {
            return null;
        }
        return hashtable.get(str);
    }

    void C0(View view, int i2, boolean z3, boolean z4, int i4, int i5, String str, String str2) {
        if (this.f39514o == null) {
            this.f39514o = new h0(this.f39503d);
        }
        this.f39514o.q(i4);
        this.f39514o.A(i5);
        this.f39514o.x(str2);
        this.f39514o.w(i2);
        this.f39514o.t(0);
        if (z3) {
            this.f39514o.v(0);
        } else {
            this.f39514o.v(8);
        }
        if (z4) {
            this.f39514o.z(0);
        } else {
            this.f39514o.z(8);
        }
        if (com.join.mgps.Util.d2.h(str)) {
            str = "";
        }
        this.f39514o.y(str);
        this.f39514o.showAsDropDown(view);
    }

    public com.danikula.videocache.i P(Context context) {
        return MApplication.p(context);
    }

    LinearLayout.LayoutParams Q() {
        DisplayMetrics displayMetrics = this.f39503d.getResources().getDisplayMetrics();
        float f4 = displayMetrics.density;
        int i2 = (int) (210.0f * f4);
        int i4 = (int) (160.0f * f4);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f39503d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f4)) * f4) * 2.0f))) / 3;
        if (dimensionPixelSize <= i2) {
            i2 = dimensionPixelSize > i4 ? i4 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i2, i2);
    }

    public void U(SimpleDraweeView simpleDraweeView, String str) {
        try {
            simpleDraweeView.getHierarchy().H(R.drawable.main_normal_icon);
            simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().H(new d(simpleDraweeView)).a(MyImageLoader.G(str)).build());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void V(SimpleDraweeView simpleDraweeView, String str) {
        try {
            simpleDraweeView.getHierarchy().H(R.drawable.main_normal_icon);
            simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().H(new c(simpleDraweeView)).a(MyImageLoader.G(str)).build());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void X(DownloadTask downloadTask, int i2) {
    }

    void Y(Context context, String str) {
        Integer[] i02 = com.join.mgps.Util.i0.i0(str);
        if (i02 != null) {
            k0 k0Var = new k0();
            int intValue = i02[0].intValue();
            int intValue2 = i02[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
            k0Var.f39592a = dimensionPixelSize;
            k0Var.f39593b = (int) (dimensionPixelSize * 1.0f * ((intValue2 * 1.0f) / intValue));
            l(str, k0Var);
        }
    }

    public void c0(String str) {
        this.f39502c = str;
    }

    LinearLayout.LayoutParams d0(String str, View view, com.facebook.imagepipeline.image.f fVar) {
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
            com.join.mgps.Util.u0.e(this.f39500a + "setCommentImageItemParams-->rawHeight=" + height + " rawWidth=" + a4 + " ratio=" + f5 + " itemHeight=" + i5 + " itemWidth=" + dimensionPixelSize + "\n" + str);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, i5);
            layoutParams.setMargins(0, i4, 0, i4);
            view.setLayoutParams(layoutParams);
            return layoutParams;
        }
        return null;
    }

    void e0(u0 u0Var, boolean z3) {
        if (u0Var == null) {
            return;
        }
        try {
            ((u0.d) u0Var.a()).f39723h = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<u0> list = this.f39504e;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<u0> list = this.f39504e;
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
        List<u0> list = this.f39504e;
        if (list != null) {
            return list.get(i2).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return H(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_HEADER1.ordinal()) {
            return G(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return D(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_FOOTER1.ordinal()) {
            return C(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_GAME_RES_LINK.ordinal()) {
            return E(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_GAME.ordinal()) {
            return F(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_IMAGE.ordinal()) {
            return K(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_VIDEO.ordinal()) {
            return O(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return J(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return L(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.POST_SUBJECT.ordinal()) {
            return M(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMENT_HEADER.ordinal()) {
            return t(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMENT_MESSAGE.ordinal()) {
            return x(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMENT_IMAGE.ordinal()) {
            return v(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMENT_MESSAGE_REPLY.ordinal()) {
            return w(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.BAIDUADBANNER.ordinal()) {
            return s(i2, view, viewGroup);
        }
        return itemViewType == ViewType.EMPLOYEE_TAGS.ordinal() ? y(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    void j0(View view, int i2) {
        view.setEnabled(true);
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextColor(-12802819);
            if (i2 == 3) {
                textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
                textView.setTextSize(2, 12.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
            } else if (i2 == 2) {
                textView.setText("即将开放");
                textView.setTextSize(2, 11.0f);
                textView.setTextColor(-7763575);
                textView.setEnabled(false);
                textView.setBackgroundResource(R.drawable.recom_grey_butn);
            } else {
                textView.setText(this.f39503d.getResources().getString(R.string.download_status_download));
                textView.setTextSize(2, 13.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
            }
        } else if (view instanceof Button) {
            Button button = (Button) view;
            button.setTextColor(-12802819);
            if (i2 == 3) {
                button.setText(button.getResources().getString(R.string.download_status_pre_download));
                button.setTextSize(2, 12.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
            } else if (i2 == 2) {
                button.setText("即将开放");
                button.setTextSize(2, 11.0f);
                button.setTextColor(-7763575);
                button.setEnabled(false);
                button.setBackgroundResource(R.drawable.recom_grey_butn);
            } else {
                button.setText(this.f39503d.getResources().getString(R.string.download_status_download));
                button.setTextSize(2, 13.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
            }
        }
    }

    void k0(TextView textView, int i2) {
        textView.setEnabled(true);
        textView.setTextColor(-12802819);
        textView.setText(textView.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.d2.l(i2)));
        textView.setTextSize(2, 13.0f);
        textView.setTextColor(-12802819);
        textView.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    void l(String str, k0 k0Var) {
        if (this.f39511l == null) {
            this.f39511l = new Hashtable<>();
        }
        this.f39511l.put(str, k0Var);
    }

    void l0(m0 m0Var, Object obj) {
        int i2;
        Button button = m0Var.f39611d;
        if (button == null || obj == null) {
            return;
        }
        Context context = button.getContext();
        Resources resources = context.getResources();
        DownloadTask downloadTask = (DownloadTask) obj;
        int status = downloadTask.getStatus();
        String ver = downloadTask.getVer();
        String packageName = downloadTask.getPackageName();
        ArrayList<TipBean> tipBeans = downloadTask.getTipBeans();
        long size = downloadTask.getSize();
        if (obj instanceof CollectionBeanSubBusiness) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) obj;
            DownloadTask downloadTask2 = collectionBeanSubBusiness.getDownloadTask();
            String ver2 = collectionBeanSubBusiness.getVer();
            i2 = collectionBeanSubBusiness.getPay_tag_info() != null ? collectionBeanSubBusiness.getPay_tag_info().getPay_game_amount() : 0;
            if (i2 > 0 && n1.e0.o().p(collectionBeanSubBusiness.getCrc_sign_id())) {
                i2 = 0;
            }
            downloadTask = downloadTask2;
            ver = ver2;
        } else {
            if (obj instanceof RecomDatabeanBusiness) {
                AppBean game_info = ((RecomDatabeanBusiness) obj).getSub().get(0).getGame_info();
                int pay_game_amount = game_info.getPay_tag_info() != null ? game_info.getPay_tag_info().getPay_game_amount() : 0;
                if (pay_game_amount <= 0 || !n1.e0.o().p(game_info.getCrc_sign_id())) {
                    i2 = pay_game_amount;
                }
            }
            i2 = 0;
        }
        if (downloadTask == null) {
            if (UtilsMy.e0(tipBeans)) {
                if (i2 > 0 ? false : com.join.android.app.common.utils.a.g0(context).c(context, packageName)) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, packageName);
                    if (com.join.mgps.Util.d2.i(ver) && k4.d() < Integer.parseInt(ver)) {
                        button.setBackgroundResource(R.drawable.recom_green_butn);
                        A0(button, "更新");
                        B0(button, resources.getColor(R.color.app_green_color));
                    } else {
                        button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        A0(button, context.getResources().getString(R.string.download_status_finished));
                        B0(button, resources.getColor(R.color.app_main_color));
                    }
                } else {
                    button.setBackgroundResource(R.drawable.recom_green_butn);
                    if (i2 > 0) {
                        k0(m0Var.f39611d, i2);
                    } else {
                        j0(button, status);
                    }
                }
            } else {
                button.setBackgroundResource(R.drawable.recom_green_butn);
                if (i2 > 0) {
                    k0(m0Var.f39611d, i2);
                } else {
                    j0(button, status);
                }
            }
        } else {
            int status2 = downloadTask.getStatus();
            if (i2 > 0) {
                status2 = 43;
            }
            if (status2 != 0) {
                if (status2 == 27) {
                    A0(button, "暂停中");
                } else if (status2 != 2) {
                    if (status2 != 3) {
                        if (status2 != 5) {
                            if (status2 != 6) {
                                if (status2 != 7) {
                                    if (status2 != 42) {
                                        if (status2 != 43) {
                                            switch (status2) {
                                                case 9:
                                                    E0(m0Var, 0);
                                                    button.setBackgroundResource(R.drawable.recom_green_butn);
                                                    A0(button, "更新");
                                                    B0(button, resources.getColor(R.color.app_green_color));
                                                    break;
                                                case 10:
                                                    E0(m0Var, 16);
                                                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    A0(button, "等待");
                                                    B0(button, resources.getColor(R.color.app_blue_color));
                                                    break;
                                                case 11:
                                                    E0(m0Var, 0);
                                                    button.setBackgroundResource(R.drawable.recom_green_butn);
                                                    A0(button, "安装");
                                                    B0(button, resources.getColor(R.color.app_green_color));
                                                    break;
                                                case 12:
                                                    E0(m0Var, 17);
                                                    TextView textView = m0Var.f39616i;
                                                    textView.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    m0Var.f39617j.setText("解压中..");
                                                    m0Var.f39619l.setProgress((int) downloadTask.getProgress());
                                                    button.setBackgroundResource(R.drawable.extract);
                                                    A0(button, "解压中");
                                                    B0(button, resources.getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    E0(m0Var, 17);
                                                    TextView textView2 = m0Var.f39616i;
                                                    textView2.setText(UtilsMy.a(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                                                    m0Var.f39617j.setText("点击重新解压");
                                                    m0Var.f39619l.setProgress((int) downloadTask.getProgress());
                                                    button.setBackgroundResource(R.drawable.reextract);
                                                    A0(button, "解压");
                                                    B0(button, resources.getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        } else {
                                            E0(m0Var, 0);
                                            button.setBackgroundResource(R.drawable.recom_green_butn);
                                            if (i2 > 0) {
                                                k0(m0Var.f39611d, i2);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        E0(m0Var, 0);
                        button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        A0(button, context.getResources().getString(R.string.download_status_finished));
                        B0(button, resources.getColor(R.color.app_main_color));
                    }
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    A0(button, "继续");
                    B0(button, resources.getColor(R.color.app_blue_color));
                    E0(m0Var, 16);
                    try {
                        if (downloadTask.getSize() == 0) {
                            TextView textView3 = m0Var.f39616i;
                            textView3.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                        } else {
                            TextView textView4 = m0Var.f39616i;
                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                        }
                        m0Var.f39618k.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    m0Var.f39617j.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    A0(button, "暂停");
                    B0(button, resources.getColor(R.color.app_blue_color));
                    E0(m0Var, 16);
                    if (downloadTask.getSize() == 0) {
                        TextView textView5 = m0Var.f39616i;
                        textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                    } else {
                        TextView textView6 = m0Var.f39616i;
                        textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(size));
                    }
                    m0Var.f39618k.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    TextView textView7 = m0Var.f39617j;
                    textView7.setText(speed + "/S");
                }
            }
            E0(m0Var, 0);
            button.setBackgroundResource(R.drawable.recom_green_butn);
            if (i2 > 0) {
                k0(m0Var.f39611d, i2);
            } else {
                j0(button, status);
            }
        }
        button.setOnClickListener(new f0(obj));
    }

    public void m0(i0 i0Var) {
        this.f39515p = i0Var;
    }

    public void n0(List<u0> list) {
        if (list == null) {
            return;
        }
        if (this.f39504e == null) {
            list = new ArrayList<>();
        }
        this.f39504e.clear();
        this.f39504e.addAll(list);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void o() {
        Hashtable<String, k0> hashtable = this.f39511l;
        if (hashtable != null) {
            hashtable.clear();
            System.gc();
        }
    }

    public void o0(View view, u0.c cVar) {
        view.setOnLongClickListener(new i(cVar));
    }

    public void p() {
        this.f39506g.clear();
    }

    public void p0(View view, u0.a aVar) {
        view.setOnClickListener(new h(aVar));
    }

    u0 q(int i2, ForumBean.ForumCommentBean forumCommentBean, int i4, boolean z3, boolean z4) {
        return new u0(ViewType.COMMENT_MESSAGE_REPLY, new u0.d(i2, forumCommentBean, i4, z3, z4));
    }

    public void q0(View view) {
        view.setOnClickListener(new g());
    }

    public String r() {
        return this.f39502c;
    }

    public void r0(View view, boolean z3, boolean z4, int i2, int i4, String str, String str2) {
        view.setOnLongClickListener(new l(i2, z3, z4, i4, str, str2));
    }

    public void s0(View view, int i2, int i4, String str) {
        com.join.mgps.Util.u0.e("setOnCommentReplyReply", "cid=" + i2 + " rid=" + i4 + " rNickname=" + str);
        view.setOnClickListener(new j(i2, i4, str));
    }

    public void t0(View view, int i2) {
        view.setOnClickListener(new f(i2));
    }

    public void x0(View view, String str, String str2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new o(str2));
    }

    BitmapFactory.Options z(String str) {
        return null;
    }

    /* loaded from: classes3.dex */
    public static class j0 extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final Context f39579a;

        /* renamed from: b  reason: collision with root package name */
        private List<RecommendLabelTag> f39580b;

        /* renamed from: c  reason: collision with root package name */
        private int f39581c;

        /* renamed from: d  reason: collision with root package name */
        private String f39582d;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RecommendLabelTag f39583a;

            a(RecommendLabelTag recommendLabelTag) {
                this.f39583a = recommendLabelTag;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goMainLabelActivity(view.getContext(), this.f39583a.getTag_id(), j0.this.f39581c, j0.this.f39582d);
            }
        }

        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            TextView f39585a;

            b() {
            }
        }

        public j0(Context context, List<RecommendLabelTag> list) {
            this.f39579a = context;
            this.f39580b = list;
        }

        public List<RecommendLabelTag> c() {
            return this.f39580b;
        }

        public void d(int i2) {
            this.f39581c = i2;
        }

        public void e(String str) {
            this.f39582d = str;
        }

        public void f(List<RecommendLabelTag> list) {
            this.f39580b = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<RecommendLabelTag> list = this.f39580b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<RecommendLabelTag> list = this.f39580b;
            if (list == null || i2 >= list.size()) {
                return null;
            }
            return this.f39580b.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            View view2;
            b bVar;
            RecommendLabelTag recommendLabelTag;
            if (view == null) {
                bVar = new b();
                view2 = LayoutInflater.from(this.f39579a).inflate(R.layout.forum_group_tag_item, (ViewGroup) null);
                bVar.f39585a = (TextView) view2.findViewById(R.id.tagTv);
                view2.setTag(bVar);
            } else {
                view2 = view;
                bVar = (b) view.getTag();
            }
            if (bVar.f39585a != null && (recommendLabelTag = (RecommendLabelTag) getItem(i2)) != null) {
                TextView textView = bVar.f39585a;
                textView.setText("#" + recommendLabelTag.getTag_name() + "#");
                bVar.f39585a.setOnClickListener(new a(recommendLabelTag));
            }
            return view2;
        }

        public j0(Context context) {
            this.f39579a = context;
            this.f39580b = new ArrayList();
        }
    }
}
