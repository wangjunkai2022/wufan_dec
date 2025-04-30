package com.join.mgps.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.dto.LabelBean;
import com.join.mgps.dto.ResultResMainBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_search_label)
/* loaded from: classes3.dex */
public class SearchLabelActivity extends Activity {

    /* renamed from: n  reason: collision with root package name */
    public static final int f35143n = 1;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ListView f35145b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f35146c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    EditText f35147d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f35148e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f35149f;

    /* renamed from: h  reason: collision with root package name */
    f f35151h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.rpc.h f35152i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f35153j;
    @Bean

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.Util.b f35155l;

    /* renamed from: m  reason: collision with root package name */
    int f35156m;
    @Extra

    /* renamed from: a  reason: collision with root package name */
    int f35144a = 0;

    /* renamed from: g  reason: collision with root package name */
    List<LabelBean> f35150g = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private InputFilter f35154k = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements InputFilter {
        a() {
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i4, Spanned spanned, int i5, int i6) {
            if (charSequence.equals(" ")) {
                return "";
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnKeyListener {
        b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            return i2 == 66;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String trim = editable.toString().trim();
            if (TextUtils.isEmpty(trim)) {
                SearchLabelActivity.this.c("");
                SearchLabelActivity.this.f35146c.setVisibility(8);
                return;
            }
            SearchLabelActivity.this.c(trim);
            SearchLabelActivity.this.f35146c.setVisibility(0);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchLabelActivity.this.f35147d.setText("");
            SearchLabelActivity.this.f35150g.clear();
            f fVar = SearchLabelActivity.this.f35151h;
            if (fVar != null) {
                fVar.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements AdapterView.OnItemClickListener {
        e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            LabelBean labelBean = SearchLabelActivity.this.f35150g.get(i2);
            SearchLabelActivity searchLabelActivity = SearchLabelActivity.this;
            if (searchLabelActivity.f35144a == 1) {
                MainLabelActivity_.j1(searchLabelActivity).d(labelBean.getTag_id()).start();
            } else {
                Intent intent = new Intent();
                intent.putExtra("label", labelBean);
                SearchLabelActivity.this.setResult(-1, intent);
            }
            SearchLabelActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class f extends BaseAdapter {

        /* loaded from: classes3.dex */
        class a {

            /* renamed from: a  reason: collision with root package name */
            SimpleDraweeView f35163a;

            /* renamed from: b  reason: collision with root package name */
            TextView f35164b;

            /* renamed from: c  reason: collision with root package name */
            TextView f35165c;

            a() {
            }
        }

        private f() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return SearchLabelActivity.this.f35150g.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return SearchLabelActivity.this.f35150g.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_label, (ViewGroup) null);
                aVar = new a();
                aVar.f35163a = (SimpleDraweeView) view.findViewById(R.id.iv_icon);
                aVar.f35164b = (TextView) view.findViewById(R.id.tv_label_name);
                aVar.f35165c = (TextView) view.findViewById(R.id.tv_count);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            LabelBean labelBean = SearchLabelActivity.this.f35150g.get(i2);
            MyImageLoader.h(aVar.f35163a, labelBean.getTag_icon());
            aVar.f35164b.setText(labelBean.getTag_name());
            TextView textView = aVar.f35165c;
            textView.setText(labelBean.getPosts() + "条帖子");
            return view;
        }

        /* synthetic */ f(SearchLabelActivity searchLabelActivity, a aVar) {
            this();
        }
    }

    private void d() {
        if (com.join.android.app.common.utils.f.j(this)) {
            j();
            c("");
            return;
        }
        i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void a() {
        this.f35152i = com.join.mgps.rpc.impl.f.A0();
        this.f35156m = getIntent().getIntExtra("postingLabelType", 1);
        this.f35147d.setFilters(new InputFilter[]{this.f35154k});
        this.f35147d.setOnKeyListener(new b());
        this.f35147d.addTextChangedListener(new c());
        this.f35146c.setOnClickListener(new d());
        f fVar = new f(this, null);
        this.f35151h = fVar;
        this.f35145b.setAdapter((ListAdapter) fVar);
        this.f35145b.setOnItemClickListener(new e());
        if (this.f35144a != 1) {
            d();
        } else {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c(String str) {
        ResultResMainBean<List<LabelBean>> D;
        try {
            if (this.f35144a == 1) {
                D = this.f35152i.d(str);
            } else {
                D = this.f35152i.D(this.f35155l.getUid(), str, this.f35156m);
            }
            if (f()) {
                return;
            }
            if (D.getError() == 0) {
                l(D.getData());
            } else if (this.f35150g.size() <= 0) {
                k("网络异常，请重试");
            } else {
                l(new ArrayList());
            }
        } catch (Exception unused) {
            if (this.f35150g.size() <= 0) {
                i();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e() {
        this.f35145b.setVisibility(0);
        this.f35149f.setVisibility(8);
        this.f35148e.setVisibility(8);
    }

    boolean f() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void g() {
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void h() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i() {
        this.f35145b.setVisibility(8);
        this.f35149f.setVisibility(8);
        this.f35148e.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j() {
        this.f35149f.setVisibility(0);
        this.f35148e.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k(String str) {
        if (f()) {
            return;
        }
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l(List<LabelBean> list) {
        if (TextUtils.isEmpty(this.f35147d.getText().toString().trim())) {
            if (this.f35144a == 1) {
                this.f35153j.setVisibility(8);
            } else {
                this.f35153j.setText("推荐话题");
                this.f35153j.setPadding(com.join.mgps.Util.b0.a(this, 15.0f), 0, 0, 0);
                this.f35153j.setGravity(19);
                this.f35153j.setVisibility(0);
            }
            this.f35145b.setVisibility(0);
        } else if (list != null && list.size() > 0) {
            this.f35153j.setVisibility(8);
            this.f35145b.setVisibility(0);
        } else {
            this.f35153j.setText("无匹配结果");
            this.f35153j.setPadding(0, 0, 0, 0);
            this.f35153j.setGravity(17);
            this.f35153j.setVisibility(0);
            this.f35145b.setVisibility(8);
        }
        this.f35149f.setVisibility(8);
        this.f35148e.setVisibility(8);
        this.f35150g.clear();
        if (list != null && list.size() >= 0) {
            this.f35150g.addAll(list);
        }
        this.f35151h.notifyDataSetChanged();
    }
}
