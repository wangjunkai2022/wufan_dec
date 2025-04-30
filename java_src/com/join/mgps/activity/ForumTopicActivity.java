package com.join.mgps.activity;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
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
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.adapter.ForumTopicAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView;
import com.join.mgps.customview.e;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.tencent.bugly.Bugly;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.mg_forum_forum_topic_activity)
/* loaded from: classes3.dex */
public class ForumTopicActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {

    /* renamed from: n0  reason: collision with root package name */
    public static final String f30781n0 = "key_forum_topic_bean";

    /* renamed from: o0  reason: collision with root package name */
    public static final String f30782o0 = "key_mediacmd";

    /* renamed from: p0  reason: collision with root package name */
    public static final String f30783p0 = "key_mediacmd_params";
    MediaController A;
    int B;
    String C;
    String D;
    boolean E;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RelativeLayout f30785b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f30786c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    View f30787d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ForumLoadingView f30788e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView f30789f;

    /* renamed from: g  reason: collision with root package name */
    com.join.mgps.rpc.h f30790g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.customview.j f30791h;

    /* renamed from: i  reason: collision with root package name */
    ForumTopicAdapter.k f30792i;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    ExtBean f30793j;

    /* renamed from: k  reason: collision with root package name */
    ForumTopicAdapter f30794k;

    /* renamed from: l  reason: collision with root package name */
    volatile List<ForumTopicAdapter.t> f30795l;

    /* renamed from: m  reason: collision with root package name */
    List<ForumBean.ForumPostsBean> f30796m;

    /* renamed from: n  reason: collision with root package name */
    ForumBean.ForumTopicBean f30797n;

    /* renamed from: o  reason: collision with root package name */
    int f30798o;

    /* renamed from: p  reason: collision with root package name */
    int f30799p;

    /* renamed from: q  reason: collision with root package name */
    com.join.android.app.component.video.c f30800q;

    /* renamed from: s  reason: collision with root package name */
    com.join.mgps.customview.e f30802s;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    FrameLayout f30804u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    RelativeLayout f30805v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    MyVideoView f30806w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    SimpleDraweeView f30807x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    ImageView f30808y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    LinearLayout f30809z;

    /* renamed from: a  reason: collision with root package name */
    private String f30784a = getClass().getSimpleName();

    /* renamed from: r  reason: collision with root package name */
    Handler f30801r = new k();

    /* renamed from: t  reason: collision with root package name */
    int f30803t = -1;
    boolean F = false;
    int G = -1;
    int H = -1;
    int I = 0;
    com.join.mgps.customview.t J = null;
    GestureDetector K = new GestureDetector(new f());

