package com.join.mgps.activity.message;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c2;
import com.join.mgps.Util.i2;
import com.join.mgps.activity.CommentDetailActivity_;
import com.join.mgps.activity.GivePraiceActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.i;
import com.join.mgps.customview.j;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.GameReplyMessageListBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
/* compiled from: MessagePriaceFragment.java */
@EFragment(R.layout.fragment_communtity)
/* loaded from: classes3.dex */
public class c extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f37842a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    PtrClassicFrameLayout f37843b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f37844c;

    /* renamed from: d  reason: collision with root package name */
    g f37845d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f37846e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f37847f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f37848g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f37849h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.rpc.d f37850i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.e f37851j;

    /* renamed from: k  reason: collision with root package name */
    Context f37852k;
    @Pref

    /* renamed from: m  reason: collision with root package name */
    PrefDef_ f37854m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    Button f37855n;

    /* renamed from: p  reason: collision with root package name */
    private AccountBean f37857p;

    /* renamed from: q  reason: collision with root package name */
    List<h> f37858q;

    /* renamed from: r  reason: collision with root package name */
    List<GameReplyMessageListBean.MessagesBean.DataBean> f37859r;

    /* renamed from: t  reason: collision with root package name */
    PopupWindow f37861t;

    /* renamed from: u  reason: collision with root package name */
    InputFilter[] f37862u;

    /* renamed from: w  reason: collision with root package name */
    View f37864w;

    /* renamed from: x  reason: collision with root package name */
    View f37865x;

    /* renamed from: y  reason: collision with root package name */
    EditText f37866y;

    /* renamed from: l  reason: collision with root package name */
    int f37853l = 1;

    /* renamed from: o  reason: collision with root package name */
    boolean f37856o = true;

    /* renamed from: s  reason: collision with root package name */
    boolean f37860s = false;

    /* renamed from: v  reason: collision with root package name */
    boolean f37863v = false;

    /* compiled from: MessagePriaceFragment.java */
    /* loaded from: classes3.dex */
    class a implements i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            c.this.M();
            c.this.Q();
        }
    }

    /* compiled from: MessagePriaceFragment.java */
    /* loaded from: classes3.dex */
    class b implements j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            c.this.M();
            c cVar = c.this;
            cVar.f37853l = 1;
            cVar.Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessagePriaceFragment.java */
    /* renamed from: com.join.mgps.activity.message.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class View$OnClickListenerC0168c implements View.OnClickListener {
        View$OnClickListenerC0168c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PopupWindow popupWindow = c.this.f37861t;
            if (popupWindow == null || !popupWindow.isShowing()) {
                return;
            }
            c.this.f37861t.dismiss();
            c.this.f37856o = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessagePriaceFragment.java */
    /* loaded from: classes3.dex */
    public class d implements TextWatcher {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessagePriaceFragment.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f37871a;

        e(GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
            this.f37871a = dataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c.this.f37861t.dismiss();
            c cVar = c.this;
            cVar.X(cVar.f37866y.getText().toString().trim(), this.f37871a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessagePriaceFragment.java */
    /* loaded from: classes3.dex */
    public class f implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f37873a;

        f(View view) {
            this.f37873a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.f37873a.getWindowVisibleDisplayFrame(rect);
            if (rect.bottom - rect.top > (this.f37873a.getHeight() / 3) * 2) {
                c cVar = c.this;
                if (cVar.f37863v) {
                    cVar.f37861t.dismiss();
                    c.this.f37863v = false;
                    return;
                }
                return;
            }
            c.this.f37863v = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessagePriaceFragment.java */
    /* loaded from: classes3.dex */
    public class g extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        Context f37875a;

        /* compiled from: MessagePriaceFragment.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f37877a;

            a(GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
                this.f37877a = dataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.b0(this.f37877a);
            }
        }

        /* compiled from: MessagePriaceFragment.java */
        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f37879a;

            b(GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
                this.f37879a = dataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommentDetailActivity_.z d4 = CommentDetailActivity_.k2(g.this.f37875a).d(this.f37879a.getGame_id());
                CommentDetailActivity_.z g4 = d4.b(this.f37879a.getOriginal_text_id() + "").f("").a(1).e(0).h(1).g("");
                g4.c(this.f37879a.getComment_score_switch() + "").start();
            }
        }

        /* compiled from: MessagePriaceFragment.java */
        /* renamed from: com.join.mgps.activity.message.c$g$c  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0169c implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f37881a;

            View$OnClickListenerC0169c(GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
                this.f37881a = dataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.b0(this.f37881a);
            }
        }

        /* compiled from: MessagePriaceFragment.java */
        /* loaded from: classes3.dex */
        class d implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f37883a;

            d(GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
                this.f37883a = dataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommentDetailActivity_.z d4 = CommentDetailActivity_.k2(g.this.f37875a).d(this.f37883a.getGame_id());
                CommentDetailActivity_.z g4 = d4.b(this.f37883a.getOriginal_text_id() + "").f("").a(1).e(0).h(1).g("");
                g4.c(this.f37883a.getComment_score_switch() + "").start();
            }
        }

        /* compiled from: MessagePriaceFragment.java */
        /* loaded from: classes3.dex */
        class e {

            /* renamed from: a  reason: collision with root package name */
            RelativeLayout f37885a;

            /* renamed from: b  reason: collision with root package name */
            SimpleDraweeView f37886b;

            /* renamed from: c  reason: collision with root package name */
            TextView f37887c;

            /* renamed from: d  reason: collision with root package name */
            TextView f37888d;

            /* renamed from: e  reason: collision with root package name */
            TextView f37889e;

            e() {
            }
        }

        /* compiled from: MessagePriaceFragment.java */
        /* loaded from: classes3.dex */
        class f {

            /* renamed from: a  reason: collision with root package name */
            TextView f37891a;

            f() {
            }
        }

        /* compiled from: MessagePriaceFragment.java */
        /* renamed from: com.join.mgps.activity.message.c$g$g  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0170g {

            /* renamed from: a  reason: collision with root package name */
            TextView f37893a;

            /* renamed from: b  reason: collision with root package name */
            LinearLayout f37894b;

            C0170g() {
            }
        }

        /* compiled from: MessagePriaceFragment.java */
        /* loaded from: classes3.dex */
        class h {

            /* renamed from: a  reason: collision with root package name */
            LinearLayout f37896a;

            /* renamed from: b  reason: collision with root package name */
            TextView f37897b;

            h() {
            }
        }

        /* compiled from: MessagePriaceFragment.java */
        /* loaded from: classes3.dex */
        class i {

            /* renamed from: a  reason: collision with root package name */
            TextView f37899a;

            /* renamed from: b  reason: collision with root package name */
            RelativeLayout f37900b;

            i() {
            }
        }

        public g(Context context) {
            this.f37875a = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return c.this.f37858q.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return c.this.f37858q.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return c.this.f37858q.get(i2).f37903b;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            e eVar;
            View view2;
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            String substring;
            i iVar;
            View view3;
            C0170g c0170g;
            View view4;
            h hVar;
            View view5;
            String str6;
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 1) {
                if (itemViewType == 2) {
                    if (view == null) {
                        view2 = LayoutInflater.from(this.f37875a).inflate(R.layout.community_iconitem, (ViewGroup) null);
                        eVar = new e();
                        eVar.f37885a = (RelativeLayout) view2.findViewById(R.id.rl_icon);
                        eVar.f37886b = (SimpleDraweeView) view2.findViewById(R.id.simv);
                        eVar.f37887c = (TextView) view2.findViewById(R.id.tv_name);
                        eVar.f37889e = (TextView) view2.findViewById(R.id.tv_reply);
                        eVar.f37888d = (TextView) view2.findViewById(R.id.tv_time);
                        view2.setTag(eVar);
                    } else {
                        eVar = (e) view.getTag();
                        view2 = view;
                    }
                    GameReplyMessageListBean.MessagesBean.DataBean dataBean = (GameReplyMessageListBean.MessagesBean.DataBean) c.this.f37858q.get(i2).f37902a;
                    eVar.f37886b.setImageURI(dataBean.getCurrent_reply_user_ico());
                    eVar.f37887c.setText(dataBean.getCurrent_reply_title().split(" ")[0]);
                    eVar.f37889e.setText(dataBean.getCurrent_reply_title().split(" ")[1]);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
                    Date date = new Date(System.currentTimeMillis());
                    Date date2 = new Date(dataBean.getCurrent_reply_time() * 1000);
                    String format = simpleDateFormat.format(date);
                    String format2 = simpleDateFormat.format(date2);
                    String str7 = "";
                    if (format2 == null || format2.equals("")) {
                        view = view2;
                        str = "";
                        str2 = str;
                        str3 = str2;
                        str4 = str3;
                        str5 = str4;
                    } else {
                        str7 = format2.substring(0, format2.indexOf("年"));
                        str5 = format2.substring(format2.indexOf("年") + 1, format2.indexOf("月"));
                        str2 = format2.substring(format2.indexOf("月") + 1, format2.indexOf("日"));
                        str3 = format.substring(0, format.indexOf("年"));
                        view = view2;
                        String substring2 = format.substring(format.indexOf("年") + 1, format.indexOf("月"));
                        str4 = format.substring(format.indexOf("月") + 1, format.indexOf("日"));
                        str = substring2;
                    }
                    if (str7.equals(str3)) {
                        if (str5.equals(str)) {
                            if (str2.equals(str4)) {
                                if (format2.contains(":")) {
                                    substring = format2.substring(format2.indexOf(" ") + 1, format2.lastIndexOf(":"));
                                } else {
                                    substring = format2.substring(format2.indexOf(" ") + 1, format2.indexOf("分"));
                                }
                                eVar.f37888d.setText(substring);
                            } else {
                                TextView textView = eVar.f37888d;
                                textView.setText(str5 + "月" + str2 + "日");
                            }
                        } else {
                            TextView textView2 = eVar.f37888d;
                            textView2.setText(str5 + "月" + str2 + "日");
                        }
                    } else {
                        TextView textView3 = eVar.f37888d;
                        textView3.setText(str7 + "年" + str5 + "月" + str2 + "日");
                    }
                    eVar.f37885a.setOnClickListener(new a(dataBean));
                } else if (itemViewType == 3) {
                    if (view == null) {
                        view3 = LayoutInflater.from(this.f37875a).inflate(R.layout.community_replyitem, (ViewGroup) null);
                        iVar = new i();
                        iVar.f37899a = (TextView) view3.findViewById(R.id.reply_name);
                        iVar.f37900b = (RelativeLayout) view3.findViewById(R.id.rl_reply);
                        view3.setTag(iVar);
                    } else {
                        iVar = (i) view.getTag();
                        view3 = view;
                    }
                    GameReplyMessageListBean.MessagesBean.DataBean dataBean2 = (GameReplyMessageListBean.MessagesBean.DataBean) c.this.f37858q.get(i2).f37902a;
                    try {
                        if (dataBean2.getReply_sub().getReply_text().contains("@")) {
                            String str8 = dataBean2.getReply_sub().getReply_text().split("@")[1];
                            String str9 = dataBean2.getReply_sub().getReply_text().split("@")[0];
                            String str10 = str8.split(":")[1];
                            TextView textView4 = iVar.f37899a;
                            textView4.setText(Html.fromHtml("<font color='#3CA4FD'>" + str9 + "</font><font color='#000000'>" + str10 + "</font>"));
                        } else {
                            iVar.f37899a.setText(dataBean2.getReply_sub().getReply_text());
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    iVar.f37900b.setOnClickListener(new b(dataBean2));
                    return view3;
                } else if (itemViewType == 4) {
                    if (view == null) {
                        view4 = LayoutInflater.from(this.f37875a).inflate(R.layout.community_messageitem, (ViewGroup) null);
                        c0170g = new C0170g();
                        c0170g.f37893a = (TextView) view4.findViewById(R.id.tv_message);
                        c0170g.f37894b = (LinearLayout) view4.findViewById(R.id.LL_message);
                        view4.setTag(c0170g);
                    } else {
                        c0170g = (C0170g) view.getTag();
                        view4 = view;
                    }
                    GameReplyMessageListBean.MessagesBean.DataBean dataBean3 = (GameReplyMessageListBean.MessagesBean.DataBean) c.this.f37858q.get(i2).f37902a;
                    c0170g.f37893a.setText(dataBean3.getCurrent_reply_text().substring(dataBean3.getCurrent_reply_text().indexOf(":") + 1, dataBean3.getCurrent_reply_text().length()));
                    c0170g.f37894b.setOnClickListener(new View$OnClickListenerC0169c(dataBean3));
                    return view4;
                } else if (itemViewType == 5) {
                    if (view == null) {
                        view5 = LayoutInflater.from(this.f37875a).inflate(R.layout.community_postitem, (ViewGroup) null);
                        hVar = new h();
                        hVar.f37896a = (LinearLayout) view5.findViewById(R.id.ll_post);
                        hVar.f37897b = (TextView) view5.findViewById(R.id.tv_post);
                        view5.setTag(hVar);
                    } else {
                        hVar = (h) view.getTag();
                        view5 = view;
                    }
                    GameReplyMessageListBean.MessagesBean.DataBean dataBean4 = (GameReplyMessageListBean.MessagesBean.DataBean) c.this.f37858q.get(i2).f37902a;
                    if (dataBean4.getOriginal_text().contains("@") && dataBean4.getOriginal_text().substring(0, 1).equals("@")) {
                        String[] split = dataBean4.getOriginal_text().split(":");
                        if (split.length > 1) {
                            str6 = split[1];
                        } else {
                            str6 = split[0];
                        }
                        TextView textView5 = hVar.f37897b;
                        textView5.setText("原文：" + str6);
                    } else {
                        TextView textView6 = hVar.f37897b;
                        textView6.setText("原文：" + dataBean4.getOriginal_text());
                    }
                    hVar.f37896a.setOnClickListener(new d(dataBean4));
                    return view5;
                }
            } else if (view == null) {
                View inflate = LayoutInflater.from(this.f37875a).inflate(R.layout.community_lineitem, (ViewGroup) null);
                inflate.setTag(new f());
                return inflate;
            } else {
                f fVar = (f) view.getTag();
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessagePriaceFragment.java */
    /* loaded from: classes3.dex */
    public class h {

        /* renamed from: a  reason: collision with root package name */
        public Object f37902a;

        /* renamed from: b  reason: collision with root package name */
        public int f37903b;

        /* renamed from: c  reason: collision with root package name */
        GameReplyMessageListBean.MessagesBean.DataBean f37904c;

        public h(Object obj, int i2) {
            this.f37902a = obj;
            this.f37903b = i2;
        }
    }

    private void a0(View view) {
        this.f37861t.showAtLocation(view, 81, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M() {
        try {
            XListView2 xListView2 = this.f37844c;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N(List<h> list) {
        list.clear();
        g gVar = this.f37845d;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    public CommentCreateArgs O(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2) {
        String str8;
        String str9;
        String str10;
        int i4;
        String d4 = this.f37854m.commentToken().d();
        AccountBean accountData = AccountUtil_.getInstance_(this.f37852k).getAccountData();
        this.f37857p = accountData;
        if (accountData != null) {
            int uid = accountData.getUid();
            String nickname = this.f37857p.getNickname();
            i4 = uid;
            str8 = nickname;
            str9 = this.f37857p.getAvatarSrc();
            str10 = this.f37857p.getToken();
        } else {
            str8 = "";
            str9 = str8;
            str10 = str9;
            i4 = -1;
        }
        return RequestBeanUtil.getInstance(this.f37852k).getReplyCreateCommentBean(str, 0.0f, str3, d4, str4, 2, str2, str8, str9, str10, i4, str5, str6, str7, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P() {
        if (com.join.android.app.common.utils.f.j(this.f37852k)) {
            try {
                CommentResponse<CommentTokenBean> c4 = this.f37851j.c(RequestBeanUtil.getInstance(this.f37852k).getTokenRequestBean(AccountUtil_.getInstance_(this.f37852k).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                this.f37854m.commentToken().g(AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes()));
                this.f37854m.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q() {
        try {
            if (com.join.android.app.common.utils.f.j(this.f37852k)) {
                ArrayList arrayList = new ArrayList();
                RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this.f37852k);
                int i2 = this.f37853l;
                this.f37853l = i2 + 1;
                GameReplyMessageListBean b02 = this.f37850i.b0(requestBeanUtil.getGameReplyMessageRequestBean(i2, this.f37857p.getUid(), this.f37857p.getToken()));
                f0();
                if (b02 != null) {
                    if (b02.getMessages() != null && b02.getMessages().getData() != null && b02.getMessages().getData().size() > 0) {
                        this.f37859r = b02.getMessages().getData();
                        if (this.f37853l == 2) {
                            arrayList.clear();
                            N(this.f37858q);
                        }
                        for (int i4 = 0; i4 < this.f37859r.size(); i4++) {
                            arrayList.add(new h("", 1));
                            if (this.f37859r.get(i4).getCurrent_reply_text() != null && !this.f37859r.get(i4).getCurrent_reply_text().equals("")) {
                                arrayList.add(new h(this.f37859r.get(i4), 2));
                            }
                            if (this.f37859r.get(i4).getReply_sub() != null && this.f37859r.get(i4).getReply_sub().getReply_text() != null && !this.f37859r.get(i4).getReply_sub().getReply_text().equals("")) {
                                arrayList.add(new h(this.f37859r.get(i4), 3));
                            }
                            if (this.f37859r.get(i4).getCurrent_reply_text() != null && !this.f37859r.get(i4).getCurrent_reply_text().equals("")) {
                                arrayList.add(new h(this.f37859r.get(i4), 4));
                            }
                            if (this.f37859r.get(i4).getOriginal_text() != null && !this.f37859r.get(i4).getOriginal_text().equals("")) {
                                arrayList.add(new h(this.f37859r.get(i4), 5));
                            }
                        }
                        T(arrayList);
                        R();
                        if (this.f37859r.size() < 10) {
                            W();
                            return;
                        }
                        return;
                    } else if (this.f37853l == 2) {
                        R();
                        Z(1);
                        W();
                        return;
                    } else {
                        W();
                        return;
                    }
                }
                return;
            }
            Z(2);
            R();
            showLodingFailed();
        } catch (Exception e4) {
            e4.printStackTrace();
            R();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R() {
        LinearLayout linearLayout;
        if (this.f37847f == null || (linearLayout = this.f37846e) == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f37847f.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        TextView textView = this.f37849h;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(List<h> list) {
        try {
            this.f37858q.addAll(list);
            g gVar = this.f37845d;
            if (gVar != null) {
                gVar.notifyDataSetChanged();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U(CommentResponse commentResponse) {
        if (commentResponse.getCode() == 801) {
            P();
            i2.a(this.f37852k).b("数据访问失败，请稍候再试！");
            return;
        }
        i2.a(this.f37852k).b(commentResponse.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V(String str, CommentCreateBean.InfoBean infoBean, boolean z3) {
        i2.a(this.f37852k).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W() {
        XListView2 xListView2 = this.f37844c;
        if (xListView2 != null) {
            xListView2.setNoMore();
            this.f37844c.t();
            this.f37844c.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X(String str, GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
        if (str.equals("")) {
            i2.a(this.f37852k).b("不能回复空字符串");
        } else if (!c2.d(str, 4)) {
            i2.a(this.f37852k).b("超过3个字才能回复");
        } else if (com.join.android.app.common.utils.f.j(this.f37852k)) {
            try {
                String str2 = dataBean.getCurrent_reply_text_id() + "";
                String str3 = dataBean.getCurrent_reply_title().split(" ")[0];
                CommentResponse<CommentCreateBean> d4 = this.f37851j.d(O(dataBean.getGame_id(), str2, str, Build.MODEL, dataBean.getCurrent_reply_text_uid() + "", str3, str2, this.f37853l));
                if (d4 != null) {
                    if (d4.getCode() != 0) {
                        if (d4.getCode() == 801) {
                            U(d4);
                        } else {
                            V(d4.getMsg(), null, false);
                        }
                    } else if (d4.getData_info().getInfo() != null) {
                        V("回复成功，内容将在审核后显示", d4.getData_info().getInfo(), true);
                    }
                } else {
                    V("回复失败，请稍候再试~", null, false);
                }
            } catch (Exception e4) {
                V(e4.getMessage(), null, false);
                e4.printStackTrace();
            }
        } else {
            V("网络连接失败，再试试吧~", null, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z(int i2) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f37843b;
        if (ptrClassicFrameLayout == null || this.f37844c == null || this.f37848g == null) {
            return;
        }
        if (i2 == 1) {
            ptrClassicFrameLayout.setVisibility(8);
            this.f37844c.setVisibility(8);
            this.f37848g.setVisibility(0);
            return;
        }
        ptrClassicFrameLayout.setVisibility(8);
        this.f37844c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f37852k = getActivity();
        this.f37858q = new ArrayList();
        this.f37859r = new ArrayList();
        getArguments();
        g gVar = new g(getActivity());
        this.f37845d = gVar;
        this.f37844c.setAdapter((ListAdapter) gVar);
        this.f37850i = com.join.mgps.rpc.impl.c.P1();
        this.f37851j = com.join.mgps.rpc.impl.d.m();
        this.f37857p = AccountUtil_.getInstance_(getActivity()).getAccountData();
        showLoding();
        Q();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
        if (dataBean != null && dataBean.getPraise_surplus_number() > 0) {
            d0();
        }
        this.f37844c.setPullLoadEnable(new a());
        this.f37844c.setPullRefreshEnable(new b());
        this.f37844c.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
        this.f37856o = false;
        if (this.f37864w == null) {
            this.f37864w = LayoutInflater.from(this.f37852k).inflate(R.layout.appointment_pay_popwindow_page, (ViewGroup) null);
            this.f37861t = new PopupWindow(this.f37864w, -1, -1, true);
            this.f37866y = (EditText) this.f37864w.findViewById(R.id.edit);
            ((LinearLayout) this.f37864w.findViewById(R.id.ll_dismiss)).setOnClickListener(new View$OnClickListenerC0168c());
            SpannableString spannableString = new SpannableString("@ " + dataBean.getCurrent_reply_title().split(" ")[0] + ":");
            spannableString.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString.length(), 33);
            this.f37866y.setHint(new SpannedString(spannableString));
            this.f37866y.addTextChangedListener(new d());
            ((Button) this.f37864w.findViewById(R.id.btn_confirm)).setOnClickListener(new e(dataBean));
            this.f37866y.setFocusable(true);
            this.f37861t.setFocusable(true);
            this.f37866y.setFocusableInTouchMode(true);
            this.f37866y.setFocusable(true);
            this.f37866y.requestFocus();
            ((InputMethodManager) this.f37852k.getSystemService("input_method")).toggleSoftInput(0, 2);
            View decorView = getActivity().getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnGlobalLayoutListener(new f(decorView));
            View inflate = LayoutInflater.from(this.f37852k).inflate(R.layout.fragment_communtity, (ViewGroup) null);
            this.f37865x = inflate;
            a0(inflate);
            return;
        }
        ((InputMethodManager) this.f37852k.getSystemService("input_method")).toggleSoftInput(0, 2);
        SpannableString spannableString2 = new SpannableString("@ " + dataBean.getCurrent_reply_title().split(" ")[0] + ":");
        spannableString2.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString2.length(), 33);
        this.f37866y.setHint(new SpannedString(spannableString2));
        this.f37861t.showAtLocation(this.f37865x, 81, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        this.f37842a.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        TextView textView = this.f37849h;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e0() {
        S();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
        if (dataBean != null) {
            dataBean.setPraise_surplus_number(0);
        }
        Intent intent = new Intent(getActivity(), GivePraiceActivity_.class);
        intent.putExtra("praice", 2);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        XListView2 xListView2 = this.f37844c;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f37844c.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f37852k);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        super.setUserVisibleHint(z3);
        if (z3 && this.f37860s) {
            this.f37860s = false;
            this.f37853l = 1;
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f37846e;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f37847f;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f37847f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f37846e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        Toast.makeText(this.f37852k, str, 0).show();
    }
}
