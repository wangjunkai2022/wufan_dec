package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
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
import com.BaseAppCompatActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
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
import com.join.mgps.dto.ExtBean;
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
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.mg_forum_profile_favorites_activity)
/* loaded from: classes.dex */
public class ForumProfileFavoritesActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    private static final String H0 = ForumProfileFavoritesActivity.class.getSimpleName();
    public static final String I0 = "key_mediacmd";
    public static final String J0 = "key_mediacmd_params";
    Dialog A;
    com.join.mgps.customview.e C;
    View D;
    private com.join.mgps.rpc.d E0;
    @ViewById
    FrameLayout F;
    @ViewById
    RelativeLayout G;
    @ViewById
    MyVideoView H;
    @ViewById
    SimpleDraweeView I;
    @ViewById
    ImageView J;
    @ViewById
    LinearLayout K;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f30406a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f30407b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f30408c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ForumLoadingView f30409d;

    /* renamed from: e  reason: collision with root package name */
    List<ForumData.ForumUserFavoritesData> f30410e;

    /* renamed from: f  reason: collision with root package name */
    volatile List<ForumProfileFavoritesAdapter.k0> f30411f;

    /* renamed from: g  reason: collision with root package name */
    ForumProfileFavoritesAdapter f30412g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    XListView2 f30413h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    PtrClassicFrameLayout f30414i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.h f30415j;

    /* renamed from: k  reason: collision with root package name */
    private com.join.mgps.dialog.p0 f30416k;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    ExtBean f30417l;

    /* renamed from: n0  reason: collision with root package name */
    MediaController f30420n0;

    /* renamed from: o0  reason: collision with root package name */
    int f30422o0;

    /* renamed from: p0  reason: collision with root package name */
    String f30424p0;

    /* renamed from: q0  reason: collision with root package name */
    String f30426q0;

    /* renamed from: r0  reason: collision with root package name */
    boolean f30428r0;

    /* renamed from: y  reason: collision with root package name */
    com.join.android.app.component.video.c f30441y;

    /* renamed from: y0  reason: collision with root package name */
    List<DownloadTask> f30442y0;

    /* renamed from: z  reason: collision with root package name */
    com.join.mgps.rpc.d f30443z;

    /* renamed from: m  reason: collision with root package name */
    ForumProfileFavoritesAdapter.u f30418m = new k();

    /* renamed from: n  reason: collision with root package name */
    Handler f30419n = new o();

    /* renamed from: o  reason: collision with root package name */
    private int f30421o = 0;

    /* renamed from: p  reason: collision with root package name */
    private int f30423p = 0;

    /* renamed from: q  reason: collision with root package name */
    private final int f30425q = 0;

    /* renamed from: r  reason: collision with root package name */
    private final int f30427r = 16;

    /* renamed from: s  reason: collision with root package name */
    private final int f30429s = 32;

    /* renamed from: t  reason: collision with root package name */
    private final int f30431t = 17;

    /* renamed from: u  reason: collision with root package name */
    private final int f30433u = 18;

    /* renamed from: v  reason: collision with root package name */
    private final int f30435v = 20;

    /* renamed from: w  reason: collision with root package name */
    private final int f30437w = 24;

    /* renamed from: x  reason: collision with root package name */
    private int f30439x = 0;
    e.d B = new g();
    int E = -1;

    /* renamed from: s0  reason: collision with root package name */
    boolean f30430s0 = false;

    /* renamed from: t0  reason: collision with root package name */
    int f30432t0 = -1;

    /* renamed from: u0  reason: collision with root package name */
    int f30434u0 = -1;

    /* renamed from: v0  reason: collision with root package name */
    int f30436v0 = 0;

    /* renamed from: w0  reason: collision with root package name */
    com.join.mgps.customview.t f30438w0 = null;

    /* renamed from: x0  reason: collision with root package name */
    GestureDetector f30440x0 = new GestureDetector(new n());

    /* renamed from: z0  reason: collision with root package name */
    Map<String, DownloadTask> f30444z0 = new ConcurrentHashMap();
    Map<String, DownloadTask> A0 = new HashMap();
    Map<String, DownloadTask> B0 = new HashMap();
    private int C0 = 0;
    private int D0 = 0;
    int F0 = 0;
    boolean G0 = false;

    /* loaded from: classes3.dex */
    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileFavoritesActivity.this.f30416k.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30446a;

        b(int i2) {
            this.f30446a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.android.app.common.utils.f.j(view.getContext())) {
                ForumProfileFavoritesActivity.this.N0(view.getContext(), this.f30446a);
            } else {
                ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
                forumProfileFavoritesActivity.showToast(forumProfileFavoritesActivity.getString(R.string.net_connect_failed));
            }
            ForumProfileFavoritesActivity.this.f30416k.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
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
            ForumProfileFavoritesActivity.this.d1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
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
    /* loaded from: classes3.dex */
    public class e extends ForumLoadingView.e {
        e(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumProfileFavoritesActivity.this.d1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
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
            ForumProfileFavoritesActivity.this.d1();
        }
    }

    /* loaded from: classes3.dex */
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
            ForumProfileFavoritesActivity.this.g1(i2, z3);
        }

        @Override // com.join.mgps.customview.e.d
        public void d(ForumBean.ForumPostsBean forumPostsBean) {
            ForumBean.ForumPostsBean R0 = ForumProfileFavoritesActivity.this.R0(forumPostsBean.getPid());
            if (R0 != null) {
                R0.setIs_favorite(forumPostsBean.is_favorite());
                if (!forumPostsBean.is_favorite()) {
                    ForumProfileFavoritesActivity.this.g1(forumPostsBean.getPid(), true);
                }
            }
            ForumProfileFavoritesActivity.this.f1();
        }

        @Override // com.join.mgps.customview.e.d
        public void e(ForumBean.ForumPostsBean forumPostsBean) {
            ForumBean.ForumPostsBean R0 = ForumProfileFavoritesActivity.this.R0(forumPostsBean.getPid());
            if (R0 != null) {
                R0.setBest(forumPostsBean.getBest());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void onCancel() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements MediaPlayer.OnCompletionListener {
        h() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            ForumProfileFavoritesActivity.this.M1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements MediaPlayer.OnPreparedListener {
        i() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            ForumProfileFavoritesActivity.this.x1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements MediaPlayer.OnErrorListener {
        j() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i4) {
            ForumProfileFavoritesActivity.this.M1();
            com.join.mgps.Util.i2.a(ForumProfileFavoritesActivity.this.H.getContext()).b("视频播放失败");
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class k implements ForumProfileFavoritesAdapter.u {
        k() {
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void a(int i2) {
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            if (!forumProfileFavoritesActivity.isLogined(forumProfileFavoritesActivity)) {
                ForumProfileFavoritesActivity.this.showMessage(forumProfileFavoritesActivity.getString(R.string.forum_user_not_login));
            } else if (!ForumProfileFavoritesActivity.this.S1()) {
                ForumProfileFavoritesActivity.this.H1();
            } else {
                ForumProfileFavoritesActivity.this.v1(i2);
                ForumProfileFavoritesActivity.this.p1(i2);
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void b(int i2) {
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            forumProfileFavoritesActivity.G1(forumProfileFavoritesActivity.R0(i2));
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void c(int i2) {
            ForumProfileFavoritesAdapter.k0.o oVar = (ForumProfileFavoritesAdapter.k0.o) ForumProfileFavoritesActivity.this.f30411f.get(i2).a();
            ForumProfileFavoritesActivity.this.E = i2;
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{ForumProfileFavoritesActivity.this.E + "", oVar.f40179b, oVar.f40178a});
            ForumProfileFavoritesActivity.this.callbackPlayVideo(bundle);
            ForumProfileFavoritesActivity.this.h1();
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void d(int i2) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(ForumProfileFavoritesActivity.this, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void e(String str) {
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            forumProfileFavoritesActivity.G0 = true;
            forumProfileFavoritesActivity.P0(str);
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void f(int i2) {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(i2);
            com.join.mgps.Util.i0.r0(ForumProfileFavoritesActivity.this, forumBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements MyVideoView.h {
        l() {
        }

        @Override // com.join.android.app.component.video.MyVideoView.h
        public boolean a(boolean z3) {
            com.join.mgps.Util.u0.e("onScreenChanged", "fullscreen=" + z3);
            ForumProfileFavoritesActivity.this.Q0();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.setVisibility(8);
            ForumProfileFavoritesActivity.this.x1();
        }
    }

    /* loaded from: classes3.dex */
    class n extends GestureDetector.SimpleOnGestureListener {
        n() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            Fresco.getImagePipeline().I();
            return super.onFling(motionEvent, motionEvent2, f4, f5);
        }
    }

    /* loaded from: classes3.dex */
    class o extends Handler {
        o() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ForumProfileFavoritesActivity.this.f30413h.u();
            ForumProfileFavoritesActivity.this.f30413h.t();
            if (ForumProfileFavoritesActivity.this.f30423p == -1) {
                ForumProfileFavoritesActivity.this.f30413h.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements com.join.mgps.customview.i {
        p() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            forumProfileFavoritesActivity.b1(forumProfileFavoritesActivity.f30421o + 1);
            if (ForumProfileFavoritesActivity.this.f30423p == -1) {
                ForumProfileFavoritesActivity.this.N1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements com.join.mgps.customview.j {
        q() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.f.j(ForumProfileFavoritesActivity.this)) {
                ForumProfileFavoritesActivity.this.f30423p = 0;
                ForumProfileFavoritesActivity.this.b1(1);
                return;
            }
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            forumProfileFavoritesActivity.showToast(forumProfileFavoritesActivity.getString(R.string.net_connect_failed));
            ForumProfileFavoritesActivity.this.K0(17);
            ForumProfileFavoritesActivity.this.N1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnTouchListener {
        r() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ForumProfileFavoritesActivity.this.f30440x0.onTouchEvent(motionEvent);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements AdapterView.OnItemClickListener {
        s() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = ForumProfileFavoritesActivity.this.f30412g;
            if (forumProfileFavoritesAdapter != null && forumProfileFavoritesAdapter.getItemViewType(i2) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) ForumProfileFavoritesActivity.this.f30412g.getItem(i2);
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
    /* loaded from: classes3.dex */
    public class t implements AdapterView.OnItemLongClickListener {
        t() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = ForumProfileFavoritesActivity.this.f30412g;
            if (forumProfileFavoritesAdapter == null) {
                return false;
            }
            if (forumProfileFavoritesAdapter.getItemViewType(i2) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) ForumProfileFavoritesActivity.this.f30412g.getItem(i2);
                if (bVar.a() == null || bVar.a().getGame() == null) {
                    return true;
                }
                ForumProfileFavoritesActivity.this.K1(bVar.a().getGame().getGame_id());
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements l1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30466a;

        u(String str) {
            this.f30466a = str;
        }

        @Override // l1.b
        public void a(Dialog dialog) {
            dialog.dismiss();
        }

        @Override // l1.b
        public void b(Dialog dialog) {
            ForumProfileFavoritesActivity.this.A.dismiss();
            ForumProfileFavoritesActivity.this.J0(1, this.f30466a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30468a;

        v(String str) {
            this.f30468a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileFavoritesActivity.this.A.dismiss();
            ForumProfileFavoritesActivity.this.J0(1, this.f30468a);
        }
    }

    private void B1(ForumBean.ForumPostsBean forumPostsBean) {
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
            this.f30411f.add(new ForumProfileFavoritesAdapter.k0(viewType, new ForumProfileFavoritesAdapter.k0.f(false, z4, subject, pid, fid, z5, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info(), forumPostsBean.getTags(), forumPostsBean.getFname())));
            z3 = true;
        }
        if (!z3) {
            ForumProfileFavoritesAdapter.ViewType viewType2 = ForumProfileFavoritesAdapter.ViewType.P_SUBJECT;
            boolean z6 = forumPostsBean.getBest() > 0;
            String message2 = forumPostsBean.getMessage();
            int pid2 = forumPostsBean.getPid();
            boolean z7 = forumPostsBean.getHelp() > 0;
            this.f30411f.add(new ForumProfileFavoritesAdapter.k0(viewType2, new ForumProfileFavoritesAdapter.k0.f(false, z6, message2, pid2, 0, z7, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info(), forumPostsBean.getTags(), forumPostsBean.getFname())));
        } else {
            boolean z8 = forumPostsBean.getSubject() == null || com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim());
            if (!com.join.mgps.Util.d2.h(forumPostsBean.getMessage()) && !com.join.mgps.Util.d2.h(forumPostsBean.getMessage().trim())) {
                String message3 = forumPostsBean.getMessage();
                boolean z9 = forumPostsBean.getHelp() > 0;
                SpannableStringBuilder m02 = com.join.mgps.Util.i0.m0(this, message3, z8, z9, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info());
                boolean z10 = z8 && forumPostsBean.getBest() > 0;
                String message4 = forumPostsBean.getMessage();
                int pid3 = forumPostsBean.getPid();
                boolean z11 = z8 && forumPostsBean.getHelp() > 0;
                ForumProfileFavoritesAdapter.k0.e eVar = new ForumProfileFavoritesAdapter.k0.e(false, z10, message4, pid3, 0, z11, forumPostsBean.getHelp_money() + "", z8 ? forumPostsBean.getTag_info() : null, z8, m02);
                this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_MESSAGE, eVar));
                this.f30412g.j().e(eVar);
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
                this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_VIDEO, new ForumProfileFavoritesAdapter.k0.g(str, str2, message)));
            } else if (rs_list != null && rs_list.size() != 0) {
                this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_IMGS, new ForumProfileFavoritesAdapter.k0.d(rs_list, arrayList, forumPostsBean.getPid())));
            }
        }
        if (z12) {
            q1(forumPostsBean.getRelation_game());
            ForumProfileFavoritesAdapter.ViewType viewType3 = ForumProfileFavoritesAdapter.ViewType.POST_GAME;
            this.f30411f.add(new ForumProfileFavoritesAdapter.k0(viewType3, new ForumProfileFavoritesAdapter.k0.i(true, forumPostsBean.getPid() + "", forumPostsBean.getRelation_game())));
        }
        this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_FOOTER, new ForumProfileFavoritesAdapter.k0.c(1, forumPostsBean.getAvatar_src(), forumPostsBean.getLast_comment_time(), forumPostsBean.getNickname(), forumPostsBean.getPraise(), forumPostsBean.getCommit(), forumPostsBean.getPid(), forumPostsBean.getView(), forumPostsBean.is_praise(), forumPostsBean.getUid())));
    }

    private void C1(ForumBean.ForumPostsBean forumPostsBean) {
        String str = "";
        if (forumPostsBean.getSubject() != null && !com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim())) {
            ForumProfileFavoritesAdapter.ViewType viewType = ForumProfileFavoritesAdapter.ViewType.POST_SUBJECT;
            boolean z3 = forumPostsBean.getBest() > 0;
            String subject = forumPostsBean.getSubject();
            int pid = forumPostsBean.getPid();
            int fid = forumPostsBean.getFid();
            boolean z4 = forumPostsBean.getHelp() > 0;
            this.f30411f.add(new ForumProfileFavoritesAdapter.k0(viewType, new ForumProfileFavoritesAdapter.k0.m(z3, subject, pid, fid, z4, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info())));
        }
        boolean z5 = forumPostsBean.getSubject() == null || com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim());
        if (!com.join.mgps.Util.d2.h(forumPostsBean.getMessage()) && !com.join.mgps.Util.d2.h(forumPostsBean.getMessage().trim())) {
            String message = forumPostsBean.getMessage();
            boolean z6 = forumPostsBean.getHelp() > 0;
            SpannableStringBuilder m02 = com.join.mgps.Util.i0.m0(this, message, z5, z6, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info());
            boolean z7 = z5 && forumPostsBean.getBest() > 0;
            String message2 = forumPostsBean.getMessage();
            int pid2 = forumPostsBean.getPid();
            int fid2 = forumPostsBean.getFid();
            boolean z8 = z5 && forumPostsBean.getHelp() > 0;
            ForumProfileFavoritesAdapter.k0.l lVar = new ForumProfileFavoritesAdapter.k0.l(z7, message2, pid2, fid2, z8, forumPostsBean.getHelp_money() + "", z5 ? forumPostsBean.getTag_info() : null, m02);
            this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_MESSAGE, lVar));
            this.f30412g.j().e(lVar);
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
            this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_VIDEO_THUMBNAIL, new ForumProfileFavoritesAdapter.k0.o(str2, str3, str)));
        } else if (rs_list != null && rs_list.size() != 0) {
            this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_IMAGE_THUMBNAIL, new ForumProfileFavoritesAdapter.k0.k(rs_list, arrayList, forumPostsBean.getPid())));
        }
        this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_FOOTER, new ForumProfileFavoritesAdapter.k0.h(forumPostsBean.getPid(), forumPostsBean.getFid(), forumPostsBean.getFname(), forumPostsBean.getView(), forumPostsBean.getCommit(), forumPostsBean.getPraise(), forumPostsBean.is_praise(), false)));
    }

    private void D1(List<ForumData.ForumUserFavoritesData> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = list.get(i2);
            if (forumUserFavoritesData.getType() == 1) {
                y1(forumUserFavoritesData);
                A1(forumUserFavoritesData);
            } else if (forumUserFavoritesData.getType() == 2) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post.is_favorite()) {
                    y1(forumUserFavoritesData);
                    B1(post);
                }
            }
        }
    }

    private void J1(int i2) {
        if (this.f30416k == null) {
            com.join.mgps.dialog.p0 p0Var = new com.join.mgps.dialog.p0(this);
            this.f30416k = p0Var;
            p0Var.f("确定");
            this.f30416k.d("取消");
            this.f30416k.b(8);
            this.f30416k.g("确定要删除该帖吗？").c(new a());
        }
        this.f30416k.e(new b(i2));
        if (this.f30416k.isShowing()) {
            return;
        }
        this.f30416k.show();
    }

    private void L1() {
        this.f30406a.setVisibility(0);
        this.f30414i.setVisibility(0);
    }

    private void O0() {
        com.join.mgps.customview.t tVar = this.f30438w0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f30438w0.dismiss();
    }

    private void U0() {
        this.f30406a.setVisibility(8);
        this.f30414i.setVisibility(8);
    }

    private void X0() {
        this.f30408c.setText("我的收藏");
        this.f30410e = new ArrayList();
        this.f30413h.requestFocus();
        this.f30413h.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f30413h.setPullLoadEnable(new p());
        this.f30413h.setPullRefreshEnable(new q());
        this.f30411f = new ArrayList();
        this.f30441y = new com.join.android.app.component.video.c(this, H0);
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = new ForumProfileFavoritesAdapter(this, this.f30441y);
        this.f30412g = forumProfileFavoritesAdapter;
        forumProfileFavoritesAdapter.M(this.f30418m);
        this.f30413h.setAdapter((ListAdapter) this.f30412g);
        this.f30413h.setOnScrollListener(this);
        this.f30413h.setOnTouchListener(new r());
        this.f30413h.setOnItemClickListener(new s());
        this.f30413h.setOnItemLongClickListener(new t());
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void c1() {
        b1(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1() {
        K0(0);
        Z0();
        if (com.join.android.app.common.utils.f.j(this)) {
            c1();
            return;
        }
        showToast(getString(R.string.net_connect_failed));
        K0(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    private void o1() {
        String str = this.f30424p0;
        String str2 = this.f30426q0;
        this.I.setVisibility(0);
        this.I.setScaleType(ImageView.ScaleType.FIT_XY);
        MyImageLoader.h(this.I, str2);
        LinearLayout linearLayout = this.K;
        if (this.f30420n0 == null) {
            MediaController mediaController = new MediaController(this);
            this.f30420n0 = mediaController;
            mediaController.q();
            this.f30420n0.hide();
            this.f30420n0.setVisibility(8);
        }
        if (this.H.isPlaying()) {
            MyVideoView myVideoView = this.H;
            if (myVideoView != null) {
                myVideoView.I();
                linearLayout.setVisibility(8);
            }
            MediaController mediaController2 = this.f30420n0;
            if (mediaController2 != null) {
                mediaController2.setVisibility(8);
            }
        }
        this.H.setVisibility(0);
        this.f30420n0.setAnchorView(this.H);
        this.f30420n0.setMediaPlayer(this.H);
        this.H.setMediaController(this.f30420n0);
        this.H.requestFocus();
        linearLayout.setVisibility(0);
        if (this.H.E() && !this.H.isPlaying()) {
            x1();
            com.join.mgps.Util.u0.e("play a last video ...");
        } else {
            this.H.setVideoPath(str);
            com.join.mgps.Util.u0.e("play a new video ...");
        }
        this.H.setOnCompletionListener(new h());
        this.H.setOnPreparedListener(new i());
        this.H.setOnErrorListener(new j());
        this.H.setScreenChangedListener(new l());
        this.J.setOnClickListener(new m());
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f30442y0.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f30444z0.remove(next.getCrc_link_type_val());
                it2.remove();
                P1(downloadTask, 2);
                break;
            }
        }
        this.f30413h.requestLayout();
        f1();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f30444z0;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            P1(downloadTask, 3);
            f1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.f30442y0, downloadTask);
        Map<String, DownloadTask> map = this.f30444z0;
        if (map != null) {
            if (map.containsKey(downloadTask.getCrc_link_type_val())) {
                this.f30444z0.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                this.f30442y0.add(downloadTask);
                this.f30444z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        P1(downloadTask, 0);
        f1();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f30444z0;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f30442y0.add(downloadTask);
            this.f30444z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        P1(downloadTask, 1);
        DownloadTask downloadTask2 = this.f30444z0.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f30413h.requestLayout();
        f1();
    }

    private void s1() {
        int i2 = 0;
        while (true) {
            List<DownloadTask> list = this.f30442y0;
            if (list == null || i2 >= list.size()) {
                return;
            }
            i1(g1.f.G().B(this.f30442y0.get(i2).getCrc_link_type_val()), 4);
            i2++;
        }
    }

    private void updateProgressPartly() {
        XListView2 xListView2 = this.f30413h;
        if (this.f30412g == null) {
            return;
        }
        for (int i2 = this.D0; i2 <= this.C0; i2++) {
            if (this.f30412g.getItemViewType(i2) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) this.f30412g.getItem(i2);
                if (bVar.a() != null && bVar.a().getGame() != null) {
                    DownloadTask downloadTask = bVar.a().getDownloadTask();
                    bVar.a().getGame().getGame_id();
                    if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        View childAt = xListView2.getChildAt(i2 - this.D0);
                        if (childAt.getTag() instanceof ForumProfileFavoritesAdapter.w) {
                            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                            Q1((ForumProfileFavoritesAdapter.w) childAt.getTag(), downloadTask, f4);
                            P1(f4, 4);
                        }
                    }
                }
            }
        }
    }

    void A1(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
        z1(forumUserFavoritesData);
        this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.GAME_ITEM, new ForumProfileFavoritesAdapter.k0.b(forumUserFavoritesData)));
    }

    void E1() {
        RelativeLayout relativeLayout = this.G;
        if (relativeLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = T0(this);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.F.getLayoutParams();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_top);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_bottom);
        if (layoutParams2 != null) {
            layoutParams2.height = -2;
            this.F.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize3);
        }
        this.G.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F1() {
        this.f30413h.setNoMore();
    }

    void G1(ForumBean.ForumPostsBean forumPostsBean) {
        if (forumPostsBean == null) {
            return;
        }
        if (this.D == null) {
            this.D = findViewById(R.id.bottom);
        }
        if (this.C == null) {
            this.C = com.join.mgps.customview.f.z(this);
        }
        this.C.m(this.B);
        com.join.mgps.customview.e eVar = this.C;
        if (eVar == null || eVar.isShowing()) {
            return;
        }
        this.C.p(this.D, forumPostsBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H1() {
        com.join.mgps.Util.a0.c0(this).m(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(int i2, String str) {
        String str2;
        if (com.join.android.app.common.utils.f.j(this)) {
            AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
                str2 = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str2 = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str2);
            requestdetialFolowAndBeSpeak.setGame_id(str);
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(accountData.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.f30443z.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.f30443z.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.f30443z.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.f30443z.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                R1(resultMainBean, i2, str);
                return;
            } else {
                com.join.mgps.Util.i2.a(this).b(getString(R.string.game_unfollow_failed));
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b(getString(R.string.network_conn_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(int i2) {
        int i4 = this.f30439x;
        if (i4 == 32) {
            return;
        }
        if (i2 == 32) {
            this.f30439x = 32;
            this.f30409d.j(2);
        } else if (i2 == 0) {
            this.f30439x = 0;
            this.f30409d.m();
            this.f30409d.j(1);
        } else {
            this.f30439x = i2 | i4;
            if (L0(-11)) {
                this.f30439x = 16;
                this.f30409d.setFailedMsg("网络连接失败，再试试吧~");
                ForumLoadingView forumLoadingView = this.f30409d;
                forumLoadingView.setListener(new c(forumLoadingView));
                this.f30409d.j(9);
            } else if (L0(22)) {
                this.f30439x = 16;
                this.f30409d.setFailedMsg("还没有收藏内容~");
                ForumLoadingView forumLoadingView2 = this.f30409d;
                forumLoadingView2.setListener(new d(forumLoadingView2));
                this.f30409d.j(10);
                this.f30409d.setReloadingVisibility(0);
                this.f30409d.setFailedReloadingRes(R.drawable.papa_loading_null);
            } else if (!L0(31) && !L0(26)) {
                if (L0(17)) {
                    this.f30439x = 16;
                    this.f30409d.setFailedMsg("网络连接失败，再试试吧~");
                    ForumLoadingView forumLoadingView3 = this.f30409d;
                    forumLoadingView3.setListener(new f(forumLoadingView3));
                    this.f30409d.j(9);
                }
            } else {
                this.f30439x = 16;
                this.f30409d.setFailedMsg("加载失败，再试试吧~");
                ForumLoadingView forumLoadingView4 = this.f30409d;
                forumLoadingView4.setListener(new e(forumLoadingView4));
                this.f30409d.j(16);
            }
        }
    }

    void K1(String str) {
        if (this.A == null) {
            this.A = com.join.mgps.Util.a0.c0(this).d(this, "取消收藏", "确定要取消收藏吗？", "取消", "确定", new u(str));
        }
        ((Button) this.A.findViewById(R.id.dialog_button_ok)).setOnClickListener(new v(str));
        Dialog dialog = this.A;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.A.show();
    }

    boolean L0(int i2) {
        return (this.f30439x & i2) == i2;
    }

    void M0() {
        if (this.f30411f == null) {
            return;
        }
        System.gc();
    }

    void M1() {
        MyVideoView myVideoView = this.H;
        if (myVideoView != null) {
            myVideoView.seekTo(0);
            this.H.I();
            this.f30422o0 = -1;
            this.H.G();
            this.K.setVisibility(8);
            MediaController mediaController = this.f30420n0;
            if (mediaController != null) {
                mediaController.setVisibility(8);
            }
            this.J.setVisibility(0);
            if (getResources().getConfiguration().orientation == 1) {
                this.F.setVisibility(8);
                this.f30430s0 = false;
                return;
            }
            O1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0(Context context, int i2) {
        try {
            if (com.join.mgps.Util.i0.c0(context, i2) != null) {
                ForumResponse<ForumData.ForumPostsDeleteData> q02 = this.f30415j.q0(com.join.mgps.Util.i0.c0(context, i2).getParams());
                ForumData.ForumPostsDeleteData data = q02 != null ? q02.getData() : null;
                g1(i2, data != null && data.isResult());
            }
        } catch (Exception unused) {
            g1(i2, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N1() {
        if (this.f30413h.i()) {
            this.f30419n.sendEmptyMessageDelayed(0, 2000L);
        } else {
            this.f30419n.sendEmptyMessage(0);
        }
    }

    void O1() {
        MyVideoView myVideoView = this.H;
        if (myVideoView != null) {
            myVideoView.setFullScreen(!this.f30428r0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.F0 == 1) {
                return;
            }
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                    ResultMainBean<List<DetailResultBean>> R = this.E0.R(RequestBeanUtil.getInstance(this).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                    if (R != null && R.getFlag() != 0) {
                        List<DetailResultBean> data = R.getMessages().getData();
                        if (data.size() != 0) {
                            DetailResultBean detailResultBean = data.get(0);
                            if (this.G0) {
                                startDown(detailResultBean);
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

    void P1(DownloadTask downloadTask, int i2) {
        com.join.mgps.Util.u0.e(H0, "event=" + i2, "downloadTask=" + downloadTask.toString());
        ForumData.ForumUserFavoritesData S0 = S0(downloadTask.getCrc_link_type_val());
        if (S0 == null) {
            return;
        }
        if (i2 == 0 || i2 == 1) {
            S0.setDownloadTask(downloadTask);
        } else if (i2 == 2) {
            S0.setDownloadTask(null);
        } else if (i2 == 3 || i2 == 4) {
            S0.setDownloadTask(downloadTask);
        }
    }

    void Q0() {
        if (getResources().getConfiguration().orientation == 2) {
            this.f30428r0 = false;
            L1();
            E1();
            j1(0, 0);
            return;
        }
        this.f30428r0 = true;
        U0();
        w1();
    }

    void Q1(ForumProfileFavoritesAdapter.w wVar, DownloadTask downloadTask, DownloadTask downloadTask2) {
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

    ForumBean.ForumPostsBean R0(int i2) {
        List<ForumData.ForumUserFavoritesData> list = this.f30410e;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R1(ResultMainBean resultMainBean, int i2, String str) {
        if (i2 != 1) {
            return;
        }
        if (resultMainBean.getFlag() == 1) {
            ForumData.ForumUserFavoritesData S0 = S0(str);
            List<ForumData.ForumUserFavoritesData> list = this.f30410e;
            if (list != null && list.contains(S0)) {
                this.f30410e.remove(S0);
                com.join.mgps.Util.i0.h1(S0);
            }
            f1();
            return;
        }
        com.join.mgps.Util.i2.a(this).b(resultMainBean.getError_info());
    }

    ForumData.ForumUserFavoritesData S0(String str) {
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f30410e) {
            if (forumUserFavoritesData.getType() == 1 && forumUserFavoritesData.getGame() != null && !TextUtils.isEmpty(forumUserFavoritesData.getGame().getGame_id()) && forumUserFavoritesData.getGame().getGame_id().equals(str)) {
                return forumUserFavoritesData;
            }
        }
        return null;
    }

    boolean S1() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    int T0(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f30436v0 == 0) {
            Resources resources = context.getResources();
            this.f30436v0 = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f30436v0;
    }

    public void T1(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.f30414i.setVisibility(4);
        } else {
            this.f30414i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U1(AbsListView absListView, int i2, int i4, int i5) {
        h1();
    }

    void V0() {
        try {
            com.join.mgps.Util.c0.a().d(this);
            getDownloadTaskInfo();
            List<DownloadTask> d4 = g1.f.G().d();
            this.f30442y0 = d4;
            if (d4 != null && d4.size() > 0) {
                for (DownloadTask downloadTask : this.f30442y0) {
                    this.f30444z0.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.E0 = com.join.mgps.rpc.impl.c.P1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V1(AbsListView absListView, int i2) {
        if (i2 == 0) {
            n1(!Y0());
            if (Fresco.getImagePipeline().H()) {
                Fresco.getImagePipeline().N();
            }
        }
    }

    public void W0() {
    }

    boolean Y0() {
        if (this.E == -1) {
            return false;
        }
        int firstVisiblePosition = this.f30413h.getFirstVisiblePosition();
        int lastVisiblePosition = this.f30413h.getLastVisiblePosition();
        int i2 = this.E;
        return i2 >= firstVisiblePosition - 0 && i2 <= lastVisiblePosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z0() {
        a1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void a1() {
        try {
            ForumTable o3 = n1.t.p().o(ForumBean.ForumEvent.MyProfileFavorites);
            if (com.join.mgps.Util.d2.h(o3.getArgs1())) {
                K0(18);
                return;
            }
            ForumData.ForumUserFavoritesDatas J = com.join.mgps.Util.i0.J(o3.getArgs1());
            List<ForumData.ForumUserFavoritesData> favorites_list = J != null ? J.getFavorites_list() : null;
            if (favorites_list != null && favorites_list.size() != 0) {
                int ceil = (int) Math.ceil((favorites_list.size() * 1.0f) / com.join.mgps.Util.i0.f27592d);
                this.f30421o = ceil;
                r1(favorites_list, ceil);
                K0(32);
                return;
            }
            K0(18);
        } catch (Exception e4) {
            K0(18);
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30415j = com.join.mgps.rpc.impl.f.A0();
        this.f30443z = com.join.mgps.rpc.impl.c.P1();
        try {
            V0();
            X0();
            d1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a0, code lost:
        if (r12.f30423p != (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ab, code lost:
        if (r12.f30423p == (-1)) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ad, code lost:
        r12.f30423p = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00af, code lost:
        N1();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b1(int r13) {
        /*
            r12 = this;
            java.lang.String r5 = ""
            boolean r0 = com.join.android.app.common.utils.f.j(r12)
            r8 = 0
            r9 = -1
            if (r0 == 0) goto Lbd
            int r0 = r12.f30423p
            if (r13 != r0) goto Lf
            return
        Lf:
            if (r0 != r9) goto L14
            r12.N1()
        L14:
            r12.f30423p = r13
            r10 = 24
            r11 = 1
            if (r13 <= r11) goto L25
            r12.I1()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            goto L25
        L1f:
            r13 = move-exception
            goto Lb3
        L22:
            r13 = move-exception
            goto La3
        L25:
            com.join.mgps.Util.RequestBeanUtil.getInstance(r12)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L2e
            java.lang.String r0 = com.join.mgps.Util.RequestBeanUtil.getVersionAndVersionName()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L2e
            r6 = r0
            goto L33
        L2e:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            r6 = r5
        L33:
            com.join.mgps.dto.AccountBean r0 = com.join.mgps.Util.i0.T(r12)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            boolean r1 = com.join.mgps.Util.i0.Y0(r12)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            if (r1 == 0) goto L9b
            com.join.mgps.rpc.h r1 = r12.f30415j     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            int r2 = r0.getUid()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            java.lang.String r3 = r0.getToken()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            int r4 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            r7 = 2
            r0 = r1
            r1 = r2
            r2 = r3
            r3 = r13
            com.join.mgps.dto.ForumResponse r0 = r0.y(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            if (r0 == 0) goto L93
            java.lang.Object r0 = r0.getData()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            com.join.mgps.dto.ForumData$ForumUserFavoritesDatas r0 = (com.join.mgps.dto.ForumData.ForumUserFavoritesDatas) r0     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            if (r13 != r11) goto L5f
            com.join.mgps.Util.i0.s1(r0)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
        L5f:
            if (r0 == 0) goto L89
            java.util.List r0 = r0.getFavorites_list()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            if (r0 == 0) goto L73
            int r1 = r0.size()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            if (r1 == 0) goto L73
            r12.f30421o = r13     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            r12.r1(r0, r13)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            goto L75
        L73:
            r12.f30423p = r9     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
        L75:
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            if (r0 != 0) goto L83
            if (r13 != r11) goto L83
            r13 = 20
            r12.K0(r13)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            goto L9e
        L83:
            r13 = 32
            r12.K0(r13)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            goto L9e
        L89:
            int r13 = r12.f30423p
            if (r13 == r9) goto L8f
            r12.f30423p = r8
        L8f:
            r12.N1()
            return
        L93:
            r12.f30423p = r8     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
            r12.f30423p = r8
            r12.N1()
            return
        L9b:
            r12.K0(r10)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L22
        L9e:
            int r13 = r12.f30423p
            if (r13 == r9) goto Laf
            goto Lad
        La3:
            r12.K0(r10)     // Catch: java.lang.Throwable -> L1f
            r13.printStackTrace()     // Catch: java.lang.Throwable -> L1f
            int r13 = r12.f30423p
            if (r13 == r9) goto Laf
        Lad:
            r12.f30423p = r8
        Laf:
            r12.N1()
            goto Ld5
        Lb3:
            int r0 = r12.f30423p
            if (r0 == r9) goto Lb9
            r12.f30423p = r8
        Lb9:
            r12.N1()
            throw r13
        Lbd:
            int r13 = r12.f30423p
            if (r13 == r9) goto Lc3
            r12.f30423p = r8
        Lc3:
            r13 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r13 = r12.getString(r13)
            r12.showToast(r13)
            r13 = 17
            r12.K0(r13)
            r12.N1()
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumProfileFavoritesActivity.b1(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    public void callbackPlayVideo(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        String string = bundle.getString("key_mediacmd");
        Object[] objArr = (Object[]) bundle.get("key_mediacmd_params");
        com.join.mgps.Util.u0.e("callbackPlayVideo", "cmd=" + string, "params=" + objArr.toString());
        if (string.equals(MediaCmd.CMD_PLAY.name())) {
            String str = null;
            String str2 = null;
            for (int i2 = 0; i2 < objArr.length; i2++) {
                String str3 = (String) objArr[i2];
                if (i2 == 0) {
                    int parseInt = Integer.parseInt(str3);
                    if (parseInt == this.f30422o0) {
                        return;
                    }
                    M1();
                    this.f30422o0 = parseInt;
                } else if (i2 == 1) {
                    str = str3;
                } else if (i2 == 2) {
                    str2 = str3;
                }
            }
            com.join.mgps.Util.u0.e("CMD_PLAY", "videoUrl=" + str, "coverUrl=" + str2);
            this.F.setVisibility(0);
            this.f30430s0 = true;
            E1();
            m1(str, str2);
        } else if (string.equals(MediaCmd.CMD_PLAY_BACKGROUND.name())) {
            if (this.f30422o0 == -1) {
                return;
            }
            if (Boolean.parseBoolean((String) objArr[0])) {
                this.F.setVisibility(8);
                this.f30430s0 = false;
                M1();
            } else if (this.f30422o0 != -1) {
                this.F.setVisibility(0);
                this.f30430s0 = true;
            }
        } else if (string.equals(MediaCmd.CMD_PAUSE.name())) {
            l1();
        } else if (string.equals(MediaCmd.CMD_STOP.name())) {
            M1();
        } else if (string.equals(MediaCmd.CMD_FULLSCREEN.name())) {
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
            Q0();
        } else if (string.equals(MediaCmd.CMD_TRANSLATE_Y.name())) {
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
            j1(parseInt2, parseInt3);
        }
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
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumProfileFavoritesActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e1() {
        this.f30412g.P(this.f30411f);
        this.f30412g.notifyDataSetChanged();
    }

    synchronized void f1() {
        if (this.f30411f == null) {
            this.f30411f = new ArrayList();
        }
        this.f30411f.clear();
        D1(this.f30410e);
        e1();
        List<ForumData.ForumUserFavoritesData> list = this.f30410e;
        if (list == null || list.size() == 0) {
            this.f30439x = 0;
            this.f30409d.m();
            K0(22);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(int i2, boolean z3) {
        if (z3) {
            List<ForumData.ForumUserFavoritesData> list = this.f30410e;
            if (list != null && list.size() != 0) {
                Iterator<ForumData.ForumUserFavoritesData> it2 = this.f30410e.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    ForumData.ForumUserFavoritesData next = it2.next();
                    if (next.getType() == 2 && next.getPost() != null && next.getPost().getPid() == i2) {
                        this.f30410e.remove(next);
                        N1();
                        f1();
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
            com.join.mgps.Util.i2.a(this).b("删除成功");
            return;
        }
        com.join.mgps.Util.i2.a(this).b("删除失败");
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

    void h1() {
        int i2 = this.E;
        if (i2 == -1) {
            return;
        }
        int firstVisiblePosition = this.f30413h.getFirstVisiblePosition();
        int lastVisiblePosition = this.f30413h.getLastVisiblePosition();
        int i4 = this.E;
        if (i4 >= firstVisiblePosition + 0 && i4 <= lastVisiblePosition) {
            n1(false);
            i2 = (this.E - firstVisiblePosition) + 0;
        } else {
            n1(true);
        }
        View childAt = this.f30413h.getChildAt(i2);
        if (childAt != null) {
            int bottom = this.f30406a.getBottom();
            this.f30413h.getTop();
            int top = childAt.getTop();
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_TRANSLATE_Y.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{bottom + "", top + ""});
            callbackPlayVideo(bundle);
        }
    }

    void i1(DownloadTask downloadTask, int i2) {
        ForumBean.ForumPostsBean post;
        boolean z3 = false;
        for (int i4 = 0; i4 < this.f30410e.size(); i4++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = this.f30410e.get(i4);
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
            f1();
        }
    }

    void j1(int i2, int i4) {
        if (getResources().getConfiguration().orientation == 2) {
            ViewCompat.setTranslationY(this.F, -this.F.getTop());
            return;
        }
        this.f30432t0 = i2;
        this.f30434u0 = i4;
        com.join.mgps.Util.u0.e("offsetContainer", "mTop=" + this.f30432t0, "mOffsetY=" + this.f30434u0);
        ViewCompat.setTranslationY(this.F, (float) this.f30434u0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void k1(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = this.f30412g;
        if (forumProfileFavoritesAdapter != null) {
            forumProfileFavoritesAdapter.notifyDataSetChanged();
        }
    }

    void l1() {
        MyVideoView myVideoView = this.H;
        if (myVideoView.isPlaying() && (myVideoView != null)) {
            this.H.pause();
            this.J.setVisibility(0);
        }
    }

    void m1(String str, String str2) {
        String str3 = this.f30424p0;
        if (str3 != null && str3.equals(str) && this.H.isPlaying()) {
            l1();
            return;
        }
        MyVideoView myVideoView = this.H;
        if (myVideoView != null) {
            if (myVideoView.E() && this.f30424p0.equals(str)) {
                this.H.seekTo(0);
                x1();
            } else {
                this.H.G();
            }
        }
        this.f30424p0 = str;
        this.f30426q0 = str2;
        if (com.join.mgps.Util.d2.h(str)) {
            M1();
            return;
        }
        this.I.setVisibility(8);
        this.J.setVisibility(8);
        o1();
    }

    void n1(boolean z3) {
        Bundle bundle = new Bundle();
        bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY_BACKGROUND.name());
        bundle.putStringArray("key_mediacmd_params", new String[]{String.valueOf(z3)});
        callbackPlayVideo(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i4 == 3) {
            u1(intent);
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        T1(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.android.app.component.video.c cVar = this.f30441y;
        if (cVar != null) {
            cVar.z();
        }
        com.join.mgps.Util.c0.a().e(this);
        M0();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    updateUI(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.f30444z0;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    updateProgressPartly();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            updateUI(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            updateUI(a4, 8);
                            return;
                        case 13:
                            updateUI(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            updateUI(a4, 5);
        } else {
            updateUI(a4, 2);
        }
    }

    @Override // com.BaseAppCompatActivity
    public void onFavoriteChanged(int i2, boolean z3) {
        super.onFavoriteChanged(i2, z3);
        g1(i2, !z3);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getRepeatCount() == 0 && getResources().getConfiguration().orientation == 2) {
            this.f30428r0 = true;
            O1();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        M1();
        com.join.android.app.component.video.c cVar = this.f30441y;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        com.join.android.app.component.video.c cVar = this.f30441y;
        if (cVar != null) {
            cVar.B();
        }
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.C0 = (i2 + i4) - 1;
        this.D0 = i2;
        U1(absListView, i2, i4, i5);
        this.f30441y.e(absListView, i2, i4, i5);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        V1(absListView, i2);
        this.f30441y.i(absListView, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p1(int i2) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this, i2);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f30415j.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                v1(i2);
                H1();
                return;
            }
            ForumData.ForumPostsPraiseData data = o3.getData();
            data.isResult();
            com.join.mgps.Util.i0.m1(e02, data);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void q1(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask B = g1.f.G().B(gameInfo.getGame_id());
                gameInfo.setDownloadTask(B);
                Map<String, DownloadTask> map = this.f30444z0;
                if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                    return;
                }
                this.f30442y0.add(B);
                this.f30444z0.put(B.getCrc_link_type_val(), B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r1(List<ForumData.ForumUserFavoritesData> list, int i2) {
        if (list != null && list.size() != 0) {
            if (i2 == 1) {
                this.f30410e.clear();
                this.f30421o = 1;
                N1();
            }
            this.f30410e.addAll(list);
        }
        N1();
        f1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startDown(DetailResultBean detailResultBean) {
        DownloadTask downloadtaskDown;
        if (detailResultBean == null || (downloadtaskDown = detailResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        i1(downloadtaskDown, 0);
        if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.m3(this, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.d1(downloadtaskDown, detailResultBean);
        if (UtilsMy.T0(this, downloadtaskDown)) {
            return;
        }
        if (detailResultBean.getDown_status() == 5) {
            UtilsMy.R0(this, downloadtaskDown);
        } else {
            UtilsMy.F0(this, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    void t1() {
        if (this.f30430s0) {
            this.F.setVisibility(0);
        } else {
            this.F.setVisibility(8);
        }
    }

    void u1(Intent intent) {
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
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f30410e) {
            if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData.getPost() != null) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post.getPid() == intExtra) {
                    post.setView(intExtra2);
                    post.setCommit(intExtra3);
                    post.setPraise(intExtra4);
                    post.setIs_praise(booleanExtra);
                    if (!booleanExtra2) {
                        this.f30410e.remove(post);
                    }
                    f1();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    return;
                case 3:
                    receiveDelete(downloadTask);
                    return;
                case 4:
                    s1();
                    return;
                case 5:
                    receiveSuccess(downloadTask);
                    return;
                case 6:
                    receiveError(downloadTask);
                    return;
                default:
                    return;
            }
        }
    }

    void v1(int i2) {
        List<ForumData.ForumUserFavoritesData> list = this.f30410e;
        if (list == null || list.size() == 0) {
            return;
        }
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f30410e) {
            if (forumUserFavoritesData.getType() == 2) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post == null) {
                    return;
                }
                if (post.getPid() == i2) {
                    post.setPraise(post.is_praise() ? post.getPraise() - 1 : post.getPraise() + 1);
                    post.setIs_praise(!post.is_praise());
                    f1();
                    return;
                }
            }
        }
    }

    RelativeLayout.LayoutParams w1() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.F.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.F.setPadding(0, 0, 0, 0);
        }
        RelativeLayout relativeLayout = this.G;
        if (relativeLayout == null) {
            return layoutParams;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
        }
        this.F.setTop(0);
        return layoutParams;
    }

    void x1() {
        MyVideoView myVideoView = this.H;
        if (myVideoView.E() & (myVideoView != null)) {
            this.K.setVisibility(8);
            this.I.setVisibility(8);
            this.J.setVisibility(8);
            this.H.start();
            MediaController mediaController = this.f30420n0;
            if (mediaController != null) {
                mediaController.setVisibility(8);
                return;
            }
            return;
        }
        o1();
    }

    void y1(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
        if (forumUserFavoritesData == null) {
            return;
        }
        this.f30411f.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.FAVORITE_ITEM_HEADER, new ForumProfileFavoritesAdapter.k0.a(false, forumUserFavoritesData.getType(), forumUserFavoritesData.getFav_time())));
    }

    void z1(ForumData.ForumUserFavoritesData forumUserFavoritesData) {
        if (forumUserFavoritesData == null || forumUserFavoritesData.getGame() == null || TextUtils.isEmpty(forumUserFavoritesData.getGame().getGame_id())) {
            return;
        }
        try {
            DownloadTask B = g1.f.G().B(forumUserFavoritesData.getGame().getGame_id());
            forumUserFavoritesData.setDownloadTask(B);
            Map<String, DownloadTask> map = this.f30444z0;
            if (map == null || B == null || map.containsKey(B.getCrc_link_type_val())) {
                return;
            }
            this.f30442y0.add(B);
            this.f30444z0.put(B.getCrc_link_type_val(), B);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