    /* loaded from: classes3.dex */
    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements MediaPlayer.OnCompletionListener {
        a() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            ForumTopicActivity.this.d1(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements MediaPlayer.OnPreparedListener {
        b() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            ForumTopicActivity.this.o1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements MediaPlayer.OnErrorListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i4) {
            ForumTopicActivity.this.d1(true);
            com.join.mgps.Util.i2.a(ForumTopicActivity.this.f30806w.getContext()).b("视频播放失败");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements MyVideoView.h {
        d() {
        }

        @Override // com.join.android.app.component.video.MyVideoView.h
        public boolean a(boolean z3) {
            com.join.mgps.Util.u0.e("onScreenChanged", "fullscreen=" + z3);
            ForumTopicActivity.this.J0();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.setVisibility(8);
            ForumTopicActivity.this.o1();
        }
    }

    /* loaded from: classes3.dex */
    class f extends GestureDetector.SimpleOnGestureListener {
        f() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            Fresco.getImagePipeline().I();
            return super.onFling(motionEvent, motionEvent2, f4, f5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements com.join.mgps.customview.i {
        g() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (ForumTopicActivity.this.R0()) {
                ForumTopicActivity.this.i1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements com.join.mgps.customview.j {
        h() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            ForumTopicActivity.this.x1();
            if (ForumTopicActivity.this.R0()) {
                ForumTopicActivity.this.k1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements ForumTopicAdapter.k {
        i() {
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void a(int i2) {
            ForumTopicActivity forumTopicActivity = ForumTopicActivity.this;
            if (!forumTopicActivity.isLogined(forumTopicActivity)) {
                ForumTopicActivity.this.showMessage(forumTopicActivity.getString(R.string.forum_user_not_login));
            } else if (!ForumTopicActivity.this.A1()) {
                ForumTopicActivity.this.u1();
            } else {
                ForumTopicActivity.this.l1(i2);
                ForumTopicActivity.this.f1(i2);
            }
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void b(int i2) {
            ForumTopicActivity forumTopicActivity = ForumTopicActivity.this;
            forumTopicActivity.v1(forumTopicActivity.K0(i2));
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void c(int i2) {
            ForumTopicAdapter.t.l lVar = (ForumTopicAdapter.t.l) ForumTopicActivity.this.f30795l.get(i2).a();
            ForumTopicActivity.this.f30803t = i2;
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{ForumTopicActivity.this.f30803t + "", lVar.f40631b, lVar.f40630a});
            ForumTopicActivity.this.callbackPlayVideo(bundle);
            ForumTopicActivity.this.Z0();
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void d(int i2) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(i2);
            com.join.mgps.Util.i0.v0(ForumTopicActivity.this, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void e(int i2) {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(i2);
            com.join.mgps.Util.i0.r0(ForumTopicActivity.this.getBaseContext(), forumBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnTouchListener {
        j() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ForumTopicActivity.this.K.onTouchEvent(motionEvent);
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class k extends Handler {
        k() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 0) {
                return;
            }
            ForumTopicActivity.this.f30789f.r();
            ForumTopicActivity.this.f30789f.q();
            ForumTopicActivity forumTopicActivity = ForumTopicActivity.this;
            if (forumTopicActivity.f30798o == -1) {
                forumTopicActivity.f30789f.setNoMore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l extends ForumLoadingView.e {
        l(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumTopicActivity.this.W0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends ForumLoadingView.e {
        m(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            ForumTopicActivity.this.W0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends ForumLoadingView.e {
        n(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumTopicActivity.this.W0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements e.d {
        o() {
        }

        @Override // com.join.mgps.customview.e.d
        public void a(int i2) {
        }

        @Override // com.join.mgps.customview.e.d
        public void b(ForumBean.ForumPostsBean forumPostsBean) {
        }

        @Override // com.join.mgps.customview.e.d
        public void c(int i2, boolean z3) {
            f(i2, z3);
        }

        @Override // com.join.mgps.customview.e.d
        public void d(ForumBean.ForumPostsBean forumPostsBean) {
            ForumBean.ForumPostsBean K0 = ForumTopicActivity.this.K0(forumPostsBean.getPid());
            if (K0 != null) {
                K0.setIs_favorite(forumPostsBean.is_favorite());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void e(ForumBean.ForumPostsBean forumPostsBean) {
            ForumBean.ForumPostsBean K0 = ForumTopicActivity.this.K0(forumPostsBean.getPid());
            if (K0 != null) {
                K0.setBest(forumPostsBean.getBest());
            }
        }

        void f(int i2, boolean z3) {
            ForumTopicActivity forumTopicActivity = ForumTopicActivity.this;
            List<ForumBean.ForumPostsBean> list = forumTopicActivity.f30796m;
            if (z3) {
                if (list != null && list.size() != 0) {
                    Iterator<ForumBean.ForumPostsBean> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        ForumBean.ForumPostsBean next = it2.next();
                        if (next.getPid() == i2) {
                            list.remove(next);
                            ForumTopicActivity.this.y1();
                            ForumTopicActivity.this.Y0();
                            break;
                        }
                    }
                }
                com.join.mgps.Util.i2.a(ForumTopicActivity.this.getBaseContext()).b("删除成功");
                return;
            }
            com.join.mgps.Util.i2.a(forumTopicActivity.getBaseContext()).b("删除失败");
        }

        @Override // com.join.mgps.customview.e.d
        public void onCancel() {
        }
    }

    private void G0() {
        if (this.f30795l != null) {
            this.f30795l.clear();
        }
        List<ForumBean.ForumPostsBean> list = this.f30796m;
        if (list != null) {
            list.clear();
        }
        this.f30797n = null;
        this.f30793j = null;
        this.f30801r = null;
        this.f30791h = null;
    }

    private void I0() {
        com.join.mgps.customview.t tVar = this.J;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.J.dismiss();
    }

    private void N0() {
        this.f30785b.setVisibility(8);
        this.f30789f.setVisibility(8);
    }

    private void O0() {
        ForumBean.ForumTopicBean forumTopicBean = this.f30797n;
        if (forumTopicBean != null && com.join.mgps.Util.d2.i(forumTopicBean.getName())) {
            this.f30786c.setText(this.f30797n.getName());
        } else {
            this.f30786c.setText("话题专区");
        }
    }

    private void P0() {
        this.f30789f.setPreLoadCount(com.join.mgps.Util.i0.f27593e);
        this.f30789f.setPullLoadEnable(new g());
        h hVar = new h();
        this.f30791h = hVar;
        this.f30789f.setPullRefreshEnable(hVar);
        this.f30795l = new ArrayList();
        this.f30800q = new com.join.android.app.component.video.c(this, this.f30784a);
        ForumTopicAdapter forumTopicAdapter = new ForumTopicAdapter(this, this.f30800q);
        this.f30794k = forumTopicAdapter;
        this.f30789f.setAdapter((ListAdapter) forumTopicAdapter);
        this.f30789f.setOnScrollListener(this);
        i iVar = new i();
        this.f30792i = iVar;
        this.f30794k.x(iVar);
        this.f30789f.setOnTouchListener(new j());
    }

    private void Q0() {
        F0(1);
        P0();
    }

    private void V0() {
        U0(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W0() {
        F0(1);
        if (com.join.android.app.common.utils.f.j(this)) {
            V0();
            return;
        }
        showToast(getString(R.string.net_connect_failed));
        F0(9);
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void e1() {
        String str = this.C;
        String str2 = this.D;
        this.f30807x.setVisibility(0);
        this.f30807x.setScaleType(ImageView.ScaleType.FIT_XY);
        MyImageLoader.h(this.f30807x, str2);
        LinearLayout linearLayout = this.f30809z;
        if (this.A == null) {
            MediaController mediaController = new MediaController(this);
            this.A = mediaController;
            mediaController.q();
            this.A.hide();
            this.A.setVisibility(8);
        }
        if (this.f30806w.isPlaying()) {
            MyVideoView myVideoView = this.f30806w;
            if (myVideoView != null) {
                myVideoView.I();
                linearLayout.setVisibility(8);
            }
            MediaController mediaController2 = this.A;
            if (mediaController2 != null) {
                mediaController2.setVisibility(8);
            }
        }
        this.f30806w.setVisibility(0);
        this.A.setAnchorView(this.f30806w);
        this.A.setMediaPlayer(this.f30806w);
        this.f30806w.setMediaController(this.A);
        this.f30806w.requestFocus();
        linearLayout.setVisibility(0);
        if (this.f30806w.E() && !this.f30806w.isPlaying()) {
            o1();
            com.join.mgps.Util.u0.e("play a last video ...");
        } else {
            this.f30806w.setVideoPath(str);
            com.join.mgps.Util.u0.e("play a new video ...");
        }
        this.f30806w.setOnCompletionListener(new a());
        this.f30806w.setOnPreparedListener(new b());
        this.f30806w.setOnErrorListener(new c());
        this.f30806w.setScreenChangedListener(new d());
        this.f30808y.setOnClickListener(new e());
    }

    private void g1(int i2, List<ForumBean.ForumPostsBean> list) {
        if (this.f30796m == null) {
            this.f30796m = new ArrayList();
        }
        if (list != null && list.size() != 0) {
            if (i2 == 1) {
                this.f30796m.clear();
                this.f30799p = 1;
            }
            this.f30796m.addAll(list);
        }
        y1();
        Y0();
    }

    private void h1(ForumBean.ForumTopicBean forumTopicBean) {
        this.f30797n = forumTopicBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    private void p1(List<ForumBean.ForumPostsBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            s1(list.get(i2));
        }
    }

    private void s1(ForumBean.ForumPostsBean forumPostsBean) {
        String str;
        String message;
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.f30795l.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_HEADER, new ForumTopicAdapter.t.g(false, forumPostsBean.getAvatar_src(), forumPostsBean.getNickname(), forumPostsBean.getAdd_time(), forumPostsBean.getFirst() > 0, forumPostsBean.getPid(), forumPostsBean.getFid(), accountData != null && forumPostsBean.getUid() == accountData.getUid(), forumPostsBean.getForum_auth() == 1, 0, forumPostsBean.getVip_level(), forumPostsBean.getSvip_level(), forumPostsBean.getCopper_title() != null ? forumPostsBean.getCopper_title().getBattleTitle() : "", forumPostsBean.getCopper_title() != null ? forumPostsBean.getCopper_title().getBattleColor() : "", forumPostsBean.getUid())));
        if (forumPostsBean.getSubject() != null && !com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim())) {
            ForumTopicAdapter.ViewType viewType = ForumTopicAdapter.ViewType.POST_SUBJECT;
            boolean z3 = forumPostsBean.getBest() > 0;
            String subject = forumPostsBean.getSubject();
            int pid = forumPostsBean.getPid();
            int fid = forumPostsBean.getFid();
            boolean z4 = forumPostsBean.getHelp() > 0;
            this.f30795l.add(new ForumTopicAdapter.t(viewType, new ForumTopicAdapter.t.j(z3, subject, pid, fid, z4, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info())));
        }
        boolean z5 = forumPostsBean.getSubject() == null || com.join.mgps.Util.d2.h(forumPostsBean.getSubject().trim());
        if (com.join.mgps.Util.d2.h(forumPostsBean.getMessage()) || com.join.mgps.Util.d2.h(forumPostsBean.getMessage().trim())) {
            str = "";
        } else {
            String message2 = forumPostsBean.getMessage();
            boolean z6 = forumPostsBean.getHelp() > 0;
            str = "";
            SpannableStringBuilder m02 = com.join.mgps.Util.i0.m0(this, message2, z5, z6, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info());
            boolean z7 = z5 && forumPostsBean.getBest() > 0;
            String message3 = forumPostsBean.getMessage();
            int pid2 = forumPostsBean.getPid();
            int fid2 = forumPostsBean.getFid();
            boolean z8 = z5 && forumPostsBean.getHelp() > 0;
            ForumTopicAdapter.t.i iVar = new ForumTopicAdapter.t.i(z7, message3, pid2, fid2, z8, forumPostsBean.getHelp_money() + str, z5 ? forumPostsBean.getTag_info() : null, m02);
            this.f30795l.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_MESSAGE, iVar));
            this.f30794k.g().e(iVar);
        }
        List<ForumBean.ForumPostsBean.ResBean> rs_list = forumPostsBean.getRs_list();
        ArrayList arrayList = new ArrayList();
        boolean isAttach_video = forumPostsBean.isAttach_video();
        String str2 = str;
        String str3 = str2;
        for (int i2 = 0; i2 < rs_list.size(); i2++) {
            ForumBean.ForumPostsBean.ResBean resBean = rs_list.get(i2);
            if (resBean.getType().equals("pic")) {
                arrayList.add(resBean.getRaw());
            } else if (resBean.getType().equals("video") && com.join.mgps.Util.d2.h(str3)) {
                str2 = resBean.getThumb();
                str3 = resBean.getRaw();
            }
        }
        if (com.join.mgps.Util.d2.i(forumPostsBean.getSubject())) {
            message = forumPostsBean.getSubject();
        } else {
            message = com.join.mgps.Util.d2.i(forumPostsBean.getMessage()) ? forumPostsBean.getMessage() : str;
        }
        if (isAttach_video) {
            this.f30795l.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_VIDEO_THUMBNAIL, new ForumTopicAdapter.t.l(str2, str3, message)));
        } else if (rs_list.size() != 0) {
            this.f30795l.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_IMAGE_THUMBNAIL, new ForumTopicAdapter.t.h(rs_list, arrayList, forumPostsBean.getPid())));
        }
        this.f30795l.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_FOOTER, new ForumTopicAdapter.t.f(forumPostsBean.getPid(), forumPostsBean.getFid(), forumPostsBean.getFname(), forumPostsBean.getView(), forumPostsBean.getCommit(), forumPostsBean.getPraise(), forumPostsBean.is_praise(), false)));
    }

    private void w1() {
        this.f30785b.setVisibility(0);
        this.f30789f.setVisibility(0);
    }

    boolean A1() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    boolean B1(int i2) {
        int i4 = this.f30798o;
        if (i4 == -1) {
            y1();
            return true;
        } else if (i2 == i4) {
            return true;
        } else {
            this.f30798o = i2;
            this.f30798o = i2;
            return false;
        }
    }

    public void C1(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.f30789f.setVisibility(4);
        } else {
            this.f30789f.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D1(AbsListView absListView, int i2, int i4, int i5) {
        Z0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E1(AbsListView absListView, int i2) {
        if (i2 == 0) {
            d1(!T0());
            if (Fresco.getImagePipeline().H()) {
                Fresco.getImagePipeline().N();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0(int i2) {
        if (i2 == 1) {
            this.f30788e.j(1);
        } else if (i2 == 2) {
            this.f30788e.j(2);
        } else if (i2 == 9) {
            ForumLoadingView forumLoadingView = this.f30788e;
            forumLoadingView.setListener(new l(forumLoadingView));
            this.f30788e.j(9);
        } else if (i2 == 10) {
            this.f30788e.setFailedMsg("没有更多话题哦~");
            ForumLoadingView forumLoadingView2 = this.f30788e;
            forumLoadingView2.setListener(new m(forumLoadingView2));
            this.f30788e.setReloadingVisibility(0);
            this.f30788e.j(10);
        } else if (i2 != 16) {
        } else {
            this.f30788e.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView3 = this.f30788e;
            forumLoadingView3.setListener(new n(forumLoadingView3));
            this.f30788e.j(16);
        }
    }

    void H0() {
        com.join.mgps.customview.e eVar = this.f30802s;
        if (eVar != null && eVar.isShowing()) {
            this.f30802s.dismiss();
        }
        this.f30802s = null;
    }

    void J0() {
        if (getResources().getConfiguration().orientation == 2) {
            this.E = false;
            w1();
            t1();
            a1(0, 0);
            return;
        }
        this.E = true;
        N0();
        n1();
    }

    ForumBean.ForumPostsBean K0(int i2) {
        List<ForumBean.ForumPostsBean> list = this.f30796m;
        ForumBean.ForumPostsBean forumPostsBean = null;
        if (list == null) {
            return null;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = list.iterator();
        while (it2.hasNext()) {
            forumPostsBean = it2.next();
            if (i2 == forumPostsBean.getPid()) {
                break;
            }
        }
        return forumPostsBean;
    }

    public void L0() {
        try {
            this.f30797n = new ForumBean.ForumTopicBean();
            String str = (String) getIntent().getSerializableExtra(f30781n0);
            if (com.join.mgps.Util.d2.h(str)) {
                finish();
            } else {
                this.f30797n = (ForumBean.ForumTopicBean) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumBean.ForumTopicBean.class, new Class[0]));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    int M0(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.I == 0) {
            Resources resources = context.getResources();
            this.I = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.I;
    }

    boolean R0() {
        if (com.join.android.app.common.utils.f.j(getBaseContext())) {
            return true;
        }
        showToast(getString(R.string.net_connect_failed));
        F0(9);
        y1();
        return false;
    }

    boolean S0(List<ForumBean.ForumPostsBean> list) {
        boolean z3 = list == null || list.size() == 0;
        if (z3) {
            y1();
        }
        return z3;
    }

    boolean T0() {
        if (this.f30803t == -1) {
            return false;
        }
        int firstVisiblePosition = this.f30789f.getFirstVisiblePosition();
        int lastVisiblePosition = this.f30789f.getLastVisiblePosition();
        int i2 = this.f30803t;
        return i2 >= firstVisiblePosition - 1 && i2 <= lastVisiblePosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008c, code lost:
        if (r11.f30798o != (-1)) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009a, code lost:
        if (r11.f30798o == (-1)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009c, code lost:
        r11.f30798o = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009e, code lost:
        y1();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
        return;
     */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void U0(int r12) {
        /*
            r11 = this;
            boolean r0 = com.join.android.app.common.utils.f.j(r11)
            if (r0 == 0) goto Lac
            boolean r0 = r11.B1(r12)
            if (r0 == 0) goto Ld
            return
        Ld:
            r0 = 4
            r1 = 0
            r2 = -1
            com.join.mgps.dto.AccountBean r3 = com.join.mgps.Util.i0.T(r11)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.String r10 = ""
            java.lang.String r4 = ""
            boolean r5 = com.join.mgps.Util.i0.Y0(r11)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            if (r5 == 0) goto L29
            int r4 = r3.getUid()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.lang.String r3 = r3.getToken()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r7 = r3
            r6 = r4
            goto L2b
        L29:
            r7 = r4
            r6 = 0
        L2b:
            com.join.mgps.dto.ExtBean r3 = r11.f30793j     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            if (r3 == 0) goto L37
            r3.getFrom()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            com.join.mgps.dto.ExtBean r3 = r11.f30793j     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r3.getPosition()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
        L37:
            com.join.mgps.rpc.h r4 = r11.f30790g     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            com.join.mgps.dto.ForumBean$ForumTopicBean r3 = r11.f30797n     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            int r5 = r3.getTid()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            int r9 = com.join.mgps.Util.i0.f27592d     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r8 = r12
            com.join.mgps.dto.ForumResponse r3 = r4.h(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            if (r3 == 0) goto L87
            java.lang.Object r3 = r3.getData()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            com.join.mgps.dto.ForumData$ForumForumTopicData r3 = (com.join.mgps.dto.ForumData.ForumForumTopicData) r3     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r4 = 0
            if (r3 == 0) goto L60
            com.join.mgps.dto.ForumBean$ForumTopicBean r4 = r3.getTopic()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            java.util.List r5 = r3.getPosts_list()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r11.h1(r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r11.g1(r12, r5)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r4 = r5
        L60:
            if (r3 == 0) goto L70
            boolean r3 = r11.S0(r4)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            if (r3 == 0) goto L69
            goto L70
        L69:
            r11.f30799p = r12     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r12 = 2
            r11.F0(r12)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            goto L8a
        L70:
            r11.f30798o = r2     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            r3 = 1
            if (r12 != r3) goto L7a
            r12 = 10
            r11.F0(r12)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
        L7a:
            r11.y1()     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
            int r12 = r11.f30798o
            if (r12 == r2) goto L83
            r11.f30798o = r1
        L83:
            r11.y1()
            return
        L87:
            r11.F0(r0)     // Catch: java.lang.Throwable -> L8f java.lang.Exception -> L91
        L8a:
            int r12 = r11.f30798o
            if (r12 == r2) goto L9e
            goto L9c
        L8f:
            r12 = move-exception
            goto La2
        L91:
            r12 = move-exception
            r11.F0(r0)     // Catch: java.lang.Throwable -> L8f
            r12.printStackTrace()     // Catch: java.lang.Throwable -> L8f
            int r12 = r11.f30798o
            if (r12 == r2) goto L9e
        L9c:
            r11.f30798o = r1
        L9e:
            r11.y1()
            goto Lbe
        La2:
            int r0 = r11.f30798o
            if (r0 == r2) goto La8
            r11.f30798o = r1
        La8:
            r11.y1()
            throw r12
        Lac:
            r12 = 2131821062(0x7f110206, float:1.9274857E38)
            java.lang.String r12 = r11.getString(r12)
            r11.showToast(r12)
            r12 = 9
            r11.F0(r12)
            r11.y1()
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ForumTopicActivity.U0(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0() {
        this.f30794k.z(this.f30795l);
        this.f30794k.notifyDataSetChanged();
    }

    synchronized void Y0() {
        if (this.f30795l == null) {
            this.f30795l = new ArrayList();
        }
        this.f30795l.clear();
        q1();
        r1();
        X0();
    }

    void Z0() {
        int i2 = this.f30803t;
        if (i2 == -1) {
            return;
        }
        int firstVisiblePosition = this.f30789f.getFirstVisiblePosition();
        int lastVisiblePosition = this.f30789f.getLastVisiblePosition();
        int i4 = this.f30803t;
        if (i4 >= firstVisiblePosition - 1 && i4 <= lastVisiblePosition) {
            d1(false);
            i2 = (this.f30803t - firstVisiblePosition) + 1;
        } else {
            d1(true);
        }
        View childAt = this.f30789f.getChildAt(i2);
        if (childAt != null) {
            int bottom = this.f30785b.getBottom();
            int top = childAt.getTop() + this.f30789f.getTop();
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_TRANSLATE_Y.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{bottom + "", top + ""});
            callbackPlayVideo(bundle);
        }
    }

    void a1(int i2, int i4) {
        if (getResources().getConfiguration().orientation == 2) {
            ViewCompat.setTranslationY(this.f30804u, -this.f30804u.getTop());
            return;
        }
        this.G = i2;
        this.H = i4;
        com.join.mgps.Util.u0.e("offsetContainer", "mTop=" + this.G, "mOffsetY=" + this.H);
        ViewCompat.setTranslationY(this.f30804u, (float) this.H);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f30790g = com.join.mgps.rpc.impl.f.A0();
        L0();
        O0();
        this.f30788e.m();
        Q0();
        W0();
    }

    void b1() {
        MyVideoView myVideoView = this.f30806w;
        if (myVideoView.isPlaying() && (myVideoView != null)) {
            this.f30806w.pause();
            this.f30808y.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    void c1(String str, String str2) {
        String str3 = this.C;
        if (str3 != null && str3.equals(str) && this.f30806w.isPlaying()) {
            b1();
            return;
        }
        MyVideoView myVideoView = this.f30806w;
        if (myVideoView != null) {
            if (myVideoView.E() && this.C.equals(str)) {
                this.f30806w.seekTo(0);
                o1();
            } else {
                this.f30806w.G();
            }
        }
        this.C = str;
        this.D = str2;
        if (com.join.mgps.Util.d2.h(str)) {
            x1();
            return;
        }
        this.f30807x.setVisibility(8);
        this.f30808y.setVisibility(8);
        e1();
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
                    if (parseInt == this.B) {
                        return;
                    }
                    x1();
                    this.B = parseInt;
                } else if (i2 == 1) {
                    str = str3;
                } else if (i2 == 2) {
                    str2 = str3;
                }
            }
            com.join.mgps.Util.u0.e("CMD_PLAY", "videoUrl=" + str, "coverUrl=" + str2);
            this.f30804u.setVisibility(0);
            this.f30806w.setVisibility(0);
            this.F = true;
            t1();
            c1(str, str2);
        } else if (string.equals(MediaCmd.CMD_PLAY_BACKGROUND.name())) {
            if (this.B == -1) {
                return;
            }
            if (Boolean.parseBoolean((String) objArr[0])) {
                this.f30804u.setVisibility(8);
                this.f30806w.setVisibility(8);
                this.F = false;
                x1();
            } else if (this.B != -1) {
                this.f30804u.setVisibility(0);
                this.f30806w.setVisibility(0);
                this.F = true;
            }
        } else if (string.equals(MediaCmd.CMD_PAUSE.name())) {
            b1();
        } else if (string.equals(MediaCmd.CMD_STOP.name())) {
            x1();
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
            J0();
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
            a1(parseInt2, parseInt3);
        }
    }

    void d1(boolean z3) {
        Bundle bundle = new Bundle();
        bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY_BACKGROUND.name());
        bundle.putStringArray("key_mediacmd_params", new String[]{String.valueOf(z3)});
        callbackPlayVideo(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f1(int i2) {
        try {
            if (!com.join.mgps.Util.i0.Y0(this)) {
                com.join.mgps.Util.i0.L0(this);
                com.join.mgps.Util.i2.a(this).b("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean e02 = com.join.mgps.Util.i0.e0(this, i2);
            e02.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> o3 = this.f30790g.o(e02.getParams());
            if (o3 == null) {
                return;
            }
            if (o3.getError() == 706) {
                l1(i2);
                u1();
                return;
            }
            com.join.mgps.Util.i0.m1(e02, o3.getData());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void i1() {
        if (this.f30798o == -1) {
            y1();
        } else {
            U0(this.f30799p + 1);
        }
    }

    void j1() {
        if (this.F) {
            this.f30804u.setVisibility(0);
        } else {
            this.f30804u.setVisibility(8);
        }
    }

    void k1() {
        if (this.f30797n == null) {
            return;
        }
        U0(1);
    }

    void l1(int i2) {
        List<ForumBean.ForumPostsBean> list = this.f30796m;
        if (list == null || list.size() == 0) {
            return;
        }
        for (ForumBean.ForumPostsBean forumPostsBean : list) {
            if (forumPostsBean.getPid() == i2) {
                forumPostsBean.setPraise(forumPostsBean.is_praise() ? forumPostsBean.getPraise() - 1 : forumPostsBean.getPraise() + 1);
                forumPostsBean.setIs_praise(!forumPostsBean.is_praise());
                Y0();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m1() {
        if (com.join.mgps.Util.d2.i(this.f30797n.getName())) {
            this.f30786c.setText(this.f30797n.getName());
        }
    }

    RelativeLayout.LayoutParams n1() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f30804u.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.f30804u.setPadding(0, 0, 0, 0);
        }
        RelativeLayout relativeLayout = this.f30805v;
        if (relativeLayout == null) {
            return layoutParams;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
        }
        this.f30804u.setTop(0);
        this.f30804u.postInvalidate();
        return layoutParams;
    }

    void o1() {
        MyVideoView myVideoView = this.f30806w;
        if (myVideoView.E() & (myVideoView != null)) {
            this.f30809z.setVisibility(8);
            this.f30807x.setVisibility(8);
            this.f30808y.setVisibility(8);
            this.f30806w.start();
            MediaController mediaController = this.A;
            if (mediaController != null) {
                mediaController.setVisibility(8);
                return;
            }
            return;
        }
        e1();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C1(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        H0();
        G0();
        com.join.android.app.component.video.c cVar = this.f30800q;
        if (cVar != null) {
            cVar.z();
        }
    }

    @Override // com.BaseAppCompatActivity
    public void onFavoriteChanged(int i2, boolean z3) {
        super.onFavoriteChanged(i2, z3);
        com.join.mgps.Util.i0.j(i2, z3, this.f30796m);
        Y0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getRepeatCount() == 0 && getResources().getConfiguration().orientation == 2) {
            this.E = true;
            z1();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        x1();
        com.join.android.app.component.video.c cVar = this.f30800q;
        if (cVar != null) {
            cVar.A();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.f30800q;
        if (cVar != null) {
            cVar.B();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        D1(absListView, i2, i4, i5);
        this.f30800q.e(absListView, i2, i4, i5);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        E1(absListView, i2);
        this.f30800q.i(absListView, i2);
    }

    void q1() {
        m1();
        AccountUtil_.getInstance_(this).getAccountData();
        this.f30795l.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.FORUM_TOPIC_TOP, new ForumTopicAdapter.t.a(this.f30797n.getIcon_src())));
    }

    void r1() {
        p1(this.f30796m);
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

    void t1() {
        RelativeLayout relativeLayout = this.f30805v;
        if (relativeLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = M0(this);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f30804u.getLayoutParams();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_top);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_bottom);
        if (layoutParams2 != null) {
            layoutParams2.height = -2;
            this.f30804u.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize3);
        }
        this.f30805v.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u1() {
        com.join.mgps.Util.a0.c0(this).m(this);
    }

    void v1(ForumBean.ForumPostsBean forumPostsBean) {
        if (forumPostsBean == null) {
            return;
        }
        if (this.f30802s == null) {
            com.join.mgps.customview.f z3 = com.join.mgps.customview.f.z(this);
            this.f30802s = z3;
            z3.m(new o());
        }
        this.f30802s.p(this.f30787d, forumPostsBean);
    }

    void x1() {
        MyVideoView myVideoView = this.f30806w;
        if (myVideoView != null) {
            myVideoView.seekTo(0);
            this.f30806w.I();
            this.B = -1;
            this.f30806w.G();
            this.f30809z.setVisibility(8);
            MediaController mediaController = this.A;
            if (mediaController != null) {
                mediaController.setVisibility(8);
            }
            this.f30808y.setVisibility(0);
            if (getResources().getConfiguration().orientation == 1) {
                this.f30804u.setVisibility(8);
                this.F = false;
                return;
            }
            z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y1() {
        Handler handler = this.f30801r;
        if (handler == null) {
            return;
        }
        handler.sendEmptyMessageDelayed(0, 2000L);
    }

    void z1() {
        MyVideoView myVideoView = this.f30806w;
        if (myVideoView != null) {
            myVideoView.setFullScreen(!this.E);
        }
    }
}
