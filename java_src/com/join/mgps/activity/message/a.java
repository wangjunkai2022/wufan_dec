package com.join.mgps.activity.message;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextWatcher;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
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
import androidx.fragment.app.Fragment;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.w;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.GivePraiceActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.j;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumProfileMessageBean;
import com.join.mgps.dto.ForumProfileMessageData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.MessageCommentReplyResponse;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
/* compiled from: CommunityFragment.java */
@EFragment(R.layout.fragment_communtity)
/* loaded from: classes3.dex */
public class a extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f37746a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    PtrClassicFrameLayout f37747b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f37748c;

    /* renamed from: d  reason: collision with root package name */
    g f37749d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f37750e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f37751f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f37752g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f37753h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.rpc.h f37754i;

    /* renamed from: j  reason: collision with root package name */
    Context f37755j;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f37757l;

    /* renamed from: m  reason: collision with root package name */
    private AccountBean f37758m;

    /* renamed from: n  reason: collision with root package name */
    List<i> f37759n;

    /* renamed from: o  reason: collision with root package name */
    float f37760o;

    /* renamed from: p  reason: collision with root package name */
    float f37761p;

    /* renamed from: q  reason: collision with root package name */
    float f37762q;

    /* renamed from: r  reason: collision with root package name */
    private ObjectAnimator f37763r;

    /* renamed from: s  reason: collision with root package name */
    private ObjectAnimator f37764s;

    /* renamed from: u  reason: collision with root package name */
    PopupWindow f37766u;

    /* renamed from: v  reason: collision with root package name */
    InputFilter[] f37767v;

    /* renamed from: x  reason: collision with root package name */
    View f37769x;

    /* renamed from: y  reason: collision with root package name */
    View f37770y;

    /* renamed from: z  reason: collision with root package name */
    EditText f37771z;

    /* renamed from: k  reason: collision with root package name */
    int f37756k = 1;

    /* renamed from: t  reason: collision with root package name */
    boolean f37765t = false;

    /* renamed from: w  reason: collision with root package name */
    boolean f37768w = false;
    boolean A = true;

    /* compiled from: CommunityFragment.java */
    /* renamed from: com.join.mgps.activity.message.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0164a implements com.join.mgps.customview.i {
        C0164a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            a.this.M();
            a.this.P();
        }
    }

    /* compiled from: CommunityFragment.java */
    /* loaded from: classes3.dex */
    class b implements j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            a.this.M();
            a aVar = a.this;
            aVar.f37756k = 1;
            aVar.P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommunityFragment.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PopupWindow popupWindow = a.this.f37766u;
            if (popupWindow == null || !popupWindow.isShowing()) {
                return;
            }
            a.this.f37766u.dismiss();
            a.this.A = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommunityFragment.java */
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
    /* compiled from: CommunityFragment.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37776a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37777b;

        e(int i2, int i4) {
            this.f37776a = i2;
            this.f37777b = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.f37766u.dismiss();
            a aVar = a.this;
            aVar.U(aVar.f37771z.getText().toString().trim(), this.f37776a, this.f37777b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommunityFragment.java */
    /* loaded from: classes3.dex */
    public class f implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f37779a;

        f(View view) {
            this.f37779a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.f37779a.getWindowVisibleDisplayFrame(rect);
            if (rect.bottom - rect.top > (this.f37779a.getHeight() / 3) * 2) {
                a aVar = a.this;
                if (aVar.f37768w) {
                    aVar.f37766u.dismiss();
                    a.this.f37768w = false;
                    return;
                }
                return;
            }
            a.this.f37768w = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommunityFragment.java */
    /* loaded from: classes3.dex */
    public class g extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        Context f37781a;

        /* compiled from: CommunityFragment.java */
        /* renamed from: com.join.mgps.activity.message.a$g$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0165a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ForumProfileMessageBean f37783a;

            View$OnClickListenerC0165a(ForumProfileMessageBean forumProfileMessageBean) {
                this.f37783a = forumProfileMessageBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.Z(this.f37783a.getComment_id(), this.f37783a.getRid(), this.f37783a.getFrom_nickname());
            }
        }

        /* compiled from: CommunityFragment.java */
        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ForumProfileMessageBean f37785a;

            b(ForumProfileMessageBean forumProfileMessageBean) {
                this.f37785a = forumProfileMessageBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f37785a.getPid());
                i0.w0(g.this.f37781a, forumPostsBean, null);
            }
        }

        /* compiled from: CommunityFragment.java */
        /* loaded from: classes3.dex */
        class c implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ForumProfileMessageBean f37787a;

            c(ForumProfileMessageBean forumProfileMessageBean) {
                this.f37787a = forumProfileMessageBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.Z(this.f37787a.getComment_id(), this.f37787a.getRid(), this.f37787a.getFrom_nickname());
            }
        }

        /* compiled from: CommunityFragment.java */
        /* loaded from: classes3.dex */
        class d implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ForumBean.ForumPostsBean f37789a;

            d(ForumBean.ForumPostsBean forumPostsBean) {
                this.f37789a = forumPostsBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f37789a.getPid());
                i0.w0(g.this.f37781a, forumPostsBean, null);
            }
        }

        /* compiled from: CommunityFragment.java */
        /* loaded from: classes3.dex */
        class e {

            /* renamed from: a  reason: collision with root package name */
            RelativeLayout f37791a;

            /* renamed from: b  reason: collision with root package name */
            SimpleDraweeView f37792b;

            /* renamed from: c  reason: collision with root package name */
            TextView f37793c;

            /* renamed from: d  reason: collision with root package name */
            TextView f37794d;

            /* renamed from: e  reason: collision with root package name */
            TextView f37795e;

            e() {
            }
        }

        /* compiled from: CommunityFragment.java */
        /* loaded from: classes3.dex */
        class f {

            /* renamed from: a  reason: collision with root package name */
            TextView f37797a;

            f() {
            }
        }

        /* compiled from: CommunityFragment.java */
        /* renamed from: com.join.mgps.activity.message.a$g$g  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0166g {

            /* renamed from: a  reason: collision with root package name */
            TextView f37799a;

            /* renamed from: b  reason: collision with root package name */
            LinearLayout f37800b;

            C0166g() {
            }
        }

        /* compiled from: CommunityFragment.java */
        /* loaded from: classes3.dex */
        class h {

            /* renamed from: a  reason: collision with root package name */
            LinearLayout f37802a;

            /* renamed from: b  reason: collision with root package name */
            TextView f37803b;

            h() {
            }
        }

        /* compiled from: CommunityFragment.java */
        /* loaded from: classes3.dex */
        class i {

            /* renamed from: a  reason: collision with root package name */
            TextView f37805a;

            /* renamed from: b  reason: collision with root package name */
            RelativeLayout f37806b;

            i() {
            }
        }

        public g(Context context) {
            this.f37781a = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return a.this.f37759n.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return a.this.f37759n.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return a.this.f37759n.get(i2).f37812b;
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
            String str6;
            String substring;
            i iVar;
            View view3;
            C0166g c0166g;
            View view4;
            h hVar;
            View view5;
            String message;
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 1) {
                String str7 = "";
                if (itemViewType == 2) {
                    if (view == null) {
                        view2 = LayoutInflater.from(this.f37781a).inflate(R.layout.community_iconitem, (ViewGroup) null);
                        eVar = new e();
                        eVar.f37791a = (RelativeLayout) view2.findViewById(R.id.rl_icon);
                        eVar.f37792b = (SimpleDraweeView) view2.findViewById(R.id.simv);
                        eVar.f37793c = (TextView) view2.findViewById(R.id.tv_name);
                        eVar.f37795e = (TextView) view2.findViewById(R.id.tv_reply);
                        eVar.f37794d = (TextView) view2.findViewById(R.id.tv_time);
                        view2.setTag(eVar);
                    } else {
                        eVar = (e) view.getTag();
                        view2 = view;
                    }
                    ForumProfileMessageBean forumProfileMessageBean = (ForumProfileMessageBean) a.this.f37759n.get(i2).f37811a;
                    eVar.f37792b.setImageURI(forumProfileMessageBean.getFrom_avatar_src());
                    eVar.f37793c.setText(forumProfileMessageBean.getFrom_nickname());
                    int i4 = i2 + 1;
                    if (a.this.f37759n.get(i4).f37812b == 4) {
                        str = "帖子";
                    } else {
                        int i5 = a.this.f37759n.get(i4).f37812b;
                        str = "了你";
                    }
                    TextView textView = eVar.f37795e;
                    textView.setText("回复" + str);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
                    Date date = new Date(System.currentTimeMillis());
                    Date date2 = new Date(forumProfileMessageBean.getAdd_time() * 1000);
                    String format = simpleDateFormat.format(date);
                    String format2 = simpleDateFormat.format(date2);
                    if (format2 == null || format2.equals("")) {
                        str2 = "";
                        str3 = str2;
                        str4 = str3;
                        str5 = str4;
                        str6 = str5;
                    } else {
                        str7 = format2.substring(0, format2.indexOf("年"));
                        str4 = format2.substring(format2.indexOf("年") + 1, format2.indexOf("月"));
                        str5 = format2.substring(format2.indexOf("月") + 1, format2.indexOf("日"));
                        str3 = format.substring(0, format.indexOf("年"));
                        str6 = format.substring(format.indexOf("年") + 1, format.indexOf("月"));
                        str2 = format.substring(format.indexOf("月") + 1, format.indexOf("日"));
                    }
                    if (str7.equals(str3)) {
                        if (str4.equals(str6)) {
                            if (str5.equals(str2)) {
                                if (format2.contains(":")) {
                                    substring = format2.substring(format2.indexOf(" ") + 1, format2.lastIndexOf(":"));
                                } else {
                                    substring = format2.substring(format2.indexOf(" ") + 1, format2.indexOf("分"));
                                }
                                eVar.f37794d.setText(substring);
                            } else {
                                TextView textView2 = eVar.f37794d;
                                textView2.setText(str4 + "月" + str5 + "日");
                            }
                        } else {
                            TextView textView3 = eVar.f37794d;
                            textView3.setText(str4 + "月" + str5 + "日");
                        }
                    } else {
                        TextView textView4 = eVar.f37794d;
                        textView4.setText(str7 + "年" + str4 + "月" + str5 + "日");
                    }
                    eVar.f37791a.setOnClickListener(new View$OnClickListenerC0165a(forumProfileMessageBean));
                    return view2;
                } else if (itemViewType == 3) {
                    if (view == null) {
                        view3 = LayoutInflater.from(this.f37781a).inflate(R.layout.community_replyitem, (ViewGroup) null);
                        iVar = new i();
                        iVar.f37805a = (TextView) view3.findViewById(R.id.reply_name);
                        iVar.f37806b = (RelativeLayout) view3.findViewById(R.id.rl_reply);
                        view3.setTag(iVar);
                    } else {
                        iVar = (i) view.getTag();
                        view3 = view;
                    }
                    ForumProfileMessageBean forumProfileMessageBean2 = (ForumProfileMessageBean) a.this.f37759n.get(i2).f37811a;
                    TextView textView5 = iVar.f37805a;
                    textView5.setText(Html.fromHtml("<font color='#3CA4FD'>" + forumProfileMessageBean2.getReply().getNickname() + ":  </font><font color='#000000'>" + forumProfileMessageBean2.getReply().getMessage() + "</font>"));
                    iVar.f37806b.setOnClickListener(new b(forumProfileMessageBean2));
                    return view3;
                } else if (itemViewType == 4) {
                    if (view == null) {
                        view4 = LayoutInflater.from(this.f37781a).inflate(R.layout.community_messageitem, (ViewGroup) null);
                        c0166g = new C0166g();
                        c0166g.f37799a = (TextView) view4.findViewById(R.id.tv_message);
                        c0166g.f37800b = (LinearLayout) view4.findViewById(R.id.LL_message);
                    } else {
                        c0166g = (C0166g) view.getTag();
                        view4 = view;
                    }
                    ForumProfileMessageBean forumProfileMessageBean3 = (ForumProfileMessageBean) a.this.f37759n.get(i2).f37811a;
                    c0166g.f37799a.setText(forumProfileMessageBean3.getMessage());
                    view4.setTag(c0166g);
                    a.this.S(c0166g.f37799a);
                    c0166g.f37800b.setOnClickListener(new c(forumProfileMessageBean3));
                    return view4;
                } else if (itemViewType == 5) {
                    if (view == null) {
                        view5 = LayoutInflater.from(this.f37781a).inflate(R.layout.community_postitem, (ViewGroup) null);
                        hVar = new h();
                        hVar.f37802a = (LinearLayout) view5.findViewById(R.id.ll_post);
                        hVar.f37803b = (TextView) view5.findViewById(R.id.tv_post);
                        view5.setTag(hVar);
                    } else {
                        hVar = (h) view.getTag();
                        view5 = view;
                    }
                    ForumBean.ForumPostsBean forumPostsBean = (ForumBean.ForumPostsBean) a.this.f37759n.get(i2).f37811a;
                    if (forumPostsBean.getMessage() != null && !forumPostsBean.getSubject().equals("")) {
                        message = forumPostsBean.getSubject();
                    } else {
                        message = forumPostsBean.getMessage();
                    }
                    TextView textView6 = hVar.f37803b;
                    textView6.setText("原文：" + message);
                    hVar.f37802a.setOnClickListener(new d(forumPostsBean));
                    return view5;
                }
            } else if (view == null) {
                View inflate = LayoutInflater.from(this.f37781a).inflate(R.layout.community_lineitem, (ViewGroup) null);
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
    /* compiled from: CommunityFragment.java */
    /* loaded from: classes3.dex */
    public class h extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        private Context f37808a;

        /* renamed from: b  reason: collision with root package name */
        private String f37809b;

        public h(Context context, String str) {
            this.f37808a = context;
            this.f37809b = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(this.f37808a, this.f37809b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommunityFragment.java */
    /* loaded from: classes3.dex */
    public class i {

        /* renamed from: a  reason: collision with root package name */
        public Object f37811a;

        /* renamed from: b  reason: collision with root package name */
        public int f37812b;

        public i(Object obj, int i2) {
            this.f37811a = obj;
            this.f37812b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(TextView textView) {
        textView.setMovementMethod(w.a());
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
                    spannableStringBuilder.setSpan(new h(textView.getContext(), url), spannable.getSpanStart(uRLSpan), spannable.getSpanEnd(uRLSpan), 17);
                }
            }
            textView.setText(spannableStringBuilder);
        }
    }

    private void X(View view) {
        this.f37766u.showAtLocation(view, 81, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M() {
        try {
            XListView2 xListView2 = this.f37748c;
            if (xListView2 != null) {
                xListView2.k();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O(List<i> list) {
        list.clear();
        g gVar = this.f37749d;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P() {
        try {
            if (com.join.android.app.common.utils.f.j(this.f37755j)) {
                ArrayList arrayList = new ArrayList();
                com.join.mgps.rpc.h hVar = this.f37754i;
                int uid = this.f37758m.getUid();
                String token = this.f37758m.getToken();
                int i2 = this.f37756k;
                this.f37756k = i2 + 1;
                ForumResponse<ForumProfileMessageData> F = hVar.F(uid, token, i2, 10);
                d0();
                if (F == null || F.getData() == null) {
                    return;
                }
                F.getData().getUn_read_praise_count();
                if (F.getData().getMessage_list() != null && F.getData().getMessage_list().size() > 0) {
                    List<ForumProfileMessageBean> message_list = F.getData().getMessage_list();
                    if (this.f37756k == 2) {
                        arrayList.clear();
                        O(this.f37759n);
                    }
                    for (int i4 = 0; i4 < message_list.size(); i4++) {
                        arrayList.add(new i("", 1));
                        arrayList.add(new i(message_list.get(i4), 2));
                        if (message_list.get(i4).getReply() != null) {
                            arrayList.add(new i(message_list.get(i4), 3));
                        }
                        if (message_list.get(i4) != null && message_list.get(i4).getMessage() != null) {
                            arrayList.add(new i(message_list.get(i4), 4));
                        }
                        if (message_list.get(i4).getPosts() != null) {
                            arrayList.add(new i(message_list.get(i4).getPosts(), 5));
                        }
                    }
                    T(arrayList);
                    Q();
                    if (message_list.size() < 10) {
                        V();
                        return;
                    }
                    return;
                } else if (this.f37756k == 2) {
                    Q();
                    W(1);
                    V();
                    return;
                } else {
                    V();
                    return;
                }
            }
            W(2);
            Q();
            showLodingFailed();
        } catch (Exception e4) {
            e4.printStackTrace();
            Q();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q() {
        LinearLayout linearLayout = this.f37750e;
        if (linearLayout == null || this.f37751f == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f37751f.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R() {
        TextView textView = this.f37753h;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(List<i> list) {
        try {
            this.f37759n.addAll(list);
            g gVar = this.f37749d;
            if (gVar != null) {
                gVar.notifyDataSetChanged();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U(String str, int i2, int i4) {
        if (str.equals("")) {
            showToast("不能回复空字符串");
            return;
        }
        String str2 = com.join.mgps.rpc.g.f51527l + "/group/comment/reply";
        if (com.join.android.app.common.utils.f.j(this.f37755j)) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("uid", Integer.valueOf(this.f37758m.getUid()));
                hashMap.put("token", this.f37758m.getToken());
                hashMap.put(ForumPostsTagSelectActivity_.f30340y, Integer.valueOf(i2));
                hashMap.put("message", str);
                hashMap.put("device_id", "");
                hashMap.put("rid", Integer.valueOf(i4));
                ForumResponse<MessageCommentReplyResponse> b02 = this.f37754i.b0(str2, hashMap);
                if (b02 != null) {
                    if (b02.getData() != null) {
                        if (b02.getData().isResult()) {
                            showToast("评论成功，内容将在审核后显示");
                        } else {
                            showToast("评论失败");
                        }
                    } else {
                        showToast("评论失败");
                    }
                } else {
                    showToast("评论失败");
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        showToast("暂无网络");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V() {
        XListView2 xListView2 = this.f37748c;
        if (xListView2 != null) {
            xListView2.setNoMore();
            this.f37748c.t();
            this.f37748c.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W(int i2) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f37747b;
        if (ptrClassicFrameLayout == null || this.f37748c == null || this.f37752g == null) {
            return;
        }
        if (i2 == 1) {
            ptrClassicFrameLayout.setVisibility(8);
            this.f37748c.setVisibility(8);
            this.f37752g.setVisibility(0);
            return;
        }
        ptrClassicFrameLayout.setVisibility(8);
        this.f37748c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z(int i2, int i4, String str) {
        this.A = false;
        if (this.f37769x == null) {
            this.f37769x = LayoutInflater.from(this.f37755j).inflate(R.layout.appointment_pay_popwindow_page, (ViewGroup) null);
            this.f37766u = new PopupWindow(this.f37769x, -1, -1, true);
            this.f37771z = (EditText) this.f37769x.findViewById(R.id.edit);
            ((LinearLayout) this.f37769x.findViewById(R.id.ll_dismiss)).setOnClickListener(new c());
            SpannableString spannableString = new SpannableString("@ " + str + ":");
            spannableString.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString.length(), 33);
            this.f37771z.setHint(new SpannedString(spannableString));
            this.f37771z.addTextChangedListener(new d());
            ((Button) this.f37769x.findViewById(R.id.btn_confirm)).setOnClickListener(new e(i2, i4));
            this.f37771z.setFocusable(true);
            this.f37766u.setFocusable(true);
            this.f37771z.setFocusableInTouchMode(true);
            this.f37771z.setFocusable(true);
            this.f37771z.requestFocus();
            ((InputMethodManager) this.f37755j.getSystemService("input_method")).toggleSoftInput(0, 2);
            View decorView = getActivity().getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnGlobalLayoutListener(new f(decorView));
            View inflate = LayoutInflater.from(this.f37755j).inflate(R.layout.fragment_communtity, (ViewGroup) null);
            this.f37770y = inflate;
            X(inflate);
            return;
        }
        ((InputMethodManager) this.f37755j.getSystemService("input_method")).toggleSoftInput(0, 2);
        SpannableString spannableString2 = new SpannableString("@ " + str + ":");
        spannableString2.setSpan(new AbsoluteSizeSpan(15, true), 0, spannableString2.length(), 33);
        this.f37771z.setHint(new SpannedString(spannableString2));
        PopupWindow popupWindow = this.f37766u;
        if (popupWindow != null) {
            popupWindow.showAtLocation(this.f37770y, 81, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0() {
        LinearLayout linearLayout = this.f37746a;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    @SuppressLint({"ClickableViewAccessibility"})
    public void afterViews() {
        this.f37755j = getActivity();
        this.f37759n = new ArrayList();
        getArguments();
        g gVar = new g(getActivity());
        this.f37749d = gVar;
        this.f37748c.setAdapter((ListAdapter) gVar);
        this.f37754i = com.join.mgps.rpc.impl.f.A0();
        this.f37758m = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f37748c.k();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
        if (dataBean != null && dataBean.getCommunity_praise_surplus_number() > 0) {
            b0();
        }
        this.f37748c.setPullLoadEnable(new C0164a());
        this.f37748c.setPullRefreshEnable(new b());
        showLoding();
        P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0() {
        TextView textView = this.f37753h;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c0() {
        R();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
        if (dataBean != null) {
            dataBean.setCommunity_praise_surplus_number(0);
        }
        Intent intent = new Intent(getActivity(), GivePraiceActivity_.class);
        intent.putExtra("praice", 1);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0() {
        XListView2 xListView2 = this.f37748c;
        if (xListView2 != null) {
            try {
                xListView2.t();
                this.f37748c.u();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f37755j);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z3) {
        super.setUserVisibleHint(z3);
        if (z3 && this.f37765t) {
            this.f37765t = false;
            this.f37756k = 1;
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f37750e;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f37751f;
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
        LinearLayout linearLayout = this.f37751f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f37750e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        i2.a(this.f37755j).b(str);
    }
}
