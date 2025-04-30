package com.join.mgps.activity;

import android.content.Context;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBeanInfo;
import com.join.mgps.dto.CollectionModuleBean;
import com.join.mgps.dto.CollectionModuleDataBean;
import com.join.mgps.dto.CollectionModuleMessageBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.collection_three_fragment_layout)
/* loaded from: classes3.dex */
public class CollectionModuleThreeActivity extends BaseFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private Context f28956a;

    /* renamed from: b  reason: collision with root package name */
    private FragmentManager f28957b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<Fragment> f28958c;

    /* renamed from: d  reason: collision with root package name */
    private com.join.mgps.customview.d0 f28959d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    MViewpagerV4 f28960e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f28961f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f28962g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f28963h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f28964i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f28965j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f28966k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f28967l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f28968m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.d f28969n;

    /* renamed from: o  reason: collision with root package name */
    private int f28970o = 1;

    /* renamed from: p  reason: collision with root package name */
    private int f28971p;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    String f28972q;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    ExtBean f28973r;

    /* renamed from: s  reason: collision with root package name */
    private List<String> f28974s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            CollectionModuleThreeActivity collectionModuleThreeActivity = CollectionModuleThreeActivity.this;
            collectionModuleThreeActivity.f28966k.setText((CharSequence) collectionModuleThreeActivity.f28974s.get(i2));
            TextView textView = CollectionModuleThreeActivity.this.f28967l;
            textView.setText((i2 + 1) + net.lingala.zip4j.util.e.F0 + CollectionModuleThreeActivity.this.f28971p);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0(String str) {
        if (com.join.android.app.common.utils.f.j(this.f28956a)) {
            try {
                CollectionModuleBean c12 = this.f28969n.c1(G0(str, this.f28970o));
                if (c12 != null) {
                    CollectionModuleMessageBean messages = c12.getMessages();
                    if (messages != null) {
                        List<CollectionModuleDataBean> data = messages.getData();
                        if (data != null && data.size() > 0 && data.get(0) != null && data.get(0).getInfo() != null && data.get(0).getInfo().size() > 0 && data.get(0).getInfo().get(0) != null && data.get(0).getInfo().get(0).size() > 0) {
                            this.f28971p = data.get(0).getInfo().get(0).size();
                            I0(c12.getMessages().getData().get(0).getInfo().get(0));
                        } else {
                            showLodingFailed();
                        }
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

    public CommonRequestBean G0(String str, int i2) {
        return RequestBeanUtil.getInstance(this.f28956a).getCollectionRequestBean(str, i2, 100, "", "", this.f28973r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(List<CollectionDataBeanInfo> list) {
        this.f28960e.setVisibility(0);
        this.f28963h.setVisibility(0);
        this.f28962g.setVisibility(8);
        this.f28961f.setVisibility(8);
        if (this.f28971p > 0) {
            for (int i2 = 0; i2 < this.f28971p; i2++) {
                CollectionDataBeanInfo collectionDataBeanInfo = list.get(i2);
                this.f28974s.add(collectionDataBeanInfo.getMain().getCollection_title());
                com.join.mgps.fragment.v vVar = new com.join.mgps.fragment.v();
                vVar.O(collectionDataBeanInfo);
                try {
                    for (CollectionBeanSub collectionBeanSub : collectionDataBeanInfo.getSub()) {
                        ExtBean extBean = this.f28973r;
                        if (extBean != null && extBean.get_from_type() == 134) {
                            collectionBeanSub.set_from(13401);
                            collectionBeanSub.set_from_type(13401);
                        } else {
                            collectionBeanSub.set_from(111);
                            collectionBeanSub.set_from_type(121);
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                this.f28958c.add(vVar);
            }
            this.f28959d.d(this.f28958c, this.f28974s);
            this.f28959d.notifyDataSetChanged();
            this.f28960e.setAdapter(this.f28959d);
            this.f28960e.setOffscreenPageLimit(4);
            this.f28960e.setOnPageChangeListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f28969n = com.join.mgps.rpc.impl.c.P1();
        try {
            this.f28956a = this;
            this.f28957b = getSupportFragmentManager();
            this.f28974s = new ArrayList();
            ArrayList<Fragment> arrayList = new ArrayList<>();
            this.f28958c = arrayList;
            this.f28959d = new com.join.mgps.customview.d0(this.f28957b, arrayList, this.f28974s);
            showLoding();
            String str = this.f28972q;
            if (str != null) {
                F0(str);
            } else {
                showLodingFailed();
            }
            this.f28960e.setIntercept(false);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f28970o = 1;
        showLoding();
        F0(this.f28972q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f28956a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f28960e.setVisibility(8);
        this.f28963h.setVisibility(8);
        this.f28961f.setVisibility(0);
        this.f28962g.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.f28960e.setVisibility(8);
        this.f28963h.setVisibility(8);
        this.f28962g.setVisibility(0);
        this.f28961f.setVisibility(8);
    }
}
