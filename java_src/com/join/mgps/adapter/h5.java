package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.h5;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.SearchIntegratedFavoriteBean;
import com.join.mgps.dto.SearchIntegratedPostBean;
import com.join.mgps.enums.ConstantIntEnum;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/* compiled from: SearchGameListAdapter.java */
/* loaded from: classes3.dex */
public class h5 extends com.join.mgps.base.a<h, com.join.mgps.base.b> {

    /* renamed from: d  reason: collision with root package name */
    private Context f42195d;

    /* renamed from: e  reason: collision with root package name */
    private String f42196e;

    /* renamed from: f  reason: collision with root package name */
    com.join.android.app.component.video.d f42197f;

    /* renamed from: g  reason: collision with root package name */
    private e f42198g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchGameListAdapter.java */
    /* loaded from: classes3.dex */
    public class a extends l1.m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f42199a;

        a(CommonGameInfoBean commonGameInfoBean) {
            this.f42199a = commonGameInfoBean;
        }

        @Override // l1.m, c2.h
        public void b0(String str, Object... objArr) {
            super.b0(str, objArr);
            IntentUtil.getInstance().intentActivity(h5.this.f42195d, this.f42199a.getIntentDataBean());
        }

        @Override // l1.m, l1.n
        public void d0() {
            super.d0();
            IntentUtil.getInstance().intentActivity(h5.this.f42195d, this.f42199a.getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchGameListAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f42201a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f42202b;

        b(List list, CommonGameInfoBean commonGameInfoBean) {
            this.f42201a = list;
            this.f42202b = commonGameInfoBean;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            try {
                Intent intent = new Intent(h5.this.f42195d, ImagePagerActivity.class);
                String[] strArr = new String[this.f42201a.size()];
                for (int i4 = 0; i4 < this.f42201a.size(); i4++) {
                    strArr[i4] = (String) this.f42201a.get(i4);
                }
                if (com.join.mgps.Util.d2.i(this.f42202b.getV_url()) && i2 == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.n(this.f42202b.getV_url());
                    videoInfo.h(strArr[0]);
                    FullScreenActivity_.G0(h5.this.f42195d).a(videoInfo).start();
                    return;
                }
                intent.putExtra("image_urls", strArr);
                intent.putExtra("image_index", i2);
                h5.this.f42195d.startActivity(intent);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchGameListAdapter.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIntegratedFavoriteBean.FavoriteBean f42204a;

        c(SearchIntegratedFavoriteBean.FavoriteBean favoriteBean) {
            this.f42204a = favoriteBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (h5.this.f42198g != null) {
                e eVar = h5.this.f42198g;
                Context context = view.getContext();
                eVar.l(context, this.f42204a.getId() + "", this.f42204a.getUid(), "0", "0");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchGameListAdapter.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f42206a;

        d(String str) {
            this.f42206a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (h5.this.f42198g != null) {
                h5.this.f42198g.c(this.f42206a);
            }
        }
    }

    /* compiled from: SearchGameListAdapter.java */
    /* loaded from: classes3.dex */
    public interface e {
        void b(String str);

        void c(String str);

        void h(String str);

        void i(String str);

        void l(Context context, String str, String str2, String str3, String str4);
    }

    /* compiled from: SearchGameListAdapter.java */
    /* loaded from: classes3.dex */
    class f extends ClickableSpan implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final View.OnClickListener f42208a;

        public f(View.OnClickListener onClickListener) {
            this.f42208a = onClickListener;
        }

        @Override // android.text.style.ClickableSpan, android.view.View.OnClickListener
        public void onClick(View view) {
            this.f42208a.onClick(view);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(Color.parseColor("#FF4A4A4A"));
            textPaint.setUnderlineText(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchGameListAdapter.java */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CommonGameInfoBean f42210a;

        public g(CommonGameInfoBean commonGameInfoBean) {
            this.f42210a = commonGameInfoBean;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit b(Context context, View view) {
            if (!com.join.android.app.common.utils.f.j(context)) {
                com.join.mgps.Util.i2.a(context).b("网络连接异常");
                return null;
            }
            View findViewById = view.findViewById(R.id.pb_loading);
            if (findViewById != null) {
                findViewById.setVisibility(0);
            }
            TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
            if (textView != null) {
                textView.setText("");
            }
            UtilsMy.V1(context, this.f42210a);
            return null;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(final View view) {
            final Context context = view.getContext();
            DownloadTask downloadTask = this.f42210a.getDownloadTask();
            GInfoBean g_info = this.f42210a.getG_info();
            if (g_info != null) {
                if (downloadTask == null) {
                    h5.this.p(this.f42210a);
                    if (this.f42210a.isMiniGame() && this.f42210a.is64Bit() && (APKUtils.b(context, this.f42210a) || APKUtils.f(context, new Function0() { // from class: com.join.mgps.adapter.i5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit b4;
                            b4 = h5.g.this.b(context, view);
                            return b4;
                        }
                    }))) {
                        return;
                    }
                    if (!com.join.android.app.common.utils.f.j(context)) {
                        com.join.mgps.Util.i2.a(context).b("网络连接异常");
                        return;
                    }
                    View findViewById = view.findViewById(R.id.pb_loading);
                    if (findViewById != null) {
                        findViewById.setVisibility(0);
                    }
                    TextView textView = (TextView) view.findViewById(R.id.mgListviewItemInstall);
                    if (textView != null) {
                        textView.setText("");
                    }
                    UtilsMy.V1(context, this.f42210a);
                    return;
                }
                String plugin_num = g_info.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    IntentDateBean intentDateBean = new IntentDateBean();
                    ExtBean extBean = new ExtBean();
                    extBean.setReMarks(this.f42210a.getReMarks());
                    intentDateBean.setExtBean(extBean);
                    intentDateBean.setLink_type(4);
                    intentDateBean.setLink_type_val(downloadTask.getDown_url_remote());
                    UtilsMy.h2(downloadTask, context);
                    IntentUtil.getInstance().intentActivity(context, intentDateBean);
                    return;
                }
                int status = downloadTask != null ? downloadTask.getStatus() : 0;
                if (UtilsMy.m0(g_info.getPay_tag_info(), g_info.getId()) > 0) {
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
                                            this.f42210a.setKeyword(h5.this.f42196e);
                                            h5.this.p(this.f42210a);
                                            UtilsMy.x3(context, this.f42210a);
                                            return;
                                        } else if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    if (com.join.android.app.common.utils.f.j(context)) {
                                                        this.f42210a.setKeyword(h5.this.f42196e);
                                                        h5.this.p(this.f42210a);
                                                        UtilsMy.X1(context, downloadTask.getCrc_link_type_val(), this.f42210a);
                                                        return;
                                                    }
                                                    com.join.mgps.Util.i2.a(context).b("无网络连接");
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
                            this.f42210a.setKeyword(h5.this.f42196e);
                            h5.this.p(this.f42210a);
                            if (downloadTask.isMiniGame() && downloadTask.isSingleGame()) {
                                APKUtils.R(context, downloadTask);
                            }
                            com.php25.PDownload.d.c(downloadTask, context);
                            return;
                        }
                        if (downloadTask.isMiniGame() && downloadTask.isSingleGame()) {
                            APKUtils.R(context, downloadTask);
                            return;
                        } else {
                            com.php25.PDownload.d.h(downloadTask);
                            return;
                        }
                    }
                    com.php25.PDownload.d.k(context, downloadTask);
                    return;
                }
                this.f42210a.setKeyword(h5.this.f42196e);
                h5.this.p(this.f42210a);
                UtilsMy.V1(context, this.f42210a);
                if (h5.this.f42198g != null) {
                    h5.this.f42198g.b(downloadTask.getCrc_link_type_val());
                }
            }
        }
    }

    /* compiled from: SearchGameListAdapter.java */
    /* loaded from: classes3.dex */
    public static class h implements j1.b {

        /* renamed from: d  reason: collision with root package name */
        public static final int f42212d = 1;

        /* renamed from: e  reason: collision with root package name */
        public static final int f42213e = 2;

        /* renamed from: f  reason: collision with root package name */
        public static final int f42214f = 3;

        /* renamed from: g  reason: collision with root package name */
        public static final int f42215g = 4;

        /* renamed from: h  reason: collision with root package name */
        public static final int f42216h = 5;

        /* renamed from: i  reason: collision with root package name */
        public static final int f42217i = 6;

        /* renamed from: j  reason: collision with root package name */
        public static final int f42218j = 7;

        /* renamed from: k  reason: collision with root package name */
        public static final int f42219k = 8;

        /* renamed from: l  reason: collision with root package name */
        public static final int f42220l = 9;

        /* renamed from: m  reason: collision with root package name */
        public static final int f42221m = 10;

        /* renamed from: n  reason: collision with root package name */
        public static final int f42222n = 11;

        /* renamed from: o  reason: collision with root package name */
        public static final int f42223o = 12;

        /* renamed from: p  reason: collision with root package name */
        public static final int f42224p = 13;

        /* renamed from: a  reason: collision with root package name */
        public int f42225a;

        /* renamed from: b  reason: collision with root package name */
        public Object f42226b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f42227c;

        public h(int i2, Object obj) {
            this.f42225a = i2;
            this.f42226b = obj;
        }

        public <O> O a() {
            return (O) this.f42226b;
        }

        public h b(boolean z3) {
            this.f42227c = z3;
            return this;
        }

        @Override // j1.b
        public int getItemType() {
            return this.f42225a;
        }
    }

    public h5(Context context, com.join.android.app.component.video.d dVar) {
        super(null);
        this.f42198g = null;
        this.f42195d = context;
        this.f42197f = dVar;
        a(1, R.layout.mg_forum_search_item_post_subject);
        a(2, R.layout.mg_forum_search_item_post_message);
        a(3, R.layout.mg_forum_search_list_item_post_footer);
        a(4, R.layout.mg_forum_search_item_post_top_area);
        a(5, R.layout.mg_forum_search_item_favorite_top_area);
        a(6, R.layout.mg_forum_search_item_favorite_game_list);
        a(7, R.layout.item_search_game_list);
        a(11, R.layout.item_search_mini_game_list);
        a(12, R.layout.item_search_mini_game_video_list);
        a(8, R.layout.gamedetail_item_viewpage1);
        a(9, R.layout.mg_forum_search_item_all_no_more);
        a(10, R.layout.mg_forum_search_item_all_view_more);
        a(13, R.layout.item_search_recommend_title);
    }

    private void A(com.join.mgps.base.b bVar, h hVar) {
        final SearchIntegratedPostBean.TopArea topArea = (SearchIntegratedPostBean.TopArea) hVar.a();
        MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.icon), topArea.getIcon_src());
        bVar.K(R.id.name, topArea.getName());
        bVar.K(R.id.desc, topArea.getDescription());
        bVar.K(R.id.count, "今日更新:" + topArea.getToday_posts());
        bVar.k(R.id.cl_root).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.g5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h5.J(SearchIntegratedPostBean.TopArea.this, view);
            }
        });
    }

    private void B(com.join.mgps.base.b bVar, h hVar) {
        ViewGroup.LayoutParams layoutParams = bVar.itemView.getLayoutParams();
        if (layoutParams == null || !(layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            return;
        }
        ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(int i2, View view) {
        ((SearchListActivity1) this.f42195d).e1(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(GInfoBean gInfoBean, CommonGameInfoBean commonGameInfoBean, View view) {
        if (gInfoBean.getId() != null) {
            IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gInfoBean.getId(), gInfoBean.getGame_info_tpl_type(), gInfoBean.getSp_tpl_two_position(), F(), commonGameInfoBean.get_from_type(), commonGameInfoBean.getReMarks());
            e eVar = this.f42198g;
            if (eVar != null) {
                eVar.b(gInfoBean.getId());
                this.f42198g.i(gInfoBean.getId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(String str, View view) {
        L(view.getContext(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J(SearchIntegratedPostBean.TopArea topArea, View view) {
        ForumBean forumBean = new ForumBean();
        forumBean.setFid(topArea.getFid());
        com.join.mgps.Util.i0.r0(view.getContext(), forumBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(GInfoBean gInfoBean, CommonGameInfoBean commonGameInfoBean, View view) {
        if (gInfoBean.getId() != null) {
            IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gInfoBean.getId(), gInfoBean.getGame_info_tpl_type(), gInfoBean.getSp_tpl_two_position(), F(), commonGameInfoBean.get_from_type(), commonGameInfoBean.getReMarks());
            e eVar = this.f42198g;
            if (eVar != null) {
                eVar.b(gInfoBean.getId());
                this.f42198g.i(gInfoBean.getId());
            }
        }
    }

    private void q(com.join.mgps.base.b bVar, h hVar) {
        int intValue = ((Integer) hVar.a()).intValue();
        ViewGroup.LayoutParams layoutParams = bVar.itemView.getLayoutParams();
        if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
        if (intValue == 1) {
            bVar.x(R.id.icon, R.drawable.img_bg_game);
            bVar.K(R.id.name, "未搜索到相应游戏\n已为您推荐其它游戏");
        } else if (intValue == 2) {
            bVar.x(R.id.icon, R.drawable.img_bg_dell);
            bVar.K(R.id.name, "未搜索到相应游戏单\n已为您推荐热门游戏单");
        } else if (intValue == 3) {
            bVar.x(R.id.icon, R.drawable.img_bg_talk);
            bVar.K(R.id.name, "未搜索到相应社区\n已为您推荐其他热门社区");
        }
    }

    private void r(com.join.mgps.base.b bVar, h hVar) {
        final int intValue = ((Integer) hVar.a()).intValue();
        bVar.k(R.id.cl_root).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h5.this.G(intValue, view);
            }
        });
    }

    private void s(com.join.mgps.base.b bVar, h hVar) {
        SearchIntegratedFavoriteBean.FavoriteBean favoriteBean = (SearchIntegratedFavoriteBean.FavoriteBean) hVar.a();
        MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.icon), favoriteBean.getPic());
        bVar.K(R.id.name, favoriteBean.getTitle());
        bVar.K(R.id.desc, favoriteBean.getAuth_name());
        bVar.K(R.id.count, favoriteBean.getGame_count() + "款");
        bVar.O(R.id.divider, favoriteBean.isShowDivider());
        bVar.k(R.id.cl_root).setOnClickListener(new c(favoriteBean));
    }

    private void t(com.join.mgps.base.b bVar, h hVar) {
        try {
            String str = (String) hVar.a();
            SpannableString spannableString = new SpannableString(String.format("包含%s的游戏单", str));
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FFF47500")), 2, str.length() + 2, 18);
            bVar.K(R.id.title, spannableString);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void u(com.join.mgps.base.b bVar, h hVar) {
        D(bVar, hVar);
    }

    private void v(com.join.mgps.base.b bVar, h hVar) {
        MultiStandVideo multiStandVideo;
        if (hVar == null) {
            return;
        }
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) hVar.a();
        DownloadTask downloadTask = commonGameInfoBean.getDownloadTask();
        final GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info != null) {
            bVar.K(R.id.mgListviewItemAppname, g_info.getName());
            ((TextView) bVar.k(R.id.mgListviewItemAppname)).setTypeface(Typeface.DEFAULT, 0);
            bVar.k(R.id.relateLayoutApp).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.d5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    h5.this.H(g_info, commonGameInfoBean, view);
                }
            });
            if (com.join.mgps.Util.d2.h(commonGameInfoBean.getV_url())) {
                if (com.join.mgps.Util.d2.i(commonGameInfoBean.getBig_pic())) {
                    MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.sdv_image), commonGameInfoBean.getBig_pic());
                } else {
                    List<String> pic_info = g_info.getPic_info();
                    if (com.join.mgps.Util.d2.h("") && pic_info != null && pic_info.size() > 0) {
                        MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.sdv_image), pic_info.get(0));
                    }
                }
            }
            bVar.u(R.id.giftPackageSwich, g_info.getGift_package_switch() == 1);
            if (g_info.getScore().doubleValue() > 0.0d && g_info.showScore()) {
                bVar.K(R.id.tv_score, String.valueOf(g_info.getScore()));
                bVar.u(R.id.tv_score, true);
            } else {
                bVar.u(R.id.tv_score, false);
            }
            bVar.K(R.id.tv_label, UtilsMy.o1(g_info.getSp_tag_info(), g_info.getTag_info()));
            UtilsMy.v2(g_info.getSp_tag_info(), bVar.k(R.id.relateLayoutApp), downloadTask);
            bVar.k(R.id.rLayoutRight).setOnClickListener(new g(commonGameInfoBean));
        }
        if (com.join.mgps.Util.d2.i(commonGameInfoBean.getV_url()) && (multiStandVideo = (MultiStandVideo) bVar.k(R.id.wf_video)) != null) {
            multiStandVideo.i(commonGameInfoBean.getBig_pic());
            multiStandVideo.setPlayTag(this.f42197f.k());
            multiStandVideo.setPlayPosition(commonGameInfoBean.hashCode());
            multiStandVideo.setUpLazy(commonGameInfoBean.getV_url(), false, null, null, "");
            multiStandVideo.setRotateViewAuto(false);
            multiStandVideo.setLockLand(true);
            multiStandVideo.setReleaseWhenLossAudio(false);
            multiStandVideo.setShowFullAnimation(false);
            multiStandVideo.setIsTouchWiget(false);
            multiStandVideo.setNeedLockFull(false);
            multiStandVideo.setVideoAllCallBack(new a(commonGameInfoBean));
        }
        if (com.join.mgps.Util.d2.i(commonGameInfoBean.getBg_color())) {
            try {
                if (commonGameInfoBean.getBg_color().startsWith("#")) {
                    bVar.q(R.id.ll_bottom_container, Color.parseColor(commonGameInfoBean.getBg_color()));
                } else {
                    bVar.q(R.id.ll_bottom_container, Color.parseColor("#" + commonGameInfoBean.getBg_color()));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else {
            bVar.q(R.id.ll_bottom_container, Color.parseColor("#994558"));
        }
        if (commonGameInfoBean.getRequestStatus() == 47) {
            bVar.u(R.id.pb_loading, true);
            bVar.K(R.id.mgListviewItemInstall, "");
            return;
        }
        bVar.u(R.id.pb_loading, false);
        bVar.K(R.id.mgListviewItemInstall, "打开");
    }

    private void w(com.join.mgps.base.b bVar, h hVar) {
        C(bVar, hVar);
    }

    private void x(com.join.mgps.base.b bVar, h hVar) {
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) hVar.a();
            if (forumSearchQueryBean != null) {
                com.join.mgps.Util.i0.D1((TextView) bVar.k(R.id.forum_post_view), forumSearchQueryBean.getView(), "0");
                com.join.mgps.Util.i0.D1((TextView) bVar.k(R.id.forum_post_commit), forumSearchQueryBean.getComment(), "0");
                com.join.mgps.Util.i0.D1((TextView) bVar.k(R.id.forum_post_praise), forumSearchQueryBean.getPraise(), "0");
                O(bVar.k(R.id.cl_root), forumSearchQueryBean.getPid());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void y(com.join.mgps.base.b bVar, h hVar) {
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) hVar.a();
            if (forumSearchQueryBean != null) {
                String message = forumSearchQueryBean.getMessage();
                String g4 = com.join.mgps.Util.d2.g(forumSearchQueryBean.getKeyword());
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(message);
                int color = this.f42195d.getResources().getColor(R.color.search_high_light);
                int indexOf = message.indexOf(g4);
                int length = g4.length() + indexOf;
                try {
                    if (length <= message.length() && indexOf >= 0) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(color), indexOf, length, 33);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                final String pid = forumSearchQueryBean.getPid();
                bVar.k(R.id.messageParent).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.f5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        h5.this.I(pid, view);
                    }
                });
                bVar.K(R.id.forum_post_message, spannableStringBuilder);
                try {
                    int i2 = 0;
                    if (forumSearchQueryBean.isShowDivider()) {
                        bVar.L(R.id.forum_post_message, Color.parseColor("#3b3b3b"));
                        ((TextView) bVar.k(R.id.forum_post_message)).setTypeface(Typeface.DEFAULT, 1);
                        i2 = ((TextView) bVar.k(R.id.forum_post_message)).getResources().getDimensionPixelOffset(R.dimen.wdp36);
                    } else {
                        bVar.L(R.id.forum_post_message, Color.parseColor("#FF4A4A4A"));
                        ((TextView) bVar.k(R.id.forum_post_message)).setTypeface(Typeface.DEFAULT, 0);
                    }
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) bVar.k(R.id.forum_post_message).getLayoutParams();
                    layoutParams.topMargin = i2;
                    bVar.k(R.id.forum_post_message).setLayoutParams(layoutParams);
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                bVar.k(R.id.messageParent).requestLayout();
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
    }

    private void z(com.join.mgps.base.b bVar, h hVar) {
        try {
            ForumBean.ForumSearchQueryBean forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) hVar.a();
            if (forumSearchQueryBean == null) {
                return;
            }
            String subject = forumSearchQueryBean.getSubject();
            String g4 = com.join.mgps.Util.d2.g(forumSearchQueryBean.getKeyword());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(subject);
            int color = this.f42195d.getResources().getColor(R.color.search_high_light);
            int indexOf = subject.indexOf(g4);
            int length = g4.length() + indexOf;
            try {
                if (length <= subject.length() && indexOf >= 0) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(color), indexOf, length, 33);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            bVar.K(R.id.forum_post_subject, spannableStringBuilder);
            O(bVar.k(R.id.ll_root), forumSearchQueryBean.getPid());
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public void C(com.join.mgps.base.b bVar, h hVar) {
        int i2;
        int i4;
        int i5;
        RelativeLayout.LayoutParams layoutParams;
        if (hVar == null) {
            return;
        }
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) hVar.a();
        DownloadTask downloadTask = commonGameInfoBean.getDownloadTask();
        final GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info != null) {
            Context context = this.f42195d;
            if (hVar.f42227c) {
                if (bVar.k(R.id.line).getLayoutParams() != null) {
                    layoutParams = (RelativeLayout.LayoutParams) bVar.k(R.id.line).getLayoutParams();
                } else {
                    layoutParams = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics()));
                }
                layoutParams.leftMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
                layoutParams.rightMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
                bVar.k(R.id.line).setLayoutParams(layoutParams);
            }
            bVar.O(R.id.line, hVar.f42227c);
            bVar.K(R.id.mgListviewItemAppname, g_info.getName());
            if (com.join.mgps.Util.d2.i(g_info.getInfo())) {
                bVar.u(R.id.mgListviewItemDescribe, true);
                bVar.K(R.id.mgListviewItemDescribe, g_info.getInfo());
            } else {
                bVar.u(R.id.mgListviewItemDescribe, false);
            }
            bVar.k(R.id.relateLayoutApp).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    h5.this.K(g_info, commonGameInfoBean, view);
                }
            });
            if (com.join.mgps.Util.d2.i(commonGameInfoBean.getBig_pic())) {
                MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.sdv_image), commonGameInfoBean.getBig_pic());
            } else {
                List<String> pic_info = g_info.getPic_info();
                if (com.join.mgps.Util.d2.h("") && pic_info != null && pic_info.size() > 0) {
                    MyImageLoader.n((SimpleDraweeView) bVar.k(R.id.sdv_image), pic_info.get(0));
                }
            }
            bVar.u(R.id.giftPackageSwich, g_info.getGift_package_switch() == 1);
            long parseDouble = (long) (Double.parseDouble(g_info.getApp_size()) * 1024.0d * 1024.0d);
            if (g_info.getScore().doubleValue() > 0.0d && g_info.showScore()) {
                bVar.K(R.id.tv_score, String.valueOf(g_info.getScore()));
                bVar.u(R.id.tv_score, true);
            } else {
                bVar.u(R.id.tv_score, false);
            }
            bVar.K(R.id.tv_label, UtilsMy.p1(g_info.getSp_tag_info(), g_info.getTag_info()));
            UtilsMy.v2(g_info.getSp_tag_info(), bVar.k(R.id.relateLayoutApp), downloadTask);
            String plugin_num = g_info.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                bVar.K(R.id.mgListviewItemInstall, "开始");
                bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                bVar.u(R.id.giftPackageSwich, false);
            } else if (downloadTask == null) {
                Q(bVar, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.e0(g_info.getTag_info())) {
                    if (com.join.android.app.common.utils.a.g0(context).c(context, g_info.getPackage_name()) && UtilsMy.m0(g_info.getPay_tag_info(), g_info.getId()) == 0) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, g_info.getPackage_name());
                        if (com.join.mgps.Util.d2.i(g_info.getVer()) && k4.d() < Integer.parseInt(g_info.getVer())) {
                            bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                            bVar.K(R.id.mgListviewItemInstall, "更新");
                            bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                        } else {
                            bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                            bVar.K(R.id.mgListviewItemInstall, context.getResources().getString(R.string.download_status_finished));
                            bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                        }
                    } else {
                        bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                        UtilsMy.m0(g_info.getPay_tag_info(), g_info.getId());
                        UtilsMy.o2((TextView) bVar.k(R.id.mgListviewItemInstall), bVar.k(R.id.rLayoutRight), g_info);
                    }
                } else {
                    bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                    UtilsMy.m0(g_info.getPay_tag_info(), g_info.getId());
                    UtilsMy.o2((TextView) bVar.k(R.id.mgListviewItemInstall), bVar.k(R.id.rLayoutRight), g_info);
                }
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.m0(g_info.getPay_tag_info(), g_info.getId()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        bVar.K(R.id.mgListviewItemInstall, "暂停中");
                    } else if (status == 48) {
                        bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                        bVar.K(R.id.mgListviewItemInstall, "安装中");
                        bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                        Q(bVar, Boolean.TRUE, Boolean.FALSE);
                    } else if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                if (status == 6) {
                                    i5 = R.id.mgListviewItemInstall;
                                    i4 = R.color.app_blue_color;
                                } else if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                                                    bVar.K(R.id.mgListviewItemInstall, "更新");
                                                    bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                                                    Q(bVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                                                    bVar.K(R.id.mgListviewItemInstall, "等待");
                                                    bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                                                    Boolean bool = Boolean.FALSE;
                                                    Q(bVar, bool, bool);
                                                    try {
                                                        bVar.K(R.id.appSize, UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        ((ProgressBar) bVar.k(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    bVar.K(R.id.loding_info, "等待中");
                                                    break;
                                                case 11:
                                                    bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                                                    bVar.K(R.id.mgListviewItemInstall, "安装");
                                                    bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                                                    Q(bVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    Q(bVar, Boolean.FALSE, Boolean.TRUE);
                                                    bVar.K(R.id.appSize, UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    bVar.K(R.id.loding_info, "解压中..");
                                                    ((ProgressBar) bVar.k(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                                                    bVar.r(R.id.mgListviewItemInstall, R.drawable.extract);
                                                    bVar.K(R.id.mgListviewItemInstall, "解压中");
                                                    bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    Q(bVar, Boolean.FALSE, Boolean.TRUE);
                                                    bVar.K(R.id.appSize, UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    bVar.K(R.id.loding_info, "点击重新解压");
                                                    ((ProgressBar) bVar.k(R.id.progressBarZip)).setProgress((int) downloadTask.getProgress());
                                                    bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                                                    bVar.K(R.id.mgListviewItemInstall, "解压");
                                                    bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                            bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                            bVar.K(R.id.mgListviewItemInstall, context.getResources().getString(R.string.download_status_finished));
                            bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                            Q(bVar, Boolean.TRUE, Boolean.FALSE);
                        } else {
                            i4 = R.color.app_blue_color;
                            i5 = R.id.mgListviewItemInstall;
                        }
                        bVar.r(i5, R.drawable.btn_download_3ca4fd_stroke_1px);
                        bVar.K(i5, "继续");
                        bVar.L(i5, context.getResources().getColor(i4));
                        Boolean bool2 = Boolean.FALSE;
                        Q(bVar, bool2, bool2);
                        try {
                            bVar.K(R.id.appSize, UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            ((ProgressBar) bVar.k(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        bVar.K(R.id.loding_info, "暂停中");
                    } else {
                        UtilsMy.C3(downloadTask);
                        bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                        bVar.K(R.id.mgListviewItemInstall, "暂停");
                        bVar.L(R.id.mgListviewItemInstall, context.getResources().getColor(R.color.app_blue_color));
                        Boolean bool3 = Boolean.FALSE;
                        Q(bVar, bool3, bool3);
                        bVar.K(R.id.appSize, UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        StringBuilder sb = new StringBuilder();
                        sb.append(downloadTask.getSpeed());
                        sb.append("/S");
                        bVar.K(R.id.loding_info, sb.toString());
                        ((ProgressBar) bVar.k(R.id.progressBar)).setProgress((int) downloadTask.getProgress());
                    }
                }
                bVar.r(R.id.mgListviewItemInstall, R.drawable.btn_download_3ca4fd_stroke_1px);
                UtilsMy.m0(g_info.getPay_tag_info(), g_info.getId());
                i2 = R.id.rLayoutRight;
                UtilsMy.o2((TextView) bVar.k(R.id.mgListviewItemInstall), bVar.k(R.id.rLayoutRight), g_info);
                Q(bVar, Boolean.TRUE, Boolean.FALSE);
                bVar.k(i2).setOnClickListener(new g(commonGameInfoBean));
            }
            i2 = R.id.rLayoutRight;
            bVar.k(i2).setOnClickListener(new g(commonGameInfoBean));
        }
        if (commonGameInfoBean.getRequestStatus() == 47) {
            bVar.u(R.id.pb_loading, true);
            bVar.K(R.id.mgListviewItemInstall, "");
            return;
        }
        bVar.u(R.id.pb_loading, false);
    }

    public void D(com.join.mgps.base.b bVar, h hVar) {
        boolean z3;
        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) hVar.a();
        GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info != null) {
            ArrayList arrayList = new ArrayList();
            if (arrayList.size() == 0) {
                if (com.join.mgps.Util.d2.i(commonGameInfoBean.getBig_pic()) && com.join.mgps.Util.d2.i(commonGameInfoBean.getV_url())) {
                    arrayList.add(commonGameInfoBean.getBig_pic());
                    z3 = true;
                } else {
                    z3 = false;
                }
                List<String> pic_info = g_info.getPic_info();
                if (pic_info != null) {
                    for (int i2 = 0; i2 < pic_info.size(); i2++) {
                        arrayList.add(pic_info.get(i2));
                    }
                }
                bVar.u(R.id.screenListView, arrayList.size() > 0);
                if (arrayList.size() > 0) {
                    int intValue = g_info.getPic_position().intValue();
                    ((HListView) bVar.k(R.id.screenListView)).setAdapter((ListAdapter) new x0(this.f42195d, intValue, arrayList, z3));
                    if (intValue == 1) {
                        ((HListView) bVar.k(R.id.screenListView)).setDividerWidth(this.f42195d.getResources().getDimensionPixelSize(R.dimen.wdp10));
                        ((HListView) bVar.k(R.id.screenListView)).postInvalidate();
                    } else {
                        ((HListView) bVar.k(R.id.screenListView)).setDividerWidth(this.f42195d.getResources().getDimensionPixelSize(R.dimen.wdp20));
                        ((HListView) bVar.k(R.id.screenListView)).postInvalidate();
                    }
                    ((HListView) bVar.k(R.id.screenListView)).setOnItemClickListener(new b(arrayList, commonGameInfoBean));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: E */
    public void convert(@NonNull com.join.mgps.base.b bVar, h hVar) {
        switch (hVar.getItemType()) {
            case 1:
                z(bVar, hVar);
                return;
            case 2:
                y(bVar, hVar);
                return;
            case 3:
                x(bVar, hVar);
                return;
            case 4:
                A(bVar, hVar);
                return;
            case 5:
                t(bVar, hVar);
                return;
            case 6:
                s(bVar, hVar);
                return;
            case 7:
                w(bVar, hVar);
                return;
            case 8:
                u(bVar, hVar);
                return;
            case 9:
                q(bVar, hVar);
                return;
            case 10:
                r(bVar, hVar);
                return;
            case 11:
            case 12:
                v(bVar, hVar);
                return;
            case 13:
                B(bVar, hVar);
                return;
            default:
                return;
        }
    }

    public String F() {
        return this.f42196e;
    }

    public void L(Context context, String str) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(Integer.parseInt(str));
        com.join.mgps.Util.i0.v0(context, forumPostsBean);
    }

    public void M(e eVar) {
        this.f42198g = eVar;
    }

    void N(View view, int i2) {
        if (view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), i2, view.getPaddingRight(), i2);
    }

    public void O(View view, String str) {
        view.setOnClickListener(new d(str));
    }

    public void P(String str) {
        this.f42196e = str;
    }

    void Q(com.join.mgps.base.b bVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            bVar.u(R.id.linearLayout2, false);
            bVar.u(R.id.progressBar, false);
            bVar.u(R.id.progressBarZip, false);
            bVar.u(R.id.ll_label, true);
            return;
        }
        bVar.O(R.id.linearLayout2, true);
        if (bool2.booleanValue()) {
            bVar.u(R.id.progressBar, false);
            bVar.O(R.id.progressBarZip, true);
        } else {
            bVar.u(R.id.progressBarZip, false);
            bVar.O(R.id.progressBar, true);
        }
        bVar.u(R.id.ll_label, false);
    }

    void p(CommonGameInfoBean commonGameInfoBean) {
        if (commonGameInfoBean == null) {
            return;
        }
        ExtBean extBean = new ExtBean();
        if (commonGameInfoBean.isAdInfo()) {
            commonGameInfoBean.set_from_type(147);
            commonGameInfoBean.set_from(147);
            extBean.setFrom("147");
            extBean.set_from_type(147);
        } else {
            commonGameInfoBean.set_from_type(103);
            commonGameInfoBean.set_from(103);
            extBean.setFrom("103");
            extBean.set_from_type(103);
        }
        extBean.setPosition("112");
        extBean.setLocation(F());
        commonGameInfoBean.setExt(JsonMapper.toJsonString(extBean));
    }
}
