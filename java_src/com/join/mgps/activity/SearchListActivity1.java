package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.SearchHintActivity;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.db.tables.SearchRecordTable;
import com.join.mgps.dto.ClassfyTypeBean;
import com.join.mgps.dto.ClassifyGameTagBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchAutoBean;
import com.join.mgps.dto.SearchAutoDataBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.fragment.r4;
import com.join.mgps.fragment.t4;
import com.nineoldandroids.animation.a;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.zhy.view.flowlayout.TagFlowLayout3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.search_list_activity1)
/* loaded from: classes.dex */
public class SearchListActivity1 extends BaseAppCompatActivity {
    private SearchAutoBean D;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    View f35183a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f35184b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TagFlowLayout3 f35185c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TagFlowLayout3 f35186d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    EditText f35187e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TabLayout f35188f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ViewPager f35189g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ListView f35190h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f35191i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f35192j;

    /* renamed from: k  reason: collision with root package name */
    com.join.mgps.rpc.d f35193k;

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.customview.d0 f35194l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    int f35195m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    String f35196n;
    @Extra

    /* renamed from: p  reason: collision with root package name */
    boolean f35198p;

    /* renamed from: s  reason: collision with root package name */
    int f35201s;

    /* renamed from: t  reason: collision with root package name */
    int f35202t;

    /* renamed from: u  reason: collision with root package name */
    private Context f35203u;

    /* renamed from: y  reason: collision with root package name */
    i f35207y;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    String f35197o = "";

    /* renamed from: q  reason: collision with root package name */
    List<ClassifyGameTagBean> f35199q = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    List<String> f35200r = new ArrayList();

    /* renamed from: v  reason: collision with root package name */
    private ArrayList<Fragment> f35204v = new ArrayList<>();

    /* renamed from: w  reason: collision with root package name */
    private List<String> f35205w = new ArrayList();

    /* renamed from: x  reason: collision with root package name */
    boolean f35206x = true;

