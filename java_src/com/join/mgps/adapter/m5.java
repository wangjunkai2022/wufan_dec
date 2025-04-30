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
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.SearchIntegratedFavoriteBean;
import com.join.mgps.dto.SearchIntegratedPostBean;
import com.join.mgps.dto.SearchResultAdinfo;
import com.join.mgps.enums.ConstantIntEnum;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SearchListAdapter.java */
/* loaded from: classes3.dex */
public class m5 extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    private Context f42881b;

    /* renamed from: c  reason: collision with root package name */
    private String f42882c;

    /* renamed from: d  reason: collision with root package name */
    private SearchResultAdinfo f42883d;

    /* renamed from: a  reason: collision with root package name */
    private List<o> f42880a = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private g f42884e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class a implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f42885a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f42886b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f42887c;

        a(Context context, List list, CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f42885a = context;
            this.f42886b = list;
            this.f42887c = collectionBeanSubBusiness;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            try {
                Intent intent = new Intent(this.f42885a, ImagePagerActivity.class);
                String[] strArr = new String[this.f42886b.size()];
                for (int i4 = 0; i4 < this.f42886b.size(); i4++) {
                    strArr[i4] = (String) this.f42886b.get(i4);
                }
                if (com.join.mgps.Util.d2.i(this.f42887c.getVedio_url()) && i2 == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.n(this.f42887c.getVedio_url());
                    videoInfo.h(strArr[0]);
                    FullScreenActivity_.G0(this.f42885a).a(videoInfo).start();
                    return;
                }
                intent.putExtra("image_urls", strArr);
                intent.putExtra("image_index", i2);
                this.f42885a.startActivity(intent);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSubBusiness f42889a;

        b(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f42889a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f42889a.getCrc_sign_id() != null) {
                IntentUtil.getInstance().goGameDetialActivity(view.getContext(), this.f42889a.getCrc_sign_id(), this.f42889a.getGame_info_tpl_type(), this.f42889a.getSp_tpl_two_position(), m5.this.A(), this.f42889a.get_from_type(), this.f42889a.getReMarks());
                if (m5.this.f42884e != null) {
                    m5.this.f42884e.b(this.f42889a.getCrc_sign_id());
                    m5.this.f42884e.i(this.f42889a.getCrc_sign_id());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42891a;

        c(int i2) {
            this.f42891a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((SearchListActivity1) m5.this.f42881b).e1(this.f42891a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIntegratedFavoriteBean.FavoriteBean f42893a;

        d(SearchIntegratedFavoriteBean.FavoriteBean favoriteBean) {
            this.f42893a = favoriteBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (m5.this.f42884e != null) {
                g gVar = m5.this.f42884e;
                Context context = view.getContext();
                gVar.l(context, this.f42893a.getId() + "", this.f42893a.getUid(), "0", "0");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIntegratedPostBean.TopArea f42895a;

        e(SearchIntegratedPostBean.TopArea topArea) {
            this.f42895a = topArea;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(this.f42895a.getFid());
            com.join.mgps.Util.i0.r0(view.getContext(), forumBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f42897a;

        f(String str) {
            this.f42897a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (m5.this.f42884e != null) {
                m5.this.f42884e.c(this.f42897a);
            }
        }
    }

    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public interface g {
        void b(String str);

        void c(String str);

        void h(String str);

        void i(String str);

        void l(Context context, String str, String str2, String str3, String str4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class h extends u {

        /* renamed from: b  reason: collision with root package name */
        public ImageView f42899b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42900c;

        h() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class i extends u {

        /* renamed from: b  reason: collision with root package name */
        public TextView f42902b;

        /* renamed from: c  reason: collision with root package name */
        public View f42903c;

        i() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class j extends u {
        j() {
            super();
        }
    }

    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    class k extends ClickableSpan implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final View.OnClickListener f42906a;

        public k(View.OnClickListener onClickListener) {
            this.f42906a = onClickListener;
        }

        @Override // android.text.style.ClickableSpan, android.view.View.OnClickListener
        public void onClick(View view) {
            this.f42906a.onClick(view);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(Color.parseColor("#FF4A4A4A"));
            textPaint.setUnderlineText(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        CollectionBeanSubBusiness f42908a;

        public l(CollectionBeanSubBusiness collectionBeanSubBusiness) {
            this.f42908a = collectionBeanSubBusiness;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            DownloadTask downloadTask = this.f42908a.getDownloadTask();
            if (downloadTask == null) {
                if (this.f42908a.getMod_info() == null && UtilsMy.e0(this.f42908a.getTag_info())) {
                    if (this.f42908a.getMod_info() == null) {
                        if (com.join.android.app.common.utils.a.g0(context).c(context, this.f42908a.getPackage_name())) {
                            APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, this.f42908a.getPackage_name());
                            if (!com.join.mgps.Util.d2.i(this.f42908a.getVer()) || k4.d() >= Integer.parseInt(this.f42908a.getVer())) {
                                com.join.android.app.common.utils.a.g0(context);
                                APKUtils.X(context, this.f42908a.getPackage_name());
                                return;
                            }
                        }
                    } else {
                        boolean c4 = com.join.android.app.common.utils.a.g0(context).c(context, this.f42908a.getPackage_name());
                        boolean D = com.join.mgps.va.overmind.e.p().D(this.f42908a.getPackage_name());
                        if (c4 || D) {
                            com.join.android.app.common.utils.a.g0(context);
                            APKUtils.S(context, this.f42908a.getMod_info());
                            return;
                        }
                    }
                }
                UtilsMy.J0(context, this.f42908a);
                return;
            }
            String plugin_num = this.f42908a.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                ExtBean extBean = new ExtBean();
                extBean.setReMarks(this.f42908a.getReMarks());
                intentDateBean.setExtBean(extBean);
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f42908a.getDown_url_remote());
                UtilsMy.h2(downloadTask, context);
                IntentUtil.getInstance().intentActivity(context, intentDateBean);
                return;
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.m0(this.f42908a.getPay_tag_info(), this.f42908a.getCrc_sign_id()) > 0) {
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
                                        if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        }
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(this.f42908a.getVer());
                                        downloadTask.setVer_name(this.f42908a.getVer_name());
                                        downloadTask.setUrl(this.f42908a.getDown_url_remote());
                                        downloadTask.setKeyword(m5.this.f42882c);
                                        m5.this.g(downloadTask);
                                        UtilsMy.w3(context, downloadTask);
                                        return;
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(context)) {
                                                    com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                    return;
                                                } else if (UtilsMy.T0(context, downloadTask)) {
                                                    return;
                                                } else {
                                                    if (this.f42908a.getDown_status() == 5) {
                                                        UtilsMy.R0(context, downloadTask);
                                                        return;
                                                    } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                        return;
                                                    } else {
                                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                        com.php25.PDownload.d.b(downloadTask);
                                                        downloadTask.setVer(this.f42908a.getVer());
                                                        downloadTask.setVer_name(this.f42908a.getVer_name());
                                                        downloadTask.setUrl(this.f42908a.getDown_url_remote());
                                                        downloadTask.setKeyword(m5.this.f42882c);
                                                        m5.this.g(downloadTask);
                                                        com.php25.PDownload.d.c(downloadTask, context);
                                                        return;
                                                    }
                                                }
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
                        downloadTask.setKeyword(m5.this.f42882c);
                        m5.this.g(downloadTask);
                        com.php25.PDownload.d.c(downloadTask, context);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(context, downloadTask);
                return;
            }
            downloadTask.setKeyword(m5.this.f42882c);
            m5.this.g(downloadTask);
            if (UtilsMy.o0(this.f42908a.getPay_tag_info(), this.f42908a.getCrc_sign_id()) > 0) {
                UtilsMy.m3(context, downloadTask.getCrc_link_type_val());
            } else {
                UtilsMy.c1(downloadTask, this.f42908a);
                if (!UtilsMy.T0(context, downloadTask)) {
                    if (this.f42908a.getDown_status() == 5) {
                        UtilsMy.R0(context, downloadTask);
                    } else {
                        UtilsMy.F0(context, downloadTask, this.f42908a.getTp_down_url(), this.f42908a.getOther_down_switch(), this.f42908a.getCdn_down_switch());
                    }
                }
                if (m5.this.f42884e != null) {
                    m5.this.f42884e.h(downloadTask.getCrc_link_type_val());
                }
            }
            if (m5.this.f42884e != null) {
                m5.this.f42884e.b(downloadTask.getCrc_link_type_val());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class m extends u {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f42910b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42911c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42912d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f42913e;

        /* renamed from: f  reason: collision with root package name */
        public View f42914f;

        m() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class n extends u {

        /* renamed from: b  reason: collision with root package name */
        public TextView f42916b;

        n() {
            super();
        }
    }

    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public static class o {

        /* renamed from: d  reason: collision with root package name */
        public static final int f42918d = 1;

        /* renamed from: e  reason: collision with root package name */
        public static final int f42919e = 2;

        /* renamed from: f  reason: collision with root package name */
        public static final int f42920f = 3;

        /* renamed from: g  reason: collision with root package name */
        public static final int f42921g = 4;

        /* renamed from: h  reason: collision with root package name */
        public static final int f42922h = 5;

        /* renamed from: i  reason: collision with root package name */
        public static final int f42923i = 6;

        /* renamed from: j  reason: collision with root package name */
        public static final int f42924j = 7;

        /* renamed from: k  reason: collision with root package name */
        public static final int f42925k = 8;

        /* renamed from: l  reason: collision with root package name */
        public static final int f42926l = 9;

        /* renamed from: m  reason: collision with root package name */
        public static final int f42927m = 10;

        /* renamed from: n  reason: collision with root package name */
        public static final int f42928n = 11;

        /* renamed from: o  reason: collision with root package name */
        public static final int f42929o = 12;

        /* renamed from: p  reason: collision with root package name */
        public static final int f42930p = 12;

        /* renamed from: a  reason: collision with root package name */
        public int f42931a;

        /* renamed from: b  reason: collision with root package name */
        public Object f42932b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f42933c;

        public o(int i2, Object obj) {
            this.f42931a = i2;
            this.f42932b = obj;
        }

        public o a(boolean z3) {
            this.f42933c = z3;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class p extends u {

        /* renamed from: b  reason: collision with root package name */
        public TextView f42934b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42935c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42936d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f42937e;

        /* renamed from: f  reason: collision with root package name */
        public View f42938f;

        /* renamed from: g  reason: collision with root package name */
        public View f42939g;

        /* renamed from: h  reason: collision with root package name */
        public View f42940h;

        p() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class q extends u {

        /* renamed from: b  reason: collision with root package name */
        public TextView f42942b;

        /* renamed from: c  reason: collision with root package name */
        public View f42943c;

        q() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class r extends u {

        /* renamed from: b  reason: collision with root package name */
        public Button f42945b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42946c;

        /* renamed from: d  reason: collision with root package name */
        public View f42947d;

        r() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class s extends u {

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f42949b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42950c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42951d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f42952e;

        s() {
            super();
        }
    }

    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class t {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f42954a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f42955b;

        /* renamed from: c  reason: collision with root package name */
        TextView f42956c;

        /* renamed from: d  reason: collision with root package name */
        TextView f42957d;

        /* renamed from: e  reason: collision with root package name */
        RelativeLayout f42958e;

        /* renamed from: f  reason: collision with root package name */
        TextView f42959f;

        /* renamed from: g  reason: collision with root package name */
        LinearLayout f42960g;

        /* renamed from: h  reason: collision with root package name */
        TextView f42961h;

        /* renamed from: i  reason: collision with root package name */
        LinearLayout f42962i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f42963j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f42964k;

        /* renamed from: l  reason: collision with root package name */
        public ProgressBar f42965l;

        /* renamed from: m  reason: collision with root package name */
        public ProgressBar f42966m;

        /* renamed from: n  reason: collision with root package name */
        RelativeLayout f42967n;

        /* renamed from: o  reason: collision with root package name */
        View f42968o;

        public t() {
        }
    }

    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    class u {
        u() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class v {

        /* renamed from: a  reason: collision with root package name */
        TextView f42971a;

        /* renamed from: b  reason: collision with root package name */
        TextView f42972b;

        public v(View view) {
            this.f42971a = (TextView) view.findViewById(R.id.tips);
            this.f42972b = (TextView) view.findViewById(R.id.titleText);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchListAdapter.java */
    /* loaded from: classes3.dex */
    public class w {

        /* renamed from: a  reason: collision with root package name */
        HListView f42974a;

        public w(View view) {
            this.f42974a = (HListView) view.findViewById(R.id.screenListView);
        }
    }

    public m5(Context context) {
        this.f42881b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(int i2, View view) {
        ((SearchListActivity1) this.f42881b).e1(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(int i2, View view) {
        ((SearchListActivity1) this.f42881b).e1(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(String str, View view) {
        E(view.getContext(), str);
    }

    private View i(int i2, View view, ViewGroup viewGroup) {
        h hVar;
        if (view != null) {
            hVar = (h) view.getTag();
        } else {
            h hVar2 = new h();
            View inflate = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_item_all_no_more, viewGroup, false);
            hVar2.f42899b = (ImageView) inflate.findViewById(R.id.icon);
            hVar2.f42900c = (TextView) inflate.findViewById(R.id.name);
            inflate.setTag(hVar2);
            hVar = hVar2;
            view = inflate;
        }
        int intValue = ((Integer) getItem(i2)).intValue();
        if (intValue == 1) {
            hVar.f42899b.setImageResource(R.drawable.img_bg_game);
            hVar.f42900c.setText("未搜索到相应游戏\n已为您推荐其它游戏");
        } else if (intValue == 2) {
            hVar.f42899b.setImageResource(R.drawable.img_bg_dell);
            hVar.f42900c.setText("未搜索到相应游戏单\n已为您推荐热门游戏单");
        } else if (intValue == 3) {
            hVar.f42899b.setImageResource(R.drawable.img_bg_talk);
            hVar.f42900c.setText("未搜索到相应社区\n已为您推荐其他热门社区");
        }
        return view;
    }

    private View j(int i2, View view, ViewGroup viewGroup) {
        i iVar;
        if (view != null) {
            iVar = (i) view.getTag();
        } else {
            iVar = new i();
            view = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_item_all_section_title, (ViewGroup) null);
            iVar.f42902b = (TextView) view.findViewById(R.id.title);
            iVar.f42903c = view.findViewById(R.id.imageView50);
            view.setTag(iVar);
        }
        final int intValue = ((Integer) getItem(i2)).intValue();
        if (intValue == 1) {
            iVar.f42902b.setText("游戏");
        } else if (intValue == 2) {
            iVar.f42902b.setText("游戏单");
        } else if (intValue == 3) {
            iVar.f42902b.setText("帖子");
        }
        iVar.f42902b.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.k5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m5.this.B(intValue, view2);
            }
        });
        iVar.f42903c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.j5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m5.this.C(intValue, view2);
            }
        });
        return view;
    }

    private View k(int i2, View view, ViewGroup viewGroup) {
        if (view != null) {
            j jVar = (j) view.getTag();
        } else {
            j jVar2 = new j();
            View inflate = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_item_all_view_more, viewGroup, false);
            inflate.setTag(jVar2);
            view = inflate;
        }
        view.setOnClickListener(new c(((Integer) getItem(i2)).intValue()));
        return view;
    }

    private View l(int i2, View view, ViewGroup viewGroup) {
        m mVar;
        if (view != null) {
            mVar = (m) view.getTag();
        } else {
            mVar = new m();
            view = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_item_favorite_game_list, (ViewGroup) null);
            mVar.f42910b = (SimpleDraweeView) view.findViewById(R.id.icon);
            mVar.f42911c = (TextView) view.findViewById(R.id.name);
            mVar.f42912d = (TextView) view.findViewById(R.id.desc);
            mVar.f42913e = (TextView) view.findViewById(R.id.count);
            mVar.f42914f = view.findViewById(R.id.divider);
            view.setTag(mVar);
        }
        SearchIntegratedFavoriteBean.FavoriteBean favoriteBean = (SearchIntegratedFavoriteBean.FavoriteBean) getItem(i2);
        MyImageLoader.h(mVar.f42910b, favoriteBean.getPic());
        mVar.f42911c.setText(favoriteBean.getTitle());
        mVar.f42912d.setText(favoriteBean.getAuth_name());
        TextView textView = mVar.f42913e;
        textView.setText(favoriteBean.getGame_count() + "款");
        if (favoriteBean.isShowDivider()) {
            mVar.f42914f.setVisibility(0);
        } else {
            mVar.f42914f.setVisibility(8);
        }
        view.setOnClickListener(new d(favoriteBean));
        return view;
    }

    private View m(int i2, View view, ViewGroup viewGroup) {
        n nVar;
        if (view != null) {
            nVar = (n) view.getTag();
        } else {
            nVar = new n();
            view = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_item_favorite_top_area, (ViewGroup) null);
            nVar.f42916b = (TextView) view.findViewById(R.id.title);
            view.setTag(nVar);
        }
        try {
            String str = (String) getItem(i2);
            SpannableString spannableString = new SpannableString(String.format("包含%s的游戏单", str));
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FFF47500")), 2, str.length() + 2, 18);
            nVar.f42916b.setText(spannableString);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View n(int i2, View view, ViewGroup viewGroup) {
        return z(i2, view, viewGroup);
    }

    private View o(int i2, View view, ViewGroup viewGroup) {
        return y(i2, view, viewGroup);
    }

    private View p(int i2, View view, ViewGroup viewGroup) {
        return x(i2, view, viewGroup);
    }

    private View t(int i2, View view, ViewGroup viewGroup) {
        p pVar;
        ForumBean.ForumSearchQueryBean forumSearchQueryBean;
        if (view != null) {
            pVar = (p) view.getTag();
        } else {
            pVar = new p();
            view = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_list_item_post_footer, (ViewGroup) null);
            pVar.f42935c = (TextView) view.findViewById(R.id.forum_post_view);
            pVar.f42936d = (TextView) view.findViewById(R.id.forum_post_commit);
            pVar.f42937e = (TextView) view.findViewById(R.id.forum_post_praise);
            pVar.f42938f = view.findViewById(R.id.viewParent);
            pVar.f42939g = view.findViewById(R.id.commentParent);
            pVar.f42940h = view.findViewById(R.id.forum_post_praise_parent);
            view.setTag(pVar);
        }
        try {
            forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (forumSearchQueryBean == null) {
            return view;
        }
        com.join.mgps.Util.i0.D1(pVar.f42935c, forumSearchQueryBean.getView(), "0");
        com.join.mgps.Util.i0.D1(pVar.f42936d, forumSearchQueryBean.getComment(), "0");
        com.join.mgps.Util.i0.D1(pVar.f42937e, forumSearchQueryBean.getPraise(), "0");
        K(view, forumSearchQueryBean.getPid());
        return view;
    }

    private View u(int i2, View view, ViewGroup viewGroup) {
        q qVar;
        ForumBean.ForumSearchQueryBean forumSearchQueryBean;
        if (view != null) {
            qVar = (q) view.getTag();
        } else {
            qVar = new q();
            view = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_item_post_message, (ViewGroup) null);
            qVar.f42942b = (TextView) view.findViewById(R.id.forum_post_message);
            qVar.f42943c = view.findViewById(R.id.messageParent);
            view.setTag(qVar);
        }
        try {
            forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (forumSearchQueryBean == null) {
            return view;
        }
        String message = forumSearchQueryBean.getMessage();
        String g4 = com.join.mgps.Util.d2.g(forumSearchQueryBean.getKeyword());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(message);
        int color = this.f42881b.getResources().getColor(R.color.search_high_light);
        int indexOf = message.indexOf(g4);
        int length = g4.length() + indexOf;
        try {
            if (length <= message.length() && indexOf >= 0) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(color), indexOf, length, 33);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        final String pid = forumSearchQueryBean.getPid();
        view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.l5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                m5.this.D(pid, view2);
            }
        });
        qVar.f42942b.setText(spannableStringBuilder);
        try {
            int i4 = 0;
            if (forumSearchQueryBean.isShowDivider()) {
                qVar.f42942b.setTextColor(Color.parseColor("#3b3b3b"));
                qVar.f42942b.setTypeface(Typeface.DEFAULT, 1);
                i4 = qVar.f42942b.getResources().getDimensionPixelOffset(R.dimen.wdp36);
            } else {
                qVar.f42942b.setTextColor(Color.parseColor("#FF4A4A4A"));
                qVar.f42942b.setTypeface(Typeface.DEFAULT, 0);
            }
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) qVar.f42942b.getLayoutParams();
            layoutParams.topMargin = i4;
            qVar.f42942b.setLayoutParams(layoutParams);
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        view.requestLayout();
        return view;
    }

    private View v(int i2, View view, ViewGroup viewGroup) {
        r rVar;
        ForumBean.ForumSearchQueryBean forumSearchQueryBean;
        if (view != null) {
            rVar = (r) view.getTag();
        } else {
            rVar = new r();
            view = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_item_post_subject, (ViewGroup) null);
            rVar.f42945b = (Button) view.findViewById(R.id.forum_post_best);
            rVar.f42946c = (TextView) view.findViewById(R.id.forum_post_subject);
            View findViewById = view.findViewById(R.id.subject_parent);
            rVar.f42947d = findViewById;
            findViewById.setPadding(findViewById.getPaddingLeft(), com.join.android.app.component.optimizetext.a.a(10.0f), rVar.f42947d.getPaddingRight(), rVar.f42947d.getPaddingBottom());
            view.setTag(rVar);
        }
        try {
            forumSearchQueryBean = (ForumBean.ForumSearchQueryBean) getItem(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (forumSearchQueryBean == null) {
            return view;
        }
        String subject = forumSearchQueryBean.getSubject();
        String g4 = com.join.mgps.Util.d2.g(forumSearchQueryBean.getKeyword());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(subject);
        int color = this.f42881b.getResources().getColor(R.color.search_high_light);
        int indexOf = subject.indexOf(g4);
        int length = g4.length() + indexOf;
        try {
            if (length <= subject.length() && indexOf >= 0) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(color), indexOf, length, 33);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        rVar.f42946c.setText(spannableStringBuilder);
        K(view, forumSearchQueryBean.getPid());
        return view;
    }

    private View w(int i2, View view, ViewGroup viewGroup) {
        s sVar;
        if (view != null) {
            sVar = (s) view.getTag();
        } else {
            sVar = new s();
            view = LayoutInflater.from(this.f42881b).inflate(R.layout.mg_forum_search_item_post_top_area, (ViewGroup) null);
            sVar.f42949b = (SimpleDraweeView) view.findViewById(R.id.icon);
            sVar.f42950c = (TextView) view.findViewById(R.id.name);
            sVar.f42951d = (TextView) view.findViewById(R.id.desc);
            sVar.f42952e = (TextView) view.findViewById(R.id.count);
            view.setTag(sVar);
        }
        SearchIntegratedPostBean.TopArea topArea = (SearchIntegratedPostBean.TopArea) getItem(i2);
        MyImageLoader.h(sVar.f42949b, topArea.getIcon_src());
        sVar.f42950c.setText(topArea.getName());
        sVar.f42951d.setText(topArea.getDescription());
        TextView textView = sVar.f42952e;
        textView.setText("今日更新:" + topArea.getToday_posts());
        view.setOnClickListener(new e(topArea));
        return view;
    }

    public String A() {
        return this.f42882c;
    }

    public void E(Context context, String str) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(Integer.parseInt(str));
        com.join.mgps.Util.i0.v0(context, forumPostsBean);
    }

    public void F(g gVar) {
        this.f42884e = gVar;
    }

    public void G(SearchResultAdinfo searchResultAdinfo) {
        this.f42883d = searchResultAdinfo;
    }

    void H(View view, int i2) {
        if (view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), i2, view.getPaddingRight(), i2);
    }

    public void I(List<o> list) {
        if (list == null) {
            return;
        }
        if (this.f42880a == null) {
            this.f42880a = new ArrayList();
        }
        this.f42880a.clear();
        this.f42880a.addAll(list);
    }

    public void J(List<o> list) {
        this.f42880a = list;
    }

    public void K(View view, String str) {
        view.setOnClickListener(new f(str));
    }

    public void L(String str) {
        this.f42882c = str;
    }

    void M(t tVar, Boolean bool, Boolean bool2) {
        if (bool.booleanValue()) {
            tVar.f42962i.setVisibility(8);
            tVar.f42965l.setVisibility(8);
            tVar.f42966m.setVisibility(8);
            tVar.f42960g.setVisibility(0);
            tVar.f42961h.setVisibility(0);
            return;
        }
        tVar.f42962i.setVisibility(0);
        if (bool2.booleanValue()) {
            tVar.f42965l.setVisibility(8);
            tVar.f42966m.setVisibility(0);
        } else {
            tVar.f42966m.setVisibility(8);
            tVar.f42965l.setVisibility(0);
        }
        tVar.f42960g.setVisibility(8);
        tVar.f42961h.setVisibility(8);
    }

    void g(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ExtBean extBean = new ExtBean();
        extBean.setFrom("103");
        extBean.setLocation(A());
        downloadTask.setExt(JsonMapper.toJsonString(extBean));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42880a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        if (i2 < this.f42880a.size()) {
            return this.f42880a.get(i2).f42932b;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return i2 < this.f42880a.size() ? this.f42880a.get(i2).f42931a : super.getItemViewType(i2);
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == 3) {
            return t(i2, view, viewGroup);
        }
        if (itemViewType == 2) {
            return u(i2, view, viewGroup);
        }
        if (itemViewType == 1) {
            return v(i2, view, viewGroup);
        }
        if (itemViewType == 4) {
            return w(i2, view, viewGroup);
        }
        if (itemViewType == 5) {
            return m(i2, view, viewGroup);
        }
        if (itemViewType == 6) {
            return l(i2, view, viewGroup);
        }
        if (itemViewType == 7) {
            return p(i2, view, viewGroup);
        }
        if (itemViewType == 8) {
            return o(i2, view, viewGroup);
        }
        if (itemViewType == 9) {
            return n(i2, view, viewGroup);
        }
        if (itemViewType == 10) {
            return j(i2, view, viewGroup);
        }
        if (itemViewType == 11) {
            return i(i2, view, viewGroup);
        }
        return itemViewType == 12 ? k(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 12;
    }

    public SearchResultAdinfo h() {
        return this.f42883d;
    }

    public List<o> q() {
        return this.f42880a;
    }

    public o r(int i2) {
        if (i2 < this.f42880a.size()) {
            return this.f42880a.get(i2);
        }
        return null;
    }

    public List<o> s() {
        return this.f42880a;
    }

    public View x(int i2, View view, ViewGroup viewGroup) {
        t tVar;
        View view2;
        RelativeLayout.LayoutParams layoutParams;
        if (view == null) {
            View inflate = LayoutInflater.from(this.f42881b).inflate(R.layout.app_listview_item1, (ViewGroup) null);
            t tVar2 = new t();
            tVar2.f42954a = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
            tVar2.f42955b = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
            tVar2.f42956c = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
            tVar2.f42957d = (TextView) inflate.findViewById(R.id.adText);
            tVar2.f42967n = (RelativeLayout) inflate.findViewById(R.id.relateLayoutApp);
            tVar2.f42958e = (RelativeLayout) inflate.findViewById(R.id.rLayoutRight);
            tVar2.f42959f = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
            tVar2.f42960g = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
            tVar2.f42961h = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
            tVar2.f42957d = (TextView) inflate.findViewById(R.id.adText);
            tVar2.f42962i = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
            tVar2.f42963j = (TextView) inflate.findViewById(R.id.appSize);
            tVar2.f42964k = (TextView) inflate.findViewById(R.id.loding_info);
            tVar2.f42965l = (ProgressBar) inflate.findViewById(R.id.progressBar);
            tVar2.f42966m = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
            tVar2.f42968o = inflate.findViewById(R.id.line);
            inflate.setTag(tVar2);
            tVar = tVar2;
            view2 = inflate;
        } else {
            tVar = (t) view.getTag();
            view2 = view;
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) getItem(i2);
        DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
        Context context = this.f42881b;
        o r3 = r(i2);
        if (r3 != null && r3.f42933c) {
            tVar.f42968o.setVisibility(0);
            if (tVar.f42968o.getLayoutParams() != null) {
                layoutParams = (RelativeLayout.LayoutParams) tVar.f42968o.getLayoutParams();
            } else {
                layoutParams = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics()));
            }
            layoutParams.leftMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
            layoutParams.rightMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp34);
            tVar.f42968o.setLayoutParams(layoutParams);
        } else {
            tVar.f42968o.setVisibility(8);
        }
        tVar.f42956c.setText(collectionBeanSubBusiness.getGame_name());
        tVar.f42956c.setTypeface(Typeface.DEFAULT, 0);
        tVar.f42961h.setText(collectionBeanSubBusiness.getInfo());
        tVar.f42967n.setOnClickListener(new b(collectionBeanSubBusiness));
        if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getIco_remote())) {
            MyImageLoader.h(tVar.f42954a, collectionBeanSubBusiness.getIco_remote().trim());
        }
        if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
            tVar.f42955b.setVisibility(0);
        } else {
            tVar.f42955b.setVisibility(8);
        }
        long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
        if (collectionBeanSubBusiness.isAd()) {
            UtilsMy.F(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), tVar.f42960g, context);
        } else {
            UtilsMy.C(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), tVar.f42960g, context);
        }
        UtilsMy.v2(collectionBeanSubBusiness.getSp_tag_info(), view2, downloadTask);
        String plugin_num = collectionBeanSubBusiness.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            tVar.f42959f.setBackgroundResource(R.drawable.recom_blue_butn);
            tVar.f42959f.setText("开始");
            tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_blue_color));
            tVar.f42960g.setVisibility(8);
            tVar.f42955b.setVisibility(8);
        } else if (downloadTask == null) {
            M(tVar, Boolean.TRUE, Boolean.FALSE);
            if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(context).c(context, collectionBeanSubBusiness.getPackage_name()) && UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, collectionBeanSubBusiness.getPackage_name());
                    if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                        tVar.f42959f.setBackgroundResource(R.drawable.recom_green_butn);
                        tVar.f42959f.setText("更新");
                        tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_green_color));
                    } else {
                        tVar.f42959f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        tVar.f42959f.setText(context.getResources().getString(R.string.download_status_finished));
                        tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_main_color));
                    }
                } else {
                    tVar.f42959f.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                    UtilsMy.n2(tVar.f42959f, tVar.f42958e, collectionBeanSubBusiness);
                }
            } else {
                tVar.f42959f.setBackgroundResource(R.drawable.recom_green_butn);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.n2(tVar.f42959f, tVar.f42958e, collectionBeanSubBusiness);
            }
        } else {
            int status = UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0 ? 43 : downloadTask.getStatus();
            if (status != 0) {
                if (status == 27) {
                    tVar.f42959f.setText("暂停中");
                } else if (status == 48) {
                    tVar.f42959f.setBackgroundResource(R.drawable.recom_blue_butn);
                    tVar.f42959f.setText("安装中");
                    tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_blue_color));
                    M(tVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    tVar.f42959f.setBackgroundResource(R.drawable.recom_green_butn);
                                                    tVar.f42959f.setText("更新");
                                                    tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_green_color));
                                                    M(tVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 10:
                                                    tVar.f42959f.setBackgroundResource(R.drawable.recom_blue_butn);
                                                    tVar.f42959f.setText("等待");
                                                    tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_blue_color));
                                                    Boolean bool = Boolean.FALSE;
                                                    M(tVar, bool, bool);
                                                    try {
                                                        TextView textView = tVar.f42963j;
                                                        textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        tVar.f42965l.setProgress((int) downloadTask.getProgress());
                                                    } catch (Exception e4) {
                                                        e4.printStackTrace();
                                                    }
                                                    tVar.f42964k.setText("等待中");
                                                    break;
                                                case 11:
                                                    tVar.f42959f.setBackgroundResource(R.drawable.recom_green_butn);
                                                    tVar.f42959f.setText("安装");
                                                    tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_green_color));
                                                    M(tVar, Boolean.TRUE, Boolean.FALSE);
                                                    break;
                                                case 12:
                                                    M(tVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView2 = tVar.f42963j;
                                                    textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    tVar.f42964k.setText("解压中..");
                                                    tVar.f42966m.setProgress((int) downloadTask.getProgress());
                                                    tVar.f42959f.setBackgroundResource(R.drawable.extract);
                                                    tVar.f42959f.setText("解压中");
                                                    tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_grey_color));
                                                    break;
                                                case 13:
                                                    M(tVar, Boolean.FALSE, Boolean.TRUE);
                                                    TextView textView3 = tVar.f42963j;
                                                    textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                    tVar.f42964k.setText("点击重新解压");
                                                    tVar.f42966m.setProgress((int) downloadTask.getProgress());
                                                    tVar.f42959f.setBackgroundResource(R.drawable.reextract);
                                                    tVar.f42959f.setText("解压");
                                                    tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_blue_color));
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        tVar.f42959f.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        tVar.f42959f.setText(context.getResources().getString(R.string.download_status_finished));
                        tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_main_color));
                        M(tVar, Boolean.TRUE, Boolean.FALSE);
                    }
                    tVar.f42959f.setBackgroundResource(R.drawable.recom_blue_butn);
                    tVar.f42959f.setText("继续");
                    tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_blue_color));
                    Boolean bool2 = Boolean.FALSE;
                    M(tVar, bool2, bool2);
                    try {
                        TextView textView4 = tVar.f42963j;
                        textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        tVar.f42965l.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    tVar.f42964k.setText("暂停中");
                } else {
                    UtilsMy.C3(downloadTask);
                    tVar.f42959f.setBackgroundResource(R.drawable.recom_blue_butn);
                    tVar.f42959f.setText("暂停");
                    tVar.f42959f.setTextColor(context.getResources().getColor(R.color.app_blue_color));
                    Boolean bool3 = Boolean.FALSE;
                    M(tVar, bool3, bool3);
                    TextView textView5 = tVar.f42963j;
                    textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                    TextView textView6 = tVar.f42964k;
                    textView6.setText(downloadTask.getSpeed() + "/S");
                    tVar.f42965l.setProgress((int) downloadTask.getProgress());
                }
            }
            tVar.f42959f.setBackgroundResource(R.drawable.recom_green_butn);
            UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
            UtilsMy.n2(tVar.f42959f, tVar.f42958e, collectionBeanSubBusiness);
            M(tVar, Boolean.TRUE, Boolean.FALSE);
        }
        tVar.f42958e.setOnClickListener(new l(collectionBeanSubBusiness));
        return view2;
    }

    public View y(int i2, View view, ViewGroup viewGroup) {
        w wVar;
        boolean z3;
        Context context = this.f42881b;
        if (view == null) {
            view = LayoutInflater.from(context).inflate(R.layout.gamedetail_item_viewpage1, (ViewGroup) null);
            wVar = new w(view);
            view.setTag(wVar);
        } else {
            wVar = (w) view.getTag();
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) getItem(i2);
        ArrayList arrayList = new ArrayList();
        if (arrayList.size() == 0) {
            if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVedio_cover_pic()) && com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVedio_url())) {
                arrayList.add(collectionBeanSubBusiness.getVedio_cover_pic());
                z3 = true;
            } else {
                z3 = false;
            }
            List<DetialShowImageBean> pic_info = collectionBeanSubBusiness.getPic_info();
            if (pic_info != null) {
                for (int i4 = 0; i4 < pic_info.size(); i4++) {
                    arrayList.add(pic_info.get(i4).getRemote().getPath());
                }
            }
            if (arrayList.size() == 0) {
                wVar.f42974a.setVisibility(8);
            } else {
                wVar.f42974a.setVisibility(0);
                int pic_position = collectionBeanSubBusiness.getPic_position();
                wVar.f42974a.setAdapter((ListAdapter) new x0(context, pic_position, arrayList, z3));
                if (pic_position == 1) {
                    wVar.f42974a.setDividerWidth(context.getResources().getDimensionPixelSize(R.dimen.wdp10));
                    wVar.f42974a.postInvalidate();
                } else {
                    wVar.f42974a.setDividerWidth(context.getResources().getDimensionPixelSize(R.dimen.wdp20));
                    wVar.f42974a.postInvalidate();
                }
                wVar.f42974a.setOnItemClickListener(new a(context, arrayList, collectionBeanSubBusiness));
            }
        }
        return view;
    }

    public View z(int i2, View view, ViewGroup viewGroup) {
        v vVar;
        String str;
        if (view == null) {
            view = LayoutInflater.from(this.f42881b).inflate(R.layout.search_ad_title_view, (ViewGroup) null, false);
            vVar = new v(view);
            view.setTag(vVar);
        } else {
            vVar = (v) view.getTag();
        }
        if (this.f42883d != null) {
            view.setVisibility(0);
            vVar.f42971a.setText(this.f42883d.getLabel());
            int length = this.f42883d.getLabel() == null ? 0 : this.f42883d.getLabel().length();
            if (length == 2) {
                str = "\u3000\u3000 ";
            } else if (length == 3) {
                str = "\u3000\u3000\u3000";
            } else if (length == 4) {
                str = "\u3000\u3000\u3000\u3000";
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(" ");
                int i4 = ((length * 2) / 3) + 1;
                String str2 = "";
                for (int i5 = 0; i5 < i4; i5++) {
                    stringBuffer.append("\u3000");
                    str2 = stringBuffer.toString();
                }
                str = str2;
            }
            TextView textView = vVar.f42972b;
            textView.setText(str + this.f42883d.getTitle());
        } else {
            view.setVisibility(8);
        }
        return view;
    }
}
