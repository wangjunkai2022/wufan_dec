package com.join.mgps.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.ForumProfileFavoritesActivity;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.adapter.ForumProfileFavoritesAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.e;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.tencent.bugly.Bugly;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EFragment(R.layout.mg_forum_profile_favorites_activity)
/* loaded from: classes.dex */
public class GmaeFormPostFragment extends Fragment implements AbsListView.OnScrollListener {
    private static final String L0 = ForumProfileFavoritesActivity.class.getSimpleName();
    static int M0 = 0;
    public static final String N0 = "key_mediacmd";
    public static final String O0 = "key_mediacmd_params";
    @ViewById
    static MyVideoView P0;
    static boolean Q0;
    com.join.android.app.component.video.c A;
    com.join.mgps.rpc.d B;
    Dialog C;
    com.join.mgps.customview.e E;
    private com.join.mgps.rpc.d E0;
    View F;
    @ViewById
    FrameLayout H;
    public AbsListView H0;
    @ViewById
    RelativeLayout I;
    @ViewById
    SimpleDraweeView J;
    @ViewById
    ImageView K;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f48204a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f48205b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f48206c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ForumLoadingView f48207d;

    /* renamed from: e  reason: collision with root package name */
    List<ForumData.ForumUserFavoritesData> f48208e;

    /* renamed from: f  reason: collision with root package name */
    volatile List<ForumProfileFavoritesAdapter.k0> f48209f;

    /* renamed from: g  reason: collision with root package name */
    ForumProfileFavoritesAdapter f48210g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    XListView2 f48211h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    PtrClassicFrameLayout f48212i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.h f48213j;

    /* renamed from: k  reason: collision with root package name */
    private com.join.mgps.dialog.p0 f48214k;
    @ViewById

    /* renamed from: n0  reason: collision with root package name */
    LinearLayout f48218n0;

    /* renamed from: o0  reason: collision with root package name */
    MediaController f48220o0;

    /* renamed from: p0  reason: collision with root package name */
    int f48222p0;

    /* renamed from: q0  reason: collision with root package name */
    String f48224q0;

    /* renamed from: r0  reason: collision with root package name */
    String f48226r0;

    /* renamed from: x  reason: collision with root package name */
    AccountBean f48237x;

    /* renamed from: y  reason: collision with root package name */
    Context f48239y;

    /* renamed from: y0  reason: collision with root package name */
    List<DownloadTask> f48240y0;

    /* renamed from: l  reason: collision with root package name */
    ForumProfileFavoritesAdapter.u f48215l = new k();

    /* renamed from: m  reason: collision with root package name */
    Handler f48216m = new o();

    /* renamed from: n  reason: collision with root package name */
    private int f48217n = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f48219o = 0;

    /* renamed from: p  reason: collision with root package name */
    private final int f48221p = 0;

    /* renamed from: q  reason: collision with root package name */
    private final int f48223q = 16;

    /* renamed from: r  reason: collision with root package name */
    private final int f48225r = 32;

    /* renamed from: s  reason: collision with root package name */
    private final int f48227s = 17;

    /* renamed from: t  reason: collision with root package name */
    private final int f48229t = 18;

    /* renamed from: u  reason: collision with root package name */
    private final int f48231u = 20;

    /* renamed from: v  reason: collision with root package name */
    private final int f48233v = 24;

    /* renamed from: w  reason: collision with root package name */
    private int f48235w = 0;

    /* renamed from: z  reason: collision with root package name */
    int f48241z = 0;
    e.d D = new g();
    int G = -1;

    /* renamed from: s0  reason: collision with root package name */
    boolean f48228s0 = false;

    /* renamed from: t0  reason: collision with root package name */
    int f48230t0 = -1;

    /* renamed from: u0  reason: collision with root package name */
    int f48232u0 = -1;

    /* renamed from: v0  reason: collision with root package name */
    int f48234v0 = 0;

    /* renamed from: w0  reason: collision with root package name */
    com.join.mgps.customview.t f48236w0 = null;

    /* renamed from: x0  reason: collision with root package name */
    GestureDetector f48238x0 = new GestureDetector(new n());

    /* renamed from: z0  reason: collision with root package name */
    Map<String, DownloadTask> f48242z0 = new ConcurrentHashMap();
    Map<String, DownloadTask> A0 = new HashMap();
    Map<String, DownloadTask> B0 = new HashMap();
    private int C0 = 0;
    private int D0 = 0;
    int F0 = 0;
    boolean G0 = false;
    public int I0 = 0;
    public int J0 = 0;
    public int K0 = 0;

