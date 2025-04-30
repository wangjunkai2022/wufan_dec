package com.join.mgps.activity.posting;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.f0;
import com.join.mgps.Util.i0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u0;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.GameSearchFavoriteActivity_;
import com.join.mgps.activity.LocalGameActivity_;
import com.join.mgps.activity.SearchLabelActivity_;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.customview.CustomEdittext;
import com.join.mgps.customview.h0;
import com.join.mgps.dialog.q1;
import com.join.mgps.dialog.r1;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameTagBean;
import com.join.mgps.dto.GroupInfoBean;
import com.join.mgps.dto.GroupListBean;
import com.join.mgps.dto.LabelBean;
import com.join.mgps.dto.Response;
import com.join.mgps.dto.ResultResMainBean;
import it.sephiroth.android.library.widget.AbsHListView;
import it.sephiroth.android.library.widget.HListView;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import net.bither.util.b;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.core.io.FileSystemResource;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.activity_posting)
/* loaded from: classes3.dex */
public class PostingActivity extends BaseFragmentActivity {
    public static final int C0 = 17476;
    public static final int D0 = 100;
    public static final int E0 = 1;
    public static final int F0 = 2;
    public static final int G0 = 3;
    public static final int H0 = 4;
    public static final int I0 = 6;
    static final int J0 = 9;
    static final boolean K0 = false;
    private static final int L0 = 4369;
    @ViewById
    ImageView A;
    @ViewById
    Button B;
    private Dialog B0;
    @ViewById
    LinearLayout C;
    @ViewById
    RelativeLayout D;
    @ViewById
    LinearLayout E;
    @ViewById
    LinearLayout F;
    private q1 G;
    private r1 I;
    private x0 J;
    @Extra

    /* renamed from: a  reason: collision with root package name */
    int f38245a;
    @Bean

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.Util.b f38246b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    ArrayList<GameTagBean> f38247c;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    String f38249e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    String f38250f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    String f38251g;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    int f38252h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    String f38253i;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    String f38254j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.h f38255k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    CustomEdittext f38256l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    CustomEdittext f38257m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f38258n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    EditText f38260o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    HListView f38262p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    FrameLayout f38264q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f38266r;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    FrameLayout f38267r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f38268s;

    /* renamed from: s0  reason: collision with root package name */
    h0 f38269s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    Button f38270t;
    @ViewById

    /* renamed from: t0  reason: collision with root package name */
    LinearLayout f38271t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    RelativeLayout f38272u;

    /* renamed from: u0  reason: collision with root package name */
    private GroupInfoBean f38273u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    TextView f38274v;

    /* renamed from: v0  reason: collision with root package name */
    private DownloadTask f38275v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    Button f38276w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    ImageView f38278x;

    /* renamed from: x0  reason: collision with root package name */
    private CollectionBeanSub f38279x0;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    ImageView f38280y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    TextView f38282z;

    /* renamed from: z0  reason: collision with root package name */
    n f38283z0;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    int f38248d = 3;
    private int H = -1;
    List<String> K = new ArrayList();

    /* renamed from: n0  reason: collision with root package name */
    int f38259n0 = 0;

    /* renamed from: o0  reason: collision with root package name */
    boolean f38261o0 = false;

    /* renamed from: p0  reason: collision with root package name */
    boolean f38263p0 = true;

    /* renamed from: q0  reason: collision with root package name */
    private b.e f38265q0 = new c();

    /* renamed from: w0  reason: collision with root package name */
    private List<LabelBean> f38277w0 = Collections.synchronizedList(new ArrayList());

    /* renamed from: y0  reason: collision with root package name */
    private final m f38281y0 = new a();
    List<String> A0 = new ArrayList();

