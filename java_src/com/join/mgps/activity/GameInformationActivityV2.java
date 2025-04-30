package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.Html;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.adapter.GameCommentAdapter;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.VipView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.GameInformationCommentRequest;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PariseRequest;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Where;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.game_information_layoutv2)
/* loaded from: classes.dex */
public class GameInformationActivityV2 extends BaseActivity {
    @ViewById
    TextView A;
    @ViewById
    LinearLayout B;
    @ViewById
    LinearLayout C;
    @ViewById
    TextView D;
    @ViewById
    RecyclerView E;
    private Context F;
    private DetailResultBean G;
    private long H;
    private int J;
    private AccountBean K;

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.rpc.d f31376a;
    @StringRes(resName = "net_excption")

    /* renamed from: b  reason: collision with root package name */
    String f31377b;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: c  reason: collision with root package name */
    String f31378c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f31379d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    RelativeLayout f31380e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    RelativeLayout f31381f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f31382g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f31383h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    SimpleDraweeView f31384i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    SimpleDraweeView f31385j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f31386k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f31387l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f31388m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f31389n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    Button f31391o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ImageView f31393p;

    /* renamed from: p0  reason: collision with root package name */
    private n f31394p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    ImageView f31395q;

    /* renamed from: q0  reason: collision with root package name */
    private List<GameCommentAdapter.l> f31396q0;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: r  reason: collision with root package name */
    CustomerDownloadView f31397r;

    /* renamed from: r0  reason: collision with root package name */
    private List<InformationCommentBean> f31398r0;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    String f31399s;

    /* renamed from: s0  reason: collision with root package name */
    Context f31400s0;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    String f31401t;
    @Extra

    /* renamed from: u  reason: collision with root package name */
    ExtBean f31403u;

    /* renamed from: u0  reason: collision with root package name */
    Button f31404u0;
    @Extra

    /* renamed from: v  reason: collision with root package name */
    boolean f31405v;

    /* renamed from: v0  reason: collision with root package name */
    WebView f31406v0;

    /* renamed from: x  reason: collision with root package name */
    private boolean f31409x;

    /* renamed from: y  reason: collision with root package name */
    private GameInformationBean f31411y;

    /* renamed from: z  reason: collision with root package name */
    private DownloadTask f31413z;

    /* renamed from: w  reason: collision with root package name */
    private String f31407w = "";
    private Handler I = new Handler();

    /* renamed from: n0  reason: collision with root package name */
    Map<String, DownloadTask> f31390n0 = new HashMap();

    /* renamed from: o0  reason: collision with root package name */
    Map<String, DownloadTask> f31392o0 = new HashMap();

    /* renamed from: t0  reason: collision with root package name */
    private String f31402t0 = "";

    /* renamed from: w0  reason: collision with root package name */
    com.join.mgps.customview.t f31408w0 = null;

    /* renamed from: x0  reason: collision with root package name */
    List<o> f31410x0 = new ArrayList();