    /* renamed from: z  reason: collision with root package name */
    List<DownloadTask> f35208z = new ArrayList();
    Map<String, DownloadTask> A = new ConcurrentHashMap();
    private int B = 0;
    private int C = 0;
    List<CollectionBeanSubBusiness> E = new ArrayList();
    private List<Object> F = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements TabLayout.d {
        a() {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void a(TabLayout.g gVar) {
            if (gVar.k() == 0) {
                SearchListActivity1.this.f35191i.setVisibility(0);
            } else {
                SearchListActivity1.this.f35191i.setVisibility(8);
                if (SearchListActivity1.this.f35192j.getVisibility() == 0) {
                    SearchListActivity1.this.P0(false);
                }
            }
            SearchListActivity1.this.d1(gVar);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g gVar) {
            SearchListActivity1.this.d1(gVar);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g gVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnKeyListener {
        b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            if (i2 == 66) {
                SearchListActivity1.this.search();
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            if (charSequence.length() > 0) {
                SearchListActivity1 searchListActivity1 = SearchListActivity1.this;
                if (searchListActivity1.f35206x) {
                    searchListActivity1.N0(searchListActivity1.f35187e.getText().toString());
                } else {
                    searchListActivity1.f35206x = true;
                }
                SearchListActivity1.this.f35183a.setVisibility(0);
                return;
            }
            SearchListActivity1.this.f35183a.setVisibility(8);
            SearchListActivity1.this.f35190h.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1.this.P0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements AdapterView.OnItemClickListener {
        e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            Object obj = SearchListActivity1.this.F.get(i2);
            SearchListActivity1.this.f35190h.setVisibility(8);
            if (obj instanceof SearchAutoDataBean) {
                SearchListActivity1.this.f35206x = false;
                SearchAutoDataBean searchAutoDataBean = (SearchAutoDataBean) obj;
                String str = searchAutoDataBean.getGame_name().toString();
                SearchListActivity1.this.f35196n = searchAutoDataBean.getCrc_sign_id();
                SearchListActivity1.this.b1(str);
                SearchListActivity1.this.f35187e.setText(str);
                SearchListActivity1.this.f35187e.setSelection(str.length());
                SearchListActivity1.this.V0();
                y1.a.b(SearchListActivity1.this.f35187e);
            } else if (obj instanceof CollectionBeanSub) {
                CollectionBeanSub collectionBeanSub = (CollectionBeanSub) obj;
                IntentUtil.getInstance().intentActivity(SearchListActivity1.this.f35203u, collectionBeanSub.getIntentDataBean());
                Ext ext = new Ext();
                ext.setPosition("searchSuggest");
                ext.setGameId(collectionBeanSub.getGame_id());
                com.papa.sim.statistic.p.l(SearchListActivity1.this.f35203u).K1(Event.clickDetailFromSearchResult, ext);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1.this.h1(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements a.InterfaceC0259a {
        g() {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void b(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void c(com.nineoldandroids.animation.a aVar) {
            SearchListActivity1.this.f35184b.setVisibility(0);
            SearchListActivity1.this.f35192j.setVisibility(0);
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements a.InterfaceC0259a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f35216a;

        h(boolean z3) {
            this.f35216a = z3;
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void a(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void b(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void c(com.nineoldandroids.animation.a aVar) {
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0259a
        public void d(com.nineoldandroids.animation.a aVar) {
            SearchListActivity1.this.f35184b.setVisibility(8);
            SearchListActivity1.this.f35192j.setVisibility(8);
            if (this.f35216a) {
                int selectedPosition = SearchListActivity1.this.f35186d.getSelectedPosition();
                int id = selectedPosition < SearchListActivity1.this.f35199q.size() ? SearchListActivity1.this.f35199q.get(selectedPosition).getId() : 0;
                int i2 = SearchListActivity1.this.f35185c.getSelectedPosition() != 0 ? 1 : 0;
                SearchListActivity1 searchListActivity1 = SearchListActivity1.this;
                if (id == searchListActivity1.f35201s && i2 == searchListActivity1.f35202t) {
                    return;
                }
                searchListActivity1.V0();
            }
        }
    }

    private void O0() {
        if (this.f35188f.getTabCount() == 0) {
            return;
        }
        for (int i2 = 0; i2 < this.f35188f.getTabCount(); i2++) {
            View inflate = LayoutInflater.from(this).inflate(R.layout.search_tab_item_layout, (ViewGroup) null);
            ((TextView) inflate.findViewById(R.id.f17875tv)).setText(this.f35205w.get(i2));
            this.f35188f.z(i2).v(inflate);
        }
        TextView textView = (TextView) this.f35188f.z(0).g().findViewById(R.id.f17875tv);
        textView.setTextColor(-16777216);
        textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
        textView.setTypeface(textView.getTypeface(), 1);
        this.f35188f.z(0).g().findViewById(R.id.iv).setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void T0(View view, int i2, ViewGroup viewGroup) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U0(View view, int i2, ViewGroup viewGroup) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1(String str) {
        List<SearchRecordTable> d4 = n1.h0.n().d();
        if (d4 == null && d4.size() == 0) {
            SearchRecordTable searchRecordTable = new SearchRecordTable();
            searchRecordTable.setName(str);
            searchRecordTable.setCreate_time(System.currentTimeMillis());
            n1.h0.n().m(searchRecordTable);
        } else if (d4.size() > 100) {
            n1.h0.n().delete((Collection) n1.h0.n().i(10L, d4.size(), "create_time", false));
        } else {
            for (SearchRecordTable searchRecordTable2 : d4) {
                if (searchRecordTable2.getName().equals(str)) {
                    n1.h0.n().delete((n1.h0) searchRecordTable2);
                }
            }
            SearchRecordTable searchRecordTable3 = new SearchRecordTable();
            searchRecordTable3.setName(str);
            searchRecordTable3.setCreate_time(System.currentTimeMillis());
            n1.h0.n().m(searchRecordTable3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1(TabLayout.g gVar) {
        if (this.f35188f.getTabCount() == 0) {
            return;
        }
        for (int i2 = 0; i2 < this.f35188f.getTabCount(); i2++) {
            View g4 = this.f35188f.z(i2).g();
            if (g4 != null) {
                if (i2 == gVar.k()) {
                    g4.findViewById(R.id.iv).setVisibility(0);
                    TextView textView = (TextView) g4.findViewById(R.id.f17875tv);
                    textView.setTextColor(-16777216);
                    textView.setTypeface(textView.getTypeface(), 1);
                    textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
                } else {
                    g4.findViewById(R.id.iv).setVisibility(4);
                    TextView textView2 = (TextView) g4.findViewById(R.id.f17875tv);
                    textView2.setTextColor(Color.parseColor("#535353"));
                    textView2.setTypeface(textView2.getTypeface(), 0);
                    textView2.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp28));
                }
            }
        }
    }

    private void i1(List<CollectionBeanSubBusiness> list) {
        if (this.f35208z == null) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            for (DownloadTask downloadTask : this.f35208z) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.A.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.A.get(mod_info.getMod_game_id());
                    z3 = (downloadTask3 == null || downloadTask3.getStatus() != 5) ? false : false;
                    if (z3 && z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else if (z3) {
                        if (collectionBeanSubBusiness.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else if (z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else {
                        DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? g1.f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                        if (B == null) {
                            B = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                        }
                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    }
                } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                }
            }
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f35208z.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.A.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.E) {
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.A.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.A.get(collectionBeanSubBusiness.getGame_id());
                        if (downloadTask2 == null && downloadTask3 == null) {
                            collectionBeanSubBusiness.setDownloadTask(null);
                        } else if (downloadTask2 != null) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask2);
                        } else if (downloadTask3 != null) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask3);
                        } else if (collectionBeanSubBusiness.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(null);
                        }
                    } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        collectionBeanSubBusiness.setDownloadTask(null);
                    }
                }
            }
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.A;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.f35207y.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.D3(this.f35208z);
        if (!this.A.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f35208z.add(downloadTask);
            this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        this.f35207y.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.A;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f35208z.add(downloadTask);
            this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.A.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f35207y.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.E) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.A.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.A.get(mod_info.getMod_game_id());
                    if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                        z3 = false;
                    }
                    if (z3 && z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else if (z3) {
                        if (collectionBeanSubBusiness.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else if (z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    } else {
                        DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? g1.f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                        if (B == null) {
                            B = g1.f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                        }
                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                        }
                    }
                } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                }
            }
            this.f35207y.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i2 = 0; i2 <= 2 && !(this.f35190h.getItemAtPosition(i2) instanceof SearchAutoDataBean); i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f35190h.getItemAtPosition(i2);
            if (collectionBeanSubBusiness != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f35190h.getChildAt(i2 - this.C);
                if (childAt.getTag() instanceof SearchHintActivity.p) {
                    SearchHintActivity.p pVar = (SearchHintActivity.p) childAt.getTag();
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = pVar.f35105j;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = pVar.f35105j;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            pVar.f35109n.setProgress((int) f4.getProgress());
                        } else {
                            pVar.f35108m.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = pVar.f35107l;
                            textView3.setText(f4.getSpeed() + "/S");
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    public CommonRequestBean K0(String str) {
        return RequestBeanUtil.getInstance(this.f35203u).getSearchAutoRequestBean("searchAuto", str, 1, 20, 0, 0);
    }

    public int L0() {
        if (this.f35195m != 0) {
            return 0;
        }
        if (this.f35185c.getSelectedPosition() == 0) {
            this.f35202t = 0;
        } else {
            this.f35202t = 1;
        }
        return this.f35202t;
    }

    public int M0() {
        if (this.f35195m != 0) {
            return 0;
        }
        int selectedPosition = this.f35186d.getSelectedPosition();
        if (selectedPosition < this.f35199q.size()) {
            this.f35201s = this.f35199q.get(selectedPosition).getId();
        }
        return this.f35201s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0(String str) {
        List<SearchAutoDataBean> arrayList = new ArrayList<>();
        try {
            if (com.join.android.app.common.utils.f.j(this.f35203u)) {
                try {
                    SearchAutoBean e4 = this.f35193k.e(K0(str));
                    this.D = e4;
                    arrayList = e4.getMessages().getData().getSearch_list();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        } finally {
            j1(arrayList, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(boolean z3) {
        com.nineoldandroids.animation.l r02 = com.nineoldandroids.animation.l.r0(this.f35192j, "scaleY", 1.0f, 0.0f);
        this.f35192j.setPivotY(0.0f);
        com.nineoldandroids.animation.l r03 = com.nineoldandroids.animation.l.r0(this.f35192j, "alpha", 1.0f, 0.0f);
        com.nineoldandroids.animation.l r04 = com.nineoldandroids.animation.l.r0(this.f35184b, "alpha", 1.0f, 0.0f);
        com.nineoldandroids.animation.d dVar = new com.nineoldandroids.animation.d();
        dVar.k(200L);
        dVar.a(new h(z3));
        dVar.C(r02, r03, r04);
        dVar.q();
    }

    void Q0() {
        this.f35186d.setListener(new TagFlowLayout3.b() { // from class: com.join.mgps.activity.q2
            @Override // com.zhy.view.flowlayout.TagFlowLayout3.b
            public final void a(View view, int i2, ViewGroup viewGroup) {
                SearchListActivity1.T0(view, i2, viewGroup);
            }
        });
        ArrayList arrayList = new ArrayList();
        arrayList.add(LocalGameActivity.f32927r);
        arrayList.add("中文");
        this.f35185c.setData(arrayList);
        this.f35185c.setListener(new TagFlowLayout3.b() { // from class: com.join.mgps.activity.r2
            @Override // com.zhy.view.flowlayout.TagFlowLayout3.b
            public final void a(View view, int i2, ViewGroup viewGroup) {
                SearchListActivity1.U0(view, i2, viewGroup);
            }
        });
        W0();
    }

    public boolean R0(String str) {
        String str2 = this.f35197o;
        return (str2 == null || str == null || str2.equals(str)) ? false : true;
    }

    public String S0() {
        EditText editText = this.f35187e;
        if (editText != null) {
            this.f35197o = editText.getText().toString();
        }
        return this.f35197o;
    }

    void V0() {
        this.f35197o = S0();
        com.join.mgps.customview.d0 d0Var = this.f35194l;
        if (d0Var == null || !(d0Var.getItem(this.f35189g.getCurrentItem()) instanceof l1.i)) {
            return;
        }
        ((l1.i) this.f35194l.getItem(this.f35189g.getCurrentItem())).J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ResultMainBean<ClassfyTypeBean> M0 = this.f35193k.M0(RequestBeanUtil.getInstance(this).getClassifyGameBean(1, 1));
                if (M0 == null || M0.getFlag() != 1 || M0.getMessages() == null) {
                    return;
                }
                c1(M0.getMessages().getData());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.iv_filter})
    public void X0() {
        if (this.f35192j.getVisibility() == 0) {
            P0(true);
        } else {
            this.f35192j.postDelayed(new f(), 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.tv_filter_close})
    public void Y0() {
        P0(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.tv_filter_confirm})
    public void Z0() {
        P0(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void a1() {
        List<DownloadTask> d4 = g1.f.G().d();
        this.f35208z = d4;
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f35208z) {
            if (downloadTask.getCrc_link_type_val() != null) {
                this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f35203u = this;
        this.f35193k = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        Q0();
        com.join.mgps.customview.d0 d0Var = new com.join.mgps.customview.d0(getSupportFragmentManager(), this.f35204v, this.f35205w);
        this.f35194l = d0Var;
        this.f35189g.setAdapter(d0Var);
        this.f35189g.setOffscreenPageLimit(4);
        String[] strArr = {LocalGameActivity.f32927r, "游戏", "游戏单", "帖子"};
        this.f35204v.add(r4.C0().b(1).c(this.f35196n).d(this.f35197o).build());
        this.f35205w.add(strArr[1]);
        this.f35204v.add(t4.D0().b(2).c(this.f35196n).d(this.f35197o).build());
        this.f35205w.add(strArr[2]);
        this.f35204v.add(t4.D0().b(3).c(this.f35196n).d(this.f35197o).build());
        this.f35205w.add(strArr[3]);
        this.f35194l.d(this.f35204v, this.f35205w);
        this.f35194l.notifyDataSetChanged();
        this.f35188f.setupWithViewPager(this.f35189g);
        O0();
        this.f35188f.d(new a());
        a1();
        this.f35187e.setText(this.f35197o);
        if (!TextUtils.isEmpty(this.f35197o)) {
            this.f35187e.setSelection(this.f35197o.length());
        }
        this.f35187e.setOnKeyListener(new b());
        this.f35187e.addTextChangedListener(new c());
        this.f35184b.setOnClickListener(new d());
        if (this.f35195m != 0) {
            this.f35191i.setVisibility(8);
        }
        e1(this.f35195m);
        i iVar = new i(this.f35203u, this.F);
        this.f35207y = iVar;
        this.f35190h.setAdapter((ListAdapter) iVar);
        this.f35190h.setOnItemClickListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1(ClassfyTypeBean classfyTypeBean) {
        if (classfyTypeBean == null) {
            return;
        }
        this.f35199q.clear();
        this.f35200r.clear();
        ClassifyGameTagBean classifyGameTagBean = new ClassifyGameTagBean();
        classifyGameTagBean.setId(0);
        classifyGameTagBean.setTitle(LocalGameActivity.f32927r);
        this.f35199q.add(0, classifyGameTagBean);
        this.f35199q.addAll(classfyTypeBean.getGame_type());
        for (ClassifyGameTagBean classifyGameTagBean2 : this.f35199q) {
            this.f35200r.add(classifyGameTagBean2.getTitle());
        }
        this.f35186d.setData(this.f35200r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void clear() {
        this.f35187e.setText("");
    }

    public void e1(int i2) {
        ViewPager viewPager = this.f35189g;
        if (viewPager != null) {
            viewPager.setCurrentItem(i2);
        }
    }

    public void f1(int i2) {
        this.f35195m = i2;
        if (i2 == 0) {
            if (this.f35184b.getVisibility() == 0) {
                P0(true);
            }
            this.f35191i.setVisibility(0);
            return;
        }
        if (this.f35184b.getVisibility() == 0) {
            P0(true);
        }
        this.f35191i.setVisibility(8);
    }

    public void g1() {
        ListView listView = this.f35190h;
        if (listView != null) {
            listView.setVisibility(0);
        }
    }

    public String getGameId() {
        return this.f35196n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h1(int i2) {
        com.nineoldandroids.animation.l r02 = com.nineoldandroids.animation.l.r0(this.f35192j, "scaleY", 0.0f, 1.0f);
        this.f35192j.setPivotY(0.0f);
        com.nineoldandroids.animation.l r03 = com.nineoldandroids.animation.l.r0(this.f35192j, "alpha", 0.0f, 1.0f);
        com.nineoldandroids.animation.l r04 = com.nineoldandroids.animation.l.r0(this.f35184b, "alpha", 0.0f, 1.0f);
        com.nineoldandroids.animation.d dVar = new com.nineoldandroids.animation.d();
        dVar.k(200L);
        dVar.a(new g());
        dVar.C(r02, r03, r04);
        dVar.q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j1(List<SearchAutoDataBean> list, String str) {
        this.F.clear();
        SearchAutoBean searchAutoBean = this.D;
        if (searchAutoBean != null && searchAutoBean.getMessages() != null && this.D.getMessages().getData() != null && this.D.getMessages().getData().getGame_list() != null) {
            this.E.clear();
            for (CollectionBeanSub collectionBeanSub : this.D.getMessages().getData().getGame_list()) {
                collectionBeanSub.set_from(103);
                collectionBeanSub.set_from_type(112);
                collectionBeanSub.setReMarks("0");
                CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                this.F.add(collectionBeanSubBusiness);
                this.E.add(collectionBeanSubBusiness);
            }
            i1(this.E);
        }
        if (list != null && list.size() > 0) {
            this.F.addAll(list);
        }
        List<Object> list2 = this.F;
        this.f35198p = list2 == null || list2.size() <= 0;
        this.f35190h.setVisibility(0);
        this.f35207y.notifyDataSetChanged();
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f35192j.getVisibility() == 0) {
            P0(true);
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    a4.setStatus(7);
                    updateUI(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.A;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    updateProgressPartly();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            if (a4 == null) {
                                return;
                            }
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            String string = extras.getString("keyword");
            if (com.join.mgps.Util.d2.i(string)) {
                this.f35206x = false;
                this.f35187e.setText(string);
                V0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void search() {
        this.f35190h.setVisibility(8);
        this.f35196n = "";
        try {
            if (this.f35187e.getText().toString().length() > 0) {
                b1(this.f35187e.getText().toString());
                V0();
            }
            this.f35187e.clearFocus();
            y1.a.b(this.f35187e);
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void updateUI(DownloadTask downloadTask, int i2) {
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
                default:
                    return;
                case 5:
                    receiveSuccess(downloadTask);
                    return;
                case 6:
                    receiveError(downloadTask);
                    return;
            }
        }
    }

    /* loaded from: classes3.dex */
    public class i extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private Context f35218a;

        /* renamed from: b  reason: collision with root package name */
        private LayoutInflater f35219b;

        /* renamed from: c  reason: collision with root package name */
        private List<Object> f35220c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SearchAutoDataBean f35222a;

            a(SearchAutoDataBean searchAutoDataBean) {
                this.f35222a = searchAutoDataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                i.this.f35220c.remove(this.f35222a);
                i.this.notifyDataSetChanged();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class b {

            /* renamed from: a  reason: collision with root package name */
            public ImageView f35224a;

            /* renamed from: b  reason: collision with root package name */
            public ImageView f35225b;

            /* renamed from: c  reason: collision with root package name */
            public View f35226c;

            /* renamed from: d  reason: collision with root package name */
            public TextView f35227d;

            private b() {
            }

            /* synthetic */ b(i iVar, a aVar) {
                this();
            }
        }

        public i(Context context) {
            this.f35218a = context;
        }

        public View b(int i2, View view, ViewGroup viewGroup) {
            b bVar;
            if (view == null) {
                view = this.f35219b.inflate(R.layout.simple_listview_item1, (ViewGroup) null);
                bVar = new b(this, null);
                bVar.f35227d = (TextView) view.findViewById(R.id.lv_tv_title);
                bVar.f35225b = (ImageView) view.findViewById(R.id.dotHistory);
                bVar.f35226c = view.findViewById(R.id.rlClearHistory);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            SearchAutoDataBean searchAutoDataBean = (SearchAutoDataBean) this.f35220c.get(i2);
            bVar.f35227d.setText(searchAutoDataBean.getGame_name());
            if (searchAutoDataBean.getIsHistory()) {
                if (bVar.f35225b.getVisibility() != 0) {
                    bVar.f35225b.setVisibility(0);
                }
                if (bVar.f35226c.getVisibility() != 0) {
                    bVar.f35226c.setVisibility(0);
                }
                bVar.f35226c.setOnClickListener(new a(searchAutoDataBean));
            } else {
                if (bVar.f35225b.getVisibility() != 8) {
                    bVar.f35225b.setVisibility(8);
                }
                if (bVar.f35226c.getVisibility() != 8) {
                    bVar.f35226c.setVisibility(8);
                }
            }
            return view;
        }

        public View c(int i2, View view, ViewGroup viewGroup) {
            SearchHintActivity.p pVar;
            View view2;
            if (view == null) {
                View inflate = this.f35219b.inflate(R.layout.searchauto_app_listview_item, (ViewGroup) null);
                SearchHintActivity.p pVar2 = new SearchHintActivity.p();
                pVar2.f35096a = (SimpleDraweeView) inflate.findViewById(R.id.mgListviewItemIcon);
                pVar2.f35097b = (ImageView) inflate.findViewById(R.id.giftPackageSwich);
                pVar2.f35098c = (TextView) inflate.findViewById(R.id.mgListviewItemAppname);
                pVar2.f35099d = (RelativeLayout) inflate.findViewById(R.id.rLayoutRight);
                pVar2.f35100e = (TextView) inflate.findViewById(R.id.mgListviewItemInstall);
                pVar2.f35102g = (TextView) inflate.findViewById(R.id.mgListviewItemDescribe);
                pVar2.f35103h = (LinearLayout) inflate.findViewById(R.id.linearLayout2);
                pVar2.f35104i = (LinearLayout) inflate.findViewById(R.id.tipsLayout);
                pVar2.f35105j = (TextView) inflate.findViewById(R.id.appSize);
                pVar2.f35107l = (TextView) inflate.findViewById(R.id.loding_info);
                pVar2.f35108m = (ProgressBar) inflate.findViewById(R.id.progressBar);
                pVar2.f35109n = (ProgressBar) inflate.findViewById(R.id.progressBarZip);
                pVar2.f35101f = inflate.findViewById(R.id.line);
                pVar2.f35106k = (TextView) inflate.findViewById(R.id.tipSText);
                inflate.setTag(pVar2);
                pVar = pVar2;
                view2 = inflate;
            } else {
                pVar = (SearchHintActivity.p) view.getTag();
                view2 = view;
            }
            pVar.f35101f.setVisibility(0);
            CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) this.f35220c.get(i2);
            DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
            if (collectionBeanSubBusiness.getGift_package_switch() == 1) {
                pVar.f35097b.setVisibility(8);
            } else {
                pVar.f35097b.setVisibility(8);
            }
            pVar.f35098c.setText(collectionBeanSubBusiness.getGame_name());
            pVar.f35102g.setText(collectionBeanSubBusiness.getInfo());
            long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
            MyImageLoader.h(pVar.f35096a, collectionBeanSubBusiness.getIco_remote().trim());
            collectionBeanSubBusiness.getTag_info();
            TextView textView = pVar.f35106k;
            textView.setText(collectionBeanSubBusiness.getSp_tag_info().getModel().getName() + "  " + UtilsMy.Y1(parseDouble));
            String plugin_num = collectionBeanSubBusiness.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                pVar.f35100e.setText("开始");
                pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_blue_color));
                pVar.f35104i.setVisibility(8);
                pVar.f35097b.setVisibility(8);
            } else if (downloadTask == null) {
                d(pVar, Boolean.TRUE, Boolean.FALSE);
                if (UtilsMy.e0(collectionBeanSubBusiness.getTag_info())) {
                    if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) <= 0 ? com.join.android.app.common.utils.a.g0(this.f35218a).c(this.f35218a, collectionBeanSubBusiness.getPackage_name()) : false) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f35218a).k(this.f35218a, collectionBeanSubBusiness.getPackage_name());
                        if (com.join.mgps.Util.d2.i(collectionBeanSubBusiness.getVer()) && k4.d() < Integer.parseInt(collectionBeanSubBusiness.getVer())) {
                            pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                            pVar.f35100e.setText("更新");
                            pVar.f35100e.setTextColor(-9263087);
                        } else {
                            pVar.f35100e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            pVar.f35100e.setText(this.f35218a.getResources().getString(R.string.download_status_finished));
                            pVar.f35100e.setTextColor(-688602);
                        }
                    } else {
                        pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                        UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                        UtilsMy.n2(pVar.f35100e, pVar.f35099d, collectionBeanSubBusiness);
                    }
                } else {
                    pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                    UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                    UtilsMy.n2(pVar.f35100e, pVar.f35099d, collectionBeanSubBusiness);
                }
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status == 27) {
                        pVar.f35100e.setText("暂停中");
                    } else if (status == 48) {
                        pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                        pVar.f35100e.setText("安装中");
                        pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_blue_color));
                        d(pVar, Boolean.TRUE, Boolean.FALSE);
                    } else if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                if (status != 6) {
                                    if (status != 7) {
                                        if (status != 42) {
                                            if (status != 43) {
                                                switch (status) {
                                                    case 9:
                                                        pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                                                        pVar.f35100e.setText("更新");
                                                        pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_green_color));
                                                        d(pVar, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 10:
                                                        pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                                                        pVar.f35100e.setText("等待");
                                                        pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_blue_color));
                                                        Boolean bool = Boolean.FALSE;
                                                        d(pVar, bool, bool);
                                                        TextView textView2 = pVar.f35105j;
                                                        textView2.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        try {
                                                            pVar.f35108m.setProgress((int) downloadTask.getProgress());
                                                        } catch (Exception e4) {
                                                            e4.printStackTrace();
                                                        }
                                                        pVar.f35107l.setText("等待中");
                                                        break;
                                                    case 11:
                                                        pVar.f35100e.setBackgroundResource(R.drawable.recom_green_butn);
                                                        pVar.f35100e.setText("安装");
                                                        pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_green_color));
                                                        d(pVar, Boolean.TRUE, Boolean.FALSE);
                                                        break;
                                                    case 12:
                                                        d(pVar, Boolean.FALSE, Boolean.TRUE);
                                                        TextView textView3 = pVar.f35105j;
                                                        textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        pVar.f35107l.setText("解压中..");
                                                        pVar.f35109n.setProgress((int) downloadTask.getProgress());
                                                        pVar.f35100e.setBackgroundResource(R.drawable.extract);
                                                        pVar.f35100e.setText("解压中");
                                                        pVar.f35100e.setTextColor(-4868683);
                                                        break;
                                                    case 13:
                                                        d(pVar, Boolean.FALSE, Boolean.TRUE);
                                                        TextView textView4 = pVar.f35105j;
                                                        textView4.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                        pVar.f35107l.setText("点击重新解压");
                                                        pVar.f35109n.setProgress((int) downloadTask.getProgress());
                                                        pVar.f35100e.setBackgroundResource(R.drawable.reextract);
                                                        pVar.f35100e.setText("解压");
                                                        pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_grey_color));
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            pVar.f35100e.setBackgroundResource(R.drawable.recom_maincolor_butn);
                            pVar.f35100e.setText(this.f35218a.getResources().getString(R.string.download_status_finished));
                            pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_main_color));
                            Boolean bool2 = Boolean.TRUE;
                            d(pVar, bool2, bool2);
                        }
                        pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                        pVar.f35100e.setText("继续");
                        pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_blue_color));
                        Boolean bool3 = Boolean.FALSE;
                        d(pVar, bool3, bool3);
                        try {
                            if (downloadTask.getSize() == 0) {
                                TextView textView5 = pVar.f35105j;
                                textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            } else {
                                TextView textView6 = pVar.f35105j;
                                textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                            }
                            pVar.f35108m.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        pVar.f35107l.setText("暂停中");
                    } else {
                        UtilsMy.C3(downloadTask);
                        pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                        pVar.f35100e.setText("暂停");
                        pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_blue_color));
                        Boolean bool4 = Boolean.FALSE;
                        d(pVar, bool4, bool4);
                        if (downloadTask.getSize() == 0) {
                            TextView textView7 = pVar.f35105j;
                            textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView8 = pVar.f35105j;
                            textView8.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        pVar.f35108m.setProgress((int) downloadTask.getProgress());
                        String speed = downloadTask.getSpeed();
                        TextView textView9 = pVar.f35107l;
                        textView9.setText(speed + "/S");
                    }
                }
                pVar.f35100e.setBackgroundResource(R.drawable.recom_blue_butn);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.n2(pVar.f35100e, pVar.f35099d, collectionBeanSubBusiness);
                pVar.f35100e.setTextColor(this.f35218a.getResources().getColor(R.color.app_blue_color));
                d(pVar, Boolean.TRUE, Boolean.FALSE);
            }
            pVar.f35099d.setOnClickListener(new SearchHintActivity.l(collectionBeanSubBusiness, this.f35218a, SearchListActivity1.this.f35197o));
            return view2;
        }

        void d(SearchHintActivity.p pVar, Boolean bool, Boolean bool2) {
            if (bool.booleanValue()) {
                pVar.f35103h.setVisibility(8);
                pVar.f35108m.setVisibility(8);
                pVar.f35109n.setVisibility(8);
                pVar.f35104i.setVisibility(0);
                pVar.f35102g.setVisibility(8);
                return;
            }
            pVar.f35103h.setVisibility(0);
            if (bool2.booleanValue()) {
                pVar.f35108m.setVisibility(8);
                pVar.f35109n.setVisibility(0);
            } else {
                pVar.f35109n.setVisibility(8);
                pVar.f35108m.setVisibility(0);
            }
            pVar.f35104i.setVisibility(8);
            pVar.f35102g.setVisibility(8);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f35220c.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<Object> list = this.f35220c;
            if (list == null || i2 < 0 || i2 >= list.size()) {
                return null;
            }
            return this.f35220c.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return this.f35220c.get(i2) instanceof SearchAutoDataBean ? 1 : 2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (getItemViewType(i2) == 1) {
                return b(i2, view, viewGroup);
            }
            return c(i2, view, viewGroup);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
        }

        public i(Context context, List<Object> list) {
            this.f35218a = context;
            this.f35220c = list;
            this.f35219b = LayoutInflater.from(context);
        }
    }
}
