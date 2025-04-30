package com.join.mgps.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.i0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import it.sephiroth.android.library.widget.AbsHListView;
import it.sephiroth.android.library.widget.HListView;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.bither.util.b;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.share_posts_activity)
/* loaded from: classes3.dex */
public class SharePostsActivity extends BaseActivity {
    public static final String A = "key_from_posts_submit_request";
    public static final String B = "key_from_class";
    private static String C = "value_from_class";
    public static final int D = 9;

    /* renamed from: z  reason: collision with root package name */
    public static final String f35318z = "forum_id";
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f35320b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f35321c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f35322d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f35323e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    HListView f35324f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f35325g;

    /* renamed from: h  reason: collision with root package name */
    i f35326h;

    /* renamed from: i  reason: collision with root package name */
    List<String> f35327i;

    /* renamed from: j  reason: collision with root package name */
    com.join.mgps.rpc.h f35328j;

    /* renamed from: l  reason: collision with root package name */
    ForumRequestBean.ForumPostsSubmitRequestBean f35330l;

    /* renamed from: m  reason: collision with root package name */
    private com.join.mgps.dialog.q0 f35331m;

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.dialog.p0 f35333o;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    LinearLayout f35338t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    GridView f35339u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    TextView f35340v;

    /* renamed from: w  reason: collision with root package name */
    private SimpleAdapter f35341w;

    /* renamed from: a  reason: collision with root package name */
    public final String f35319a = getClass().getSimpleName();

    /* renamed from: k  reason: collision with root package name */
    int f35329k = -1;

    /* renamed from: n  reason: collision with root package name */
    int f35332n = (int) Math.random();

    /* renamed from: p  reason: collision with root package name */
    int f35334p = 0;

    /* renamed from: q  reason: collision with root package name */
    private i0.j f35335q = new a();

    /* renamed from: r  reason: collision with root package name */
    private b.e f35336r = new b();

    /* renamed from: s  reason: collision with root package name */
    private String[] f35337s = {"0", "5", com.join.mgps.Util.u.f27861t, "30", "50", "60", "80", "100"};

    /* renamed from: x  reason: collision with root package name */
    private int f35342x = -1;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.customview.t f35343y = null;

    /* loaded from: classes3.dex */
    class a extends i0.j {
        a() {
        }

        @Override // com.join.mgps.Util.i0.j, com.join.mgps.Util.i0.i
        public void d(int i2) {
            super.d(i2);
            SharePostsActivity.this.a1(1);
        }

        @Override // com.join.mgps.Util.i0.j, com.join.mgps.Util.i0.i
        public void e(ForumData.ForumPostsSubmitData forumPostsSubmitData) {
            super.e(forumPostsSubmitData);
            SharePostsActivity.this.a1(2);
        }
    }

    /* loaded from: classes3.dex */
    class b implements b.e {
        b() {
        }

        private void b(List<String> list) {
            SharePostsActivity sharePostsActivity = SharePostsActivity.this;
            if (sharePostsActivity.f35334p == 1) {
                sharePostsActivity.f35334p = 2;
                if (list != null && list.size() != 0) {
                    SharePostsActivity.this.f35330l.setImages(list);
                }
                SharePostsActivity.this.N0();
            }
        }