    /* renamed from: y0  reason: collision with root package name */
    p f31412y0 = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum GType {
        webview(1),
        card(2),
        comment(3),
        commentTitle(4),
        TITLE(5),
        COMMENT(6),
        webtitle(8),
        REPLY(7),
        sendcomment(9);
        

        /* renamed from: i  reason: collision with root package name */
        int f31414i;

        GType(int i2) {
            this.f31414i = i2;
        }

        public int vaule() {
            return this.f31414i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f31415a;

        a(l lVar) {
            this.f31415a = lVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f31415a.f31460j.getText().toString().equals("查看全部")) {
                this.f31415a.f31456f.setMaxLines(Integer.MAX_VALUE);
                this.f31415a.f31460j.setText("收起");
            } else {
                this.f31415a.f31456f.setMaxLines(5);
                this.f31415a.f31460j.setText("查看全部");
            }
            this.f31415a.f31460j.postInvalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements p {
        b() {
        }

        @Override // com.join.mgps.activity.GameInformationActivityV2.p
        public void a(InformationCommentBean informationCommentBean) {
            if (informationCommentBean.isHasPraised()) {
                com.join.mgps.Util.i2.a(GameInformationActivityV2.this.F).b("你已赞过");
            } else {
                GameInformationActivityV2.this.h1(informationCommentBean, null, null);
            }
        }

        @Override // com.join.mgps.activity.GameInformationActivityV2.p
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            informationCommentBean.setComment_id(sub.getComment_id());
            informationCommentBean.setUser_id(sub.getUser_id());
            informationCommentBean.setUser_name(sub.getUser_name());
            GameInformationCommentActivity_.n1(GameInformationActivityV2.this.F).b(GameInformationActivityV2.this.f31399s).a(informationCommentBean).start();
        }

        @Override // com.join.mgps.activity.GameInformationActivityV2.p
        public void c(InformationCommentBean informationCommentBean) {
            GameInformationCommentActivity_.n1(GameInformationActivityV2.this.F).b(GameInformationActivityV2.this.f31399s).a(informationCommentBean).start();
        }

        @Override // com.join.mgps.activity.GameInformationActivityV2.p
        public void d() {
            GameInformationActivityV2.this.t1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            GameInformationActivityV2 gameInformationActivityV2 = GameInformationActivityV2.this;
            intentUtil.goGameDetialActivity(gameInformationActivityV2, gameInformationActivityV2.G.getCrc_sign_id(), GameInformationActivityV2.this.G.getGame_info_tpl_type(), GameInformationActivityV2.this.G.getSp_tpl_two_position(), 116);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31419a;

        d(InformationCommentBean informationCommentBean) {
            this.f31419a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f31419a.isHasPraised()) {
                com.join.mgps.Util.i2.a(GameInformationActivityV2.this.f31400s0).b("你已赞过");
            } else if (IntentUtil.getInstance().goLoginInteractive(GameInformationActivityV2.this.f31400s0)) {
            } else {
                ((ImageView) view).setImageResource(R.drawable.like);
                view.startAnimation(AnimationUtils.loadAnimation(GameInformationActivityV2.this.f31400s0, R.anim.scale_reset));
                p pVar = GameInformationActivityV2.this.f31412y0;
                if (pVar != null) {
                    pVar.a(this.f31419a);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f31421a;

        e(InformationCommentBean.Sub sub) {
            this.f31421a = sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p pVar = GameInformationActivityV2.this.f31412y0;
            if (pVar != null) {
                pVar.b(this.f31421a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31423a;

        f(InformationCommentBean informationCommentBean) {
            this.f31423a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p pVar = GameInformationActivityV2.this.f31412y0;
            if (pVar != null) {
                pVar.c(this.f31423a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31425a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f31426b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f31427c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ GameCommentAdapter.l.b f31428d;

        g(int i2, int i4, String str, GameCommentAdapter.l.b bVar) {
            this.f31425a = i2;
            this.f31426b = i4;
            this.f31427c = str;
            this.f31428d = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f31425a == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f31425a; i2 >= 0; i2--) {
                o oVar = GameInformationActivityV2.this.f31410x0.get(this.f31426b - i2);
                GameCommentAdapter.l.b bVar = oVar.f31481b.vaule() == GType.REPLY.vaule() ? (GameCommentAdapter.l.b) oVar.f31480a : null;
                if (bVar != null && this.f31427c == bVar.f40699a) {
                    arrayList.addAll(bVar.f40700b.getSub());
                }
            }
            for (int i4 = 0; i4 <= this.f31425a; i4++) {
                GameInformationActivityV2.this.f31410x0.remove(this.f31426b - i4);
            }
            informationCommentBean.setSub(arrayList);
            GameInformationActivityV2.this.f31410x0.add(this.f31426b - this.f31425a, GameInformationActivityV2.this.S0(this.f31427c, informationCommentBean, this.f31428d.f40701c, true));
            GameInformationActivityV2.this.f31394p0.notifyDataSetChanged();
            GameInformationActivityV2.this.f31412y0.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f31430a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31431b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f31432c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ GameCommentAdapter.l.b f31433d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f31434e;

        h(int i2, InformationCommentBean informationCommentBean, String str, GameCommentAdapter.l.b bVar, int i4) {
            this.f31430a = i2;
            this.f31431b = informationCommentBean;
            this.f31432c = str;
            this.f31433d = bVar;
            this.f31434e = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f31430a) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f31431b);
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
                o S0 = GameInformationActivityV2.this.S0(this.f31432c, informationCommentBean, this.f31433d.f40701c, i4 == 0);
                GameCommentAdapter.l.b bVar = (GameCommentAdapter.l.b) S0.f31480a;
                bVar.f40703e = i4;
                bVar.f40704f = z3;
                bVar.f40702d = i4 == 0;
                GameInformationActivityV2.this.i1(S0, !z3);
                GameInformationActivityV2.this.f31410x0.add(this.f31434e + i4 + 1, S0);
                i4++;
                i2 = i5;
            }
            GameInformationActivityV2.this.f31410x0.remove(this.f31434e);
            GameInformationActivityV2.this.f31394p0.notifyDataSetChanged();
            GameInformationActivityV2.this.f31412y0.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31436a;

        i(InformationCommentBean informationCommentBean) {
            this.f31436a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.n1(view.getContext()).a(Integer.parseInt(this.f31436a.getUser_id())).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f31438a;

        j(l lVar) {
            this.f31438a = lVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Layout layout = this.f31438a.f31456f.getLayout();
            if (layout != null) {
                int lineCount = layout.getLineCount();
                if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) > 0) {
                        this.f31438a.f31460j.setVisibility(0);
                        return;
                    } else {
                        this.f31438a.f31460j.setVisibility(8);
                        return;
                    }
                }
                return;
            }
            this.f31438a.f31460j.setVisibility(8);
        }
    }

    /* loaded from: classes3.dex */
    class k extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f31440a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f31441b;

        /* renamed from: c  reason: collision with root package name */
        TextView f31442c;

        /* renamed from: d  reason: collision with root package name */
        View f31443d;

        /* renamed from: e  reason: collision with root package name */
        TextView f31444e;

        /* renamed from: f  reason: collision with root package name */
        TextView f31445f;

        /* renamed from: g  reason: collision with root package name */
        TextView f31446g;

        /* renamed from: h  reason: collision with root package name */
        TextView f31447h;

        /* renamed from: i  reason: collision with root package name */
        TextView f31448i;

        /* renamed from: j  reason: collision with root package name */
        Button f31449j;

        public k(@NonNull View view) {
            super(view);
            this.f31440a = view.findViewById(R.id.gameCardLayout);
            this.f31441b = (SimpleDraweeView) view.findViewById(R.id.cardIcon);
            this.f31442c = (TextView) view.findViewById(R.id.cardAppname);
            this.f31443d = view.findViewById(R.id.cardDownNumber);
            this.f31444e = (TextView) view.findViewById(R.id.cardAppSize);
            this.f31445f = (TextView) view.findViewById(R.id.cardDownNumberText);
            this.f31446g = (TextView) view.findViewById(R.id.cardInfo);
            this.f31447h = (TextView) view.findViewById(R.id.moneyText);
            this.f31449j = (Button) view.findViewById(R.id.cardDownButn);
            this.f31448i = (TextView) view.findViewById(R.id.textView69);
        }
    }

    /* loaded from: classes3.dex */
    public class l extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private RelativeLayout f31451a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f31452b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f31453c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f31454d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f31455e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f31456f;

        /* renamed from: g  reason: collision with root package name */
        private TextView f31457g;

        /* renamed from: h  reason: collision with root package name */
        private TextView f31458h;

        /* renamed from: i  reason: collision with root package name */
        public View f31459i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f31460j;

        /* renamed from: k  reason: collision with root package name */
        public VipView f31461k;

        public l(@NonNull View view) {
            super(view);
            this.f31451a = (RelativeLayout) view.findViewById(R.id.main);
            this.f31452b = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f31453c = (ImageView) view.findViewById(R.id.parise);
            this.f31454d = (TextView) view.findViewById(R.id.username);
            this.f31455e = (TextView) view.findViewById(R.id.time);
            this.f31456f = (TextView) view.findViewById(R.id.content);
            this.f31457g = (TextView) view.findViewById(R.id.pariseNumber);
            this.f31458h = (TextView) view.findViewById(R.id.levelTv);
            this.f31461k = (VipView) view.findViewById(R.id.levelVip);
            this.f31459i = view.findViewById(R.id.line);
            this.f31460j = (TextView) view.findViewById(R.id.more);
        }
    }

    /* loaded from: classes3.dex */
    class m extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f31463a;

        /* renamed from: b  reason: collision with root package name */
        TextView f31464b;

        public m(@NonNull View view) {
            super(view);
            this.f31463a = (TextView) view.findViewById(R.id.comment_number);
            this.f31464b = (TextView) view.findViewById(R.id.more);
        }
    }

    /* loaded from: classes3.dex */
    public class n extends RecyclerView.Adapter {

        /* loaded from: classes3.dex */
        class a {

            /* renamed from: com.join.mgps.activity.GameInformationActivityV2$n$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0148a implements Runnable {
                RunnableC0148a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    GameInformationCommentActivity_.n1(GameInformationActivityV2.this.F).b(GameInformationActivityV2.this.f31399s).start();
                }
            }

            /* loaded from: classes3.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f31469a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ String f31470b;

                b(String str, String str2) {
                    this.f31469a = str;
                    this.f31470b = str2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.n(this.f31469a);
                    videoInfo.h(this.f31470b);
                    FullScreenActivity_.G0(GameInformationActivityV2.this.F).a(videoInfo).start();
                }
            }

            /* loaded from: classes3.dex */
            class c implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f31472a;

                c(String str) {
                    this.f31472a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IntentUtil.getInstance().intentActivity(GameInformationActivityV2.this, (IntentDateBean) JsonMapper.getInstance().fromJson(this.f31472a, IntentDateBean.class));
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }

            a() {
            }

            @JavascriptInterface
            public void intentCommentList() {
                GameInformationActivityV2.this.I.post(new RunnableC0148a());
            }

            @JavascriptInterface
            public void playVideo(String str, String str2) {
                GameInformationActivityV2.this.I.post(new b(str, str2));
            }

            @JavascriptInterface
            public void startIntent(String str) {
                GameInformationActivityV2.this.I.post(new c(str));
            }
        }

        /* loaded from: classes3.dex */
        class b extends WebViewClient {
            b() {
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return false;
            }
        }

        /* loaded from: classes3.dex */
        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameInformationCommentActivity_.n1(GameInformationActivityV2.this.F).b(GameInformationActivityV2.this.f31399s).start();
            }
        }

        /* loaded from: classes3.dex */
        class d implements View.OnClickListener {
            d() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new IntentDateBean();
                IntentUtil intentUtil = IntentUtil.getInstance();
                GameInformationActivityV2 gameInformationActivityV2 = GameInformationActivityV2.this;
                intentUtil.goGameDetialActivity(gameInformationActivityV2, gameInformationActivityV2.G.getCrc_sign_id(), GameInformationActivityV2.this.G.getGame_info_tpl_type(), GameInformationActivityV2.this.G.getSp_tpl_two_position(), 116);
            }
        }

        /* loaded from: classes3.dex */
        class e implements View.OnClickListener {
            e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil intentUtil = IntentUtil.getInstance();
                GameInformationActivityV2 gameInformationActivityV2 = GameInformationActivityV2.this;
                intentUtil.goGameDetialActivity(gameInformationActivityV2, gameInformationActivityV2.G.getCrc_sign_id(), GameInformationActivityV2.this.G.getGame_info_tpl_type(), GameInformationActivityV2.this.G.getSp_tpl_two_position(), 116);
            }
        }