    /* loaded from: classes3.dex */
    class a implements m {
        a() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void a(int i2) {
            switch (i2) {
                case 4352:
                    PostingActivity.this.startActivityForResult(new Intent(PostingActivity.this, LocalGameActivity_.class), 4352);
                    return;
                case 4353:
                    Intent intent = new Intent(PostingActivity.this, GameSearchFavoriteActivity_.class);
                    intent.putExtra("type", 2);
                    PostingActivity.this.startActivityForResult(intent, 4353);
                    return;
                case 4354:
                    Intent intent2 = new Intent(PostingActivity.this, GameSearchFavoriteActivity_.class);
                    intent2.putExtra("type", 1);
                    PostingActivity.this.startActivityForResult(intent2, 4354);
                    return;
                default:
                    return;
            }
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void b(int i2) {
            PostingActivity.this.finish();
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void c(GroupInfoBean groupInfoBean) {
            PostingActivity.this.f38273u0 = groupInfoBean;
            PostingActivity postingActivity = PostingActivity.this;
            postingActivity.C1(postingActivity.f38273u0.getName(), false);
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void d(int i2) {
            if (i2 <= PostingActivity.this.f38246b.getAccountData().getPapaMoney()) {
                PostingActivity.this.H = i2;
                TextView textView = PostingActivity.this.f38268s;
                textView.setText(Html.fromHtml("悬赏铜板数：<font color=#000000>" + i2 + "</font>"));
                return;
            }
            i2.a(PostingActivity.this).b("当前铜板数不足!");
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void e(int i2) {
            if (i2 == 4355) {
                PostingActivity.this.j1(com.join.mgps.rpc.g.f51551t);
            } else if (i2 != 4356) {
                PostingActivity.this.finish();
            } else {
                PostingActivity.this.j1(com.join.mgps.rpc.g.f51548s);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements n.c {
        b() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.n.c
        public void a(int i2, String str) {
            PostingActivity.this.A0.remove(i2);
            PostingActivity postingActivity = PostingActivity.this;
            postingActivity.f38283z0.d(postingActivity.A0);
            PostingActivity.this.f38283z0.notifyDataSetChanged();
            net.bither.util.b.q().j(PostingActivity.this.getApplicationContext(), str, false);
            if (PostingActivity.this.A0.size() > 0) {
                PostingActivity.this.f38262p.setVisibility(0);
            } else {
                PostingActivity.this.f38262p.setVisibility(8);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements b.e {
        c() {
        }

        private void b(List<String> list) {
            PostingActivity postingActivity = PostingActivity.this;
            if (postingActivity.f38259n0 == 1) {
                postingActivity.f38259n0 = 2;
                if (list != null && list.size() != 0) {
                    PostingActivity.this.K.clear();
                    PostingActivity.this.K.addAll(list);
                }
                PostingActivity.this.S0();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0078 A[SYNTHETIC] */
        @Override // net.bither.util.b.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.Boolean r9, java.util.Map<java.lang.String, java.lang.String> r10, java.util.Map<java.lang.String, java.lang.Integer> r11) {
            /*
                r8 = this;
                boolean r9 = r9.booleanValue()
                if (r9 == 0) goto L7f
                com.join.mgps.activity.posting.PostingActivity r9 = com.join.mgps.activity.posting.PostingActivity.this
                java.util.List<java.lang.String> r9 = r9.A0
                if (r9 == 0) goto L7f
                int r9 = r9.size()
                if (r9 == 0) goto L7f
                java.util.ArrayList r9 = new java.util.ArrayList
                r9.<init>()
                r0 = 0
                r1 = 0
            L19:
                com.join.mgps.activity.posting.PostingActivity r2 = com.join.mgps.activity.posting.PostingActivity.this
                java.util.List<java.lang.String> r2 = r2.A0
                int r2 = r2.size()
                if (r1 >= r2) goto L7b
                com.join.mgps.activity.posting.PostingActivity r2 = com.join.mgps.activity.posting.PostingActivity.this
                java.util.List<java.lang.String> r2 = r2.A0
                java.lang.Object r2 = r2.get(r1)
                java.lang.String r2 = (java.lang.String) r2
                java.util.Set r3 = r11.keySet()
                r4 = 1
                java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Exception -> L57
                r5 = 0
            L37:
                boolean r6 = r3.hasNext()     // Catch: java.lang.Exception -> L55
                if (r6 == 0) goto L5c
                java.lang.Object r6 = r3.next()     // Catch: java.lang.Exception -> L55
                java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L55
                java.io.File r7 = new java.io.File     // Catch: java.lang.Exception -> L55
                r7.<init>(r6)     // Catch: java.lang.Exception -> L55
                java.lang.String r7 = r7.getName()     // Catch: java.lang.Exception -> L55
                boolean r7 = r2.contains(r7)     // Catch: java.lang.Exception -> L55
                if (r7 == 0) goto L37
                r2 = r6
                r5 = 1
                goto L37
            L55:
                r3 = move-exception
                goto L59
            L57:
                r3 = move-exception
                r5 = 0
            L59:
                r3.printStackTrace()
            L5c:
                if (r5 != 0) goto L6d
                java.lang.Object r3 = r11.get(r2)     // Catch: java.lang.Exception -> L69
                java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Exception -> L69
                int r5 = r3.intValue()     // Catch: java.lang.Exception -> L69
                goto L6d
            L69:
                r3 = move-exception
                r3.printStackTrace()
            L6d:
                java.lang.Object r2 = r10.get(r2)
                java.lang.String r2 = (java.lang.String) r2
                if (r5 != r4) goto L78
                r9.add(r2)
            L78:
                int r1 = r1 + 1
                goto L19
            L7b:
                r8.b(r9)
                goto L83
            L7f:
                r9 = 0
                r8.b(r9)
            L83:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.posting.PostingActivity.c.a(java.lang.Boolean, java.util.Map, java.util.Map):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements CustomEdittext.a {
        d() {
        }

        @Override // com.join.mgps.customview.CustomEdittext.a
        public void a(int i2, int i4) {
            int b12 = PostingActivity.this.b1(i2);
            u0.e("onSelectionChanged", "selStart=" + i2, "selEnd=" + i4, "pos=" + b12);
            if (b12 == i2) {
                return;
            }
            PostingActivity.this.f38256l.setSelection(b12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements TextWatcher {
        e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            if (!PostingActivity.this.f38260o.getText().toString().trim().equals("") && PostingActivity.this.f38260o.getText().toString().trim().length() != 0) {
                PostingActivity.this.D1(true);
            } else {
                PostingActivity.this.D1(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnKeyListener {
        f() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            if (i2 == 67) {
                PostingActivity postingActivity = PostingActivity.this;
                return postingActivity.f38245a == 100 && postingActivity.f38256l.getText().toString().trim().length() == PostingActivity.this.f38254j.length() + 2;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PostingActivity.this.G != null) {
                PostingActivity.this.G.d();
            }
            PostingActivity postingActivity = PostingActivity.this;
            postingActivity.G = new q1(postingActivity, postingActivity.f38281y0);
            q1 q1Var = PostingActivity.this.G;
            q1Var.g("" + PostingActivity.this.f38246b.getAccountData().getPapaMoney(), PostingActivity.this.H);
            PostingActivity.this.G.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PostingActivity.this.I != null) {
                PostingActivity.this.I.b();
            }
            PostingActivity postingActivity = PostingActivity.this;
            postingActivity.I = new r1(postingActivity, postingActivity.f38281y0);
            PostingActivity.this.I.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextUtils.isEmpty(PostingActivity.this.f38249e)) {
                PostingActivity.this.f38282z.setText("选择小组");
                PostingActivity.this.Y0(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements PopupWindow.OnDismissListener {
        j() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            PostingActivity.this.A.setImageResource(R.drawable.posting_load);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements w2.g<com.tbruyelle.rxpermissions2.b> {
        k() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                if (PostingActivity.this.checkPermiss("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    PostingActivity.this.s1();
                }
            } else if (bVar.f59249c) {
            } else {
                a0.c0(PostingActivity.this).W(PostingActivity.this, bVar);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class l implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        List<Integer> f38295a = new ArrayList();

        public l() {
        }

        List<String> a() {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < PostingActivity.this.f38277w0.size(); i2++) {
                arrayList.add(((LabelBean) PostingActivity.this.f38277w0.get(i2)).getTag_name());
            }
            return arrayList;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            b(editable);
        }

        void b(Editable editable) {
            if (this.f38295a.size() < 2) {
                return;
            }
            char c4 = 0;
            int intValue = this.f38295a.get(0).intValue();
            int intValue2 = this.f38295a.get(1).intValue();
            ArrayList arrayList = new ArrayList();
            if (PostingActivity.this.f38277w0 != null) {
                arrayList.addAll(PostingActivity.this.f38277w0);
            }
            int i2 = 0;
            int i4 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    break;
                }
                LabelBean labelBean = (LabelBean) arrayList.get(i2);
                String tag_name = labelBean.getTag_name();
                int length = tag_name.length();
                if (intValue == i4 && intValue2 == (i4 + length) - 1) {
                    editable.delete(intValue, intValue2);
                    if (PostingActivity.this.P0(tag_name)) {
                        PostingActivity.this.f38277w0.remove(labelBean);
                    } else {
                        editable.insert(intValue, PostingActivity.this.W0(tag_name));
                    }
                    c4 = 1;
                } else {
                    i4 += length;
                    i2++;
                }
            }
            if (c4 > 0) {
                PostingActivity.this.A1();
                Selection.setSelection(editable, intValue);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            u0.e("beforeTextChanged", "charSequence=" + ((Object) charSequence), "start=" + i2, "count=" + i4, "after=" + i5);
            this.f38295a.clear();
            int i6 = i5 - i4;
            if (i6 == -1) {
                try {
                    int abs = Math.abs(i6);
                    String charSequence2 = charSequence.toString();
                    String substring = charSequence2.substring(i2, abs + i2);
                    int i12 = PostingActivity.this.i1();
                    if (!substring.equals("#") || i2 >= i12) {
                        return;
                    }
                    this.f38295a.add(Integer.valueOf(charSequence2.substring(0, i2).lastIndexOf("#")));
                    this.f38295a.add(Integer.valueOf(i2));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            u0.e("onTextChanged", "charSequence=" + ((Object) charSequence), "start=" + i2, "before=" + i4, "count=" + i5);
            Editable text = PostingActivity.this.f38256l.getText();
            int length = text.length();
            int i12 = PostingActivity.this.i1();
            if (!TextUtils.isEmpty(charSequence.toString()) && i2 < i12 && i5 > 0) {
                int i6 = i5 + i2;
                String charSequence2 = charSequence.subSequence(i2, i6).toString();
                if ((charSequence2.length() != length || i2 != 0) && !TextUtils.isEmpty(charSequence2) && !a().contains(charSequence2) && text.toString().length() >= i12) {
                    text.delete(i2, i6);
                    text.insert(Math.min(i12, text.toString().length()), charSequence2);
                }
            }
            if (length - i12 > 20) {
                PostingActivity.this.A1();
                PostingActivity.this.showToast("最大输入标题字数不能超过20个字!");
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface m {

        /* renamed from: a  reason: collision with root package name */
        public static final int f38297a = 4352;

        /* renamed from: b  reason: collision with root package name */
        public static final int f38298b = 4353;

        /* renamed from: c  reason: collision with root package name */
        public static final int f38299c = 4354;

        /* renamed from: d  reason: collision with root package name */
        public static final int f38300d = 4355;

        /* renamed from: e  reason: collision with root package name */
        public static final int f38301e = 4356;

        void a(int i2);

        void b(int i2);

        void c(GroupInfoBean groupInfoBean);

        void d(int i2);

        void e(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class n extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<String> f38302a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private Context f38303b;

        /* renamed from: c  reason: collision with root package name */
        private c f38304c;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f38305a;

            a(int i2) {
                this.f38305a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (n.this.f38304c != null) {
                    c cVar = n.this.f38304c;
                    int i2 = this.f38305a;
                    cVar.a(i2, (String) n.this.getItem(i2));
                }
            }
        }

        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f38307a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String[] f38308b;

            b(int i2, String[] strArr) {
                this.f38307a = i2;
                this.f38308b = strArr;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                i0.G0(n.this.f38303b, this.f38307a, this.f38308b);
            }
        }

        /* loaded from: classes3.dex */
        public interface c {
            void a(int i2, String str);
        }

        /* loaded from: classes3.dex */
        class d {

            /* renamed from: a  reason: collision with root package name */
            ImageView f38310a;

            /* renamed from: b  reason: collision with root package name */
            ImageView f38311b;

            d() {
            }
        }

        public n(Context context) {
            this.f38303b = context;
        }

        private ImageLoader c() {
            return ImageLoader.r(3, ImageLoader.Type.LIFO);
        }

        private void e(View view, View view2) {
            float f4 = this.f38303b.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = view.getContext().getResources().getDimensionPixelSize(R.dimen.share_posts_a_hlistview_padding);
            int i2 = dimensionPixelSize * 2;
            int dimensionPixelSize2 = ((this.f38303b.getResources().getDisplayMetrics().widthPixels - i2) - (view.getContext().getResources().getDimensionPixelSize(R.dimen.share_posts_a_hlistview_divider_width) * 3)) / 4;
            view2.setLayoutParams(new AbsHListView.LayoutParams(dimensionPixelSize2, dimensionPixelSize2));
            int i4 = dimensionPixelSize2 + i2;
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, i4));
            view.setMinimumHeight(i4);
        }

        public void d(List<String> list) {
            if (this.f38302a == null) {
                this.f38302a = new ArrayList();
            }
            this.f38302a.clear();
            this.f38302a.addAll(list);
        }

        public void f(c cVar) {
            this.f38304c = cVar;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.f38302a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<String> list = this.f38302a;
            if (list == null) {
                return null;
            }
            return list.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            d dVar;
            try {
                if (view != null) {
                    dVar = (d) view.getTag();
                } else {
                    view = LayoutInflater.from(this.f38303b).inflate(R.layout.forum_post_pic_item, (ViewGroup) null);
                    dVar = new d();
                    dVar.f38310a = (ImageView) view.findViewById(R.id.image);
                    dVar.f38311b = (ImageView) view.findViewById(R.id.image_delete);
                    view.setTag(dVar);
                }
                dVar.f38310a.setOnClickListener(null);
                dVar.f38311b.setVisibility(0);
                e(viewGroup, view);
                if (this.f38302a.get(i2).contains("content://")) {
                    dVar.f38310a.setImageURI(Uri.parse(this.f38302a.get(i2)));
                } else {
                    c().v(this.f38302a.get(i2), dVar.f38310a);
                }
                dVar.f38311b.setOnClickListener(new a(i2));
                ArrayList arrayList = new ArrayList();
                arrayList.clear();
                arrayList.addAll(this.f38302a);
                int size = arrayList.size() < 9 ? arrayList.size() : 9;
                String[] strArr = new String[size];
                arrayList.toArray(strArr);
                for (int i4 = 0; i4 < size; i4++) {
                    strArr[i4] = "file://" + strArr[i4];
                }
                dVar.f38310a.setOnClickListener(new b(i2, strArr));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }
    }

    private void R0() {
        List<String> list = this.K;
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                File file = new File(list.get(i2));
                if (file.getParentFile().exists()) {
                    net.bither.util.b.k(file.getParentFile());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        net.bither.util.b.q().f72850c = new Hashtable<>();
        net.bither.util.b.q().f72849b = new Hashtable<>();
    }

    private LinkedMultiValueMap<String, Object> V0() {
        LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.f38246b.getUid());
        linkedMultiValueMap.add("token", this.f38246b.getToken());
        linkedMultiValueMap.add("fid", X0() + "");
        linkedMultiValueMap.add("rsid", ((int) Math.random()) + "");
        linkedMultiValueMap.add("subject", g1());
        linkedMultiValueMap.add(ForumPostsTagSelectActivity_.f30339x, f1() + "");
        linkedMultiValueMap.add("game_id", getGameId());
        linkedMultiValueMap.add("comment_game_id", d2.g(this.f38253i));
        linkedMultiValueMap.add("help_money", this.H + "");
        linkedMultiValueMap.add("tag_ids", h1());
        linkedMultiValueMap.add("message", this.f38260o.getText().toString());
        for (int i2 = 0; i2 < this.K.size(); i2++) {
            if (this.K.get(i2).contains("content://")) {
                File o3 = f0.o(Uri.parse(this.K.get(i2)), this);
                linkedMultiValueMap.add("img_" + (i2 + 1), o3.getAbsolutePath());
            } else {
                linkedMultiValueMap.add("img_" + (i2 + 1), new FileSystemResource(this.K.get(i2)));
            }
        }
        if (this.f38248d == 6) {
            linkedMultiValueMap.add("resource_url", this.f38257m.getText().toString());
        }
        return linkedMultiValueMap;
    }

    private List<String> a1(Intent intent) {
        if (intent != null && intent.getExtras() != null) {
            return (List) intent.getExtras().get(MyAlbumActivity.f17332w);
        }
        return new ArrayList();
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private String g1() {
        String obj = this.f38256l.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            return "";
        }
        String trim = obj.trim();
        List<LabelBean> list = this.f38277w0;
        if (list != null && list.size() > 0) {
            for (LabelBean labelBean : this.f38277w0) {
                if (trim.contains(labelBean.getTag_name())) {
                    trim = trim.replace(labelBean.getTag_name(), "");
                }
            }
        }
        t0.b("PostingActivity", "Subject:" + trim);
        return trim;
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && d2.i(accountBean.getToken());
    }

    private void n1() {
        n nVar = new n(this);
        this.f38283z0 = nVar;
        nVar.d(this.A0);
        this.f38283z0.f(new b());
        this.f38262p.setAdapter((ListAdapter) this.f38283z0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s1() {
        Intent intent = new Intent(this, MyAlbumActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(MyAlbumActivity.f17332w, (Serializable) this.A0);
        intent.putExtras(bundle);
        startActivityForResult(intent, 256);
    }

    private void w1(String str) {
        x0 x0Var = this.J;
        if (x0Var != null && x0Var.isShowing()) {
            this.J.dismiss();
        }
        x0 z3 = a0.c0(this).z(this, str, false);
        this.J = z3;
        z3.b();
    }

    void A1() {
        B1();
    }

    void B1() {
        int selectionStart = this.f38256l.getSelectionStart();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String c12 = c1();
        for (LabelBean labelBean : this.f38277w0) {
            String tag_name = labelBean.getTag_name();
            spannableStringBuilder.append((CharSequence) Html.fromHtml("<font color=#3CA4FD>" + tag_name + "</font>"));
        }
        spannableStringBuilder.append((CharSequence) c12);
        this.f38256l.setText(spannableStringBuilder);
        try {
            if (selectionStart > this.f38256l.getText().toString().length()) {
                selectionStart = this.f38256l.getText().toString().length();
            }
            Selection.setSelection(this.f38256l.getEditableText(), selectionStart);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void C1(String str, boolean z3) {
        if (TextUtils.isEmpty(str)) {
            if (z3) {
                this.A.setVisibility(0);
            }
            this.f38282z.setTextColor(Color.parseColor("#3CA4FD"));
            this.f38282z.setText("选择小组");
            this.f38280y.setImageResource(R.drawable.posting_location_blue);
            return;
        }
        if (z3) {
            this.A.setVisibility(8);
        }
        this.f38280y.setImageResource(R.drawable.posting_location);
        this.f38282z.setTextColor(Color.parseColor("#262626"));
        this.f38282z.setText(str);
    }

    void D1(boolean z3) {
        if (z3) {
            this.B.setEnabled(true);
            this.B.setTextColor(Color.parseColor("#F47500"));
            this.B.setBackgroundResource(R.drawable.posting_publish_selected);
            return;
        }
        this.B.setEnabled(false);
        this.B.setTextColor(Color.parseColor("#A8A8A8"));
        this.B.setBackgroundResource(R.drawable.posting_publish_normal);
    }

    boolean E1() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        try {
            if (!isLogined(this)) {
                showToast(getString(R.string.forum_user_not_login));
                return;
            }
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (!d2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
                if (!E1()) {
                    u1();
                    return;
                } else if (X0() <= 0) {
                    showToast("请选择小组");
                    return;
                } else if (TextUtils.isEmpty(this.f38260o.getText().toString())) {
                    showToast("请输入帖子内容");
                    return;
                } else if (this.f38248d == 6 && TextUtils.isEmpty(this.f38257m.getText().toString())) {
                    showToast("请输入资源链接地址");
                    return;
                } else {
                    int i2 = this.f38248d;
                    if (i2 == 3 && this.H < 0) {
                        showToast("请选择悬赏铜板数");
                        return;
                    } else if (i2 == 4 && TextUtils.isEmpty(getGameId())) {
                        showToast("请选择推荐游戏");
                        return;
                    } else if (!com.join.android.app.common.utils.f.j(this)) {
                        this.f38259n0 = 0;
                        showToast(getString(R.string.net_connect_failed));
                        return;
                    } else {
                        w1("正在发帖， 请稍等...");
                        this.f38259n0 = 1;
                        net.bither.util.b.q().y();
                        return;
                    }
                }
            }
            IntentUtil.getInstance().goChangeNickname(this);
        } catch (Exception e4) {
            this.f38259n0 = 0;
            e4.printStackTrace();
        }
    }

    boolean P0(String str) {
        List<LabelBean> list;
        if (this.f38245a == 100 && (list = this.f38277w0) != null && list.size() > 0) {
            LabelBean labelBean = this.f38277w0.get(0);
            if (!TextUtils.isEmpty(labelBean.getTag_name()) && !TextUtils.isEmpty(str) && str.equals(labelBean.getTag_name())) {
                return false;
            }
        }
        return true;
    }

    void Q0() {
        if (this.A0.size() <= 0) {
            return;
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S0() {
        try {
            ResultResMainBean<Response> x02 = this.f38255k.x0(V0());
            if (x02 != null) {
                if (x02.getData().isResult()) {
                    showToast("发帖成功,将在审核后显示");
                    R0();
                    m1();
                    k1();
                } else {
                    showToast(x02.getData().getMsg());
                    m1();
                }
            } else {
                showToast("发帖失败");
                m1();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            showToast("发帖失败");
            m1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        if (this.f38277w0.size() >= 3) {
            showToast("最多只能选择3个话题");
            return;
        }
        Intent intent = new Intent(this, SearchLabelActivity_.class);
        intent.putExtra("postingLabelType", this.f38248d);
        startActivityForResult(intent, L0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r("android.permission.WRITE_EXTERNAL_STORAGE").B5(new k());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    Spanned W0(String str) {
        return Html.fromHtml("<font color=#3CA4FD>" + str + "</font>");
    }

    int X0() {
        int i2 = this.f38252h;
        if (i2 > 0) {
            return i2;
        }
        GroupInfoBean groupInfoBean = this.f38273u0;
        if (groupInfoBean != null) {
            return groupInfoBean.getFid();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Y0(boolean z3) {
        try {
            ResultResMainBean<GroupListBean> s3 = this.f38255k.s(this.f38246b.getUid(), this.f38246b.getAccountData().getToken(), this.f38250f, this.f38251g);
            if (s3 != null && s3.getData() != null) {
                if (z3) {
                    o1(s3.getData());
                    return;
                } else {
                    x1(s3.getData());
                    return;
                }
            }
            showToast("网络异常，请检查网络！");
        } catch (Exception unused) {
            showToast("网络异常，请检查网络！");
        }
    }

    String Z0() {
        StringBuilder sb = new StringBuilder();
        int i2 = this.f38248d;
        if (i2 == 1) {
            sb.append("需要等级 首领\n");
            sb.append("-请发表对别人有意义的内容\n");
        } else if (i2 == 2) {
            sb.append("需要等级 巡山将\n");
            sb.append("-请发表对别人有意义的内容\n");
        } else if (i2 == 3) {
            sb.append("需要等级 无\n");
            sb.append("-请清晰说明求助的问题\n");
        } else if (i2 == 4) {
            sb.append("需要等级 山大王\n");
            sb.append("-请在推荐的游戏里附上详细的理由\n");
        }
        sb.append("-你可以插入话题，给帖子一个归属\n");
        sb.append("-你也可以给帖子配上图片方便别人理解\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f38255k = com.join.mgps.rpc.impl.f.A0();
        this.f38262p.setVisibility(8);
        this.f38267r0.setVisibility(8);
        this.f38256l.setOnSelectionChanged(new d());
        D1(false);
        this.f38260o.addTextChangedListener(new e());
        if (this.f38245a == 100) {
            LabelBean labelBean = new LabelBean();
            labelBean.setTag_id(Integer.parseInt(this.f38250f));
            labelBean.setTag_name(this.f38254j);
            z1(labelBean);
        }
        this.f38256l.setOnKeyListener(new f());
        this.f38256l.addTextChangedListener(new l());
        this.f38264q.setVisibility(0);
        if (this.f38248d == 3) {
            this.f38266r.setVisibility(0);
            this.f38272u.setVisibility(8);
            this.f38270t.setOnClickListener(new g());
        } else {
            this.f38266r.setVisibility(8);
            this.f38272u.setVisibility(0);
            this.f38276w.setOnClickListener(new h());
        }
        this.f38282z.setOnClickListener(new i());
        n1();
        C1(this.f38249e, true);
        int i2 = this.f38248d;
        if (i2 == 1 || i2 == 2) {
            this.f38264q.setVisibility(8);
        }
        if (!(TextUtils.isEmpty(this.f38250f) && TextUtils.isEmpty(this.f38251g)) && this.f38248d == 6) {
            this.f38258n.setVisibility(0);
            this.f38257m.setVisibility(0);
            this.f38264q.setVisibility(8);
        }
    }

    int b1(int i2) {
        if (i2 < i1()) {
            String obj = this.f38256l.getText().toString();
            int i4 = 0;
            for (LabelBean labelBean : this.f38277w0) {
                String tag_name = labelBean.getTag_name();
                if (!TextUtils.isEmpty(tag_name) && obj.contains(tag_name) && i2 <= (i4 = i4 + tag_name.length())) {
                    return Math.abs(i2 - (i4 - tag_name.length())) < Math.abs(i4 - i2) ? i4 - tag_name.length() : i4;
                }
            }
            return i2;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        a0.c0(this).D(this);
    }

    String c1() {
        String substring = this.f38256l.getText().toString().substring(i1());
        return (TextUtils.isEmpty(substring) || substring.length() <= 20) ? substring : substring.substring(0, 20);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d1() {
        if (this.f38261o0) {
            return;
        }
        if (com.join.android.app.common.utils.f.j(this)) {
            if (!isLogined(this)) {
                showToast(getString(R.string.forum_user_not_login));
                return;
            } else if (!E1()) {
                u1();
                return;
            } else {
                if (TextUtils.isEmpty(this.f38249e) && this.f38263p0) {
                    Y0(true);
                }
                e1();
                try {
                    showLoading();
                    if (this.f38255k.H(this.f38246b.getUid(), this.f38246b.getToken(), this.f38248d).getError() == 0) {
                        this.f38261o0 = true;
                        l1();
                    } else {
                        v1();
                    }
                    return;
                } catch (Exception e4) {
                    r1("getPostingAuthority Exception: " + e4.getMessage());
                    v1();
                    return;
                }
            }
        }
        v1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e1() {
        try {
            ResultResMainBean<String> j02 = this.f38255k.j0(this.f38248d);
            if (j02 != null && j02.getData() != null) {
                t1(j02.getData());
            }
        } catch (Exception unused) {
        }
    }

    int f1() {
        int i2 = this.f38248d;
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 3;
        }
        if (i2 == 4) {
            return 4;
        }
        return i2 == 6 ? 6 : 1;
    }

    String getGameId() {
        DownloadTask downloadTask = this.f38275v0;
        if (downloadTask != null) {
            return downloadTask.getCrc_link_type_val();
        }
        CollectionBeanSub collectionBeanSub = this.f38279x0;
        return collectionBeanSub != null ? collectionBeanSub.getGame_id() : "";
    }

    String h1() {
        StringBuilder sb = new StringBuilder();
        if (this.f38277w0.size() <= 0) {
            return sb.length() > 0 ? sb.deleteCharAt(sb.length() - 1).toString() : "";
        }
        Iterator<LabelBean> it2 = this.f38277w0.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().getTag_id() + ",");
        }
        return sb.deleteCharAt(sb.length() - 1).toString();
    }

    int i1() {
        String obj = this.f38256l.getText().toString();
        int i2 = 0;
        if (!TextUtils.isEmpty(obj)) {
            for (LabelBean labelBean : this.f38277w0) {
                String tag_name = labelBean.getTag_name();
                if (!TextUtils.isEmpty(tag_name) && obj.contains(tag_name)) {
                    i2 += tag_name.length();
                }
            }
        }
        return i2;
    }

    void j1(String str) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(str);
        ShareWebActivity_.O2(this).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k1() {
        Intent intent = new Intent();
        intent.putExtra(PostingActivity_.Q0, this.f38248d);
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l1() {
        this.D.setVisibility(0);
        this.F.setVisibility(8);
        this.E.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m1() {
        x0 x0Var = this.J;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.J.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o1(GroupListBean groupListBean) {
        this.f38263p0 = false;
        GroupInfoBean groupInfoBean = groupListBean.getRecommendForum().get(0);
        this.f38273u0 = groupInfoBean;
        C1(groupInfoBean.getName(), false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i2 == 256) {
            if (this.A0 == null) {
                this.A0 = new ArrayList();
            }
            this.A0.clear();
            this.A0.addAll(a1(intent));
            if (this.A0.size() > 0) {
                this.f38262p.setVisibility(0);
            } else {
                this.f38262p.setVisibility(8);
            }
            this.f38283z0.d(this.A0);
            this.f38283z0.notifyDataSetChanged();
        } else if (i4 == -1) {
            if (i2 != L0) {
                switch (i2) {
                    case 4352:
                        this.f38275v0 = (DownloadTask) intent.getSerializableExtra("gameInfo");
                        TextView textView = this.f38274v;
                        textView.setText(Html.fromHtml("推荐游戏：<font color=#000000>" + this.f38275v0.getShowName() + "</font>"));
                        return;
                    case 4353:
                    case 4354:
                        this.f38279x0 = (CollectionBeanSub) intent.getSerializableExtra("gameInfo");
                        TextView textView2 = this.f38274v;
                        textView2.setText(Html.fromHtml("推荐游戏：<font color=#000000>" + this.f38279x0.getGame_name() + "</font>"));
                        return;
                    default:
                        return;
                }
            }
            z1((LabelBean) intent.getSerializableExtra("label"));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        back_image();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        net.bither.util.b.q().z(this.f38265q0);
        net.bither.util.b.q().f72850c = new Hashtable<>();
        net.bither.util.b.q().f72849b = new Hashtable<>();
        Q0();
        List<String> list = this.K;
        if (list != null) {
            list.clear();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        net.bither.util.b.q().e(this.f38265q0);
        d1();
    }

    void p1(String str) {
        Editable editableText = this.f38256l.getEditableText();
        editableText.insert(i1(), Html.fromHtml("<font color=#3CA4FD>" + str + "</font>"));
    }

    boolean q1() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    void r1(String str) {
        t0.b("PostingActivity", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        d1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        this.D.setVisibility(8);
        this.F.setVisibility(0);
        this.E.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (q1()) {
            return;
        }
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t1(String str) {
        String[] split;
        if (TextUtils.isEmpty(str) || (split = str.split("#")) == null || split.length <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : split) {
            sb.append(str2);
            sb.append("\n");
        }
        try {
            this.f38260o.setHint(sb.deleteCharAt(sb.length() - 1).toString());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u1() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this).flags(268435456)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v1() {
        this.D.setVisibility(8);
        this.F.setVisibility(8);
        this.E.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x1(GroupListBean groupListBean) {
        h0 h0Var = this.f38269s0;
        if (h0Var != null) {
            h0Var.dismiss();
        }
        h0 h0Var2 = new h0(this, this.f38281y0);
        this.f38269s0 = h0Var2;
        h0Var2.setOnDismissListener(new j());
        this.A.setImageResource(R.drawable.posting_pull);
        this.f38269s0.a(groupListBean.getRecommendForum(), groupListBean.getFollowForum(), this.f38273u0);
        this.f38269s0.showAsDropDown(this.f38271t0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y1(int i2) {
    }

    void z1(LabelBean labelBean) {
        for (LabelBean labelBean2 : this.f38277w0) {
            if (labelBean2.getTag_id() == labelBean.getTag_id()) {
                return;
            }
        }
        String str = "#" + labelBean.getTag_name() + "#";
        labelBean.setTag_name(str);
        this.f38277w0.add(labelBean);
        p1(str);
    }
}
