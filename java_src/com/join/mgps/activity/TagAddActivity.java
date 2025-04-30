package com.join.mgps.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.widget.NestedScrollView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.GameTagsBean;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import com.join.mgps.dto.RequestAddUserCustomGameTag;
import com.join.mgps.dto.RequestDeleteUserCustomGameTag;
import com.join.mgps.dto.RequestDeleteUserCustomTag;
import com.join.mgps.dto.RequestListUserCustomGameTagArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSearchUserCustomGameTag;
import com.join.mgps.dto.ResponseModel;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.interfaces.IOnItemClickListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
@EActivity(R.layout.activity_tag_add)
/* loaded from: classes3.dex */
public class TagAddActivity extends BaseFragmentActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f35786a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f35787b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f35788c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f35789d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    String f35790e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    String f35791f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    FlowLayout f35792g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    FlowLayout f35793h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f35794i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    NestedScrollView f35795j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    EditText f35796k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    ListView f35797l;
    @StringRes(resName = "net_excption")

    /* renamed from: m  reason: collision with root package name */
    String f35798m;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: n  reason: collision with root package name */
    String f35799n;

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.rpc.impl.h f35800o;

    /* renamed from: q  reason: collision with root package name */
    SimpleBaseAdapter<String> f35802q;

    /* renamed from: s  reason: collision with root package name */
    ListUserCustomGameTagBean f35804s;

    /* renamed from: p  reason: collision with root package name */
    String f35801p = "";

    /* renamed from: r  reason: collision with root package name */
    Handler f35803r = new Handler();

    /* renamed from: t  reason: collision with root package name */
    boolean f35805t = false;

    /* renamed from: u  reason: collision with root package name */
    com.join.mgps.dialog.x0 f35806u = null;

    /* renamed from: v  reason: collision with root package name */
    TextWatcher f35807v = new d();

    /* renamed from: w  reason: collision with root package name */
    Runnable f35808w = new e();

    /* renamed from: x  reason: collision with root package name */
    AlertDialog.Builder f35809x = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class b extends SimpleBaseAdapter<String> {
        b() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            ((TextView) view.findViewById(R.id.tv_tag_text)).setText(getItem(i2));
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_user_tag_auto_search;
        }
    }

    /* loaded from: classes3.dex */
    class c implements IOnItemClickListener {
        c() {
        }

        @Override // com.papa91.arc.interfaces.IOnItemClickListener
        public void onItemClick(int i2) {
            TagAddActivity tagAddActivity = TagAddActivity.this;
            tagAddActivity.f35796k.removeTextChangedListener(tagAddActivity.f35807v);
            String item = TagAddActivity.this.f35802q.getItem(i2);
            TagAddActivity.this.f35796k.setText(item);
            TagAddActivity.this.f35796k.setSelection(item.length());
            TagAddActivity.this.f35802q.clear();
            TagAddActivity tagAddActivity2 = TagAddActivity.this;
            tagAddActivity2.f35796k.addTextChangedListener(tagAddActivity2.f35807v);
            TagAddActivity.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements TextWatcher {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            com.join.mgps.Util.u0.e("afterTextChanged", "keyword=" + TagAddActivity.this.f35796k.getText().toString());
            if (editable.length() <= 0) {
                SimpleBaseAdapter<String> simpleBaseAdapter = TagAddActivity.this.f35802q;
                if (simpleBaseAdapter != null) {
                    simpleBaseAdapter.clear();
                    return;
                }
                return;
            }
            TagAddActivity tagAddActivity = TagAddActivity.this;
            tagAddActivity.f35803r.removeCallbacks(tagAddActivity.f35808w);
            TagAddActivity tagAddActivity2 = TagAddActivity.this;
            tagAddActivity2.f35803r.postDelayed(tagAddActivity2.f35808w, 500L);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            com.join.mgps.Util.u0.e("beforeTextChanged", "keyword=" + TagAddActivity.this.f35796k.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            com.join.mgps.Util.u0.e("onTextChanged", "keyword=" + TagAddActivity.this.f35796k.getText().toString());
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TagAddActivity.this.isFinishing()) {
                return;
            }
            String obj = TagAddActivity.this.f35796k.getText().toString();
            if (obj.length() > 0) {
                TagAddActivity.this.L0(obj);
                return;
            }
            SimpleBaseAdapter<String> simpleBaseAdapter = TagAddActivity.this.f35802q;
            if (simpleBaseAdapter != null) {
                simpleBaseAdapter.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameTagsBean f35815a;

        f(GameTagsBean gameTagsBean) {
            this.f35815a = gameTagsBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity.this.F0(this.f35815a.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameTagsBean f35817a;

        g(GameTagsBean gameTagsBean) {
            this.f35817a = gameTagsBean;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            TagAddActivity.this.R0(this.f35817a);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameTagsBean f35819a;

        h(GameTagsBean gameTagsBean) {
            this.f35819a = gameTagsBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity.this.I0(this.f35819a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f35821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameTagsBean f35822b;

        i(boolean z3, GameTagsBean gameTagsBean) {
            this.f35821a = z3;
            this.f35822b = gameTagsBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f35821a) {
                return;
            }
            if (this.f35822b.getTagType().intValue() == 2 || this.f35822b.getTagType().intValue() == 3) {
                TagGameListActivity_.r e4 = TagGameListActivity_.d1(TagAddActivity.this).b(2).d(this.f35822b.getName()).e(Integer.parseInt(this.f35822b.getId()));
                e4.f(this.f35822b.getTagType() + "").start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameTagsBean f35824a;

        j(GameTagsBean gameTagsBean) {
            this.f35824a = gameTagsBean;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            TagAddActivity.this.J0(this.f35824a);
        }
    }

    private void H0(GameTagsBean gameTagsBean, FlowLayout flowLayout, boolean z3) {
        View inflate = View.inflate(this, R.layout.item_tag_view, null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_title);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.iv_icon);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.ll_root);
        imageView.setVisibility(0);
        if (z3) {
            if (gameTagsBean.isShowDelete()) {
                linearLayout.setBackgroundResource(R.drawable.shape_eef0f3_r_6);
                textView.setTextColor(Color.parseColor("#A4B5C7"));
                imageView.setVisibility(8);
            } else if (gameTagsBean.getVoteFlag().intValue() == 0) {
                linearLayout.setBackgroundResource(R.drawable.shape_f7f7f7_r_6);
                textView.setTextColor(Color.parseColor("#555555"));
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.ic_add_blue);
                imageView.setOnClickListener(new f(gameTagsBean));
            } else {
                linearLayout.setBackgroundResource(R.drawable.shape_eef0f3_r_6);
                textView.setTextColor(Color.parseColor("#A4B5C7"));
                imageView.setVisibility(8);
            }
            inflate.setOnLongClickListener(new g(gameTagsBean));
        } else if (gameTagsBean.getTagType().intValue() != 2 && gameTagsBean.getTagType().intValue() != 3) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.ic_delete_red);
            imageView.setOnClickListener(new h(gameTagsBean));
        } else {
            imageView.setImageResource(R.drawable.ic_arrow_right_black);
        }
        textView.setText(gameTagsBean.getName());
        inflate.setOnClickListener(new i(z3, gameTagsBean));
        flowLayout.addView(inflate, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        ListAdapter adapter = this.f35797l.getAdapter();
        if (adapter == null) {
            return;
        }
        int count = adapter.getCount();
        int i2 = 0;
        for (int i4 = 0; i4 < count; i4++) {
            View view = adapter.getView(i4, null, this.f35797l);
            view.measure(0, 0);
            i2 += view.getMeasuredHeight();
        }
        ViewGroup.LayoutParams layoutParams = this.f35797l.getLayoutParams();
        layoutParams.height = i2 + (this.f35797l.getDividerHeight() * (adapter.getCount() - 1));
        this.f35797l.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0(GameTagsBean gameTagsBean) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.AlertDialogCustom);
        this.f35809x = builder;
        builder.setMessage("是否要删除\"" + gameTagsBean.getName() + "\"标签");
        this.f35809x.setPositiveButton("仍要删除", new j(gameTagsBean));
        this.f35809x.setNegativeButton("取消", new a());
        this.f35809x.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0(String str) {
        N0();
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    S0();
                    RequestModel requestModel = new RequestModel(this);
                    RequestAddUserCustomGameTag requestAddUserCustomGameTag = new RequestAddUserCustomGameTag();
                    requestAddUserCustomGameTag.setTagName(str);
                    requestAddUserCustomGameTag.setGameId(this.f35791f);
                    requestAddUserCustomGameTag.setUid(AccountUtil_.getInstance_(this).getUid());
                    requestModel.setArgs(requestAddUserCustomGameTag);
                    ResponseModel<ListUserCustomGameTagBean> u3 = this.f35800o.u(requestModel.makeSign());
                    if (u3 != null && u3.getCode() == 200) {
                        com.join.mgps.Util.i2.a(this).b("标签添加成功");
                        G0();
                        M0();
                    } else if (u3 != null && com.join.mgps.Util.d2.i(u3.getMessage())) {
                        com.join.mgps.Util.i2.a(this).b(u3.getMessage());
                    } else {
                        com.join.mgps.Util.i2.a(this).b("添加失败，请重试");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    com.join.mgps.Util.i2.a(this).b("标签添加失败");
                }
                return;
            }
            com.join.mgps.Util.i2.a(this).b("网络连接异常，请检查网络连接");
        } finally {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0() {
        this.f35796k.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(GameTagsBean gameTagsBean) {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    RequestModel requestModel = new RequestModel();
                    requestModel.setDefault(this);
                    RequestDeleteUserCustomGameTag requestDeleteUserCustomGameTag = new RequestDeleteUserCustomGameTag();
                    requestDeleteUserCustomGameTag.setTagId(gameTagsBean.getId());
                    requestDeleteUserCustomGameTag.setGameId(this.f35791f);
                    requestDeleteUserCustomGameTag.setUid(AccountUtil_.getInstance_(this).getUid());
                    requestModel.setArgs(requestDeleteUserCustomGameTag);
                    S0();
                    ResponseModel B = this.f35800o.B(requestModel.makeSign());
                    if (B != null && B.getCode() == 200) {
                        M0();
                        com.join.mgps.Util.i2.a(this).b("自定义游戏标签删除成功");
                    } else if (B != null && com.join.mgps.Util.d2.i(B.getMessage())) {
                        com.join.mgps.Util.i2.a(this).b(B.getMessage());
                    } else {
                        com.join.mgps.Util.i2.a(this).b("自定义游戏标签删除失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    com.join.mgps.Util.i2.a(this).b("自定义游戏标签删除失败");
                }
                return;
            }
            com.join.mgps.Util.i2.a(this).b("网络连接异常，请检查网络连接");
        } finally {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(GameTagsBean gameTagsBean) {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    RequestModel requestModel = new RequestModel();
                    requestModel.setDefault(this);
                    RequestDeleteUserCustomTag requestDeleteUserCustomTag = new RequestDeleteUserCustomTag();
                    requestDeleteUserCustomTag.setTagId(gameTagsBean.getId());
                    requestDeleteUserCustomTag.setGameId(this.f35791f);
                    requestDeleteUserCustomTag.setUid(AccountUtil_.getInstance_(this).getUid());
                    requestModel.setArgs(requestDeleteUserCustomTag);
                    S0();
                    ResponseModel n4 = this.f35800o.n(requestModel.makeSign());
                    if (n4 != null && n4.getCode() == 200) {
                        M0();
                        com.join.mgps.Util.i2.a(this).b("常用标签删除成功");
                    } else if (n4 != null && com.join.mgps.Util.d2.i(n4.getMessage())) {
                        com.join.mgps.Util.i2.a(this).b(n4.getMessage());
                    } else {
                        com.join.mgps.Util.i2.a(this).b("常用标签删除失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    com.join.mgps.Util.i2.a(this).b("常用标签删除失败");
                }
                return;
            }
            com.join.mgps.Util.i2.a(this).b("网络连接异常，请检查网络连接");
        } finally {
            K0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        this.f35806u.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            ArrayList arrayList = new ArrayList();
            try {
                try {
                    RequestModel requestModel = new RequestModel(this);
                    RequestSearchUserCustomGameTag requestSearchUserCustomGameTag = new RequestSearchUserCustomGameTag();
                    requestSearchUserCustomGameTag.setSearchWord(str);
                    requestSearchUserCustomGameTag.setGameId(this.f35791f);
                    requestSearchUserCustomGameTag.setUid(AccountUtil_.getInstance_(this).getUid());
                    requestModel.setArgs(requestSearchUserCustomGameTag);
                    V0(this.f35800o.o(requestModel.makeSign()).getData());
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    com.join.mgps.Util.i2.a(this).b(this.f35799n);
                    V0(arrayList);
                    return;
                }
            } catch (Throwable th) {
                V0(arrayList);
                throw th;
            }
        }
        com.join.mgps.Util.i2.a(this).b(this.f35798m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0049 -> B:19:0x0054). Please submit an issue!!! */
    @Background
    public void M0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                RequestModel requestModel = new RequestModel(this);
                RequestListUserCustomGameTagArgs requestListUserCustomGameTagArgs = new RequestListUserCustomGameTagArgs();
                requestListUserCustomGameTagArgs.setUid(AccountUtil_.getInstance_(this).getUid());
                requestListUserCustomGameTagArgs.setGameId(this.f35791f);
                requestModel.setArgs(requestListUserCustomGameTagArgs);
                ResponseModel<ListUserCustomGameTagBean> x3 = this.f35800o.x(requestModel.makeSign());
                if (x3 != null && x3.getData() != null) {
                    O0();
                    T0(x3.getData());
                } else {
                    showLodingFailed();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
            }
            return;
        }
        showLodingFailed();
    }

    void N0() {
        y1.a.b(this.f35796k);
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        try {
            this.f35787b.setVisibility(8);
            this.f35788c.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_add_tag})
    public void P0() {
        if (com.join.mgps.Util.d2.h(this.f35796k.getText().toString())) {
            com.join.mgps.Util.i2.a(this).b("请输入游戏新标签！");
        } else if (IntentUtil.getInstance().goLogin(this)) {
            com.join.mgps.Util.i2.a(this).b("您还未登录请先登录帐号！");
        } else {
            SimpleBaseAdapter<String> simpleBaseAdapter = this.f35802q;
            if (simpleBaseAdapter != null) {
                simpleBaseAdapter.clear();
            }
            Q0();
            F0(this.f35796k.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        this.f35806u.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0(ListUserCustomGameTagBean listUserCustomGameTagBean) {
        try {
            this.f35804s = listUserCustomGameTagBean;
            if (listUserCustomGameTagBean == null) {
                return;
            }
            this.f35793h.removeAllViews();
            this.f35792g.removeAllViews();
            this.f35795j.setVisibility(0);
            if (listUserCustomGameTagBean.getGameTags() != null) {
                Iterator<GameTagsBean> it2 = listUserCustomGameTagBean.getGameTags().iterator();
                while (it2.hasNext()) {
                    GameTagsBean next = it2.next();
                    if (!TextUtils.equals(next.getId(), "7") || next.getVoteFlag().intValue() != 0) {
                        H0(next, this.f35792g, false);
                    }
                }
            }
            if (listUserCustomGameTagBean.getPersonalTags() != null) {
                Iterator<GameTagsBean> it3 = listUserCustomGameTagBean.getPersonalTags().iterator();
                while (it3.hasNext()) {
                    H0(it3.next(), this.f35793h, true);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.tv_report})
    public void U0() {
        if (IntentUtil.getInstance().goLogin(this)) {
            com.join.mgps.Util.i2.a(this).b("您还未登录请先登录帐号！");
        } else {
            TagReportActivity_.U0(this).b(this.f35804s).a(this.f35791f).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0(List<String> list) {
        this.f35802q.setDatas(list);
        Q0();
        this.f35802q.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void accountChange(Intent intent) {
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f35806u = com.join.mgps.Util.a0.c0(this).x(this);
        this.f35789d.setText(this.f35790e);
        this.f35789d.setTypeface(Typeface.defaultFromStyle(1));
        this.f35800o = com.join.mgps.rpc.impl.h.L();
        this.f35792g.setHorizontalDivider((int) getResources().getDimension(R.dimen.wdp20));
        this.f35792g.setVerticalDivider((int) getResources().getDimension(R.dimen.wdp28));
        this.f35793h.setHorizontalDivider((int) getResources().getDimension(R.dimen.wdp20));
        this.f35793h.setVerticalDivider((int) getResources().getDimension(R.dimen.wdp28));
        this.f35805t = IntentUtil.getInstance().isLogined(this);
        showLoding();
        M0();
        this.f35796k.addTextChangedListener(this.f35807v);
        if (this.f35802q == null) {
            b bVar = new b();
            this.f35802q = bVar;
            this.f35797l.setAdapter((ListAdapter) bVar);
            Q0();
            this.f35802q.setItemClickListener(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        this.f35803r.removeCallbacks(this.f35808w);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f35805t || !IntentUtil.getInstance().isLogined(this)) {
            return;
        }
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f35787b.setVisibility(0);
            this.f35788c.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            this.f35788c.setVisibility(0);
            this.f35787b.setVisibility(8);
            this.f35795j.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