        /* loaded from: classes3.dex */
        class f implements View.OnClickListener {
            f() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GameInformationActivityV2.this.Q0();
            }
        }

        /* loaded from: classes3.dex */
        class g implements View.OnClickListener {
            g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (IntentUtil.getInstance().goLoginInteractive(GameInformationActivityV2.this.F)) {
                    return;
                }
                GameInformationCommentActivity_.n1(GameInformationActivityV2.this.F).b(GameInformationActivityV2.this.f31399s).start();
            }
        }

        public n() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameInformationActivityV2.this.f31410x0.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return GameInformationActivityV2.this.f31410x0.get(i2).f31481b.vaule();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType == GType.webview.vaule()) {
                GameInformationActivityV2 gameInformationActivityV2 = GameInformationActivityV2.this;
                WebView webView = gameInformationActivityV2.f31406v0;
                if (webView != null) {
                    webView.getHeight();
                    return;
                }
                WebView webView2 = ((t) viewHolder).f31495a;
                gameInformationActivityV2.f31406v0 = webView2;
                webView2.getLayoutParams();
                GameInformationActivityV2.this.f31406v0.setBackgroundColor(-1);
                GameInformationActivityV2.this.f31406v0.getSettings().setJavaScriptEnabled(true);
                GameInformationActivityV2.this.f31406v0.setWebChromeClient(new WebChromeClient());
                GameInformationActivityV2.this.f31406v0.addJavascriptInterface(new a(), "papa");
                GameInformationActivityV2 gameInformationActivityV22 = GameInformationActivityV2.this;
                gameInformationActivityV22.f31406v0.loadDataWithBaseURL("about:blank", gameInformationActivityV22.f31411y.getContent(), "text/html", "utf-8", null);
                GameInformationActivityV2.this.f31406v0.setWebViewClient(new b());
                GameInformationActivityV2.this.f31406v0.setBackgroundColor(-1);
            } else if (itemViewType == GType.TITLE.vaule()) {
                GameInformationActivityV2.this.X0(i2, (s) viewHolder);
            } else if (itemViewType == GType.commentTitle.vaule()) {
                m mVar = (m) viewHolder;
                TextView textView = mVar.f31463a;
                textView.setText(GameInformationActivityV2.this.J + "条");
                mVar.f31464b.setOnClickListener(new c());
            } else if (itemViewType == GType.card.vaule()) {
                k kVar = (k) viewHolder;
                GameInformationActivityV2 gameInformationActivityV23 = GameInformationActivityV2.this;
                gameInformationActivityV23.f31404u0 = kVar.f31449j;
                gameInformationActivityV23.s1();
                kVar.f31442c.setText(GameInformationActivityV2.this.G.getGame_name());
                MyImageLoader.h(kVar.f31441b, GameInformationActivityV2.this.G.getIco_remote());
                UtilsMy.w2(GameInformationActivityV2.this.G.getSp_tag_info(), kVar.f31447h);
                kVar.f31441b.setOnClickListener(new d());
                kVar.f31448i.setOnClickListener(new e());
                GameInformationActivityV2.this.f31404u0.setOnClickListener(new f());
                TextView textView2 = kVar.f31445f;
                textView2.setText(com.join.mgps.Util.d2.b(GameInformationActivityV2.this.G.getDown_count()) + "热度");
                TextView textView3 = kVar.f31444e;
                textView3.setText(net.lingala.zip4j.util.e.F0 + GameInformationActivityV2.this.G.getSize() + "M");
                kVar.f31446g.setText(GameInformationActivityV2.this.G.getInfo());
            } else if (itemViewType == GType.COMMENT.vaule()) {
                GameInformationActivityV2.this.Y0(i2, (l) viewHolder);
            } else if (itemViewType == GType.REPLY.vaule()) {
                GameInformationActivityV2.this.a1(itemViewType, (q) viewHolder);
            } else if (itemViewType == GType.webtitle.vaule()) {
                u uVar = (u) viewHolder;
                uVar.f31499c.setText(GameInformationActivityV2.this.f31411y.getTitle());
                TextView textView4 = uVar.f31498b;
                textView4.setText("作者:" + GameInformationActivityV2.this.f31411y.getAuthor());
                uVar.f31497a.setText(GameInformationActivityV2.this.f31411y.getRelease_time());
            } else if (itemViewType == GType.sendcomment.vaule()) {
                r rVar = (r) viewHolder;
                GameInformationActivityV2.this.f31385j = rVar.f31490a;
                rVar.f31490a.setImageResource(R.drawable.unloginstatus);
                if (GameInformationActivityV2.this.K != null) {
                    UtilsMy.E2(GameInformationActivityV2.this.F, GameInformationActivityV2.this.K.getAvatarSrc(), rVar.f31490a);
                }
                rVar.f31491b.setOnClickListener(new g());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            if (i2 == GType.webview.vaule()) {
                WebView webView = new WebView(viewGroup.getContext());
                webView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                return new t(webView);
            } else if (i2 == GType.TITLE.vaule()) {
                return new s(LayoutInflater.from(GameInformationActivityV2.this.f31400s0).inflate(R.layout.gameinformation_comment_item_title, viewGroup, false));
            } else if (i2 == GType.commentTitle.vaule()) {
                return new m(LayoutInflater.from(GameInformationActivityV2.this.F).inflate(R.layout.game_information_comment_top, viewGroup, false));
            } else if (i2 == GType.card.vaule()) {
                return new k(LayoutInflater.from(GameInformationActivityV2.this.F).inflate(R.layout.gameinformation_cardlayout, viewGroup, false));
            } else if (i2 == GType.COMMENT.vaule()) {
                return new l(LayoutInflater.from(GameInformationActivityV2.this.f31400s0).inflate(R.layout.gameinformation_commit_item_layout, viewGroup, false));
            } else if (i2 == GType.REPLY.vaule()) {
                return new q(LayoutInflater.from(GameInformationActivityV2.this.f31400s0).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, viewGroup, false));
            } else if (i2 == GType.webtitle.vaule()) {
                return new u(LayoutInflater.from(GameInformationActivityV2.this.f31400s0).inflate(R.layout.gameinformation_webtitle, viewGroup, false));
            } else if (i2 == GType.sendcomment.vaule()) {
                return new r(LayoutInflater.from(GameInformationActivityV2.this.f31400s0).inflate(R.layout.game_information_edit_message, viewGroup, false));
            } else {
                return null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface p {
        void a(InformationCommentBean informationCommentBean);

        void b(InformationCommentBean.Sub sub);

        void c(InformationCommentBean informationCommentBean);

        void d();
    }

    /* loaded from: classes3.dex */
    public class q extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f31483a;

        /* renamed from: b  reason: collision with root package name */
        public View f31484b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f31485c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f31486d;

        /* renamed from: e  reason: collision with root package name */
        public View f31487e;

        /* renamed from: f  reason: collision with root package name */
        public View f31488f;

        public q(@NonNull View view) {
            super(view);
            this.f31483a = (LinearLayout) view.findViewById(R.id.comment_reply_container);
            this.f31484b = view.findViewById(R.id.comment_reply_divider);
            this.f31485c = (TextView) view.findViewById(R.id.comment_reply_content);
            this.f31486d = (TextView) view.findViewById(R.id.comment_reply_more);
            this.f31487e = view.findViewById(R.id.line);
            this.f31488f = view.findViewById(R.id.bottom);
        }
    }

    /* loaded from: classes3.dex */
    public class r extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f31490a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f31491b;

        public r(@NonNull View view) {
            super(view);
            this.f31490a = (SimpleDraweeView) view.findViewById(R.id.usericonMe);
            this.f31491b = (TextView) view.findViewById(R.id.message);
        }
    }

    /* loaded from: classes3.dex */
    public class s extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f31493a;

        public s(@NonNull View view) {
            super(view);
            this.f31493a = (TextView) view.findViewById(R.id.title);
        }
    }

    /* loaded from: classes3.dex */
    class t extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        WebView f31495a;

        public t(@NonNull View view) {
            super(view);
            this.f31495a = (WebView) view;
        }
    }

    /* loaded from: classes3.dex */
    public class u extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f31497a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f31498b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f31499c;

        public u(@NonNull View view) {
            super(view);
            this.f31497a = (TextView) view.findViewById(R.id.contentTime);
            this.f31498b = (TextView) view.findViewById(R.id.contentName);
            this.f31499c = (TextView) view.findViewById(R.id.content_title);
        }
    }

    private void T0() {
        com.join.mgps.customview.t tVar = this.f31408w0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f31408w0.dismiss();
    }

    private void V0() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(536870912);
            startActivity(intent);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a1(int i2, q qVar) {
        try {
            GameCommentAdapter.l.b bVar = (GameCommentAdapter.l.b) this.f31410x0.get(i2).f31480a;
            if (bVar == null || bVar.f40700b == null) {
                return;
            }
            if (bVar.f40702d) {
                qVar.f31484b.setVisibility(0);
            } else {
                qVar.f31484b.setVisibility(8);
            }
            if (!bVar.f40705g) {
                qVar.f31487e.setVisibility(0);
                qVar.f31488f.setVisibility(0);
            } else {
                qVar.f31487e.setVisibility(8);
                qVar.f31488f.setVisibility(8);
            }
            List<InformationCommentBean.Sub> sub = bVar.f40700b.getSub();
            if (sub != null && sub.size() != 0) {
                g1(qVar.f31483a, bVar, true, i2);
            } else {
                qVar.f31483a.removeAllViews();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void g1(View view, GameCommentAdapter.l.b bVar, boolean z3, int i2) {
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
                View inflate = LayoutInflater.from(this.f31400s0).inflate(R.layout.comment_reply_item, (ViewGroup) null);
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
                                k1(view2, sub2);
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

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    private void k1(View view, InformationCommentBean.Sub sub) {
        view.setOnClickListener(new e(sub));
    }

    private void l1(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new d(informationCommentBean));
    }

    private void m1(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new f(informationCommentBean));
    }

    private void r1() {
        DownloadTask downloadTask = this.f31413z;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        String plugin_num = this.f31413z.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            this.f31391o.setBackgroundResource(R.drawable.download_blue_butn);
            this.f31391o.setText("打开");
        } else if (UtilsMy.m0(this.G.getPay_tag_info(), this.G.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status == 48) {
                this.f31391o.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31391o.setText("安装中");
                return;
            } else if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        this.f31391o.setBackgroundResource(R.drawable.download_maincolor_butn);
                        Button button = this.f31391o;
                        button.setText(button.getResources().getString(R.string.download_status_finished));
                        return;
                    } else if (status != 6) {
                        if (status != 7) {
                            switch (status) {
                                case 9:
                                    this.f31391o.setBackgroundResource(R.drawable.download_green_butn);
                                    this.f31391o.setText("更新");
                                    return;
                                case 10:
                                    this.f31391o.setBackgroundResource(R.drawable.download_blue_butn);
                                    this.f31391o.setText("等待");
                                    return;
                                case 11:
                                    this.f31391o.setBackgroundResource(R.drawable.download_green_butn);
                                    this.f31391o.setText("安装");
                                    return;
                                case 12:
                                    this.f31391o.setBackgroundResource(R.drawable.download_grey_butn);
                                    this.f31391o.setText("解压中");
                                    return;
                                case 13:
                                    this.f31391o.setBackgroundResource(R.drawable.download_blue_butn);
                                    this.f31391o.setText("解压");
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                }
                this.f31391o.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31391o.setText("继续");
                return;
            } else {
                this.f31391o.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31391o.setText("暂停");
                return;
            }
        }
        this.f31391o.setBackgroundResource(R.drawable.download_green_butn);
        if (UtilsMy.m0(this.G.getPay_tag_info(), this.G.getCrc_sign_id()) > 0) {
            this.f31391o.setText(this.F.getResources().getString(R.string.pay_game_amount, this.G.getPay_tag_info().getPayGameAmount()));
        } else {
            this.f31391o.setText(this.F.getResources().getString(R.string.download_status_download));
        }
        DetailResultBean detailResultBean = this.G;
        if (detailResultBean != null) {
            UtilsMy.m0(detailResultBean.getPay_tag_info(), this.G.getCrc_sign_id());
            UtilsMy.F2(this.f31391o, this.G);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s1() {
        DownloadTask downloadTask = this.f31413z;
        if (downloadTask == null || this.f31404u0 == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        String plugin_num = this.f31413z.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            this.f31391o.setBackgroundResource(R.drawable.download_blue_butn);
            this.f31391o.setText("打开");
        } else if (UtilsMy.m0(this.G.getPay_tag_info(), this.G.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status == 48) {
                this.f31404u0.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31404u0.setText("安装中");
                return;
            } else if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        this.f31404u0.setBackgroundResource(R.drawable.download_maincolor_butn);
                        this.f31404u0.setText(getResources().getString(R.string.download_status_finished));
                        return;
                    } else if (status != 6) {
                        if (status != 7) {
                            switch (status) {
                                case 9:
                                    this.f31404u0.setBackgroundResource(R.drawable.download_green_butn);
                                    this.f31404u0.setText("更新");
                                    return;
                                case 10:
                                    this.f31404u0.setBackgroundResource(R.drawable.download_blue_butn);
                                    this.f31404u0.setText("等待");
                                    return;
                                case 11:
                                    this.f31404u0.setBackgroundResource(R.drawable.download_green_butn);
                                    this.f31404u0.setText("安装");
                                    return;
                                case 12:
                                    this.f31404u0.setBackgroundResource(R.drawable.download_grey_butn);
                                    this.f31404u0.setText("解压中");
                                    return;
                                case 13:
                                    this.f31404u0.setBackgroundResource(R.drawable.download_blue_butn);
                                    this.f31404u0.setText("解压");
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                }
                this.f31404u0.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31404u0.setText("继续");
                return;
            } else {
                this.f31404u0.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31404u0.setText("暂停");
                return;
            }
        }
        this.f31404u0.setBackgroundResource(R.drawable.download_green_butn);
        if (d1(this.G) && !n1.e0.o().p(this.G.getCrc_sign_id())) {
            this.f31404u0.setText(this.F.getResources().getString(R.string.pay_game_amount, this.G.getPay_tag_info().getPayGameAmount()));
        } else {
            this.f31404u0.setText(this.F.getResources().getString(R.string.download_status_download));
        }
        DetailResultBean detailResultBean = this.G;
        if (detailResultBean != null) {
            UtilsMy.m0(detailResultBean.getPay_tag_info(), this.G.getCrc_sign_id());
            UtilsMy.F2(this.f31404u0, this.G);
        }
    }

    private void u1(InformationCommentBean informationCommentBean) {
        GameInformationBean gameInformationBean = this.f31411y;
        if (gameInformationBean != null && gameInformationBean.getComment_switch() == 1) {
            W0(this.f31399s);
        }
        if (this.f31398r0 == null || informationCommentBean == null) {
            return;
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < this.f31398r0.size(); i2++) {
            InformationCommentBean informationCommentBean2 = this.f31398r0.get(i2);
            if (informationCommentBean.getComment_id().equals(informationCommentBean2.getComment_id())) {
                if (informationCommentBean.isHasPraised() != informationCommentBean2.isHasPraised()) {
                    informationCommentBean2.setHasPraised(informationCommentBean.isHasPraised());
                    z3 |= true;
                }
                if (!informationCommentBean.getPraise_count().equals(informationCommentBean2.getPraise_count())) {
                    informationCommentBean2.setPraise_count(informationCommentBean.getPraise_count());
                    z3 |= true;
                }
                if (z3) {
                    break;
                }
            }
        }
        if (z3) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f31398r0);
            o1(arrayList);
        }
    }

    void N0(List<InformationCommentBean> list) {
        Iterator<o> it2 = this.f31410x0.iterator();
        while (it2.hasNext()) {
            GType gType = it2.next().f31481b;
            if (gType == GType.COMMENT || gType == GType.REPLY || gType == GType.TITLE) {
                it2.remove();
            }
        }
        for (int i2 = 0; list != null && i2 < list.size(); i2++) {
            InformationCommentBean informationCommentBean = list.get(i2);
            this.f31410x0.add(new o(GType.COMMENT, new GameCommentAdapter.l.a(informationCommentBean)));
            List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
            if (sub != null && sub.size() > 0) {
                this.f31410x0.add(new o(GType.REPLY, new GameCommentAdapter.l.b(informationCommentBean.getComment_id(), informationCommentBean, 0, true)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        if (this.G == null) {
            return;
        }
        IntentUtil.getInstance().goGameDetialActivity(this, this.G.getCrc_sign_id(), this.G.getGame_info_tpl_type(), this.G.getSp_tpl_two_position(), 116);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        V0();
    }

    void Q0() {
        DownloadTask downloadTask = this.f31413z;
        if (downloadTask == null) {
            if (this.G.getMod_info() != null) {
                ((CommonService_.u1) ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(this.F).extra("gameDownloadDetail", this.G.getMod_info().getMod_game_id())).extra(DownloadMethodPromptDialog_.F, this.G.get_from())).extra(DownloadMethodPromptDialog_.G, this.G.get_from_type())).a();
                return;
            }
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.G.getPay_tag_info(), this.G.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 13) {
                com.php25.PDownload.d.k(this, this.f31413z);
                return;
            } else if (status != 43) {
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(this.F, this.f31413z);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                switch (status) {
                                    case 9:
                                        if (!com.join.android.app.common.utils.f.j(this.F)) {
                                            com.join.mgps.Util.i2.a(this.F).b("无网络连接");
                                            return;
                                        }
                                        int downloadType = this.f31413z.getDownloadType();
                                        if (downloadType != 0 && downloadType != 1) {
                                            if (downloadType != 2) {
                                                return;
                                            }
                                            UtilsMy.z3(this.f31413z);
                                            return;
                                        } else if (this.f31413z.getCrc_link_type_val() == null || this.f31413z.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            DownloadTask B = g1.f.G().B(this.f31413z.getCrc_link_type_val());
                                            if (UtilsMy.T0(this.F, this.f31413z)) {
                                                return;
                                            }
                                            if (this.G.getDown_status() == 5) {
                                                UtilsMy.R0(this, this.f31413z);
                                                return;
                                            }
                                            if (B != null) {
                                                this.f31413z.setId(B.getId());
                                                com.php25.PDownload.d.b(B);
                                            }
                                            this.f31413z.setExt1(this.f31399s);
                                            com.php25.PDownload.d.c(this.f31413z, this.F);
                                            return;
                                        }
                                    case 10:
                                        break;
                                    case 11:
                                        UtilsMy.j3(this.f31413z, this.F);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(this.f31413z, this.F);
                    return;
                }
                com.php25.PDownload.d.h(this.f31413z);
                return;
            }
        }
        this.f31413z.setKeyword(Where.article.name());
        this.f31413z.setExt1(this.f31399s);
        if (UtilsMy.o0(this.G.getPay_tag_info(), this.G.getCrc_sign_id()) > 0) {
            UtilsMy.m3(this.F, this.G.getCrc_sign_id());
        } else {
            UtilsMy.d1(this.f31413z, this.G);
            if (!UtilsMy.T0(this.F, this.f31413z)) {
                if (this.G.getDown_status() == 5) {
                    UtilsMy.R0(this.F, this.f31413z);
                } else {
                    UtilsMy.F0(this.F, this.f31413z, this.G.getTp_down_url(), this.G.getOther_down_switch(), this.G.getCdn_down_switch());
                }
            }
        }
        com.papa.sim.statistic.p.l(this.F).A(this.f31399s, AccountUtil_.getInstance_(this.F).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
        GameInformationCommentActivity_.n1(this.F).b(this.f31399s).start();
    }

    o S0(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
        return new o(GType.REPLY, new GameCommentAdapter.l.b(str, informationCommentBean, i2, z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        DownloadTask downloadTask = this.f31413z;
        if (downloadTask != null && downloadTask.getStatus() != 0) {
            DownloadTask downloadTask2 = this.f31413z;
            int status = downloadTask2 != null ? downloadTask2.getStatus() : 0;
            if (UtilsMy.m0(this.G.getPay_tag_info(), this.G.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.k(this, this.f31413z);
                    return;
                } else if (status != 43) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(this.F, this.f31413z);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.f.j(this.F)) {
                                                com.join.mgps.Util.i2.a(this.F).b("无网络连接");
                                                return;
                                            }
                                            int downloadType = this.f31413z.getDownloadType();
                                            if (downloadType != 0 && downloadType != 1) {
                                                if (downloadType != 2) {
                                                    return;
                                                }
                                                UtilsMy.z3(this.f31413z);
                                                return;
                                            } else if (this.f31413z.getCrc_link_type_val() == null || this.f31413z.getCrc_link_type_val().equals("")) {
                                                return;
                                            } else {
                                                DownloadTask B = g1.f.G().B(this.f31413z.getCrc_link_type_val());
                                                if (UtilsMy.T0(this.F, this.f31413z)) {
                                                    return;
                                                }
                                                if (this.G.getDown_status() == 5) {
                                                    UtilsMy.R0(this, this.f31413z);
                                                    return;
                                                }
                                                if (B != null) {
                                                    this.f31413z.setId(B.getId());
                                                    com.php25.PDownload.d.b(B);
                                                }
                                                this.f31413z.setExt1(this.f31399s);
                                                com.php25.PDownload.d.c(this.f31413z, this.F);
                                                return;
                                            }
                                        case 10:
                                            break;
                                        case 11:
                                            UtilsMy.j3(this.f31413z, this.F);
                                            return;
                                        default:
                                            return;
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(this.f31413z, this.F);
                        return;
                    }
                    com.php25.PDownload.d.h(this.f31413z);
                    return;
                }
            }
            this.f31413z.setKeyword(Where.article.name());
            this.f31413z.setExt1(this.f31399s);
            if (UtilsMy.o0(this.G.getPay_tag_info(), this.G.getCrc_sign_id()) > 0) {
                UtilsMy.m3(this.F, this.G.getCrc_sign_id());
            } else {
                UtilsMy.d1(this.f31413z, this.G);
                if (!UtilsMy.T0(this.F, this.f31413z)) {
                    if (this.G.getDown_status() == 5) {
                        UtilsMy.R0(this.F, this.f31413z);
                    } else {
                        UtilsMy.F0(this.F, this.f31413z, this.G.getTp_down_url(), this.G.getOther_down_switch(), this.G.getCdn_down_switch());
                    }
                }
            }
            com.papa.sim.statistic.p.l(this.F).A(this.f31399s, AccountUtil_.getInstance_(this.F).getUid());
            return;
        }
        UtilsMy.K0(this.F, this.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                GameInformationCommentRequest gameInformationCommentRequest = new GameInformationCommentRequest();
                gameInformationCommentRequest.setComment_type(new int[]{1});
                gameInformationCommentRequest.setInformation_id(str);
                gameInformationCommentRequest.setPn(1);
                gameInformationCommentRequest.setPc(20);
                AccountBean accountBean = this.K;
                if (accountBean != null) {
                    gameInformationCommentRequest.setUid(accountBean.getUid());
                }
                ResultMainBean<InformationCommentBack> k02 = this.f31376a.k0(RequestBeanUtil.getInstance(this).getGameInformationComment(gameInformationCommentRequest));
                if (k02 != null && k02.getFlag() == 1) {
                    InformationCommentBack data = k02.getMessages().getData();
                    if (data == null) {
                        e1();
                        return;
                    }
                    List<InformationCommentBean> hot = data.getHot();
                    if (hot == null) {
                        e1();
                        return;
                    } else if (hot.size() > 0) {
                        o1(hot);
                        return;
                    } else {
                        e1();
                        return;
                    }
                }
                e1();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                e1();
                return;
            }
        }
        e1();
    }

    public void X0(int i2, s sVar) {
        if (((GameCommentAdapter.l.a) this.f31410x0.get(i2).f31480a).f40698a.getIs_hot() == 1) {
            sVar.f31493a.setText("热门评论");
        } else {
            sVar.f31493a.setText("最新评论");
        }
    }

    public void Y0(int i2, l lVar) {
        GameCommentAdapter.l.a aVar = (GameCommentAdapter.l.a) this.f31410x0.get(i2).f31480a;
        if (aVar == null) {
            return;
        }
        InformationCommentBean informationCommentBean = aVar.f40698a;
        if (informationCommentBean.getSub() != null && informationCommentBean.getSub().size() > 0) {
            lVar.f31459i.setVisibility(8);
        } else {
            lVar.f31459i.setVisibility(0);
        }
        lVar.f31455e.setText(com.join.android.app.common.utils.c.a(Long.parseLong(informationCommentBean.getTimes() + "000")));
        lVar.f31456f.setText(informationCommentBean.getContent());
        TextView textView = lVar.f31457g;
        textView.setText(informationCommentBean.getPraise_count() + "");
        if (informationCommentBean.isHasPraised()) {
            lVar.f31453c.setImageResource(R.drawable.like);
        } else {
            lVar.f31453c.setImageResource(R.drawable.unlike);
        }
        if (com.join.mgps.Util.d2.i(informationCommentBean.getHead_portrait())) {
            UtilsMy.E2(this.f31400s0, informationCommentBean.getHead_portrait(), lVar.f31452b);
        }
        com.join.mgps.Util.r.h(informationCommentBean.getUser_level(), lVar.f31458h);
        TextView textView2 = lVar.f31458h;
        textView2.setText("LV." + informationCommentBean.getUser_level());
        lVar.f31454d.setText(Html.fromHtml(informationCommentBean.getUser_name()));
        UtilsMy.L2(lVar.f31454d.getContext(), lVar.f31454d, informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
        lVar.f31461k.setVipData(informationCommentBean.getUser_vip_level(), informationCommentBean.getUser_svip_level());
        l1(lVar.f31453c, informationCommentBean);
        m1(lVar.f31451a, informationCommentBean);
        com.join.mgps.Util.i0.S0(lVar.f31452b, lVar.f31454d, lVar.f31455e);
        com.join.mgps.Util.i0.U0(lVar.f31461k);
        lVar.f31452b.setOnClickListener(new i(informationCommentBean));
        lVar.f31456f.post(new j(lVar));
        lVar.f31460j.setOnClickListener(new a(lVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ResultMainBean<List<GameInformationBean>> O = this.f31376a.O(RequestBeanUtil.getInstance(this).getgameInformation(this.f31399s, this.f31403u));
                if (O != null && O.getFlag() == 1) {
                    List<GameInformationBean> data = O.getMessages().getData();
                    if (data.size() > 0) {
                        p1(data.get(0));
                    } else {
                        showLodingFailed();
                    }
                } else {
                    showLodingFailed();
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f31376a = com.join.mgps.rpc.impl.c.P1();
        this.f31394p0 = new n();
        com.join.mgps.Util.c0.a().d(this);
        this.F = this;
        this.f31400s0 = this;
        this.f31379d.setText("详情");
        getDownloadTaskInfo();
        this.f31397r.setVisibility(0);
        showLoding();
        this.E.setLayoutManager(new LinearLayoutManager(this.F));
        this.E.setAdapter(this.f31394p0);
        this.f31412y0 = new b();
        Z0();
    }

    public p b1() {
        return this.f31412y0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c1() {
        if (this.f31411y != null && System.currentTimeMillis() - this.H > 2000) {
            this.H = System.currentTimeMillis();
            ShareBean shareBean = new ShareBean();
            shareBean.setTitle(this.f31411y.getTitle());
            shareBean.setText("点击查看详情");
            shareBean.setImageUrl(this.f31411y.getShow_pic());
            shareBean.setQqUrl(this.f31411y.getShare_url());
            shareBean.setqZoneShareUrl(this.f31411y.getShare_url());
            shareBean.setWeiboShareUrl(this.f31411y.getShare_url());
            shareBean.setWechatFriendUrl(this.f31411y.getShare_url());
            shareBean.setWechatShareUrl(this.f31411y.getShare_url());
            shareBean.setFrom(3);
            shareBean.setGameId(this.f31399s);
            com.join.mgps.Util.r.r(this, shareBean);
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31390n0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31390n0
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31392o0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31392o0
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31390n0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31390n0
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31392o0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31392o0
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31392o0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31392o0
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31390n0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31390n0
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31392o0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31392o0
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31392o0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31392o0
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31390n0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31390n0
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31392o0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31392o0
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.GameInformationActivityV2.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    boolean d1(DetailResultBean detailResultBean) {
        return (detailResultBean == null || detailResultBean.getPay_tag_info() == null || detailResultBean.getPay_tag_info().getPay_game_amount() <= 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void e1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void f1(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        r1();
        s1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f31390n0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f31392o0.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void h1(InformationCommentBean informationCommentBean, ImageView imageView, TextView textView) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                PariseRequest pariseRequest = new PariseRequest();
                pariseRequest.setInformation_id(this.f31399s);
                pariseRequest.setComment_id(informationCommentBean.getComment_id());
                pariseRequest.setUid(this.K.getUid());
                ResultMainBean<List<PariseBackData>> p02 = this.f31376a.p0(RequestBeanUtil.getInstance(this).getGameInformationParis(pariseRequest));
                if (p02 != null && p02.getCode() == 706) {
                    showMessage("完善资料后就可点赞哦");
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                } else if (p02 != null && p02.getFlag() == 1) {
                    List<PariseBackData> data = p02.getMessages().getData();
                    if (data.size() > 0) {
                        if (data.get(0).isVal()) {
                            informationCommentBean.setHasPraised(true);
                            int parseInt = Integer.parseInt(informationCommentBean.getPraise_count());
                            informationCommentBean.setPraise_count((parseInt + 1) + "");
                            informationCommentBean.setHasPraised(true);
                            u1(informationCommentBean);
                            return;
                        }
                        showToast("你已赞过");
                        informationCommentBean.setHasPraised(true);
                        u1(informationCommentBean);
                        return;
                    }
                    showToast("你已赞过");
                    informationCommentBean.setHasPraised(true);
                    u1(informationCommentBean);
                    return;
                } else {
                    showToast("点赞失败");
                    informationCommentBean.setHasPraised(false);
                    u1(informationCommentBean);
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showToast("点赞失败");
                informationCommentBean.setHasPraised(false);
                u1(informationCommentBean);
                return;
            }
        }
        showToast("没有网络");
        informationCommentBean.setHasPraised(false);
        u1(informationCommentBean);
    }

    void i1(o oVar, boolean z3) {
        if (oVar == null) {
            return;
        }
        try {
            ((GameCommentAdapter.l.b) oVar.f31480a).f40705g = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void j1(p pVar) {
        this.f31412y0 = pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void n1() {
        LayoutInflater.from(this.F);
        this.f31410x0.add(new o(GType.sendcomment));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void o1(List<InformationCommentBean> list) {
        String json = JsonMapper.getInstance().toJson(list);
        if (this.f31402t0.equals(json)) {
            return;
        }
        this.f31402t0 = json;
        ArrayList arrayList = new ArrayList();
        this.f31398r0 = arrayList;
        arrayList.addAll(list);
        N0(list);
        this.f31394p0.notifyDataSetChanged();
        t1();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        V0();
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(this.f31413z, lVar.c());
        if (a4 != null && this.f31413z != null && a4.getCrc_link_type_val().equals(this.f31413z.getCrc_link_type_val())) {
            this.f31413z = a4;
            a4.setStatus(a4.getStatus());
            this.f31413z.setPath(a4.getPath());
            this.f31413z.setSize(a4.getSize());
        }
        int c4 = lVar.c();
        if ((c4 == 5 || c4 == 11 || c4 == 48) && a4 != null && this.f31413z != null && a4.getCrc_link_type_val().equals(this.f31413z.getCrc_link_type_val())) {
            this.f31413z = a4;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("onEventMainThread: ");
        sb.append(this.f31413z.getStatus());
        r1();
        s1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        WebView webView = this.f31406v0;
        if (webView != null) {
            try {
                webView.getClass().getMethod("onPause", new Class[0]).invoke(this.f31406v0, null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        List<DownloadTask> D;
        boolean z3;
        super.onResume();
        GameInformationBean gameInformationBean = this.f31411y;
        if (gameInformationBean != null && gameInformationBean.getComment_switch() == 1) {
            W0(this.f31399s);
        }
        WebView webView = this.f31406v0;
        if (webView != null) {
            try {
                webView.getClass().getMethod("onResume", new Class[0]).invoke(this.f31406v0, null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.F).getAccountData();
        this.K = accountData;
        if (accountData != null && this.f31385j != null) {
            UtilsMy.E2(this.F, accountData.getAvatarSrc(), this.f31385j);
        }
        if (com.join.mgps.Util.d2.h(this.f31407w)) {
            return;
        }
        DetailResultBean detailResultBean = this.G;
        if (detailResultBean != null) {
            if (detailResultBean.getMod_info() != null) {
                D = g1.f.G().C(this.G.getMod_info().getMod_game_id(), this.G.getMod_info().getMain_game_id());
            } else {
                D = g1.f.G().D(this.G.getPackage_name());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(this).c(this, downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    r2 = g1.f.G().B(this.f31407w);
                } else if (z4) {
                    if (this.G.getMod_info() != null) {
                        r2 = g1.f.G().B(this.G.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    r2 = g1.f.G().B(this.f31407w);
                } else {
                    r2 = this.G.getMod_info() != null ? g1.f.G().B(this.G.getMod_info().getMod_game_id()) : null;
                    if (r2 == null) {
                        r2 = g1.f.G().B(this.f31407w);
                    }
                }
            }
        }
        if (r2 != null) {
            this.f31413z = r2;
        }
        if (r2 != null && this.f31413z != null) {
            if (Dtype.android.name().equals(this.f31413z.getFileType()) && this.f31413z.getStatus() == 5) {
                if (this.G.getMod_info() == null) {
                    if (Boolean.valueOf(com.join.android.app.common.utils.a.g0(this).c(this, this.f31413z.getPackageName())).booleanValue()) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this).k(this, this.f31413z.getPackageName());
                        if (com.join.mgps.Util.d2.i(this.f31413z.getVer()) && k4.d() < Integer.parseInt(this.f31413z.getVer())) {
                            this.f31413z.setStatus(9);
                        } else {
                            this.f31413z.setStatus(5);
                        }
                    } else {
                        this.f31413z.setStatus(11);
                    }
                }
            } else {
                this.f31413z.setStatus(r2.getStatus());
            }
        } else if (r2 == null && this.f31413z != null && Dtype.android.name().equals(this.f31413z.getFileType()) && this.f31413z.getStatus() == 5 && this.G.getMod_info() == null) {
            if (Boolean.valueOf(com.join.android.app.common.utils.a.g0(this).c(this, this.f31413z.getPackageName())).booleanValue()) {
                APKUtils.a k5 = com.join.android.app.common.utils.a.g0(this).k(this, this.f31413z.getPackageName());
                if (com.join.mgps.Util.d2.i(this.f31413z.getVer()) && k5.d() < Integer.parseInt(this.f31413z.getVer())) {
                    this.f31413z.setStatus(9);
                } else {
                    this.f31413z.setStatus(5);
                }
            } else {
                this.f31413z.setStatus(0);
            }
        }
        r1();
        s1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p1(GameInformationBean gameInformationBean) {
        List<DownloadTask> D;
        boolean z3;
        this.f31393p.setVisibility(0);
        if (gameInformationBean.getComment_switch() == 1) {
            this.f31395q.setVisibility(0);
            int comment_count = gameInformationBean.getComment_count();
            this.J = comment_count;
            if (comment_count > 0) {
                this.D.setVisibility(0);
            }
            TextView textView = this.D;
            textView.setText(gameInformationBean.getComment_count() + "");
        } else {
            this.f31395q.setVisibility(8);
            this.D.setVisibility(8);
        }
        this.C.setVisibility(0);
        this.f31411y = gameInformationBean;
        this.f31383h.setVisibility(8);
        this.f31382g.setVisibility(8);
        this.B.setVisibility(0);
        List<DetailResultBean> game_info = gameInformationBean.getGame_info();
        this.f31410x0.add(new o(GType.webview));
        if (game_info != null && game_info.size() != 0) {
            DetailResultBean detailResultBean = game_info.get(0);
            this.G = detailResultBean;
            if (detailResultBean == null) {
                this.f31380e.setVisibility(8);
            } else {
                this.f31380e.setVisibility(0);
                this.f31410x0.add(new o(GType.card));
                if (this.f31405v) {
                    U0();
                }
            }
        }
        if (gameInformationBean.getComment_switch() == 1) {
            n1();
            this.f31410x0.add(new o(GType.commentTitle));
            W0(this.f31399s);
        }
        if (game_info != null && game_info.size() != 0) {
            DetailResultBean detailResultBean2 = game_info.get(0);
            this.G = detailResultBean2;
            detailResultBean2.set_from(106);
            UtilsMy.w2(this.G.getSp_tag_info(), this.f31389n);
            String crc_sign_id = this.G.getCrc_sign_id();
            this.f31407w = crc_sign_id;
            if (crc_sign_id == null) {
                return;
            }
            if (this.G.getMod_info() != null) {
                D = g1.f.G().C(this.G.getMod_info().getMain_game_id(), this.G.getMod_info().getMod_game_id());
            } else {
                D = g1.f.G().D(this.G.getPackage_name());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(this).c(this, downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    this.f31413z = g1.f.G().B(this.f31407w);
                } else if (z4) {
                    this.f31413z = g1.f.G().B(this.G.getMod_info().getMod_game_id());
                } else if (z3) {
                    this.f31413z = g1.f.G().B(this.f31407w);
                } else {
                    if (this.G.getMod_info() != null) {
                        this.f31413z = g1.f.G().B(this.G.getMod_info().getMod_game_id());
                    }
                    if (this.f31413z == null) {
                        this.f31413z = g1.f.G().B(this.f31407w);
                    }
                }
            }
            if (this.G.getMod_info() == null) {
                DownloadTask downloadTask2 = this.f31413z;
                if (downloadTask2 == null) {
                    this.f31413z = this.G.getDownloadtaskDown();
                    if (UtilsMy.e0(this.G.getTag_info())) {
                        this.f31413z.setFileType(Dtype.android.name());
                        if (com.join.android.app.common.utils.a.g0(this).c(this, this.G.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this).k(this, this.G.getPackage_name());
                            if (com.join.mgps.Util.d2.i(this.G.getVer()) && k4.d() < Integer.parseInt(this.G.getVer())) {
                                this.f31413z.setStatus(9);
                            } else {
                                this.f31413z.setStatus(5);
                            }
                        } else {
                            this.f31413z.setStatus(0);
                        }
                    } else {
                        this.f31413z.setFileType(Dtype.apk.name());
                        this.f31413z.setStatus(0);
                    }
                } else {
                    downloadTask2.setTask_down_type(0);
                    this.f31413z.setCfg_ver(this.G.getCfg_ver());
                    this.f31413z.setCfg_ver_name(this.G.getCfg_ver_name());
                    this.f31413z.setCfg_down_url(this.G.getCfg_down_url());
                    this.f31413z.setDownloadType(this.G.getDownloadType());
                    this.f31413z.setScreenshot_pic(this.G.getScreenshot_pic());
                }
            }
            r1();
            MyImageLoader.h(this.f31384i, this.G.getIco_remote());
            this.f31386k.setText(this.G.getGame_name());
            TextView textView2 = this.f31387l;
            textView2.setText("大小：" + this.G.getSize() + "M");
            if (this.G == null) {
                this.f31380e.setVisibility(8);
            } else {
                this.f31380e.setVisibility(0);
                if (this.f31405v) {
                    U0();
                }
            }
            this.B.setOnClickListener(new c());
            this.f31394p0.notifyDataSetChanged();
            return;
        }
        this.f31380e.setVisibility(8);
        this.f31394p0.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void q1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        Z0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f31382g.setVisibility(0);
        this.f31383h.setVisibility(8);
        this.B.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.f31383h.setVisibility(0);
        this.f31382g.setVisibility(8);
        this.B.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.F).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.F).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void t1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f31390n0.size();
        int size2 = this.f31392o0.size();
        this.f31397r.setDownloadGameNum(size);
        if (size2 > 0) {
            this.f31397r.d();
        } else {
            this.f31397r.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v1(ImageView imageView, TextView textView, boolean z3, String str) {
        if (z3) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(str);
            return;
        }
        imageView.setImageResource(R.drawable.unlike);
    }

    boolean w1() {
        if (accountBean(this.F) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o {

        /* renamed from: a  reason: collision with root package name */
        Object f31480a;

        /* renamed from: b  reason: collision with root package name */
        GType f31481b;

        public o(GType gType) {
            this.f31481b = gType;
        }

        public o(GType gType, Object obj) {
            this.f31481b = gType;
            this.f31480a = obj;
        }
    }
}