    /* loaded from: classes4.dex */
    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GmaeFormPostFragment.this.f48214k.dismiss();
        }
    }

    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48244a;

        b(int i2) {
            this.f48244a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.android.app.common.utils.f.j(view.getContext())) {
                GmaeFormPostFragment.this.d0(view.getContext(), this.f48244a);
            } else {
                GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
                gmaeFormPostFragment.showToast(gmaeFormPostFragment.getString(R.string.net_connect_failed));
            }
            GmaeFormPostFragment.this.f48214k.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends ForumLoadingView.e {
        c(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            GmaeFormPostFragment.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends ForumLoadingView.e {
        d(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e extends ForumLoadingView.e {
        e(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            GmaeFormPostFragment.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends ForumLoadingView.e {
        f(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            GmaeFormPostFragment.this.J();
        }
    }

    /* loaded from: classes4.dex */
    class g implements e.d {
        g() {
        }

        @Override // com.join.mgps.customview.e.d
        public void a(int i2) {
        }

        @Override // com.join.mgps.customview.e.d
        public void b(ForumBean.ForumPostsBean forumPostsBean) {
        }

        @Override // com.join.mgps.customview.e.d
        public void c(int i2, boolean z3) {
            GmaeFormPostFragment.this.w0(i2, z3);
        }

        @Override // com.join.mgps.customview.e.d
        public void d(ForumBean.ForumPostsBean forumPostsBean) {
            ForumBean.ForumPostsBean h02 = GmaeFormPostFragment.this.h0(forumPostsBean.getPid());
            if (h02 != null) {
                h02.setIs_favorite(forumPostsBean.is_favorite());
                if (!forumPostsBean.is_favorite()) {
                    GmaeFormPostFragment.this.w0(forumPostsBean.getPid(), true);
                }
            }
            GmaeFormPostFragment.this.v0();
        }

        @Override // com.join.mgps.customview.e.d
        public void e(ForumBean.ForumPostsBean forumPostsBean) {
            ForumBean.ForumPostsBean h02 = GmaeFormPostFragment.this.h0(forumPostsBean.getPid());
            if (h02 != null) {
                h02.setBest(forumPostsBean.getBest());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void onCancel() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements MediaPlayer.OnCompletionListener {
        h() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            GmaeFormPostFragment.this.h1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i implements MediaPlayer.OnPreparedListener {
        i() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            GmaeFormPostFragment.this.R0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class j implements MediaPlayer.OnErrorListener {
        j() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i4) {
            GmaeFormPostFragment.this.h1();
            com.join.mgps.Util.i2.a(GmaeFormPostFragment.P0.getContext()).b("视频播放失败");
            return false;
        }
    }

    /* loaded from: classes4.dex */
    class k implements ForumProfileFavoritesAdapter.u {
        k() {
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void a(int i2) {
            FragmentActivity activity = GmaeFormPostFragment.this.getActivity();
            if (!GmaeFormPostFragment.this.isLogined(activity)) {
                GmaeFormPostFragment.this.showMessage(activity.getString(R.string.forum_user_not_login));
            } else if (!GmaeFormPostFragment.this.p1()) {
                GmaeFormPostFragment.this.b1();
            } else {
                GmaeFormPostFragment.this.P0(i2);
                GmaeFormPostFragment.this.F0(i2);
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void b(int i2) {
            GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
            gmaeFormPostFragment.a1(gmaeFormPostFragment.h0(i2));
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void c(int i2) {
            ForumProfileFavoritesAdapter.k0.o oVar = (ForumProfileFavoritesAdapter.k0.o) GmaeFormPostFragment.this.f48209f.get(i2).a();
            GmaeFormPostFragment.this.G = i2;
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{GmaeFormPostFragment.this.G + "", oVar.f40179b, oVar.f40178a});
            GmaeFormPostFragment.this.X(bundle);
            GmaeFormPostFragment.this.x0();
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void d(int i2) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(GmaeFormPostFragment.this.f48239y, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void e(String str) {
            GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
            gmaeFormPostFragment.G0 = true;
            gmaeFormPostFragment.f0(str);
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void f(int i2) {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(i2);
            com.join.mgps.Util.i0.r0(GmaeFormPostFragment.this.f48239y, forumBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class l implements MyVideoView.h {
        l() {
        }

        @Override // com.join.android.app.component.video.MyVideoView.h
        public boolean a(boolean z3) {
            com.join.mgps.Util.u0.e("onScreenChanged", "fullscreen=" + z3);
            GmaeFormPostFragment.this.g0();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.setVisibility(8);
            GmaeFormPostFragment.this.R0();
        }
    }

    /* loaded from: classes4.dex */
    class n extends GestureDetector.SimpleOnGestureListener {
        n() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            Fresco.getImagePipeline().I();
            return super.onFling(motionEvent, motionEvent2, f4, f5);
        }
    }

    /* loaded from: classes4.dex */
    class o extends Handler {
        o() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            GmaeFormPostFragment.this.f48211h.u();
            GmaeFormPostFragment.this.f48211h.t();
            if (GmaeFormPostFragment.this.f48219o == -1) {
                GmaeFormPostFragment.this.f48211h.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class p implements com.join.mgps.customview.i {
        p() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
            gmaeFormPostFragment.r0(gmaeFormPostFragment.f48217n + 1);
            if (GmaeFormPostFragment.this.f48219o == -1) {
                GmaeFormPostFragment.this.i1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class q implements com.join.mgps.customview.j {
        q() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.f.j(GmaeFormPostFragment.this.f48239y)) {
                GmaeFormPostFragment.this.f48219o = 0;
                GmaeFormPostFragment.this.r0(1);
                return;
            }
            GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
            gmaeFormPostFragment.showToast(gmaeFormPostFragment.getString(R.string.net_connect_failed));
            GmaeFormPostFragment.this.a0(17);
            GmaeFormPostFragment.this.i1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class r implements View.OnTouchListener {
        r() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            GmaeFormPostFragment.this.f48238x0.onTouchEvent(motionEvent);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class s implements AdapterView.OnItemClickListener {
        s() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = GmaeFormPostFragment.this.f48210g;
            if (forumProfileFavoritesAdapter != null && forumProfileFavoritesAdapter.getItemViewType(i2) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) GmaeFormPostFragment.this.f48210g.getItem(i2);
                Context context = adapterView.getContext();
                if (bVar.a() == null || bVar.a().getGame() == null) {
                    return;
                }
                ForumBean.GameInfo gameInfo = new ForumBean.GameInfo();
                gameInfo.setSp_tpl_two_position(bVar.a().getGame().getSp_tpl_two_position());
                gameInfo.setGame_id(bVar.a().getGame().getGame_id());
                gameInfo.setGame_info_tpl_type(bVar.a().getGame().getGame_info_tpl_type());
                com.join.mgps.Util.i0.I0(context, gameInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class t implements AdapterView.OnItemLongClickListener {
        t() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = GmaeFormPostFragment.this.f48210g;
            if (forumProfileFavoritesAdapter == null) {
                return false;
            }
            if (forumProfileFavoritesAdapter.getItemViewType(i2) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) GmaeFormPostFragment.this.f48210g.getItem(i2);
                if (bVar.a() == null || bVar.a().getGame() == null) {
                    return true;
                }
                GmaeFormPostFragment.this.e1(bVar.a().getGame().getGame_id());
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class u implements l1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48264a;

        u(String str) {
            this.f48264a = str;
        }

        @Override // l1.b
        public void a(Dialog dialog) {
            dialog.dismiss();
        }

        @Override // l1.b
        public void b(Dialog dialog) {
            GmaeFormPostFragment.this.C.dismiss();
            GmaeFormPostFragment.this.Z(1, this.f48264a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class v implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48266a;

        v(String str) {
            this.f48266a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GmaeFormPostFragment.this.C.dismiss();
            GmaeFormPostFragment.this.Z(1, this.f48266a);
        }
    }

    public static boolean A0(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getRepeatCount() == 0 && M0 == 2) {
            Q0 = true;
            j1();
        }
        return true;
    }

    private void I0(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f48240y0.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f48242z0.remove(next.getCrc_link_type_val());
                it2.remove();
                k1(downloadTask, 2);
                break;
            }
        }
        this.f48211h.requestLayout();
        v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        a0(0);
        p0();
        if (com.join.android.app.common.utils.f.j(this.f48239y)) {
            t0();
            return;
        }
        showToast(getString(R.string.net_connect_failed));
        a0(17);
    }

    private void J0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f48242z0;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            k1(downloadTask, 3);
            v0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void K0(DownloadTask downloadTask) {
        UtilsMy.E3(this.f48240y0, downloadTask);
        Map<String, DownloadTask> map = this.f48242z0;
        if (map != null) {
            if (map.containsKey(downloadTask.getCrc_link_type_val())) {
                this.f48242z0.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                this.f48240y0.add(downloadTask);
                this.f48242z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        k1(downloadTask, 0);
        v0();
    }

    private void L0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f48242z0;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f48240y0.add(downloadTask);
            this.f48242z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        k1(downloadTask, 1);
        DownloadTask downloadTask2 = this.f48242z0.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f48211h.requestLayout();
        v0();
    }

    private void M0() {
        int i2 = 0;
        while (true) {
            List<DownloadTask> list = this.f48240y0;
            if (list == null || i2 >= list.size()) {
                return;
            }
            y0(g1.f.G().B(this.f48240y0.get(i2).getCrc_link_type_val()), 4);
            i2++;
        }
    }

    private AccountBean S(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void V0(ForumBean.ForumPostsBean forumPostsBean) {
        boolean z3;
        String message;
        if (com.join.mgps.Util.d2.h(forumPostsBean.getSubject()) || com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim())) {
            z3 = false;
        } else {
            ForumProfileFavoritesAdapter.ViewType viewType = ForumProfileFavoritesAdapter.ViewType.P_SUBJECT;
            boolean z4 = forumPostsBean.getBest() > 0;
            String subject = forumPostsBean.getSubject();
            int pid = forumPostsBean.getPid();
            int fid = forumPostsBean.getFid();
            boolean z5 = forumPostsBean.getHelp() > 0;
            this.f48209f.add(new ForumProfileFavoritesAdapter.k0(viewType, new ForumProfileFavoritesAdapter.k0.f(false, z4, subject, pid, fid, z5, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info(), forumPostsBean.getTags(), forumPostsBean.getFname())));
            z3 = true;
        }
        if (!z3) {
            ForumProfileFavoritesAdapter.ViewType viewType2 = ForumProfileFavoritesAdapter.ViewType.P_SUBJECT;
            boolean z6 = forumPostsBean.getBest() > 0;
            String message2 = forumPostsBean.getMessage();
            int pid2 = forumPostsBean.getPid();
            boolean z7 = forumPostsBean.getHelp() > 0;
            this.f48209f.add(new ForumProfileFavoritesAdapter.k0(viewType2, new ForumProfileFavoritesAdapter.k0.f(false, z6, message2, pid2, 0, z7, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info(), forumPostsBean.getTags(), forumPostsBean.getFname())));
        } else {
            boolean z8 = forumPostsBean.getSubject() == null || com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim());
            if (!com.join.mgps.Util.d2.h(forumPostsBean.getMessage()) && !com.join.mgps.Util.d2.h(forumPostsBean.getMessage().trim())) {
                Context context = this.f48239y;
                String message3 = forumPostsBean.getMessage();
                boolean z9 = forumPostsBean.getHelp() > 0;
                SpannableStringBuilder m02 = com.join.mgps.Util.i0.m0(context, message3, z8, z9, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info());
                boolean z10 = z8 && forumPostsBean.getBest() > 0;
                String message4 = forumPostsBean.getMessage();
                int pid3 = forumPostsBean.getPid();
                boolean z11 = z8 && forumPostsBean.getHelp() > 0;
                ForumProfileFavoritesAdapter.k0.e eVar = new ForumProfileFavoritesAdapter.k0.e(false, z10, message4, pid3, 0, z11, forumPostsBean.getHelp_money() + "", z8 ? forumPostsBean.getTag_info() : null, z8, m02);
                this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_MESSAGE, eVar));
                this.f48210g.j().e(eVar);
            }
        }
        boolean z12 = (forumPostsBean.getRelation_game() == null || TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id())) ? false : true;
        if (!z12) {
            List<ForumBean.ForumPostsBean.ResBean> rs_list = forumPostsBean.getRs_list();
            ArrayList arrayList = new ArrayList();
            boolean isAttach_video = forumPostsBean.isAttach_video();
            String str = "";
            String str2 = str;
            for (int i2 = 0; rs_list != null && i2 < rs_list.size(); i2++) {
                ForumBean.ForumPostsBean.ResBean resBean = rs_list.get(i2);
                if (resBean.getType().equals("pic")) {
                    arrayList.add(resBean.getRaw());
                } else if (resBean.getType().equals("video") && com.join.mgps.Util.d2.h(str2)) {
                    str = resBean.getThumb();
                    str2 = resBean.getRaw();
                }
            }
            if (com.join.mgps.Util.d2.i(forumPostsBean.getSubject())) {
                message = forumPostsBean.getSubject();
            } else {
                message = com.join.mgps.Util.d2.i(forumPostsBean.getMessage()) ? forumPostsBean.getMessage() : "";
            }
            if (isAttach_video) {
                this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_VIDEO, new ForumProfileFavoritesAdapter.k0.g(str, str2, message)));
            } else if (rs_list != null && rs_list.size() != 0) {
                this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_IMGS, new ForumProfileFavoritesAdapter.k0.d(rs_list, arrayList, forumPostsBean.getPid())));
            }
        }
        if (z12) {
            G0(forumPostsBean.getRelation_game());
            ForumProfileFavoritesAdapter.ViewType viewType3 = ForumProfileFavoritesAdapter.ViewType.POST_GAME;
            this.f48209f.add(new ForumProfileFavoritesAdapter.k0(viewType3, new ForumProfileFavoritesAdapter.k0.i(true, forumPostsBean.getPid() + "", forumPostsBean.getRelation_game())));
        }
        this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_FOOTER, new ForumProfileFavoritesAdapter.k0.c(1, forumPostsBean.getAvatar_src(), forumPostsBean.getLast_comment_time(), forumPostsBean.getNickname(), forumPostsBean.getPraise(), forumPostsBean.getCommit(), forumPostsBean.getPid(), forumPostsBean.getView(), forumPostsBean.is_praise(), forumPostsBean.getUid())));
    }

    private void W0(ForumBean.ForumPostsBean forumPostsBean) {
        String str = "";
        if (forumPostsBean.getSubject() != null && !com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim())) {
            ForumProfileFavoritesAdapter.ViewType viewType = ForumProfileFavoritesAdapter.ViewType.POST_SUBJECT;
            boolean z3 = forumPostsBean.getBest() > 0;
            String subject = forumPostsBean.getSubject();
            int pid = forumPostsBean.getPid();
            int fid = forumPostsBean.getFid();
            boolean z4 = forumPostsBean.getHelp() > 0;
            this.f48209f.add(new ForumProfileFavoritesAdapter.k0(viewType, new ForumProfileFavoritesAdapter.k0.m(z3, subject, pid, fid, z4, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info())));
        }
        boolean z5 = forumPostsBean.getSubject() == null || com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim());
        if (!com.join.mgps.Util.d2.h(forumPostsBean.getMessage()) && !com.join.mgps.Util.d2.h(forumPostsBean.getMessage().trim())) {
            Context context = this.f48239y;
            String message = forumPostsBean.getMessage();
            boolean z6 = forumPostsBean.getHelp() > 0;
            SpannableStringBuilder m02 = com.join.mgps.Util.i0.m0(context, message, z5, z6, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info());
            boolean z7 = z5 && forumPostsBean.getBest() > 0;
            String message2 = forumPostsBean.getMessage();
            int pid2 = forumPostsBean.getPid();
            int fid2 = forumPostsBean.getFid();
            boolean z8 = z5 && forumPostsBean.getHelp() > 0;
            ForumProfileFavoritesAdapter.k0.l lVar = new ForumProfileFavoritesAdapter.k0.l(z7, message2, pid2, fid2, z8, forumPostsBean.getHelp_money() + "", z5 ? forumPostsBean.getTag_info() : null, m02);
            this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_MESSAGE, lVar));
            this.f48210g.j().e(lVar);
        }
        List<ForumBean.ForumPostsBean.ResBean> rs_list = forumPostsBean.getRs_list();
        ArrayList arrayList = new ArrayList();
        boolean isAttach_video = forumPostsBean.isAttach_video();
        String str2 = "";
        String str3 = str2;
        for (int i2 = 0; rs_list != null && i2 < rs_list.size(); i2++) {
            ForumBean.ForumPostsBean.ResBean resBean = rs_list.get(i2);
            if (resBean.getType().equals("pic")) {
                arrayList.add(resBean.getRaw());
            } else if (resBean.getType().equals("video") && com.join.mgps.Util.d2.h(str3)) {
                str2 = resBean.getThumb();
                str3 = resBean.getRaw();
            }
        }
        if (com.join.mgps.Util.d2.i(forumPostsBean.getSubject())) {
            str = forumPostsBean.getSubject();
        } else if (com.join.mgps.Util.d2.i(forumPostsBean.getMessage())) {
            str = forumPostsBean.getMessage();
        }
        if (isAttach_video) {
            this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_VIDEO_THUMBNAIL, new ForumProfileFavoritesAdapter.k0.o(str2, str3, str)));
        } else if (rs_list != null && rs_list.size() != 0) {
            this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_IMAGE_THUMBNAIL, new ForumProfileFavoritesAdapter.k0.k(rs_list, arrayList, forumPostsBean.getPid())));
        }
        this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_FOOTER, new ForumProfileFavoritesAdapter.k0.h(forumPostsBean.getPid(), forumPostsBean.getFid(), forumPostsBean.getFname(), forumPostsBean.getView(), forumPostsBean.getCommit(), forumPostsBean.getPraise(), forumPostsBean.is_praise(), false)));
    }

    private void X0(List<ForumData.ForumUserFavoritesData> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = list.get(i2);
            if (forumUserFavoritesData.getType() == 1) {
                S0(forumUserFavoritesData);
                U0(forumUserFavoritesData);
            } else if (forumUserFavoritesData.getType() == 2) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post.is_favorite()) {
                    S0(forumUserFavoritesData);
                    V0(post);
                }
            }
        }
    }

    private void d1(int i2) {
        if (this.f48214k == null) {
            com.join.mgps.dialog.p0 p0Var = new com.join.mgps.dialog.p0(this.f48239y);
            this.f48214k = p0Var;
            p0Var.f("确定");
            this.f48214k.d("取消");
            this.f48214k.b(8);
            this.f48214k.g("确定要删除该帖吗？").c(new a());
        }
        this.f48214k.e(new b(i2));
        if (this.f48214k.isShowing()) {
            return;
        }
        this.f48214k.show();
    }

    private void e0() {
        com.join.mgps.customview.t tVar = this.f48236w0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f48236w0.dismiss();
    }

    private void f1() {
        this.f48212i.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean S = S(context);
        return S != null && com.join.mgps.Util.d2.i(S.getToken());
    }

    static void j1() {
        MyVideoView myVideoView = P0;
        if (myVideoView != null) {
            myVideoView.setFullScreen(!Q0);
        }
    }

    private void k0() {
        this.f48204a.setVisibility(8);
        this.f48212i.setVisibility(8);
    }

    private void m1() {
        XListView2 xListView2 = this.f48211h;
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = this.f48210g;
        if (forumProfileFavoritesAdapter != null && this.C0 <= forumProfileFavoritesAdapter.getCount()) {
            for (int i2 = this.D0; i2 <= this.C0; i2++) {
                if (this.f48210g.getItemViewType(i2) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                    ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) this.f48210g.getItem(i2);
                    if (bVar.a() != null && bVar.a().getGame() != null) {
                        DownloadTask downloadTask = bVar.a().getDownloadTask();
                        String game_id = bVar.a().getGame().getGame_id();
                        if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                            View childAt = xListView2.getChildAt(i2 - this.D0);
                            if (childAt.getTag() instanceof ForumProfileFavoritesAdapter.w) {
                                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(game_id);
                                l1((ForumProfileFavoritesAdapter.w) childAt.getTag(), downloadTask, f4);
                                k1(f4, 4);
                            }
                        }
                    }
                }
            }
        }
    }

    private void n0() {
        this.f48206c.setText("我的收藏");
        this.f48208e = new ArrayList();
        this.f48211h.requestFocus();
        this.f48211h.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f48211h.setPullLoadEnable(new p());
        this.f48211h.setPullRefreshEnable(new q());
        this.f48209f = new ArrayList();
        this.A = new com.join.android.app.component.video.c(this.f48239y, L0);
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = new ForumProfileFavoritesAdapter(this.f48239y, this.A);
        this.f48210g = forumProfileFavoritesAdapter;
        forumProfileFavoritesAdapter.M(this.f48215l);
        this.f48211h.setAdapter((ListAdapter) this.f48210g);
        this.f48211h.setOnScrollListener(this);
        this.f48211h.setOnTouchListener(new r());
        this.f48211h.setOnItemClickListener(new s());
        this.f48211h.setOnItemLongClickListener(new t());
    }

    private void playVideo() {
        String str = this.f48224q0;
        String str2 = this.f48226r0;
        this.J.setVisibility(0);
        this.J.setScaleType(ImageView.ScaleType.FIT_XY);
        MyImageLoader.h(this.J, str2);
        LinearLayout linearLayout = this.f48218n0;
        if (this.f48220o0 == null) {
            MediaController mediaController = new MediaController(this.f48239y);
            this.f48220o0 = mediaController;
            mediaController.q();
            this.f48220o0.hide();
            this.f48220o0.setVisibility(8);
        }
        if (P0.isPlaying()) {
            MyVideoView myVideoView = P0;
            if (myVideoView != null) {
                myVideoView.I();
                linearLayout.setVisibility(8);
            }
            MediaController mediaController2 = this.f48220o0;
            if (mediaController2 != null) {
                mediaController2.setVisibility(8);
            }
        }
        P0.setVisibility(0);
        this.f48220o0.setAnchorView(P0);
        this.f48220o0.setMediaPlayer(P0);
        P0.setMediaController(this.f48220o0);
        P0.requestFocus();
        linearLayout.setVisibility(0);
        if (P0.E() && !P0.isPlaying()) {
            R0();
            com.join.mgps.Util.u0.e("play a last video ...");
        } else {
            P0.setVideoPath(str);
            com.join.mgps.Util.u0.e("play a new video ...");
        }
        P0.setOnCompletionListener(new h());
        P0.setOnPreparedListener(new i());
        P0.setOnErrorListener(new j());
        P0.setScreenChangedListener(new l());
        this.K.setOnClickListener(new m());
    }

    private void t0() {
        r0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void B0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = this.f48210g;
        if (forumProfileFavoritesAdapter != null) {
            forumProfileFavoritesAdapter.notifyDataSetChanged();
        }
    }

    void C0() {
        MyVideoView myVideoView = P0;
        if (myVideoView.isPlaying() && (myVideoView != null)) {
            P0.pause();
            this.K.setVisibility(0);
        }
    }

    void D0(String str, String str2) {
        String str3 = this.f48224q0;
        if (str3 != null && str3.equals(str) && P0.isPlaying()) {
            C0();
            return;
        }
        MyVideoView myVideoView = P0;
        if (myVideoView != null) {
            if (myVideoView.E() && this.f48224q0.equals(str)) {
                P0.seekTo(0);
                R0();
            } else {
                P0.G();
            }
        }
        this.f48224q0 = str;
        this.f48226r0 = str2;
        if (com.join.mgps.Util.d2.h(str)) {
            h1();
            return;
        }
        this.J.setVisibility(8);
        this.K.setVisibility(8);
        playVideo();
    }

    void E0(boolean z3) {
        Bundle bundle = new Bundle();
        bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY_BACKGROUND.name());
        bundle.putStringArray("key_mediacmd_params", new String[]{String.valueOf(z3)});
        X(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0(int i2) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this.f48239y)) {
                com.join.mgps.Util.i0.L0(this.f48239y);
                com.join.mgps.Util.i2.a(this.f48239y).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this.f48239y, i2);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f48213j.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                P0(i2);
                b1();
                return;
            }
            ForumData.ForumPostsPraiseData data = o3.getData();
            data.isResult();
            com.join.mgps.Util.i0.m1(e02, data);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void G0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask B = g1.f.G().B(gameInfo.getGame_id());
                gameInfo.setDownloadTask(B);
                Map<String, DownloadTask> map = this.f48242z0;
                if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                    return;
                }
                this.f48240y0.add(B);
                this.f48242z0.put(B.getCrc_link_type_val(), B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(List<ForumData.ForumUserFavoritesData> list, int i2) {
        if (list != null && list.size() != 0) {
            if (i2 == 1) {
                this.f48208e.clear();
                this.f48217n = 1;
                i1();
            }
            this.f48208e.addAll(list);
        }
        i1();
        v0();
    }

    void N0() {
        if (this.f48228s0) {
            this.H.setVisibility(0);
        } else {
            this.H.setVisibility(8);
        }
    }

    void O0(Intent intent) {
        if (intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra(ForumPostsTagSelectActivity_.f30340y, 0);
        int intExtra2 = intent.getIntExtra("view", 0);
        int intExtra3 = intent.getIntExtra("comment", 0);
        int intExtra4 = intent.getIntExtra("praise", 0);
        boolean booleanExtra = intent.getBooleanExtra("isPraise", false);
        boolean booleanExtra2 = intent.getBooleanExtra("isFavorite", true);
        if (intExtra == 0) {
            return;
        }
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f48208e) {
            if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData.getPost() != null) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post.getPid() == intExtra) {
                    post.setView(intExtra2);
                    post.setCommit(intExtra3);
                    post.setPraise(intExtra4);
                    post.setIs_praise(booleanExtra);
                    if (!booleanExtra2) {
                        this.f48208e.remove(post);
                    }
                    v0();
                    return;
                }
            }
        }
    }

    void P0(int i2) {
        List<ForumData.ForumUserFavoritesData> list = this.f48208e;
        if (list == null || list.size() == 0) {
            return;
        }
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f48208e) {
            if (forumUserFavoritesData.getType() == 2) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post == null) {
                    return;
                }
                if (post.getPid() == i2) {
                    post.setPraise(post.is_praise() ? post.getPraise() - 1 : post.getPraise() + 1);
                    post.setIs_praise(!post.is_praise());
                    v0();
                    return;
                }
            }
        }
    }

    RelativeLayout.LayoutParams Q0() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.H.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.H.setPadding(0, 0, 0, 0);
        }
        RelativeLayout relativeLayout = this.I;
        if (relativeLayout == null) {
            return layoutParams;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
        }
        this.H.setTop(0);
        return layoutParams;
    }

    void R0() {
        MyVideoView myVideoView = P0;
        if (myVideoView.E() & (myVideoView != null)) {
            this.f48218n0.setVisibility(8);
            this.J.setVisibility(8);
            this.K.setVisibility(8);
            P0.start();
            MediaController mediaController = this.f48220o0;
            if (mediaController != null) {
                mediaController.setVisibility(8);
                return;
            }
            return;
        }
        playVideo();
    }

    void S0(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
        if (forumUserFavoritesData == null) {
            return;
        }
        this.f48209f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.FAVORITE_ITEM_HEADER, new ForumProfileFavoritesAdapter.k0.a(false, forumUserFavoritesData.getType(), forumUserFavoritesData.getFav_time())));
    }

    public void T(AbsListView absListView, int i2, int i4, int i5) {
        if (this.I0 != i2 || i2 == 0) {
            this.I0 = i2;
            this.J0 = i4;
            this.K0 = i5;
        }
    }

    void T0(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
        if (forumUserFavoritesData == null || forumUserFavoritesData.getGame() == null || TextUtils.isEmpty(forumUserFavoritesData.getGame().getGame_id())) {
            return;
        }
        try {
            DownloadTask B = g1.f.G().B(forumUserFavoritesData.getGame().getGame_id());
            forumUserFavoritesData.setDownloadTask(B);
            Map<String, DownloadTask> map = this.f48242z0;
            if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                return;
            }
            this.f48240y0.add(B);
            this.f48242z0.put(B.getCrc_link_type_val(), B);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void U(AbsListView absListView, int i2) {
        if (i2 != 0) {
            return;
        }
        V(absListView);
    }

    void U0(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
        T0(forumUserFavoritesData);
        new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.GAME_ITEM, new ForumProfileFavoritesAdapter.k0.b(forumUserFavoritesData));
    }

    public void V(AbsListView absListView) {
        try {
            if (!com.join.mgps.pref.h.n(this.f48239y).a()) {
                if (com.papa.gsyvideoplayer.d.e0().o() >= 0) {
                    com.papa.gsyvideoplayer.d.j0();
                    return;
                }
                return;
            }
            for (int i2 = 0; i2 < this.J0; i2++) {
                if (absListView != null && absListView.getChildAt(i2) != null && absListView.getChildAt(i2).findViewById(R.id.videoPlayer) != null) {
                    StandardVideoView standardVideoView = (StandardVideoView) absListView.getChildAt(i2).findViewById(R.id.videoPlayer);
                    Rect rect = new Rect();
                    standardVideoView.getLocalVisibleRect(rect);
                    int height = standardVideoView.getHeight();
                    StringBuilder sb = new StringBuilder();
                    sb.append("child=");
                    sb.append(i2);
                    sb.append(", videoHeight=");
                    sb.append(height);
                    sb.append(", rect.top:");
                    sb.append(rect.top);
                    sb.append(", rect.bottom:");
                    sb.append(rect.bottom);
                    if (rect.top == 0 && rect.bottom == height) {
                        int currentState = standardVideoView.getCurrentState();
                        if (currentState == 0 || currentState == 7) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("currentState=");
                            sb2.append(currentState);
                            sb2.append(" -->performClick");
                            if (com.join.android.app.common.utils.f.k(this.f48239y)) {
                                standardVideoView.startPlayLogic();
                                this.H0 = absListView;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            }
            com.papa.gsyvideoplayer.d.j0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W() {
        getActivity().finish();
    }

    public void X(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        String string = bundle.getString("key_mediacmd");
        Object[] objArr = (Object[]) bundle.get("key_mediacmd_params");
        com.join.mgps.Util.u0.e("callbackPlayVideo", "cmd=" + string, "params=" + objArr.toString());
        if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_PLAY.name())) {
            String str = null;
            String str2 = null;
            for (int i2 = 0; i2 < objArr.length; i2++) {
                String str3 = (String) objArr[i2];
                if (i2 == 0) {
                    int parseInt = Integer.parseInt(str3);
                    if (parseInt == this.f48222p0) {
                        return;
                    }
                    h1();
                    this.f48222p0 = parseInt;
                } else if (i2 == 1) {
                    str = str3;
                } else if (i2 == 2) {
                    str2 = str3;
                }
            }
            com.join.mgps.Util.u0.e("CMD_PLAY", "videoUrl=" + str, "coverUrl=" + str2);
            this.H.setVisibility(0);
            this.f48228s0 = true;
            Y0();
            D0(str, str2);
        } else if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_PLAY_BACKGROUND.name())) {
            if (this.f48222p0 == -1) {
                return;
            }
            if (Boolean.parseBoolean((String) objArr[0])) {
                this.H.setVisibility(8);
                this.f48228s0 = false;
                h1();
            } else if (this.f48222p0 != -1) {
                this.H.setVisibility(0);
                this.f48228s0 = true;
            }
        } else if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_PAUSE.name())) {
            C0();
        } else if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_STOP.name())) {
            h1();
        } else if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_FULLSCREEN.name())) {
            String str4 = Bugly.SDK_IS_DEV;
            for (int i4 = 0; i4 < objArr.length; i4++) {
                if (i4 == 0) {
                    str4 = (String) objArr[0];
                }
                if (i4 == 1) {
                    String str5 = (String) objArr[1];
                }
            }
            Boolean.parseBoolean(str4);
            g0();
        } else if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_TRANSLATE_Y.name())) {
            String str6 = "0";
            String str7 = "0";
            for (int i5 = 0; i5 < objArr.length; i5++) {
                if (i5 == 0) {
                    str6 = (String) objArr[0];
                }
                if (i5 == 1) {
                    str7 = (String) objArr[1];
                }
            }
            int parseInt2 = Integer.parseInt(str6);
            int parseInt3 = Integer.parseInt(str7);
            com.join.mgps.Util.u0.e("CMD_TRANSLATE_Y", "top=" + parseInt2, "offset=" + parseInt3);
            z0(parseInt2, parseInt3);
        }
    }

    void Y0() {
        RelativeLayout relativeLayout = this.I;
        if (relativeLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = j0(this.f48239y);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.H.getLayoutParams();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_top);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_bottom);
        if (layoutParams2 != null) {
            layoutParams2.height = -2;
            this.H.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize3);
        }
        this.I.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z(int i2, String str) {
        int i4;
        String str2;
        if (com.join.android.app.common.utils.f.j(this.f48239y)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f48239y).getAccountData();
            if (accountData != null) {
                i4 = this.f48241z;
                if (i4 == 0) {
                    i4 = accountData.getUid();
                }
            } else {
                i4 = 0;
            }
            try {
                PackageInfo packageInfo = this.f48239y.getPackageManager().getPackageInfo(this.f48239y.getPackageName(), 0);
                str2 = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str2 = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str2);
            requestdetialFolowAndBeSpeak.setGame_id(str);
            requestdetialFolowAndBeSpeak.setUid(i4);
            requestdetialFolowAndBeSpeak.setMobile(accountData.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f48239y).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.B.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.B.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.B.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.B.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                o1(resultMainBean, i2, str);
                return;
            } else {
                com.join.mgps.Util.i2.a(this.f48239y).b(getString(R.string.game_unfollow_failed));
                return;
            }
        }
        com.join.mgps.Util.i2.a(this.f48239y).b(getString(R.string.network_conn_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0() {
        XListView2 xListView2 = this.f48211h;
        if (xListView2 != null) {
            xListView2.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0(int i2) {
        int i4;
        ForumLoadingView forumLoadingView = this.f48207d;
        if (forumLoadingView == null || (i4 = this.f48235w) == 32) {
            return;
        }
        if (i2 == 32) {
            this.f48235w = 32;
            forumLoadingView.j(2);
        } else if (i2 == 0) {
            this.f48235w = 0;
            forumLoadingView.m();
            this.f48207d.j(1);
        } else {
            this.f48235w = i2 | i4;
            if (b0(-11)) {
                this.f48235w = 16;
                this.f48207d.setFailedMsg("网络连接失败，再试试吧~");
                ForumLoadingView forumLoadingView2 = this.f48207d;
                forumLoadingView2.setListener(new c(forumLoadingView2));
                this.f48207d.j(9);
            } else if (b0(22)) {
                this.f48235w = 16;
                this.f48207d.setFailedMsg("还没有收藏内容~");
                ForumLoadingView forumLoadingView3 = this.f48207d;
                forumLoadingView3.setListener(new d(forumLoadingView3));
                this.f48207d.j(10);
                this.f48207d.setReloadingVisibility(0);
                this.f48207d.setFailedReloadingRes(R.drawable.papa_loading_null);
            } else if (!b0(31) && !b0(26)) {
                if (b0(17)) {
                    this.f48235w = 16;
                    this.f48207d.setFailedMsg("网络连接失败，再试试吧~");
                    ForumLoadingView forumLoadingView4 = this.f48207d;
                    forumLoadingView4.setListener(new f(forumLoadingView4));
                    this.f48207d.j(9);
                }
            } else {
                this.f48235w = 16;
                this.f48207d.setFailedMsg("加载失败，再试试吧~");
                ForumLoadingView forumLoadingView5 = this.f48207d;
                forumLoadingView5.setListener(new e(forumLoadingView5));
                this.f48207d.j(16);
            }
        }
    }

    void a1(ForumBean.ForumPostsBean forumPostsBean) {
        if (forumPostsBean == null) {
            return;
        }
        if (this.F == null) {
            this.F = getActivity().findViewById(R.id.bottom);
        }
        if (this.E == null) {
            this.E = com.join.mgps.customview.f.z(this.f48239y);
        }
        this.E.m(this.D);
        com.join.mgps.customview.e eVar = this.E;
        if (eVar == null || eVar.isShowing()) {
            return;
        }
        this.E.p(this.F, forumPostsBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f48213j = com.join.mgps.rpc.impl.f.A0();
        this.B = com.join.mgps.rpc.impl.c.P1();
        this.f48239y = getActivity();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f48241z = arguments.getInt("uid", 0);
        }
        M0 = getResources().getConfiguration().orientation;
        this.f48237x = AccountUtil_.getInstance_(this.f48239y).getAccountData();
        try {
            l0();
            n0();
            J();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    boolean b0(int i2) {
        return (this.f48235w & i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1() {
        com.join.mgps.Util.a0.c0(this.f48239y).m(this.f48239y);
    }

    void c0() {
        if (this.f48209f == null) {
            return;
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.A0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.A0
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B0
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.A0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.A0
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B0
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B0
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.A0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.A0
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B0
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.B0
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.A0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.A0
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.B0
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.GmaeFormPostFragment.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d0(Context context, int i2) {
        try {
            if (com.join.mgps.Util.i0.c0(context, i2) != null) {
                ForumResponse<ForumData.ForumPostsDeleteData> q02 = this.f48213j.q0(com.join.mgps.Util.i0.c0(context, i2).getParams());
                ForumData.ForumPostsDeleteData data = q02 != null ? q02.getData() : null;
                w0(i2, data != null && data.isResult());
            }
        } catch (Exception unused) {
            w0(i2, false);
        }
    }

    void e1(String str) {
        if (this.C == null) {
            this.C = com.join.mgps.Util.a0.c0(this.f48239y).d(this.f48239y, "取消收藏", "确定要取消收藏吗？", "取消", "确定", new u(str));
        }
        ((Button) this.C.findViewById(R.id.dialog_button_ok)).setOnClickListener(new v(str));
        Dialog dialog = this.C;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.C.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f0(String str) {
        int i2;
        if (com.join.android.app.common.utils.f.j(this.f48239y)) {
            if (this.F0 == 1) {
                return;
            }
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(this.f48239y).getAccountData();
                    if (accountData != null) {
                        i2 = this.f48241z;
                        if (i2 == 0) {
                            i2 = accountData.getUid();
                        }
                    } else {
                        i2 = 0;
                    }
                    ResultMainBean<List<DetailResultBean>> R = this.E0.R(RequestBeanUtil.getInstance(this.f48239y).getAppDetialBean(str, i2, null));
                    if (R != null && R.getFlag() != 0) {
                        List<DetailResultBean> data = R.getMessages().getData();
                        if (data.size() != 0) {
                            DetailResultBean detailResultBean = data.get(0);
                            if (this.G0) {
                                g1(detailResultBean);
                            }
                        }
                    } else if (R != null && R.getFlag() != 0) {
                        showToast("获取游戏信息失败");
                    } else {
                        showToast("获取游戏信息失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showToast("获取游戏信息失败");
                }
                return;
            } finally {
                this.F0 = 0;
                this.G0 = false;
            }
        }
        showToast("获取游戏信息失败");
    }

    void g0() {
        if (getResources().getConfiguration().orientation == 2) {
            Q0 = false;
            f1();
            Y0();
            z0(0, 0);
            return;
        }
        Q0 = true;
        k0();
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        y0(downloadtaskDown, 0);
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(this.f48239y, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.T0(this.f48239y, downloadtaskDown)) {
            return;
        }
        if (detailResultBean.getDown_status() == 5) {
            UtilsMy.R0(this.f48239y, downloadtaskDown);
        } else {
            UtilsMy.F0(this.f48239y, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.A0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.B0.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    ForumBean.ForumPostsBean h0(int i2) {
        List<ForumData.ForumUserFavoritesData> list = this.f48208e;
        ForumBean.ForumPostsBean forumPostsBean = null;
        if (list == null) {
            return null;
        }
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : list) {
            if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData.getPost() != null) {
                forumPostsBean = forumUserFavoritesData.getPost();
                if (i2 == forumPostsBean.getPid()) {
                    break;
                }
            }
        }
        return forumPostsBean;
    }

    void h1() {
        MyVideoView myVideoView = P0;
        if (myVideoView != null) {
            myVideoView.seekTo(0);
            P0.I();
            this.f48222p0 = -1;
            P0.G();
            this.f48218n0.setVisibility(8);
            MediaController mediaController = this.f48220o0;
            if (mediaController != null) {
                mediaController.setVisibility(8);
            }
            this.K.setVisibility(0);
            if (getResources().getConfiguration().orientation == 1) {
                this.H.setVisibility(8);
                this.f48228s0 = false;
                return;
            }
            j1();
        }
    }

    ForumData.ForumUserFavoritesData i0(String str) {
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f48208e) {
            if (forumUserFavoritesData.getType() == 1 && forumUserFavoritesData.getGame() != null && !TextUtils.isEmpty(forumUserFavoritesData.getGame().getGame_id()) && forumUserFavoritesData.getGame().getGame_id().equals(str)) {
                return forumUserFavoritesData;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i1() {
        XListView2 xListView2 = this.f48211h;
        if (xListView2 != null) {
            if (xListView2.i()) {
                this.f48216m.sendEmptyMessageDelayed(0, 2000L);
            } else {
                this.f48216m.sendEmptyMessage(0);
            }
        }
    }

    int j0(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f48234v0 == 0) {
            Resources resources = context.getResources();
            this.f48234v0 = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f48234v0;
    }

    void k1(DownloadTask downloadTask, int i2) {
        com.join.mgps.Util.u0.e(L0, "event=" + i2, "downloadTask=" + downloadTask.toString());
        ForumData.ForumUserFavoritesData i02 = i0(downloadTask.getCrc_link_type_val());
        if (i02 == null) {
            return;
        }
        if (i2 == 0 || i2 == 1) {
            i02.setDownloadTask(downloadTask);
        } else if (i2 == 2) {
            i02.setDownloadTask(null);
        } else if (i2 == 3 || i2 == 4) {
            i02.setDownloadTask(downloadTask);
        }
    }

    void l0() {
        try {
            com.join.mgps.Util.c0.a().d(this);
            getDownloadTaskInfo();
            List<DownloadTask> d4 = g1.f.G().d();
            this.f48240y0 = d4;
            if (d4 != null && d4.size() > 0) {
                for (DownloadTask downloadTask : this.f48240y0) {
                    this.f48242z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.E0 = com.join.mgps.rpc.impl.c.P1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void l1(ForumProfileFavoritesAdapter.w wVar, DownloadTask downloadTask, DownloadTask downloadTask2) {
        if (downloadTask2 == null) {
            return;
        }
        try {
            long parseDouble = (long) (Double.parseDouble(downloadTask2.getShowSize()) * 1024.0d * 1024.0d);
            if (downloadTask.getSize() == 0) {
                TextView textView = wVar.f40218j;
                textView.setText(UtilsMy.a(downloadTask2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
            } else {
                TextView textView2 = wVar.f40218j;
                textView2.setText(UtilsMy.a(downloadTask2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
            }
            if (downloadTask.getStatus() == 12) {
                wVar.f40221m.setProgress((int) downloadTask2.getProgress());
            } else {
                wVar.f40220l.setProgress((int) downloadTask2.getProgress());
            }
            if (downloadTask.getStatus() == 2) {
                TextView textView3 = wVar.f40219k;
                textView3.setText(downloadTask2.getSpeed() + "/S");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void m0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n1(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    K0(downloadTask);
                    return;
                case 3:
                    I0(downloadTask);
                    return;
                case 4:
                    M0();
                    return;
                case 5:
                    L0(downloadTask);
                    return;
                case 6:
                    J0(downloadTask);
                    return;
                default:
                    return;
            }
        }
    }

    boolean o0() {
        if (this.G == -1) {
            return false;
        }
        int firstVisiblePosition = this.f48211h.getFirstVisiblePosition();
        int lastVisiblePosition = this.f48211h.getLastVisiblePosition();
        int i2 = this.G;
        return i2 >= firstVisiblePosition - 0 && i2 <= lastVisiblePosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o1(ResultMainBean resultMainBean, int i2, String str) {
        if (i2 != 1) {
            return;
        }
        if (resultMainBean.getFlag() == 1) {
            ForumData.ForumUserFavoritesData i02 = i0(str);
            List<ForumData.ForumUserFavoritesData> list = this.f48208e;
            if (list != null && list.contains(i02)) {
                this.f48208e.remove(i02);
                com.join.mgps.Util.i0.h1(i02);
            }
            v0();
            return;
        }
        com.join.mgps.Util.i2.a(this.f48239y).b(resultMainBean.getError_info());
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i4 == 3) {
            O0(intent);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        q1(configuration);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        com.join.android.app.component.video.c cVar = this.A;
        if (cVar != null) {
            cVar.z();
        }
        c0();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
        switch (lVar.c()) {
            case 2:
                n1(a4, 1);
                return;
            case 3:
                n1(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                n1(a4, 5);
                return;
            case 6:
                n1(a4, 6);
                return;
            case 7:
                n1(a4, 3);
                return;
            case 8:
                Map<String, DownloadTask> map = this.f48242z0;
                if (map == null || map.isEmpty()) {
                    return;
                }
                m1();
                return;
            case 10:
                n1(a4, 7);
                return;
            case 12:
                n1(a4, 8);
                return;
            case 13:
                n1(a4, 9);
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        h1();
        com.join.android.app.component.video.c cVar = this.A;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.A;
        if (cVar != null) {
            cVar.B();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.C0 = (i2 + i4) - 1;
        this.D0 = i2;
        r1(absListView, i2, i4, i5);
        this.A.e(absListView, i2, i4, i5);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        s1(absListView, i2);
        this.A.i(absListView, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0() {
        q0();
    }

    boolean p1() {
        if (S(this.f48239y) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f48239y).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void q0() {
        try {
            ForumTable o3 = n1.t.p().o(ForumBean.ForumEvent.MyProfileFavorites);
            if (com.join.mgps.Util.d2.h(o3.getArgs1())) {
                a0(18);
                return;
            }
            ForumData.ForumUserFavoritesDatas J = com.join.mgps.Util.i0.J(o3.getArgs1());
            List<ForumData.ForumUserFavoritesData> favorites_list = J != null ? J.getFavorites_list() : null;
            if (favorites_list != null && favorites_list.size() != 0) {
                int ceil = (int) Math.ceil((favorites_list.size() * 1.0f) / com.join.mgps.Util.i0.f27592d);
                this.f48217n = ceil;
                H0(favorites_list, ceil);
                a0(32);
                return;
            }
            a0(18);
        } catch (Exception e4) {
            a0(18);
            e4.printStackTrace();
        }
    }

    public void q1(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.f48212i.setVisibility(4);
        } else {
            this.f48212i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a8, code lost:
        if (r12.f48219o != (-1)) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b3, code lost:
        if (r12.f48219o == (-1)) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b5, code lost:
        r12.f48219o = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b7, code lost:
        i1();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void r0(int r13) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.fragment.GmaeFormPostFragment.r0(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r1(AbsListView absListView, int i2, int i4, int i5) {
        x0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s1(AbsListView absListView, int i2) {
        if (i2 == 0) {
            E0(!o0());
            if (Fresco.getImagePipeline().H()) {
                Fresco.getImagePipeline().N();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        super.setUserVisibleHint(z3);
        if (z3) {
            return;
        }
        getActivity();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f48239y).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f48239y).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0() {
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = this.f48210g;
        if (forumProfileFavoritesAdapter != null) {
            forumProfileFavoritesAdapter.P(this.f48209f);
            this.f48210g.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
    }

    synchronized void v0() {
        if (this.f48209f == null) {
            this.f48209f = new ArrayList();
        }
        this.f48209f.clear();
        X0(this.f48208e);
        u0();
        List<ForumData.ForumUserFavoritesData> list = this.f48208e;
        if (list == null || list.size() == 0) {
            this.f48235w = 0;
            this.f48207d.m();
            a0(22);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0(int i2, boolean z3) {
        if (z3) {
            List<ForumData.ForumUserFavoritesData> list = this.f48208e;
            if (list != null && list.size() != 0) {
                Iterator<ForumData.ForumUserFavoritesData> it2 = this.f48208e.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    ForumData.ForumUserFavoritesData next = it2.next();
                    if (next.getType() == 2 && next.getPost() != null && next.getPost().getPid() == i2) {
                        this.f48208e.remove(next);
                        i1();
                        v0();
                        break;
                    }
                }
            }
            ForumData.ForumUserFavoritesData forumUserFavoritesData = new ForumData.ForumUserFavoritesData();
            forumUserFavoritesData.setType(2);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            forumUserFavoritesData.setPost(forumPostsBean);
            com.join.mgps.Util.i0.h1(forumUserFavoritesData);
            com.join.mgps.Util.i2.a(this.f48239y).b("删除成功");
            return;
        }
        com.join.mgps.Util.i2.a(this.f48239y).b("删除失败");
    }

    void x0() {
        int i2;
        XListView2 xListView2 = this.f48211h;
        if (xListView2 == null || (i2 = this.G) == -1) {
            return;
        }
        int firstVisiblePosition = xListView2.getFirstVisiblePosition();
        int lastVisiblePosition = this.f48211h.getLastVisiblePosition();
        int i4 = this.G;
        if (i4 >= firstVisiblePosition + 0 && i4 <= lastVisiblePosition) {
            E0(false);
            i2 = (this.G - firstVisiblePosition) + 0;
        } else {
            E0(true);
        }
        View childAt = this.f48211h.getChildAt(i2);
        if (childAt != null) {
            int bottom = this.f48204a.getBottom();
            this.f48211h.getTop();
            int top = childAt.getTop();
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_TRANSLATE_Y.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{bottom + "", top + ""});
            X(bundle);
        }
    }

    void y0(DownloadTask downloadTask, int i2) {
        ForumBean.ForumPostsBean post;
        boolean z3 = false;
        for (int i4 = 0; i4 < this.f48208e.size(); i4++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = this.f48208e.get(i4);
            if (forumUserFavoritesData.getType() == 1) {
                CollectionBeanSub game = forumUserFavoritesData.getGame();
                if (game != null && !TextUtils.isEmpty(game.getGame_id()) && game.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    forumUserFavoritesData.setDownloadTask(downloadTask);
                    z3 |= true;
                }
            } else {
                if (forumUserFavoritesData.getType() == 2 && (post = forumUserFavoritesData.getPost()) != null && post.getRelation_game() != null && !TextUtils.isEmpty(post.getRelation_game().getGame_id()) && post.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    post.getRelation_game().setDownloadTask(downloadTask);
                    z3 |= true;
                }
            }
        }
        if (z3) {
            v0();
        }
    }

    void z0(int i2, int i4) {
        if (getResources().getConfiguration().orientation == 2) {
            ViewCompat.setTranslationY(this.H, -this.H.getTop());
            return;
        }
        this.f48230t0 = i2;
        this.f48232u0 = i4;
        com.join.mgps.Util.u0.e("offsetContainer", "mTop=" + this.f48230t0, "mOffsetY=" + this.f48232u0);
        ViewCompat.setTranslationY(this.H, (float) this.f48232u0);
    }
}