        @Override // net.bither.util.b.e
        public void a(Boolean bool, Map<String, String> map, Map<String, Integer> map2) {
            List<String> list;
            if (bool.booleanValue() && (list = SharePostsActivity.this.f35327i) != null && list.size() != 0) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < SharePostsActivity.this.f35327i.size(); i2++) {
                    String str = SharePostsActivity.this.f35327i.get(i2);
                    int intValue = map2.get(str).intValue();
                    String str2 = map.get(str);
                    if (intValue == 1) {
                        arrayList.add(str2);
                    }
                }
                b(arrayList);
                return;
            }
            b(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements DialogInterface.OnCancelListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            SharePostsActivity.this.f35334p = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements i.d {
        d() {
        }

        @Override // com.join.mgps.activity.SharePostsActivity.i.d
        public void a(int i2, String str) {
            SharePostsActivity.this.f35327i.remove(i2);
            SharePostsActivity sharePostsActivity = SharePostsActivity.this;
            sharePostsActivity.f35326h.d(sharePostsActivity.f35327i);
            SharePostsActivity.this.f35326h.notifyDataSetChanged();
            net.bither.util.b.q().j(SharePostsActivity.this.getApplicationContext(), str, false);
        }

        @Override // com.join.mgps.activity.SharePostsActivity.i.d
        public void b() {
            SharePostsActivity.this.goMyAlbumActivity4PickPic();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharePostsActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharePostsActivity.this.f35333o.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements AdapterView.OnItemClickListener {
        g() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (SharePostsActivity.this.f35342x != i2) {
                if (AccountUtil_.getInstance_(view.getContext()).getAccountData().getPapaMoney() >= Integer.parseInt(SharePostsActivity.this.f35337s[i2])) {
                    if (SharePostsActivity.this.f35342x >= 0) {
                        SharePostsActivity sharePostsActivity = SharePostsActivity.this;
                        sharePostsActivity.J0(sharePostsActivity.f35341w, SharePostsActivity.this.f35342x, false);
                    }
                    SharePostsActivity.this.f35342x = i2;
                    SharePostsActivity sharePostsActivity2 = SharePostsActivity.this;
                    sharePostsActivity2.J0(sharePostsActivity2.f35341w, i2, true);
                    return;
                }
                SharePostsActivity.this.showToast(view.getContext().getString(R.string.share_posts_nomore_help_money));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class h implements InputFilter {

        /* renamed from: a  reason: collision with root package name */
        int f35351a;

        /* renamed from: b  reason: collision with root package name */
        String f35352b = "[\\u4e00-\\u9fa5]";

        public h(int i2) {
            this.f35351a = i2;
        }

        private int a(String str) {
            Matcher matcher = Pattern.compile(this.f35352b).matcher(str);
            int i2 = 0;
            while (matcher.find()) {
                for (int i4 = 0; i4 <= matcher.groupCount(); i4++) {
                    i2++;
                }
            }
            return i2;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i4, Spanned spanned, int i5, int i6) {
            if (spanned.toString().length() + a(spanned.toString()) + charSequence.toString().length() + a(charSequence.toString()) > this.f35351a) {
                Toast.makeText(SharePostsActivity.this, "最多可以填写20个字", 0).show();
                return "";
            }
            return charSequence;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class i extends BaseAdapter {

        /* renamed from: e  reason: collision with root package name */
        private static final String f35354e = "add_image";

        /* renamed from: b  reason: collision with root package name */
        private Context f35356b;

        /* renamed from: d  reason: collision with root package name */
        private d f35358d;

        /* renamed from: c  reason: collision with root package name */
        boolean f35357c = false;

        /* renamed from: a  reason: collision with root package name */
        private List<String> f35355a = new ArrayList();

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                i iVar = i.this;
                if (iVar.f35357c) {
                    return;
                }
                iVar.f35357c = true;
                if (iVar.f35358d != null) {
                    i.this.f35358d.b();
                }
            }
        }

        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f35360a;

            b(int i2) {
                this.f35360a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (i.this.f35358d != null) {
                    d dVar = i.this.f35358d;
                    int i2 = this.f35360a;
                    dVar.a(i2, (String) i.this.getItem(i2));
                }
            }
        }

        /* loaded from: classes3.dex */
        class c implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f35362a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String[] f35363b;

            c(int i2, String[] strArr) {
                this.f35362a = i2;
                this.f35363b = strArr;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.join.mgps.Util.i0.G0(i.this.f35356b, this.f35362a, this.f35363b);
            }
        }

        /* loaded from: classes3.dex */
        public interface d {
            void a(int i2, String str);

            void b();
        }

        /* loaded from: classes3.dex */
        class e {

            /* renamed from: a  reason: collision with root package name */
            ImageView f35365a;

            /* renamed from: b  reason: collision with root package name */
            ImageView f35366b;

            e() {
            }
        }

        public i(Context context) {
            this.f35356b = context;
        }

        private ImageLoader c() {
            return ImageLoader.r(3, ImageLoader.Type.LIFO);
        }

        private void f(View view, View view2) {
            float f4 = this.f35356b.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = view.getContext().getResources().getDimensionPixelSize(R.dimen.share_posts_a_hlistview_padding);
            int i2 = dimensionPixelSize * 2;
            int dimensionPixelSize2 = ((this.f35356b.getResources().getDisplayMetrics().widthPixels - i2) - (view.getContext().getResources().getDimensionPixelSize(R.dimen.share_posts_a_hlistview_divider_width) * 3)) / 4;
            view2.setLayoutParams(new AbsHListView.LayoutParams(dimensionPixelSize2, dimensionPixelSize2));
            int i4 = dimensionPixelSize2 + i2;
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, i4));
            view.setMinimumHeight(i4);
        }

        public void d(List<String> list) {
            if (this.f35355a == null) {
                this.f35355a = new ArrayList();
            }
            this.f35355a.clear();
            this.f35355a.addAll(list);
            if (list.size() < 9) {
                this.f35355a.add(f35354e);
            }
        }

        public void e(boolean z3) {
            this.f35357c = z3;
        }

        public void g(d dVar) {
            this.f35358d = dVar;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.f35355a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<String> list = this.f35355a;
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
            e eVar;
            try {
                if (view != null) {
                    eVar = (e) view.getTag();
                } else {
                    view = LayoutInflater.from(this.f35356b).inflate(R.layout.forum_post_pic_item, (ViewGroup) null);
                    eVar = new e();
                    eVar.f35365a = (ImageView) view.findViewById(R.id.image);
                    eVar.f35366b = (ImageView) view.findViewById(R.id.image_delete);
                    view.setTag(eVar);
                }
                eVar.f35365a.setOnClickListener(null);
                eVar.f35366b.setVisibility(0);
                f(viewGroup, view);
                if (i2 == getCount() - 1 && this.f35355a.get(i2).equals(f35354e)) {
                    eVar.f35366b.setVisibility(8);
                    eVar.f35365a.setImageResource(R.drawable.pic_add);
                    eVar.f35365a.setOnClickListener(new a());
                } else {
                    c().v(this.f35355a.get(i2), eVar.f35365a);
                    eVar.f35366b.setOnClickListener(new b(i2));
                    ArrayList arrayList = new ArrayList();
                    arrayList.clear();
                    arrayList.addAll(this.f35355a);
                    int i4 = 9;
                    if (arrayList.size() < 9) {
                        i4 = arrayList.size() - 1;
                        arrayList.remove(i4);
                    }
                    String[] strArr = new String[i4];
                    arrayList.toArray(strArr);
                    for (int i5 = 0; i5 < i4; i5++) {
                        strArr[i5] = "file://" + strArr[i5];
                    }
                    eVar.f35365a.setOnClickListener(new c(i2, strArr));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J0(SimpleAdapter simpleAdapter, int i2, boolean z3) {
        HashMap hashMap = (HashMap) simpleAdapter.getItem(i2);
        if (z3) {
            hashMap.put("itemRadioImg", Integer.valueOf((int) R.drawable.shape_forum_help_money_selected));
        } else {
            hashMap.put("itemRadioImg", Integer.valueOf((int) R.drawable.shape_forum_help_money_default));
        }
        simpleAdapter.notifyDataSetChanged();
        W0(i2);
    }

    private void K0() {
        if (com.join.mgps.Util.i0.Y0(this)) {
            return;
        }
        com.join.mgps.Util.i0.L0(this);
    }

    private void L0() {
        List<String> images = this.f35330l.getImages();
        if (images == null || images.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < images.size(); i2++) {
            try {
                File file = new File(images.get(i2));
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

    private void M0() {
        com.join.mgps.customview.t tVar = this.f35343y;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f35343y.dismiss();
    }

    private List<String> O0(Intent intent) {
        if (intent != null && intent.getExtras() != null) {
            return (List) intent.getExtras().get(MyAlbumActivity.f17332w);
        }
        return new ArrayList();
    }

    private SimpleAdapter P0(int i2, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            HashMap hashMap = new HashMap();
            hashMap.put("itemRadioImg", Integer.valueOf(i2));
            hashMap.put("itemRadioText", str);
            arrayList.add(hashMap);
        }
        return new SimpleAdapter(this, arrayList, R.layout.mg_forum_share_posts_a_item_help_money, new String[]{"itemRadioImg", "itemRadioText"}, new int[]{R.id.itemRadioImg, R.id.itemRadioText});
    }

    private void Q0() {
        this.f35327i = new ArrayList();
        i iVar = new i(this);
        this.f35326h = iVar;
        iVar.d(this.f35327i);
        this.f35326h.g(new d());
        this.f35324f.setAdapter((ListAdapter) this.f35326h);
    }

    private void S0() {
        this.f35320b.setText("发帖");
        this.f35321c.setVisibility(0);
        com.join.mgps.dialog.q0 q0Var = new com.join.mgps.dialog.q0(this);
        this.f35331m = q0Var;
        q0Var.setCancelable(true);
        this.f35331m.setOnCancelListener(new c());
        com.join.mgps.Util.j0.I1(this).b(this.f35335q);
        SpannableString spannableString = new SpannableString("每次最多可以分享9张图");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#808080")), 8, 9, 33);
        this.f35325g.setText(spannableString);
        this.f35322d.setFilters(new InputFilter[]{new h(40)});
        Q0();
        R0();
    }

    private boolean T0() {
        return this.f35323e.getText().toString().equals("");
    }

    private boolean U0() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                String p02 = com.join.mgps.Util.i0.p0(this);
                if (com.join.mgps.Util.d2.h(p02)) {
                    com.join.mgps.Util.i0.L0(this);
                    return false;
                }
                if (this.f35330l == null) {
                    this.f35330l = new ForumRequestBean.ForumPostsSubmitRequestBean();
                }
                this.f35330l.setFid(this.f35329k);
                this.f35330l.setUid(com.join.mgps.Util.i0.o0(this));
                this.f35330l.setToken(p02);
                this.f35330l.setRsid(this.f35332n);
                this.f35330l.setSubject(this.f35322d.getText().toString());
                this.f35330l.setMessage(this.f35323e.getText().toString());
                this.f35330l.setImages(this.f35327i);
                return true;
            }
            showToast(getString(R.string.net_connect_failed));
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private void X0(TextView textView, String str, String str2, String str3) {
        SpannableString spannableString = new SpannableString(str);
        int indexOf = str.indexOf(str2 + "");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(str3)), indexOf, (str2 + "").length() + indexOf, 33);
        textView.setText(spannableString);
    }

    private void Y0() {
        if (this.f35333o == null) {
            com.join.mgps.dialog.p0 p0Var = new com.join.mgps.dialog.p0(this);
            this.f35333o = p0Var;
            p0Var.b(8);
            this.f35333o.f("放弃发布");
            this.f35333o.d("继续编辑");
            this.f35333o.g("你要放弃发布吗？").c(new f()).e(new e());
        }
        if (this.f35333o.isShowing()) {
            return;
        }
        this.f35333o.show();
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0() {
        try {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                a1(-1);
                return;
            }
            this.f35330l.setDevice_id("");
            LinkedMultiValueMap<String, Object> params = this.f35330l.getParams();
            com.join.mgps.Util.u0.e("release-->images send to server - start request..");
            ForumResponse<ForumData.ForumPostsSubmitData> y02 = this.f35328j.y0(params);
            com.join.mgps.Util.u0.e("release-->images send to server - response received.");
            if (y02 != null) {
                if (y02.getError() == 706) {
                    showToast("发帖失败");
                    a1(-1);
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                } else if (y02.getError() == 403) {
                    showToast(y02.getError_message());
                    a1(-1);
                    return;
                } else if (y02.getError() == 404) {
                    showToast(y02.getError_message());
                    a1(-1);
                    IntentUtil.getInstance().goVip(this);
                    return;
                } else {
                    ForumData.ForumPostsSubmitData data = y02.getData();
                    if (data != null && data.isResult()) {
                        com.join.mgps.Util.u0.e("release-->images send to server - success");
                        if (data.getReward_money() > 0) {
                            Z0(data.getReward_money(), data.getReward_exp());
                        } else {
                            showToast("发帖成功");
                        }
                        L0();
                        com.join.mgps.Util.j0.I1(this).e1(data);
                        return;
                    }
                    com.join.mgps.Util.u0.e("release-->images send to server - failed");
                    showToast("发帖失败");
                    a1(1);
                    com.join.mgps.Util.i0.l(this, y02.getError());
                    return;
                }
            }
            showToast("发帖失败");
            a1(1);
        } catch (Exception e4) {
            com.join.mgps.Util.u0.e("release-->images send to server - try/catch exception");
            a1(1);
            e4.printStackTrace();
        }
    }

    void R0() {
        ForumRequestBean.ForumPostsSubmitRequestBean forumPostsSubmitRequestBean = this.f35330l;
        if (forumPostsSubmitRequestBean != null && forumPostsSubmitRequestBean.getHelp() == 1) {
            this.f35325g.setVisibility(8);
            this.f35338t.setVisibility(0);
            if (com.join.mgps.Util.i0.Y0(this)) {
                long papaMoney = AccountUtil_.getInstance_(this).getAccountData().getPapaMoney();
                String string = getString(R.string.share_posts_myremain_help_money, new Object[]{Long.valueOf(papaMoney)});
                TextView textView = this.f35340v;
                X0(textView, string, papaMoney + "", "#f47500");
            }
            SimpleAdapter P0 = P0(R.drawable.shape_forum_help_money_default, this.f35337s);
            this.f35341w = P0;
            this.f35339u.setAdapter((ListAdapter) P0);
            this.f35339u.setOnItemClickListener(new g());
            this.f35342x = 1;
            J0(this.f35341w, 1, true);
            return;
        }
        this.f35325g.setVisibility(0);
        this.f35338t.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V0() {
        com.join.mgps.Util.u0.e("release-->release button pressed.");
        if (T0()) {
            Toast.makeText(this, "帖子内容不能为空", 0).show();
            return;
        }
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                if (U0()) {
                    a1(0);
                    this.f35334p = 1;
                    net.bither.util.b.q().y();
                }
            } else {
                this.f35334p = 0;
                com.join.mgps.Util.u0.e("release-->network connect failed.");
                showToast(getString(R.string.net_connect_failed));
            }
        } catch (Exception e4) {
            this.f35334p = 0;
            com.join.mgps.Util.u0.e("release-->try/catch exception.");
            e4.printStackTrace();
            a1(1);
        }
        com.join.mgps.Util.u0.e("release-->release method finished.");
    }

    void W0(int i2) {
        this.f35330l.setHelp_money(Integer.parseInt(this.f35337s[i2]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0(int i2, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a1(int i2) {
        if (this.f35331m == null) {
            this.f35331m = new com.join.mgps.dialog.q0(this);
        }
        this.f35331m.c(i2);
        if (i2 != 2) {
            return;
        }
        ForumBean forumBean = new ForumBean();
        forumBean.setFid(this.f35330l.getFid());
        com.join.mgps.Util.i0.r0(this, forumBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f35328j = com.join.mgps.rpc.impl.f.A0();
        String str = (String) getIntent().getSerializableExtra(A);
        C = getIntent().getStringExtra(B);
        if (com.join.mgps.Util.d2.h(str)) {
            finish();
            return;
        }
        ForumRequestBean.ForumPostsSubmitRequestBean forumPostsSubmitRequestBean = (ForumRequestBean.ForumPostsSubmitRequestBean) JsonMapper.getInstance().fromJson(str, ForumRequestBean.ForumPostsSubmitRequestBean.class);
        this.f35330l = forumPostsSubmitRequestBean;
        if (forumPostsSubmitRequestBean != null) {
            this.f35329k = forumPostsSubmitRequestBean.getFid();
            if (this.f35330l == null) {
                this.f35330l = new ForumRequestBean.ForumPostsSubmitRequestBean();
            }
            S0();
            K0();
            return;
        }
        this.f35329k = -1;
        finish();
    }

    boolean b1() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        List<String> list;
        if (!com.join.mgps.Util.d2.i(this.f35322d.getText().toString()) && !com.join.mgps.Util.d2.i(this.f35323e.getText().toString()) && ((list = this.f35327i) == null || list.size() <= 1)) {
            finish();
        } else {
            Y0();
        }
    }

    public void goMyAlbumActivity4PickPic() {
        Intent intent = new Intent(this, MyAlbumActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(MyAlbumActivity.f17332w, (Serializable) this.f35327i);
        intent.putExtras(bundle);
        startActivityForResult(intent, 256);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i2 == 256) {
            if (this.f35327i == null) {
                this.f35327i = new ArrayList();
            }
            this.f35327i.clear();
            this.f35327i.addAll(O0(intent));
            this.f35326h.d(this.f35327i);
            this.f35326h.notifyDataSetChanged();
            this.f35326h.e(false);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        back_image();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.dialog.p0 p0Var = this.f35333o;
        if (p0Var != null) {
            if (p0Var.isShowing()) {
                this.f35333o.dismiss();
            }
            this.f35333o = null;
        }
        com.join.mgps.dialog.q0 q0Var = this.f35331m;
        if (q0Var != null && q0Var.isShowing()) {
            this.f35331m.dismiss();
        }
        this.f35331m = null;
        com.join.mgps.Util.j0.I1(this).j1(this.f35335q);
        if (this.f35327i != null) {
            for (int i2 = 0; i2 < this.f35327i.size(); i2++) {
                try {
                    net.bither.util.b.q().j(getApplicationContext(), this.f35327i.get(i2), false);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            this.f35327i.clear();
            this.f35327i = null;
        }
        net.bither.util.b.q().z(this.f35336r);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        net.bither.util.b.q().e(this.f35336r);
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
}
