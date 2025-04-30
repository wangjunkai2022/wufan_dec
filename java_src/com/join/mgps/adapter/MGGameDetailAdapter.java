package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentAllListActivity_;
import com.join.mgps.activity.CommentCreatActivity_;
import com.join.mgps.activity.DetialMoreServiceListActivity_;
import com.join.mgps.activity.GameDetialGiftMoreActivity_;
import com.join.mgps.activity.GameDetialInformationMoreActivity_;
import com.join.mgps.activity.GiftsDetailActivity_;
import com.join.mgps.activity.HotVoucherActivity_;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.MyVoucherGameActivity_;
import com.join.mgps.activity.UpdateRecordActivity_;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.customview.CarouselViewPager2;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherStatus;
import com.join.mgps.dto.AccountVoucherStatusBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.BannerImage;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.DetialIntentBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameCommitListBean;
import com.join.mgps.dto.GameDetialBookTag;
import com.join.mgps.dto.GameDetialStrategyItem;
import com.join.mgps.dto.GameDetialStrategyTag;
import com.join.mgps.dto.GamePromptBean;
import com.join.mgps.dto.GameVoucherBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.RecommendAdInfoBean;
import com.join.mgps.dto.RecommendAdInfoData;
import com.join.mgps.dto.RecommendGameBean;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.TipBean;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class MGGameDetailAdapter extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final String f40856a;

    /* renamed from: b  reason: collision with root package name */
    private int f40857b;

    /* renamed from: d  reason: collision with root package name */
    private final RelativeLayout f40859d;

    /* renamed from: e  reason: collision with root package name */
    private Context f40860e;

    /* renamed from: f  reason: collision with root package name */
    private DetailResultBeanV3 f40861f;

    /* renamed from: n  reason: collision with root package name */
    private Drawable f40869n;

    /* renamed from: o  reason: collision with root package name */
    private Drawable f40870o;

    /* renamed from: p  reason: collision with root package name */
    private Handler f40871p;

    /* renamed from: r  reason: collision with root package name */
    private List<y0> f40873r;

    /* renamed from: s  reason: collision with root package name */
    private LinearLayout.LayoutParams f40874s;

    /* renamed from: t  reason: collision with root package name */
    private u0 f40875t;

    /* renamed from: v  reason: collision with root package name */
    private TextView f40877v;

    /* renamed from: w  reason: collision with root package name */
    private TextView f40878w;

    /* renamed from: c  reason: collision with root package name */
    String f40858c = getClass().getSimpleName();

    /* renamed from: g  reason: collision with root package name */
    private boolean f40862g = true;

    /* renamed from: h  reason: collision with root package name */
    private List<String> f40863h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private boolean f40864i = false;

    /* renamed from: j  reason: collision with root package name */
    private int f40865j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f40866k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f40867l = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f40868m = 0;

    /* renamed from: q  reason: collision with root package name */
    private List<RecommendGameBean> f40872q = new ArrayList();

    /* renamed from: u  reason: collision with root package name */
    private boolean f40876u = true;

    /* renamed from: x  reason: collision with root package name */
    v0 f40879x = null;

    /* renamed from: y  reason: collision with root package name */
    long f40880y = System.currentTimeMillis();

    /* loaded from: classes3.dex */
    public enum ViewType {
        TITLE,
        VIEWPAGE,
        UPDATE_RECORD,
        WEB,
        GAME_GIFTS,
        GAMEAD,
        MESSAGE,
        RECOMMEND,
        INFORMATION,
        COMMIT_HEADER,
        COMMIT,
        COMMIT_REPLY,
        COMMIT_FOOTER,
        GAME_ITEM_TOP,
        GAME_GIFTS_ITEM,
        GAME_GIFTS_BOTTOM,
        VOUCHER,
        DETIAL_ADGROUP,
        INFORMATIONTOP,
        SERVICEITEM,
        STRAYTEGYTABLE,
        STRAYTEGYITEM_IMAGE,
        STRAYTEGYITEM_NOIMAGE,
        GAME_FAST_ENTRY,
        GIFT_AND_SERVICE,
        NULLITEM
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40881a;

        a(List list) {
            this.f40881a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f40881a;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, ((BannerBean) this.f40881a.get(0)).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGGameDetailAdapter.this.f40875t != null) {
                MGGameDetailAdapter.this.f40875t.a(Boolean.valueOf(MGGameDetailAdapter.this.f40876u));
                ImageView imageView = (ImageView) view;
                if (MGGameDetailAdapter.this.f40876u) {
                    imageView.setImageResource(R.drawable.detial_more_up);
                    MGGameDetailAdapter.this.f40876u = false;
                    return;
                }
                imageView.setImageResource(R.drawable.forum_ext_func);
                MGGameDetailAdapter.this.f40876u = true;
            }
        }
    }

    /* loaded from: classes3.dex */
    public class a1 {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f40884a;

        /* renamed from: b  reason: collision with root package name */
        TextView f40885b;

        public a1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40887a;

        b(List list) {
            this.f40887a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f40887a;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, ((BannerBean) this.f40887a.get(0)).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40889a;

        b0(List list) {
            this.f40889a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f40889a;
            if (list == null || list.size() <= 0 || ((RecommendAdInfoData) this.f40889a.get(0)).getSub() == null || ((RecommendAdInfoData) this.f40889a.get(0)).getSub().size() <= 0) {
                return;
            }
            RecommendAdInfoBean recommendAdInfoBean = ((RecommendAdInfoData) this.f40889a.get(0)).getSub().get(0);
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(recommendAdInfoBean.getJump_type());
            intentDateBean.setLink_type(recommendAdInfoBean.getLink_type());
            intentDateBean.setLink_type_val(recommendAdInfoBean.getLink_type_val());
            intentDateBean.setTpl_type(recommendAdInfoBean.getTpl_type());
            intentDateBean.setCrc_link_type_val(recommendAdInfoBean.getCrc_link_type_val());
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, intentDateBean);
        }
    }

    /* loaded from: classes3.dex */
    public class b1 {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f40891a;

        /* renamed from: b  reason: collision with root package name */
        RelativeLayout f40892b;

        /* renamed from: c  reason: collision with root package name */
        TextView f40893c;

        /* renamed from: d  reason: collision with root package name */
        TextView f40894d;

        public b1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40896a;

        c(String str) {
            this.f40896a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goQQGroup(MGGameDetailAdapter.this.f40860e, this.f40896a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y0.t f40898a;

        c0(y0.t tVar) {
            this.f40898a = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UpdateRecordActivity_.E0(MGGameDetailAdapter.this.f40860e).a(this.f40898a.f41199b).start();
        }
    }

    /* loaded from: classes3.dex */
    public class c1 {

        /* renamed from: a  reason: collision with root package name */
        private FrameLayout f40900a;

        /* renamed from: b  reason: collision with root package name */
        private CarouselViewPager2 f40901b;

        /* renamed from: c  reason: collision with root package name */
        private ViewGroup f40902c;

        /* renamed from: d  reason: collision with root package name */
        private View f40903d;

        /* renamed from: e  reason: collision with root package name */
        ArrayList<BannerImage> f40904e = new ArrayList<>();

        /* renamed from: f  reason: collision with root package name */
        ImageView[] f40905f = new ImageView[0];

        /* loaded from: classes3.dex */
        class a extends ViewPager.SimpleOnPageChangeListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MGGameDetailAdapter f40907a;

            a(MGGameDetailAdapter mGGameDetailAdapter) {
                this.f40907a = mGGameDetailAdapter;
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                super.onPageSelected(i2);
                int size = i2 % c1.this.f40904e.size();
                for (int i4 = 0; i4 < c1.this.f40904e.size(); i4++) {
                    c1.this.f40905f[size].setBackgroundResource(R.drawable.point_selected);
                    if (size != i4) {
                        c1.this.f40905f[i4].setBackgroundResource(R.drawable.point_normal);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f40909a;

            b(List list) {
                this.f40909a = list;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int currentItem = c1.this.f40901b.getCurrentItem();
                c1 c1Var = c1.this;
                List list = this.f40909a;
                c1Var.d(list, currentItem % list.size());
            }
        }

        public c1(View view) {
            this.f40903d = view;
            this.f40902c = (ViewGroup) view.findViewById(R.id.point_group);
            CarouselViewPager2 carouselViewPager2 = (CarouselViewPager2) view.findViewById(R.id.top_ad_viewpager);
            this.f40901b = carouselViewPager2;
            carouselViewPager2.addOnPageChangeListener(new a(MGGameDetailAdapter.this));
            this.f40900a = (FrameLayout) view.findViewById(R.id.onlyOne);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(List<BannerBean> list, int i2) {
            if (list == null || list.size() == 0) {
                return;
            }
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(list.get(i2).getJump_type());
            intentDateBean.setLink_type(list.get(i2).getLink_type());
            intentDateBean.setLink_type_val(list.get(i2).getLink_type_val());
            if (list.get(i2).getLink_type() == 1) {
                intentDateBean.setTpl_type(list.get(i2).getGame_info_tpl_type());
            } else {
                intentDateBean.setTpl_type(list.get(i2).getTpl_type());
            }
            intentDateBean.setCrc_link_type_val(list.get(i2).getCrc_link_type_val());
            intentDateBean.setObject(list.get(i2).getTitle());
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, intentDateBean);
        }

        public void c(List<BannerBean> list) {
            this.f40904e.clear();
            for (int i2 = 0; i2 < list.size(); i2++) {
                BannerImage bannerImage = new BannerImage();
                SimpleDraweeView simpleDraweeView = new SimpleDraweeView(MGGameDetailAdapter.this.f40860e);
                MyImageLoader.d(simpleDraweeView, R.drawable.banner_normal_icon, list.get(i2).getPic_remote());
                simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                bannerImage.setImageView(simpleDraweeView);
                bannerImage.setUrl(list.get(i2).getPic_remote());
                this.f40904e.add(bannerImage);
                simpleDraweeView.setOnClickListener(new b(list));
            }
            int dimensionPixelOffset = MGGameDetailAdapter.this.f40860e.getResources().getDimensionPixelOffset(R.dimen.round_pointmagin_l_r_size);
            int dimensionPixelOffset2 = MGGameDetailAdapter.this.f40860e.getResources().getDimensionPixelOffset(R.dimen.round_point_size);
            this.f40902c.removeAllViews();
            this.f40905f = new ImageView[list.size()];
            int i4 = 0;
            while (true) {
                ImageView[] imageViewArr = this.f40905f;
                if (i4 >= imageViewArr.length) {
                    break;
                }
                if (i4 <= 8) {
                    imageViewArr[i4] = new ImageView(MGGameDetailAdapter.this.f40860e);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelOffset2, dimensionPixelOffset2);
                    layoutParams.gravity = 1;
                    layoutParams.setMargins(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
                    this.f40905f[i4].setLayoutParams(layoutParams);
                    if (i4 == 0) {
                        this.f40905f[i4].setBackgroundResource(R.drawable.point_selected);
                    } else {
                        this.f40905f[i4].setBackgroundResource(R.drawable.point_normal);
                    }
                    this.f40902c.addView(this.f40905f[i4]);
                }
                i4++;
            }
            ArrayList<BannerImage> arrayList = this.f40904e;
            if (arrayList == null || arrayList.size() == 0) {
                return;
            }
            this.f40900a.setVisibility(4);
            this.f40901b.setVisibility(0);
            if (this.f40904e.size() == 1) {
                SimpleDraweeView imageView = this.f40904e.get(0).getImageView();
                MyImageLoader.h(imageView, this.f40904e.get(0).getUrl());
                this.f40900a.addView(imageView);
                this.f40900a.setVisibility(0);
                this.f40901b.setVisibility(4);
                return;
            }
            this.f40901b.setAdapter(new o5(MGGameDetailAdapter.this.f40860e, this.f40901b, list));
            this.f40901b.getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40911a;

        d(List list) {
            this.f40911a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f40911a;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, ((BannerBean) this.f40911a.get(0)).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d0 implements AdapterView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y0.u f40913a;

        d0(y0.u uVar) {
            this.f40913a = uVar;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> adapterView, View view, int i2, long j4) {
            try {
                Intent intent = new Intent(MGGameDetailAdapter.this.f40860e, ImagePagerActivity.class);
                String[] strArr = new String[MGGameDetailAdapter.this.f40863h.size()];
                for (int i4 = 0; i4 < MGGameDetailAdapter.this.f40863h.size(); i4++) {
                    strArr[i4] = (String) MGGameDetailAdapter.this.f40863h.get(i4);
                }
                if (com.join.mgps.Util.d2.i(this.f40913a.f41203d) && i2 == 0) {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.n(this.f40913a.f41203d);
                    videoInfo.h(strArr[0]);
                    FullScreenActivity_.G0(MGGameDetailAdapter.this.f40860e).a(videoInfo).start();
                    return;
                }
                intent.putExtra("image_urls", strArr);
                intent.putExtra("image_index", i2);
                MGGameDetailAdapter.this.f40860e.startActivity(intent);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class d1 {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f40915a;

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f40916b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f40917c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f40918d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f40919e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f40920f;

        /* renamed from: g  reason: collision with root package name */
        public SimpleDraweeView f40921g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f40922h;

        /* renamed from: i  reason: collision with root package name */
        public SimpleDraweeView f40923i;

        /* renamed from: j  reason: collision with root package name */
        public SimpleDraweeView f40924j;

        /* renamed from: k  reason: collision with root package name */
        public SimpleDraweeView f40925k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f40926l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f40927m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f40928n;

        public d1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40930a;

        e(List list) {
            this.f40930a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f40930a;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, ((BannerBean) this.f40930a.get(0)).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailAdapter.this.f40879x.i();
        }
    }

    /* loaded from: classes3.dex */
    public class e1 {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f40933a;

        public e1(View view) {
            this.f40933a = (LinearLayout) view.findViewById(R.id.group);
            view.setTag(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40935a;

        f(String str) {
            this.f40935a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goQQChart(MGGameDetailAdapter.this.f40860e, this.f40935a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailAdapter.this.f40879x.k();
        }
    }

    /* loaded from: classes3.dex */
    public class f1 {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f40938a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f40939b;

        /* renamed from: c  reason: collision with root package name */
        TextView f40940c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f40941d;

        public f1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40943a;

        g(String str) {
            this.f40943a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goQQGroup(MGGameDetailAdapter.this.f40860e, this.f40943a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.P0(MGGameDetailAdapter.this.f40860e).a(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()).start();
        }
    }

    /* loaded from: classes3.dex */
    public class g1 {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f40946a;

        public g1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40948a;

        h(List list) {
            this.f40948a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f40948a;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, ((BannerBean) this.f40948a.get(0)).getIntentDataBean());
        }
    }

    /* loaded from: classes3.dex */
    class h0 implements u0 {
        h0() {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.u0
        public void a(Boolean bool) {
            if (bool.booleanValue()) {
                if (MGGameDetailAdapter.this.f40877v != null) {
                    MGGameDetailAdapter.this.f40877v.setVisibility(0);
                }
                if (MGGameDetailAdapter.this.f40878w != null) {
                    MGGameDetailAdapter.this.f40878w.setVisibility(8);
                    return;
                }
                return;
            }
            if (MGGameDetailAdapter.this.f40877v != null) {
                MGGameDetailAdapter.this.f40877v.setVisibility(8);
            }
            if (MGGameDetailAdapter.this.f40878w != null) {
                MGGameDetailAdapter.this.f40878w.setVisibility(0);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class h1 {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f40951a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f40952b;

        /* renamed from: c  reason: collision with root package name */
        TextView f40953c;

        /* renamed from: d  reason: collision with root package name */
        TextView f40954d;

        /* renamed from: e  reason: collision with root package name */
        TextView f40955e;

        /* renamed from: f  reason: collision with root package name */
        TextView f40956f;

        /* renamed from: g  reason: collision with root package name */
        RelativeLayout f40957g;

        /* renamed from: h  reason: collision with root package name */
        TextView f40958h;

        /* renamed from: i  reason: collision with root package name */
        TextView f40959i;

        public h1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f40961a;

        i(List list) {
            this.f40961a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f40961a;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, ((BannerBean) this.f40961a.get(0)).getIntentDataBean());
        }
    }

    /* loaded from: classes3.dex */
    class i0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f40963a;

        i0(InformationCommentBean informationCommentBean) {
            this.f40963a = informationCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f40963a.isHasPraised()) {
                com.join.mgps.Util.i2.a(MGGameDetailAdapter.this.f40860e).b("你已赞过");
            } else if (AccountUtil_.getInstance_(MGGameDetailAdapter.this.f40860e).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(MGGameDetailAdapter.this.f40860e);
            } else {
                ((ImageView) view).setImageResource(R.drawable.like);
                view.startAnimation(AnimationUtils.loadAnimation(MGGameDetailAdapter.this.f40860e, R.anim.scale_reset));
                v0 v0Var = MGGameDetailAdapter.this.f40879x;
                if (v0Var != null) {
                    v0Var.a(this.f40963a);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class i1 {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f40965a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f40966b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f40967c;

        public i1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40969a;

        j(String str) {
            this.f40969a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goQQGroup(MGGameDetailAdapter.this.f40860e, this.f40969a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f40971a;

        j0(InformationCommentBean.Sub sub) {
            this.f40971a = sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v0 v0Var = MGGameDetailAdapter.this.f40879x;
            if (v0Var != null) {
                v0Var.b(this.f40971a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class j1 {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f40973a;

        /* renamed from: b  reason: collision with root package name */
        public LinearLayout f40974b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f40975c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f40976d;

        /* renamed from: e  reason: collision with root package name */
        public LinearLayout f40977e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f40978f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f40979g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f40980h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f40981i;

        /* renamed from: j  reason: collision with root package name */
        public TextView f40982j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f40983k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f40984l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f40985m;

        /* renamed from: n  reason: collision with root package name */
        public TextView f40986n;

        /* renamed from: o  reason: collision with root package name */
        public LinearLayout f40987o;

        /* renamed from: p  reason: collision with root package name */
        public LinearLayout f40988p;

        /* renamed from: q  reason: collision with root package name */
        public LinearLayout f40989q;

        public j1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialGiftMoreActivity_.r1(MGGameDetailAdapter.this.f40860e).a(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f40992a;

        k0(CommentBaseBean commentBaseBean) {
            this.f40992a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v0 v0Var = MGGameDetailAdapter.this.f40879x;
            if (v0Var != null) {
                v0Var.c(this.f40992a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class k1 {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f40994a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f40995b;

        /* renamed from: c  reason: collision with root package name */
        TextView f40996c;

        /* renamed from: d  reason: collision with root package name */
        TextView f40997d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f40998e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f40999f;

        /* renamed from: g  reason: collision with root package name */
        View f41000g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f41001h;

        public k1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f41003a;

        l(List list) {
            this.f41003a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f41003a;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, ((BannerBean) this.f41003a.get(0)).getIntentDataBean());
        }
    }

    /* loaded from: classes3.dex */
    class l0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41005a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f41006b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41007c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ y0.r f41008d;

        l0(int i2, int i4, String str, y0.r rVar) {
            this.f41005a = i2;
            this.f41006b = i4;
            this.f41007c = str;
            this.f41008d = rVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41005a == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.f41005a; i2 >= 0; i2--) {
                y0 y0Var = (y0) MGGameDetailAdapter.this.f40873r.get(this.f41006b - i2);
                y0.r rVar = y0Var.b() == ViewType.COMMIT_REPLY ? (y0.r) y0Var.a() : null;
                if (rVar != null && this.f41007c == rVar.f41179a) {
                    arrayList.addAll(rVar.f41180b.getSub());
                }
            }
            for (int i4 = 0; i4 <= this.f41005a; i4++) {
                MGGameDetailAdapter.this.f40873r.remove(this.f41006b - i4);
            }
            informationCommentBean.setSub(arrayList);
            MGGameDetailAdapter.this.f40873r.add(this.f41006b - this.f41005a, MGGameDetailAdapter.this.l(this.f41007c, informationCommentBean, this.f41008d.f41181c, true));
            MGGameDetailAdapter.this.notifyDataSetChanged();
        }
    }

    /* loaded from: classes3.dex */
    public class l1 {

        /* renamed from: a  reason: collision with root package name */
        public TextView f41010a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f41011b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41012c;

        /* renamed from: d  reason: collision with root package name */
        public LinearLayout f41013d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41014e;

        /* renamed from: f  reason: collision with root package name */
        public SimpleDraweeView f41015f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f41016g;

        public l1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f41018a;

        m(List list) {
            this.f41018a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List list = this.f41018a;
            if (list == null || list.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(MGGameDetailAdapter.this.f40860e, ((BannerBean) this.f41018a.get(0)).getIntentDataBean());
        }
    }

    /* loaded from: classes3.dex */
    class m0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41020a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f41021b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41022c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ y0.r f41023d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f41024e;

        m0(int i2, InformationCommentBean informationCommentBean, String str, y0.r rVar, int i4) {
            this.f41020a = i2;
            this.f41021b = informationCommentBean;
            this.f41022c = str;
            this.f41023d = rVar;
            this.f41024e = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = 0;
            int i4 = 0;
            boolean z3 = false;
            while (i2 < this.f41020a) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f41021b);
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
                y0 l4 = MGGameDetailAdapter.this.l(this.f41022c, informationCommentBean, this.f41023d.f41181c, i4 == 0);
                y0.r rVar = (y0.r) l4.a();
                rVar.f41183e = i4;
                rVar.f41184f = z3;
                rVar.f41182d = i4 == 0;
                MGGameDetailAdapter.this.V(l4, !z3);
                MGGameDetailAdapter.this.f40873r.add(this.f41024e + i4 + 1, l4);
                i4++;
                i2 = i5;
            }
            MGGameDetailAdapter.this.f40873r.remove(this.f41024e);
            MGGameDetailAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m1 {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f41026a;

        /* renamed from: b  reason: collision with root package name */
        View f41027b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f41028c;

        /* renamed from: d  reason: collision with root package name */
        public ImageView f41029d;

        m1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41031a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String[] f41032b;

        n(int i2, String[] strArr) {
            this.f41031a = i2;
            this.f41032b = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.G0(view.getContext(), this.f41031a, this.f41032b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f41034a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f41035b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f41036c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f41037d;

        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long longValue = Long.valueOf(n0.this.f41037d.getText().toString()).longValue();
                TextView textView = n0.this.f41037d;
                textView.setText((longValue + 1) + "");
                n0 n0Var = n0.this;
                MGGameDetailAdapter.this.k(n0Var.f41035b);
                n0 n0Var2 = n0.this;
                v0 v0Var = MGGameDetailAdapter.this.f40879x;
                if (v0Var != null) {
                    v0Var.d(n0Var2.f41034a, n0Var2.f41035b, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        n0(CommentBaseBean commentBaseBean, int i2, ImageView imageView, TextView textView) {
            this.f41034a = commentBaseBean;
            this.f41035b = i2;
            this.f41036c = imageView;
            this.f41037d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentBaseBean commentBaseBean;
            long currentTimeMillis = System.currentTimeMillis();
            MGGameDetailAdapter mGGameDetailAdapter = MGGameDetailAdapter.this;
            if (currentTimeMillis - mGGameDetailAdapter.f40880y < 500) {
                return;
            }
            mGGameDetailAdapter.f40880y = currentTimeMillis;
            if (IntentUtil.getInstance().goLoginInteractive(MGGameDetailAdapter.this.f40860e) || (commentBaseBean = this.f41034a) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                MGGameDetailAdapter.this.g0(this.f41035b);
                this.f41036c.setImageResource(R.drawable.up_ic);
                v0 v0Var = MGGameDetailAdapter.this.f40879x;
                if (v0Var != null) {
                    v0Var.d(this.f41034a, this.f41035b, 2);
                    return;
                }
                return;
            }
            this.f41034a.setIs_praise(1);
            if (AccountUtil_.getInstance_(MGGameDetailAdapter.this.f40860e).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(MGGameDetailAdapter.this.f40860e);
                return;
            }
            this.f41036c.setImageResource(R.drawable.uped_ic);
            Animation loadAnimation = AnimationUtils.loadAnimation(MGGameDetailAdapter.this.f40860e, R.anim.scale_reset);
            this.f41036c.startAnimation(loadAnimation);
            loadAnimation.setAnimationListener(new a());
        }
    }

    /* loaded from: classes3.dex */
    public class n1 {

        /* renamed from: a  reason: collision with root package name */
        TextView f41040a;

        public n1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41042a;

        o(int i2) {
            this.f41042a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f41042a);
            com.join.mgps.Util.i0.v0(MGGameDetailAdapter.this.f40860e, forumPostsBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o0 implements View.OnClickListener {
        o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.P0(MGGameDetailAdapter.this.f40860e).a(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()).start();
        }
    }

    /* loaded from: classes3.dex */
    public class o1 {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f41045a;

        /* renamed from: b  reason: collision with root package name */
        MyGridView f41046b;

        public o1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameDetialStrategyTag f41048a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f41049b;

        p(GameDetialStrategyTag gameDetialStrategyTag, List list) {
            this.f41048a = gameDetialStrategyTag;
            this.f41049b = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialIntentBean detialIntentBean = new DetialIntentBean();
            detialIntentBean.setGameId(MGGameDetailAdapter.this.f40861f.getCrc_sign_id());
            detialIntentBean.setIntentType(5);
            detialIntentBean.setStartegyTab(this.f41048a.getTag_id());
            detialIntentBean.setStrategyTags(this.f41049b);
            GameDetialInformationMoreActivity_.Z0(MGGameDetailAdapter.this.f40860e).a(detialIntentBean).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.P0(MGGameDetailAdapter.this.f40860e).a(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()).start();
        }
    }

    /* loaded from: classes3.dex */
    public class p1 {

        /* renamed from: a  reason: collision with root package name */
        TextView f41052a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f41053b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41054c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41055d;

        public p1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendInfomationBean f41057a;

        q(RecommendInfomationBean recommendInfomationBean) {
            this.f41057a = recommendInfomationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f41057a.getPost_id());
                com.join.mgps.Util.i0.v0(MGGameDetailAdapter.this.f40860e, forumPostsBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f41059a;

        q0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f41059a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41059a.getGift_package_status() == 0) {
                Message message = new Message();
                message.what = 3;
                message.obj = this.f41059a;
                MGGameDetailAdapter.this.f40871p.sendMessage(message);
                return;
            }
            Message message2 = new Message();
            message2.what = 2;
            message2.obj = this.f41059a;
            MGGameDetailAdapter.this.f40871p.sendMessage(message2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q1 {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41061a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41062b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f41063c;

        /* renamed from: d  reason: collision with root package name */
        TextView f41064d;

        /* renamed from: e  reason: collision with root package name */
        TextView f41065e;

        /* renamed from: f  reason: collision with root package name */
        TextView f41066f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f41067g;

        /* renamed from: h  reason: collision with root package name */
        public Button f41068h;

        /* renamed from: i  reason: collision with root package name */
        public SimpleDraweeView f41069i;

        /* renamed from: j  reason: collision with root package name */
        public LinearLayout f41070j;

        /* renamed from: k  reason: collision with root package name */
        public Button f41071k;

        /* renamed from: l  reason: collision with root package name */
        public LinearLayout f41072l;

        /* renamed from: m  reason: collision with root package name */
        public TextView f41073m;

        /* renamed from: n  reason: collision with root package name */
        public HorizontalScrollView f41074n;

        q1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f41076a;

        r(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f41076a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(MGGameDetailAdapter.this.f40860e).getAccountData();
            if (accountData == null) {
                GiftsDetailActivity_.n1(MGGameDetailAdapter.this.f40860e).c(this.f41076a).start();
            } else {
                GiftsDetailActivity_.n1(MGGameDetailAdapter.this.f40860e).c(this.f41076a).a(accountData.getUid()).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f41078a;

        r0(long j4) {
            this.f41078a = j4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumFid(MGGameDetailAdapter.this.f40860e, (int) this.f41078a);
        }
    }

    /* loaded from: classes3.dex */
    public class r1 {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f41080a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41081b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f41082c;

        /* renamed from: d  reason: collision with root package name */
        View f41083d;

        public r1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f41085a;

        s(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f41085a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f41085a.getGift_package_status() == 0) {
                Message message = new Message();
                message.what = 3;
                message.obj = this.f41085a;
                MGGameDetailAdapter.this.f40871p.sendMessage(message);
                return;
            }
            Message message2 = new Message();
            message2.what = 2;
            message2.obj = this.f41085a;
            MGGameDetailAdapter.this.f40871p.sendMessage(message2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41087a;

        s0(String str) {
            this.f41087a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goQQChart(MGGameDetailAdapter.this.f40860e, this.f41087a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s1 {

        /* renamed from: a  reason: collision with root package name */
        HListView f41089a;

        s1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetialIntentBean f41091a;

        t(DetialIntentBean detialIntentBean) {
            this.f41091a = detialIntentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intentType = this.f41091a.getIntentType();
            if (intentType == 1 || intentType == 2) {
                GameDetialInformationMoreActivity_.Z0(MGGameDetailAdapter.this.f40860e).a(this.f41091a).start();
            } else if (intentType == 3) {
                DetialMoreServiceListActivity_.P0(MGGameDetailAdapter.this.f40860e).a(this.f41091a.getGameId()).start();
            } else if (intentType != 4) {
            } else {
                GameDetialGiftMoreActivity_.r1(MGGameDetailAdapter.this.f40860e).a(this.f41091a.getGameId()).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41093a;

        t0(String str) {
            this.f41093a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goQQGroup(MGGameDetailAdapter.this.f40860e, this.f41093a);
        }
    }

    /* loaded from: classes3.dex */
    public class t1 {

        /* renamed from: a  reason: collision with root package name */
        TextView f41095a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41096b;

        /* renamed from: c  reason: collision with root package name */
        TextView f41097c;

        /* renamed from: d  reason: collision with root package name */
        TextView f41098d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f41099e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f41100f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ GameVoucherBean f41102a;

            a(GameVoucherBean gameVoucherBean) {
                this.f41102a = gameVoucherBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Message obtainMessage = MGGameDetailAdapter.this.f40871p.obtainMessage();
                obtainMessage.what = 4;
                obtainMessage.obj = this.f41102a;
                MGGameDetailAdapter.this.f40871p.sendMessage(obtainMessage);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AccountVoucher accountVoucher = new AccountVoucher();
                accountVoucher.setGame_id(Long.parseLong(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()));
                accountVoucher.setGame_name(MGGameDetailAdapter.this.f40861f.getGame_name());
                accountVoucher.setStatus(new AccountVoucherStatus(new AccountVoucherStatusBean(0.0d, 0), null));
                accountVoucher.setGame_tpl(MGGameDetailAdapter.this.f40861f.getGame_info_tpl_type());
                accountVoucher.setSp_tpl_two_position(MGGameDetailAdapter.this.f40861f.getSp_tpl_two_position());
                MyVoucherGameActivity_.X0(MGGameDetailAdapter.this.f40860e).a(accountVoucher).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HotVoucherActivity_.V0(MGGameDetailAdapter.this.f40860e).start();
            }
        }

        public t1(View view) {
            this.f41095a = (TextView) view.findViewById(R.id.voucherPrice);
            this.f41096b = (TextView) view.findViewById(R.id.voucherContent);
            this.f41098d = (TextView) view.findViewById(R.id.voucherGameGet);
            this.f41097c = (TextView) view.findViewById(R.id.voucherGameNumber);
            this.f41099e = (LinearLayout) view.findViewById(R.id.layoutGamevoucher);
            this.f41100f = (LinearLayout) view.findViewById(R.id.gameVoucherRight);
        }

        public void a(GameVoucherBean gameVoucherBean) {
            if (gameVoucherBean != null) {
                TextView textView = this.f41095a;
                textView.setText("￥" + gameVoucherBean.getGame_coupon_money());
                this.f41096b.setText(gameVoucherBean.getGame_coupon_title());
                int game_coupon_status = gameVoucherBean.getGame_coupon_status();
                if (game_coupon_status == 1) {
                    TextView textView2 = this.f41097c;
                    String string = MGGameDetailAdapter.this.f40860e.getString(R.string.voucher_surplus);
                    textView2.setText(String.format(string, gameVoucherBean.getGame_coupon_surplus_number() + ""));
                    this.f41098d.setText(MGGameDetailAdapter.this.f40860e.getString(R.string.voucher_get));
                    this.f41097c.setPadding(0, com.join.mgps.Util.b0.a(MGGameDetailAdapter.this.f40860e, 15.0f), 0, 0);
                    this.f41097c.setTextColor(MGGameDetailAdapter.this.f40860e.getResources().getColorStateList(R.color.app_blue_color));
                    this.f41098d.setVisibility(0);
                    this.f41100f.setOnClickListener(new a(gameVoucherBean));
                } else if (game_coupon_status == 2) {
                    this.f41097c.setTextColor(MGGameDetailAdapter.this.f40860e.getResources().getColorStateList(R.color.gray));
                    this.f41097c.setText(MGGameDetailAdapter.this.f40860e.getString(R.string.voucher_is_get));
                    this.f41098d.setText(MGGameDetailAdapter.this.f40860e.getString(R.string.voucher_detail));
                    this.f41097c.setPadding(0, com.join.mgps.Util.b0.a(MGGameDetailAdapter.this.f40860e, 15.0f), 0, 0);
                    this.f41098d.setVisibility(0);
                    this.f41100f.setOnClickListener(new b());
                } else if (game_coupon_status != 3) {
                } else {
                    this.f41097c.setTextColor(MGGameDetailAdapter.this.f40860e.getResources().getColorStateList(R.color.gray));
                    this.f41098d.setText("看看其他");
                    this.f41097c.setText(MGGameDetailAdapter.this.f40860e.getString(R.string.voucher_get_out));
                    this.f41097c.setPadding(0, com.join.mgps.Util.b0.a(MGGameDetailAdapter.this.f40860e, 15.0f), 0, 0);
                    this.f41100f.setOnClickListener(new c());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.f1(MGGameDetailAdapter.this.f40860e).f(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()).i(MGGameDetailAdapter.this.f40861f.getPackage_name()).h(MGGameDetailAdapter.this.f40861f.getPlugin_num()).g(0).j(MGGameDetailAdapter.this.f40861f.getGame_score().getSgc_switch()).a(MGGameDetailAdapter.this.f40861f.getBespeak_switch()).d("0").start();
        }
    }

    /* loaded from: classes3.dex */
    interface u0 {
        void a(Boolean bool);
    }

    /* loaded from: classes3.dex */
    public class u1 {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f41107a;

        public u1(View view) {
            this.f41107a = (LinearLayout) view.findViewById(R.id.layout_voucher_game_item);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.P0(MGGameDetailAdapter.this.f40860e).a(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()).start();
        }
    }

    /* loaded from: classes3.dex */
    public interface v0 {
        void a(InformationCommentBean informationCommentBean);

        void b(InformationCommentBean.Sub sub);

        void c(CommentBaseBean commentBaseBean);

        void d(CommentBaseBean commentBaseBean, int i2, int i4);

        void e(CommentBaseBean commentBaseBean, int i2, int i4);

        void f(CommentBaseBean commentBaseBean);

        void g();

        void h();

        void i();

        void j();

        void k();
    }

    /* loaded from: classes3.dex */
    public class v1 {

        /* renamed from: a  reason: collision with root package name */
        TextView f41110a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41111b;

        /* renamed from: c  reason: collision with root package name */
        TextView f41112c;

        /* renamed from: d  reason: collision with root package name */
        TextView f41113d;

        public v1() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f41115a;

        w(CommentBaseBean commentBaseBean) {
            this.f41115a = commentBaseBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v0 v0Var;
            CommentBaseBean commentBaseBean = this.f41115a;
            if (commentBaseBean == null || (v0Var = MGGameDetailAdapter.this.f40879x) == null) {
                return;
            }
            v0Var.f(commentBaseBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w0 {

        /* renamed from: a  reason: collision with root package name */
        public TextView f41117a;

        /* renamed from: b  reason: collision with root package name */
        public RelativeLayout f41118b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41119c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41120d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f41121e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f41122f;

        public w0(View view) {
            this.f41118b = (RelativeLayout) view.findViewById(R.id.forum_post_media_container);
            this.f41117a = (TextView) view.findViewById(R.id.images_count);
            this.f41122f = (LinearLayout) view.findViewById(R.id.viewBottom);
            view.setTag(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBean accountData = AccountUtil_.getInstance_(MGGameDetailAdapter.this.f40860e).getAccountData();
            if (com.join.mgps.Util.d2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(MGGameDetailAdapter.this.f40860e);
            } else if (IntentUtil.getInstance().goLoginInteractive(MGGameDetailAdapter.this.f40860e)) {
            } else {
                if (MGGameDetailAdapter.this.f40861f.getSelf_comment() != null) {
                    CommentAllListBean.SelfCommentBean self_comment = MGGameDetailAdapter.this.f40861f.getSelf_comment();
                    CommentCreatActivity_.U0(MGGameDetailAdapter.this.f40860e).f(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()).j(MGGameDetailAdapter.this.f40861f.getPackage_name()).d("0").c(self_comment.getId()).e(Float.valueOf(self_comment.getStars_score()).floatValue()).a(MGGameDetailAdapter.this.f40861f.getBespeak_switch()).h(MGGameDetailAdapter.this.f40861f.getPlugin_num()).g(0).b(self_comment.getContent()).start();
                    return;
                }
                CommentCreatActivity_.U0(MGGameDetailAdapter.this.f40860e).f(MGGameDetailAdapter.this.f40861f.getCrc_sign_id()).j(MGGameDetailAdapter.this.f40861f.getPackage_name()).h(MGGameDetailAdapter.this.f40861f.getPlugin_num()).g(0).a(MGGameDetailAdapter.this.f40861f.getBespeak_switch()).d("0").start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x0 {

        /* renamed from: a  reason: collision with root package name */
        public LinearLayout f41125a;

        /* renamed from: b  reason: collision with root package name */
        public View f41126b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f41127c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f41128d;

        /* renamed from: e  reason: collision with root package name */
        public View f41129e;

        /* renamed from: f  reason: collision with root package name */
        public View f41130f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f41131g;

        x0() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendInfomationBean f41133a;

        y(RecommendInfomationBean recommendInfomationBean) {
            this.f41133a = recommendInfomationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f41133a.getPost_id());
                com.join.mgps.Util.i0.v0(MGGameDetailAdapter.this.f40860e, forumPostsBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class y0 {

        /* renamed from: a  reason: collision with root package name */
        ViewType f41135a;

        /* renamed from: b  reason: collision with root package name */
        Object f41136b;

        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public boolean f41141a;

            /* renamed from: b  reason: collision with root package name */
            public String f41142b;

            /* renamed from: c  reason: collision with root package name */
            public String f41143c;

            public b(boolean z3, String str, String str2) {
                this.f41141a = z3;
                this.f41142b = str;
                this.f41143c = str2;
            }
        }

        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f41144a;

            /* renamed from: b  reason: collision with root package name */
            public int f41145b;

            /* renamed from: c  reason: collision with root package name */
            public int f41146c;

            /* renamed from: d  reason: collision with root package name */
            public String f41147d;

            /* renamed from: e  reason: collision with root package name */
            public String f41148e;

            public c(int i2, int i4, int i5, String str, String str2) {
                this.f41144a = i2;
                this.f41145b = i4;
                this.f41146c = i5;
                this.f41147d = str;
                this.f41148e = str2;
            }
        }

        /* loaded from: classes3.dex */
        public static class d {

            /* renamed from: a  reason: collision with root package name */
            List<BannerBean> f41149a;

            public d(List<BannerBean> list) {
                this.f41149a = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class e {

            /* renamed from: a  reason: collision with root package name */
            String f41150a;

            /* renamed from: b  reason: collision with root package name */
            long f41151b;

            /* renamed from: c  reason: collision with root package name */
            String f41152c;

            /* renamed from: d  reason: collision with root package name */
            String f41153d;

            /* renamed from: e  reason: collision with root package name */
            List<BannerBean> f41154e;

            public e(long j4, String str, String str2, List<BannerBean> list, String str3) {
                this.f41151b = j4;
                this.f41152c = str;
                this.f41153d = str2;
                this.f41154e = list;
                this.f41150a = str3;
            }
        }

        /* loaded from: classes3.dex */
        public static class f {

            /* renamed from: a  reason: collision with root package name */
            public int f41155a;

            /* renamed from: b  reason: collision with root package name */
            public List<RecommendAdInfoData> f41156b;

            public f(int i2, List<RecommendAdInfoData> list) {
                this.f41155a = i2;
                this.f41156b = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class g {

            /* renamed from: a  reason: collision with root package name */
            public boolean f41157a;

            public g(boolean z3) {
                this.f41157a = z3;
            }
        }

        /* loaded from: classes3.dex */
        public static class h {

            /* renamed from: a  reason: collision with root package name */
            public boolean f41158a;

            /* renamed from: b  reason: collision with root package name */
            public GiftPackageDataInfoBean f41159b;

            public h(boolean z3, GiftPackageDataInfoBean giftPackageDataInfoBean) {
                this.f41158a = z3;
                this.f41159b = giftPackageDataInfoBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class i {

            /* renamed from: a  reason: collision with root package name */
            public boolean f41160a;

            /* renamed from: b  reason: collision with root package name */
            public Object f41161b;

            /* renamed from: c  reason: collision with root package name */
            public int f41162c;

            public i(boolean z3, int i2, Object obj) {
                this.f41160a = z3;
                this.f41161b = obj;
                this.f41162c = i2;
            }
        }

        /* loaded from: classes3.dex */
        public static class j {

            /* renamed from: a  reason: collision with root package name */
            List<GiftPackageDataInfoBean> f41163a;

            /* renamed from: b  reason: collision with root package name */
            List<ServiceState> f41164b;

            public j(List<GiftPackageDataInfoBean> list, List<ServiceState> list2) {
                this.f41163a = list;
                this.f41164b = list2;
            }
        }

        /* loaded from: classes3.dex */
        public static class k {

            /* renamed from: a  reason: collision with root package name */
            public RecommendInfomationBean f41165a;

            /* renamed from: b  reason: collision with root package name */
            public int f41166b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f41167c;

            public k(boolean z3, int i2, RecommendInfomationBean recommendInfomationBean) {
                this.f41167c = z3;
                this.f41166b = i2;
                this.f41165a = recommendInfomationBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class l {

            /* renamed from: a  reason: collision with root package name */
            String f41168a;

            /* renamed from: b  reason: collision with root package name */
            int f41169b;

            /* renamed from: c  reason: collision with root package name */
            long f41170c;

            public l(String str, int i2, long j4) {
                this.f41168a = str;
                this.f41169b = i2;
                this.f41170c = j4;
            }
        }

        /* loaded from: classes3.dex */
        public static class n {

            /* renamed from: a  reason: collision with root package name */
            List<GameDetialStrategyTag> f41173a;

            public n(List<GameDetialStrategyTag> list) {
                this.f41173a = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class o {

            /* renamed from: a  reason: collision with root package name */
            DetialIntentBean f41174a;

            /* renamed from: b  reason: collision with root package name */
            String f41175b;

            public o(DetialIntentBean detialIntentBean, String str) {
                this.f41174a = detialIntentBean;
                this.f41175b = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class p {

            /* renamed from: a  reason: collision with root package name */
            public List<GamePromptBean> f41176a;

            public p(List<GamePromptBean> list) {
                this.f41176a = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class q {

            /* renamed from: a  reason: collision with root package name */
            public int f41177a;

            /* renamed from: b  reason: collision with root package name */
            public List<RecommendGameBean> f41178b;

            public q(int i2, List<RecommendGameBean> list) {
                this.f41177a = i2;
                this.f41178b = list;
            }
        }

        /* loaded from: classes3.dex */
        public static class r {

            /* renamed from: a  reason: collision with root package name */
            public String f41179a;

            /* renamed from: b  reason: collision with root package name */
            public InformationCommentBean f41180b;

            /* renamed from: c  reason: collision with root package name */
            public int f41181c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f41182d;

            /* renamed from: e  reason: collision with root package name */
            public int f41183e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f41184f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f41185g;

            public r(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
                this.f41179a = str;
                this.f41180b = informationCommentBean;
                this.f41181c = i2;
                this.f41182d = z3;
            }
        }

        /* loaded from: classes3.dex */
        public static class s {

            /* renamed from: a  reason: collision with root package name */
            public String f41186a;

            /* renamed from: b  reason: collision with root package name */
            public String f41187b;

            /* renamed from: c  reason: collision with root package name */
            public ArrayList<TipBean> f41188c;

            /* renamed from: d  reason: collision with root package name */
            public int f41189d;

            /* renamed from: e  reason: collision with root package name */
            public int f41190e;

            /* renamed from: f  reason: collision with root package name */
            public String f41191f;

            /* renamed from: g  reason: collision with root package name */
            public String f41192g;

            /* renamed from: h  reason: collision with root package name */
            public List<GameDetialBookTag> f41193h;

            /* renamed from: i  reason: collision with root package name */
            public String f41194i;

            /* renamed from: j  reason: collision with root package name */
            public int f41195j;

            /* renamed from: k  reason: collision with root package name */
            public int f41196k;

            /* renamed from: l  reason: collision with root package name */
            public int f41197l;

            public s(String str, String str2, ArrayList<TipBean> arrayList, int i2, int i4, String str3, String str4, int i5, int i6, String str5, List<GameDetialBookTag> list, int i7) {
                this.f41186a = str;
                this.f41187b = str2;
                this.f41188c = arrayList;
                this.f41189d = i2;
                this.f41190e = i4;
                this.f41191f = str3;
                this.f41192g = str4;
                this.f41195j = i5;
                this.f41196k = i6;
                this.f41194i = str5;
                this.f41193h = list;
                this.f41197l = i7;
            }
        }

        /* loaded from: classes3.dex */
        public static class t {

            /* renamed from: a  reason: collision with root package name */
            public int f41198a;

            /* renamed from: b  reason: collision with root package name */
            public String f41199b;

            public t(int i2, String str) {
                this.f41198a = i2;
                this.f41199b = str;
            }
        }

        /* loaded from: classes3.dex */
        public static class u {

            /* renamed from: a  reason: collision with root package name */
            public String f41200a;

            /* renamed from: b  reason: collision with root package name */
            public List<DetialShowImageBean> f41201b;

            /* renamed from: c  reason: collision with root package name */
            public int f41202c;

            /* renamed from: d  reason: collision with root package name */
            public String f41203d;

            public u(String str, List<DetialShowImageBean> list, int i2, String str2) {
                this.f41200a = str;
                this.f41201b = list;
                this.f41202c = i2;
                this.f41203d = str2;
            }
        }

        /* loaded from: classes3.dex */
        public static class v {

            /* renamed from: a  reason: collision with root package name */
            public boolean f41204a;

            /* renamed from: b  reason: collision with root package name */
            public GameVoucherBean f41205b;

            public v(boolean z3, GameVoucherBean gameVoucherBean) {
                this.f41204a = z3;
                this.f41205b = gameVoucherBean;
            }
        }

        /* loaded from: classes3.dex */
        public static class w {

            /* renamed from: a  reason: collision with root package name */
            public String f41206a;

            /* renamed from: b  reason: collision with root package name */
            public String f41207b;

            /* renamed from: c  reason: collision with root package name */
            public int f41208c;

            public w(String str, String str2, int i2) {
                this.f41206a = str;
                this.f41207b = str2;
                this.f41208c = i2;
            }
        }

        public y0() {
        }

        public Object a() {
            return this.f41136b;
        }

        public ViewType b() {
            return this.f41135a;
        }

        public void c(Object obj) {
            this.f41136b = obj;
        }

        public void d(ViewType viewType) {
            this.f41135a = viewType;
        }

        public y0(ViewType viewType, Object obj) {
            this.f41135a = viewType;
            this.f41136b = obj;
        }

        /* loaded from: classes3.dex */
        public static class m {

            /* renamed from: a  reason: collision with root package name */
            GameDetialStrategyItem f41171a;

            /* renamed from: b  reason: collision with root package name */
            boolean f41172b;

            public m(GameDetialStrategyItem gameDetialStrategyItem) {
                this.f41172b = false;
                this.f41171a = gameDetialStrategyItem;
            }

            public m(GameDetialStrategyItem gameDetialStrategyItem, boolean z3) {
                this.f41172b = false;
                this.f41171a = gameDetialStrategyItem;
                this.f41172b = z3;
            }
        }

        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public boolean f41137a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f41138b;

            /* renamed from: c  reason: collision with root package name */
            public GameCommitListBean.GameCommitList f41139c;

            /* renamed from: d  reason: collision with root package name */
            public CommentBaseBean f41140d;

            public a(boolean z3, GameCommitListBean.GameCommitList gameCommitList, boolean z4) {
                this.f41137a = z3;
                this.f41138b = z4;
                this.f41139c = gameCommitList;
            }

            public a(boolean z3, CommentBaseBean commentBaseBean, boolean z4) {
                this.f41137a = z3;
                this.f41138b = z4;
                this.f41140d = commentBaseBean;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameDetialStrategyItem f41209a;

        z(GameDetialStrategyItem gameDetialStrategyItem) {
            this.f41209a = gameDetialStrategyItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(this.f41209a.getId());
                com.join.mgps.Util.i0.v0(MGGameDetailAdapter.this.f40860e, forumPostsBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class z0 {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f41211a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f41212b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f41213c;

        /* renamed from: d  reason: collision with root package name */
        TextView f41214d;

        /* renamed from: e  reason: collision with root package name */
        TextView f41215e;

        /* renamed from: f  reason: collision with root package name */
        TextView f41216f;

        /* renamed from: g  reason: collision with root package name */
        TextView f41217g;

        /* renamed from: h  reason: collision with root package name */
        VipView f41218h;

        /* renamed from: i  reason: collision with root package name */
        public View f41219i;

        public z0() {
        }
    }

    public MGGameDetailAdapter(Context context, DetailResultBeanV3 detailResultBeanV3, Handler handler, RelativeLayout relativeLayout, List<y0> list) {
        this.f40860e = context;
        this.f40861f = detailResultBeanV3;
        this.f40871p = handler;
        this.f40859d = relativeLayout;
        this.f40873r = list;
        this.f40869n = context.getResources().getDrawable(R.drawable.game_detail_ok);
        this.f40870o = this.f40860e.getResources().getDrawable(R.drawable.game_detail_warn);
        Drawable drawable = this.f40869n;
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), this.f40869n.getMinimumHeight());
        this.f40870o.setBounds(0, 0, this.f40869n.getMinimumWidth(), this.f40869n.getMinimumHeight());
        this.f40856a = detailResultBeanV3.getBackground_color();
        this.f40857b = detailResultBeanV3.getSp_tpl_two_position();
        this.f40875t = new h0();
    }

    private View A(int i2, View view, ViewGroup viewGroup) {
        View view2;
        i1 i1Var;
        y0.o oVar = (y0.o) getItem(i2);
        DetialIntentBean detialIntentBean = oVar.f41174a;
        if (view == null) {
            i1Var = new i1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_gifts_top, (ViewGroup) null);
            i1Var.f40966b = (TextView) view2.findViewById(R.id.titleText);
            i1Var.f40967c = (LinearLayout) view2.findViewById(R.id.look_other);
            X(view2.findViewById(R.id.backLayout));
            if (this.f40857b == 0) {
                i1Var.f40966b.setTextColor(-1);
                ((TextView) view2.findViewById(R.id.moreText)).setTextColor(-10592674);
                view2.findViewById(R.id.line_h).setVisibility(8);
            }
            view2.setTag(i1Var);
        } else {
            view2 = view;
            i1Var = (i1) view.getTag();
        }
        if (detialIntentBean == null) {
            i1Var.f40967c.setVisibility(8);
        } else {
            i1Var.f40967c.setVisibility(0);
        }
        i1Var.f40966b.setText(oVar.f41175b);
        i1Var.f40967c.setOnClickListener(new t(detialIntentBean));
        return view2;
    }

    private View B(int i2, View view, ViewGroup viewGroup) {
        View view2;
        m1 m1Var;
        if (view == null) {
            m1Var = new m1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_message, (ViewGroup) null);
            m1Var.f41026a = (LinearLayout) view2.findViewById(R.id.itemLayout);
            m1Var.f41027b = view2.findViewById(R.id.itemLine);
            m1Var.f41028c = (LinearLayout) view2.findViewById(R.id.messageLayoutMain);
            m1Var.f41029d = (ImageView) view2.findViewById(R.id.moreImage);
            X((LinearLayout) view2.findViewById(R.id.backLayout));
            view2.setTag(m1Var);
        } else {
            view2 = view;
            m1Var = (m1) view.getTag();
        }
        List<GamePromptBean> list = ((y0.p) getItem(i2)).f41176a;
        if (list != null && list.size() > 0) {
            m1Var.f41026a.setVisibility(0);
            m1Var.f41027b.setVisibility(0);
            m1Var.f41029d.setOnClickListener(new a0());
            if (this.f40857b == 0) {
                m1Var.f41027b.setVisibility(8);
            }
            m1Var.f41026a.removeAllViewsInLayout();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(36, 0, 0, 0);
            layoutParams.gravity = 19;
            for (int i4 = 0; i4 < list.size(); i4++) {
                GamePromptBean gamePromptBean = list.get(i4);
                if (gamePromptBean != null) {
                    TextView textView = new TextView(this.f40860e);
                    textView.setText(gamePromptBean.getText().toString());
                    if (gamePromptBean.getId() == 1) {
                        textView.setCompoundDrawables(this.f40869n, null, null, null);
                    } else {
                        textView.setCompoundDrawables(this.f40870o, null, null, null);
                    }
                    textView.setCompoundDrawablePadding(10);
                    textView.setSingleLine(true);
                    textView.setTextSize(1, 10.0f);
                    textView.setTextColor(-8355712);
                    m1Var.f41026a.addView(textView, layoutParams);
                }
            }
        } else {
            m1Var.f41026a.setVisibility(8);
            m1Var.f41027b.setVisibility(8);
        }
        m1Var.f41028c.removeAllViewsInLayout();
        RelativeLayout relativeLayout = this.f40859d;
        if (relativeLayout != null) {
            m1Var.f41028c.addView(relativeLayout);
        }
        return view2;
    }

    private View C(int i2, View view, ViewGroup viewGroup) {
        View view2;
        n1 n1Var;
        String str = (String) getItem(i2);
        if (view == null) {
            n1Var = new n1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.detial_null_item, (ViewGroup) null);
            n1Var.f41040a = (TextView) view2.findViewById(R.id.itemNul);
            view2.setTag(n1Var);
        } else {
            view2 = view;
            n1Var = (n1) view.getTag();
        }
        if (this.f40857b == 0) {
            X(n1Var.f41040a);
        } else if ("1".equals(str)) {
            n1Var.f41040a.setBackgroundColor(0);
        } else {
            n1Var.f41040a.setBackgroundColor(-1);
        }
        return view2;
    }

    private View D(int i2, View view, ViewGroup viewGroup) {
        View view2;
        o1 o1Var;
        if (view == null) {
            o1Var = new o1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_recommend, (ViewGroup) null);
            o1Var.f41046b = (MyGridView) view2.findViewById(R.id.recomListView);
            LinearLayout linearLayout = (LinearLayout) view2.findViewById(R.id.layoutContent);
            o1Var.f41045a = linearLayout;
            X(linearLayout);
            if (this.f40857b == 0) {
                view2.findViewById(R.id.line_h).setVisibility(8);
            }
            view2.setTag(o1Var);
        } else {
            view2 = view;
            o1Var = (o1) view.getTag();
        }
        y0.q qVar = (y0.q) getItem(i2);
        int i4 = qVar.f41177a;
        if (i4 == 0) {
            o1Var.f41045a.setVisibility(8);
        } else if (i4 == 1) {
            o1Var.f41045a.setVisibility(0);
            com.join.mgps.adapter.d1 d1Var = new com.join.mgps.adapter.d1(this.f40860e, this.f40872q);
            o1Var.f41046b.setAdapter((ListAdapter) d1Var);
            List<RecommendGameBean> list = qVar.f41178b;
            if (list != null && list.size() > 0) {
                this.f40872q.clear();
                this.f40872q.addAll(qVar.f41178b);
                d1Var.notifyDataSetChanged();
            }
        } else {
            o1Var.f41045a.setVisibility(8);
        }
        return view2;
    }

    private View E(int i2, View view, ViewGroup viewGroup) {
        x0 x0Var;
        y0.r rVar;
        try {
            if (view != null) {
                x0Var = (x0) view.getTag();
            } else {
                x0Var = new x0();
                view = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_game_comment_activity_item_comment_message_reply, (ViewGroup) null);
                x0Var.f41131g = (LinearLayout) view.findViewById(R.id.parentLayout);
                x0Var.f41125a = (LinearLayout) view.findViewById(R.id.comment_reply_container);
                x0Var.f41126b = view.findViewById(R.id.comment_reply_divider);
                x0Var.f41127c = (TextView) view.findViewById(R.id.comment_reply_content);
                x0Var.f41128d = (TextView) view.findViewById(R.id.comment_reply_more);
                x0Var.f41129e = view.findViewById(R.id.line);
                x0Var.f41130f = view.findViewById(R.id.bottom);
                X(x0Var.f41131g);
                view.setTag(x0Var);
            }
            rVar = (y0.r) getItem(i2);
            if (this.f40857b == 0) {
                x0Var.f41126b.setBackgroundColor(-13290187);
                x0Var.f41129e.setBackgroundColor(-13290187);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (rVar == null || rVar.f41180b == null) {
            return view;
        }
        if (rVar.f41182d) {
            x0Var.f41126b.setVisibility(0);
        } else {
            x0Var.f41126b.setVisibility(8);
        }
        if (!rVar.f41185g) {
            x0Var.f41129e.setVisibility(0);
            x0Var.f41130f.setVisibility(0);
        } else {
            x0Var.f41129e.setVisibility(8);
            x0Var.f41130f.setVisibility(8);
        }
        x0Var.f41125a.removeAllViews();
        return view;
    }

    private View F(int i2, View view, ViewGroup viewGroup) {
        p1 p1Var;
        y0.l lVar = (y0.l) getItem(i2);
        String str = lVar.f41168a;
        if (view == null) {
            view = LayoutInflater.from(this.f40860e).inflate(R.layout.game_detial_service_item_layout, (ViewGroup) null);
            p1Var = new p1();
            p1Var.f41052a = (TextView) view.findViewById(R.id.message);
            p1Var.f41053b = (TextView) view.findViewById(R.id.messageType);
            p1Var.f41054c = (TextView) view.findViewById(R.id.date);
            p1Var.f41055d = (TextView) view.findViewById(R.id.dateMorning);
            X(view.findViewById(R.id.backLayout));
            if (this.f40857b == 0) {
                view.findViewById(R.id.line).setVisibility(8);
            }
            view.setTag(p1Var);
        } else {
            p1Var = (p1) view.getTag();
        }
        if (this.f40857b == 0) {
            p1Var.f41053b.setBackgroundDrawable(com.join.mgps.Util.h2.d(this.f40860e, "#3ca4fd", 2));
            p1Var.f41053b.setTextColor(Color.parseColor("#3ca4fd"));
        } else {
            p1Var.f41053b.setBackgroundDrawable(com.join.mgps.Util.h2.a(this.f40860e, "#3ca4fd"));
        }
        p1Var.f41053b.setVisibility(0);
        if (lVar.f41169b == 1) {
            p1Var.f41053b.setText("开服");
        } else {
            p1Var.f41053b.setText("合服");
        }
        p1Var.f41052a.setText(str);
        p1Var.f41054c.setText(com.join.mgps.Util.x.k(lVar.f41170c));
        String h4 = com.join.mgps.Util.x.h(lVar.f41170c);
        String str2 = "上午";
        if (com.join.mgps.Util.d2.i(h4)) {
            int parseInt = Integer.parseInt(h4);
            if (parseInt > 12) {
                str2 = "下午" + (parseInt - 12) + "点";
            } else {
                str2 = "上午" + parseInt + "点";
            }
        }
        p1Var.f41055d.setText(str2);
        return view;
    }

    private View G(int i2, View view, ViewGroup viewGroup) {
        w0 w0Var;
        GameDetialStrategyItem gameDetialStrategyItem = ((y0.m) getItem(i2)).f41171a;
        if (view == null) {
            view = LayoutInflater.from(this.f40860e).inflate(R.layout.game_detial_item_strategy_itemimage3, (ViewGroup) null);
            w0Var = new w0(view);
            w0Var.f41119c = (TextView) view.findViewById(R.id.pubtime);
            w0Var.f41120d = (TextView) view.findViewById(R.id.pv);
            w0Var.f41121e = (TextView) view.findViewById(R.id.uv);
            w0Var.f41121e = (TextView) view.findViewById(R.id.uv);
            X(view.findViewById(R.id.forum_post_media_container));
            X(view.findViewById(R.id.viewBottom));
            if (this.f40857b == 0) {
                w0Var.f41119c.setTextColor(-10592674);
                w0Var.f41120d.setTextColor(-10592674);
                w0Var.f41121e.setTextColor(-10592674);
                view.findViewById(R.id.line).setVisibility(8);
            }
        } else {
            w0Var = (w0) view.getTag();
        }
        try {
            TextView textView = w0Var.f41120d;
            textView.setText(gameDetialStrategyItem.getCommit() + "");
            TextView textView2 = w0Var.f41121e;
            textView2.setText(gameDetialStrategyItem.getView() + "");
            w0Var.f41119c.setText(com.join.android.app.common.utils.c.b(gameDetialStrategyItem.getAdd_time()));
            R(w0Var.f41118b, gameDetialStrategyItem);
            int id = gameDetialStrategyItem.getId();
            a0(view, id);
            a0(w0Var.f41118b, id);
            a0(w0Var.f41118b, id);
            a0(w0Var.f41122f, id);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return view;
    }

    private View H(int i2, View view, ViewGroup viewGroup) {
        e1 e1Var;
        y0.n nVar = (y0.n) getItem(i2);
        if (view == null) {
            view = LayoutInflater.from(this.f40860e).inflate(R.layout.forum_strategy_tag_grid, (ViewGroup) null);
            e1Var = new e1(view);
            X(view.findViewById(R.id.group));
            view.findViewById(R.id.line).setVisibility(8);
        } else {
            e1Var = (e1) view.getTag();
        }
        if (e1Var == null) {
            return view;
        }
        m(e1Var, nVar);
        return view;
    }

    private View I(int i2, View view, ViewGroup viewGroup) {
        View view2;
        k1 k1Var;
        if (view == null) {
            k1Var = new k1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_infomation_item, (ViewGroup) null);
            k1Var.f40995b = (SimpleDraweeView) view2.findViewById(R.id.informationImage);
            k1Var.f40996c = (TextView) view2.findViewById(R.id.informationTv);
            k1Var.f40997d = (TextView) view2.findViewById(R.id.pubtime);
            k1Var.f41001h = (TextView) view2.findViewById(R.id.messageType);
            k1Var.f40994a = (LinearLayout) view2.findViewById(R.id.layoutInformation);
            k1Var.f40998e = (LinearLayout) view2.findViewById(R.id.informationTitle);
            k1Var.f40999f = (LinearLayout) view2.findViewById(R.id.layoutTop);
            k1Var.f41000g = view2.findViewById(R.id.line_h);
            X(view2.findViewById(R.id.layoutInformation));
            if (this.f40857b == 0) {
                k1Var.f40996c.setTextColor(-7434610);
                k1Var.f40997d.setTextColor(-10592674);
                k1Var.f41000g.setVisibility(8);
            }
            view2.setTag(k1Var);
        } else {
            view2 = view;
            k1Var = (k1) view.getTag();
        }
        y0.m mVar = (y0.m) getItem(i2);
        GameDetialStrategyItem gameDetialStrategyItem = mVar.f41171a;
        if (gameDetialStrategyItem.getTag_name() != null) {
            k1Var.f41001h.setText(gameDetialStrategyItem.getTag_name().getTitle());
            if (com.join.mgps.Util.d2.i(gameDetialStrategyItem.getTag_name().getTitle())) {
                GameDetialBookTag tag_name = gameDetialStrategyItem.getTag_name();
                if (tag_name != null) {
                    if (com.join.mgps.Util.d2.h(tag_name.getColor())) {
                        tag_name.setColor("#8dbbec");
                    }
                    if (this.f40857b == 0) {
                        k1Var.f41001h.setBackgroundDrawable(com.join.mgps.Util.h2.d(this.f40860e, gameDetialStrategyItem.getTag_name().getColor(), gameDetialStrategyItem.getTag_name().getTitle().length()));
                        k1Var.f41001h.setTextColor(Color.parseColor(gameDetialStrategyItem.getTag_name().getColor()));
                    } else {
                        TextView textView = k1Var.f41001h;
                        Context context = this.f40860e;
                        textView.setBackgroundDrawable(com.join.mgps.Util.h2.a(context, gameDetialStrategyItem.getTag_name().getColor() + ""));
                    }
                }
                k1Var.f41001h.setVisibility(0);
            } else {
                k1Var.f41001h.setVisibility(8);
            }
        }
        if (mVar.f41172b) {
            k1Var.f40997d.setVisibility(8);
        } else {
            k1Var.f40997d.setVisibility(0);
        }
        k1Var.f40997d.setText(com.join.android.app.common.utils.c.b(gameDetialStrategyItem.getAdd_time()));
        k1Var.f40996c.setText(gameDetialStrategyItem.getSubject());
        k1Var.f40994a.setOnClickListener(new z(gameDetialStrategyItem));
        return view2;
    }

    private View K(int i2, View view, ViewGroup viewGroup) {
        View view2;
        q1 q1Var;
        if (view == null) {
            q1Var = new q1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_title, (ViewGroup) null);
            q1Var.f41061a = (SimpleDraweeView) view2.findViewById(R.id.appIcon);
            q1Var.f41062b = (TextView) view2.findViewById(R.id.appName);
            q1Var.f41063c = (LinearLayout) view2.findViewById(R.id.tipsLayout);
            q1Var.f41064d = (TextView) view2.findViewById(R.id.appDownloadCount);
            q1Var.f41066f = (TextView) view2.findViewById(R.id.appCompany);
            q1Var.f41065e = (TextView) view2.findViewById(R.id.appSize);
            q1Var.f41069i = (SimpleDraweeView) view2.findViewById(R.id.gameInfoLayout);
            q1Var.f41070j = (LinearLayout) view2.findViewById(R.id.titleMoreLayout);
            q1Var.f41067g = (LinearLayout) view2.findViewById(R.id.titleMoreTip);
            q1Var.f41068h = (Button) view2.findViewById(R.id.titleMoreBookButn);
            q1Var.f41071k = (Button) view2.findViewById(R.id.gameFollowButn);
            q1Var.f41072l = (LinearLayout) view2.findViewById(R.id.titlelayout);
            q1Var.f41073m = (TextView) view2.findViewById(R.id.textNullToTwo);
            q1Var.f41074n = (HorizontalScrollView) view2.findViewById(R.id.scrollView);
            view2.setTag(q1Var);
        } else {
            view2 = view;
            q1Var = (q1) view.getTag();
        }
        y0.s sVar = (y0.s) getItem(i2);
        q1Var.f41071k.setOnClickListener(new e0());
        q1Var.f41068h.setOnClickListener(new f0());
        if (sVar.f41197l == 1) {
            List<GameDetialBookTag> list = sVar.f41193h;
            if (list != null && list.size() > 0) {
                UtilsMy.s(sVar.f41193h, q1Var.f41067g, this.f40860e);
            }
            q1Var.f41070j.setVisibility(0);
            q1Var.f41072l.setBackgroundColor(16777215);
        } else {
            q1Var.f41070j.setVisibility(8);
            q1Var.f41072l.setBackgroundColor(-1);
        }
        q1Var.f41071k.setBackgroundResource(R.drawable.recom_blue_butn);
        q1Var.f41071k.setTextColor(this.f40860e.getResources().getColor(R.color.app_blue_color));
        if (this.f40857b == 0) {
            q1Var.f41069i.setVisibility(0);
            q1Var.f41062b.setTextColor(-1);
            MyImageLoader.d(q1Var.f41069i, R.drawable.arena_dialog_bg, sVar.f41194i);
            q1Var.f41073m.setVisibility(0);
            q1Var.f41070j.setBackgroundColor(0);
            q1Var.f41072l.setBackgroundColor(0);
            q1Var.f41071k.setBackgroundResource(R.drawable.detial_white_stroke_butn);
            q1Var.f41071k.setTextColor(-1);
            ArrayList<TipBean> arrayList = sVar.f41188c;
            if (arrayList != null && arrayList.size() > 0) {
                q1Var.f41074n.setVisibility(0);
            } else {
                q1Var.f41074n.setVisibility(8);
            }
        } else {
            q1Var.f41069i.setVisibility(8);
            q1Var.f41073m.setVisibility(8);
            q1Var.f41070j.setBackgroundColor(-1);
            if (sVar.f41197l == 1) {
                q1Var.f41062b.setTextColor(-1);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) q1Var.f41069i.getLayoutParams();
                int h4 = (int) (com.join.android.app.common.utils.j.n(this.f40860e).h(this.f40860e) * 253.0f);
                com.join.mgps.Util.t0.d("sssss", h4 + "");
                layoutParams.height = h4;
                q1Var.f41069i.setLayoutParams(layoutParams);
                q1Var.f41069i.setVisibility(0);
                q1Var.f41072l.setBackgroundColor(0);
                q1Var.f41070j.setBackgroundColor(0);
                q1Var.f41071k.setBackgroundResource(R.drawable.detial_white_stroke_butn);
                q1Var.f41071k.setTextColor(-1);
                MyImageLoader.d(q1Var.f41069i, R.drawable.arena_dialog_bg, sVar.f41194i);
            } else {
                q1Var.f41072l.setBackgroundColor(-1);
            }
        }
        if (sVar.f41195j == 1) {
            q1Var.f41071k.setText("已收藏");
        } else {
            q1Var.f41071k.setText("收藏");
        }
        if (sVar.f41196k == 1) {
            q1Var.f41068h.setText("已预约");
            q1Var.f41068h.setEnabled(false);
        } else {
            q1Var.f41068h.setText("预约");
        }
        MyImageLoader.h(q1Var.f41061a, sVar.f41186a);
        if (sVar.f41187b != null) {
            q1Var.f41062b.setText(sVar.f41187b + "");
        }
        UtilsMy.C(this.f40861f.getScore(), this.f40861f.getDown_count(), this.f40861f.getSize(), this.f40861f.getSp_tag_info(), this.f40861f.getTag_info(), q1Var.f41063c, this.f40860e);
        int i4 = sVar.f41189d;
        if (i4 <= 0) {
            i4 = sVar.f41190e;
        }
        if (sVar.f41197l == 1) {
            q1Var.f41063c.setVisibility(8);
            if (this.f40861f.getBespeak_count() == null) {
                q1Var.f41064d.setText("0人预约");
            } else {
                q1Var.f41064d.setText(this.f40861f.getBespeak_count() + "人预约");
            }
        } else {
            q1Var.f41063c.setVisibility(4);
            if (i4 >= 100000) {
                q1Var.f41064d.setText((i4 / 10000) + "万热度");
            } else if (i4 >= 10000) {
                StringBuilder sb = new StringBuilder();
                double round = Math.round(i4 / 1000);
                Double.isNaN(round);
                sb.append(round / 10.0d);
                sb.append("万");
                String sb2 = sb.toString();
                q1Var.f41064d.setText(sb2 + "热度");
            } else {
                q1Var.f41064d.setText(i4 + "热度");
            }
        }
        q1Var.f41066f.setText(sVar.f41191f);
        if (sVar.f41192g != null) {
            q1Var.f41065e.setText(sVar.f41192g + "M");
        }
        return view2;
    }

    private View L(int i2, View view, ViewGroup viewGroup) {
        View view2;
        r1 r1Var;
        if (view == null) {
            r1Var = new r1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_update, (ViewGroup) null);
            r1Var.f41080a = (RelativeLayout) view2.findViewById(R.id.giftsLayout);
            r1Var.f41081b = (TextView) view2.findViewById(R.id.giftsTitle);
            r1Var.f41082c = (ImageView) view2.findViewById(R.id.arrowImage);
            r1Var.f41083d = view2.findViewById(R.id.lineUpdate);
            view2.setTag(r1Var);
        } else {
            view2 = view;
            r1Var = (r1) view.getTag();
        }
        y0.t tVar = (y0.t) getItem(i2);
        if (tVar.f41198a == 1) {
            r1Var.f41080a.setVisibility(0);
            r1Var.f41083d.setVisibility(0);
            r1Var.f41081b.setText("更新记录");
            r1Var.f41080a.setOnClickListener(new c0(tVar));
        } else {
            r1Var.f41080a.setVisibility(8);
            r1Var.f41083d.setVisibility(8);
        }
        return view2;
    }

    private View M(int i2, View view, ViewGroup viewGroup) {
        View view2;
        s1 s1Var;
        if (view == null) {
            s1Var = new s1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_viewpage, (ViewGroup) null);
            s1Var.f41089a = (HListView) view2.findViewById(R.id.screenListView);
            X((LinearLayout) view2.findViewById(R.id.backLayout));
            view2.setTag(s1Var);
        } else {
            view2 = view;
            s1Var = (s1) view.getTag();
        }
        y0.u uVar = (y0.u) getItem(i2);
        if (this.f40863h.size() == 0) {
            if (com.join.mgps.Util.d2.i(uVar.f41200a) && uVar.f41201b == null) {
                s1Var.f41089a.setVisibility(8);
            } else {
                if (com.join.mgps.Util.d2.i(uVar.f41200a)) {
                    this.f40863h.add(uVar.f41200a);
                    this.f40864i = true;
                } else {
                    this.f40864i = false;
                }
                if (uVar.f41201b != null) {
                    for (int i4 = 0; i4 < uVar.f41201b.size(); i4++) {
                        this.f40863h.add(uVar.f41201b.get(i4).getRemote().getPath());
                    }
                }
                if (this.f40863h.size() == 0) {
                    s1Var.f41089a.setVisibility(8);
                } else {
                    s1Var.f41089a.setVisibility(0);
                    s1Var.f41089a.setAdapter((ListAdapter) new com.join.mgps.adapter.w0(this.f40860e, uVar.f41202c, this.f40863h, this.f40864i));
                    s1Var.f41089a.setOnItemClickListener(new d0(uVar));
                }
            }
        }
        return view2;
    }

    private View N(int i2, View view, ViewGroup viewGroup) {
        t1 t1Var;
        if (view == null) {
            view = LayoutInflater.from(this.f40860e).inflate(R.layout.layout_voucher_game_detail, (ViewGroup) null);
            t1Var = new t1(view);
            view.setTag(t1Var);
        } else {
            t1Var = (t1) view.getTag();
        }
        y0.v vVar = (y0.v) getItem(i2);
        if (vVar.f41204a) {
            t1Var.a(vVar.f41205b);
            t1Var.f41099e.setVisibility(0);
        } else {
            t1Var.f41099e.setVisibility(8);
        }
        return view;
    }

    private View O(int i2, View view, ViewGroup viewGroup) {
        View view2;
        v1 v1Var;
        if (view == null) {
            v1Var = new v1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_web, (ViewGroup) null);
            v1Var.f41110a = (TextView) view2.findViewById(R.id.htmlEditRecommend);
            v1Var.f41111b = (TextView) view2.findViewById(R.id.htmlGameDescribe);
            v1Var.f41113d = (TextView) view2.findViewById(R.id.htmlGameDescribeShort);
            v1Var.f41112c = (TextView) view2.findViewById(R.id.textMore);
            X((RelativeLayout) view2.findViewById(R.id.backLayout));
            if (this.f40857b == 0) {
                view2.findViewById(R.id.lineView).setVisibility(8);
            }
            view2.setTag(v1Var);
        } else {
            view2 = view;
            v1Var = (v1) view.getTag();
        }
        y0.w wVar = (y0.w) getItem(i2);
        v1Var.f41110a.setText(wVar.f41206a);
        if (wVar.f41207b != null) {
            v1Var.f41111b.setVisibility(0);
            v1Var.f41111b.setText(wVar.f41207b);
            v1Var.f41113d.setText(wVar.f41207b);
            v1Var.f41113d.setVisibility(0);
            v1Var.f41111b.setVisibility(8);
            v1Var.f41113d.setMaxLines(2);
            this.f40877v = v1Var.f41111b;
            this.f40878w = v1Var.f41113d;
        }
        return view2;
    }

    private void Q(View view, y0.r rVar, boolean z3, int i2) {
        View view2;
        int i4;
        boolean z4;
        int i5;
        int i6;
        String str = rVar.f41179a;
        int i7 = rVar.f41183e;
        boolean z5 = rVar.f41184f;
        InformationCommentBean informationCommentBean = rVar.f41180b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) view;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i8 = 0;
        int i9 = 0;
        while (i9 < size + 1) {
            if (i9 <= 3 || !z3) {
                View inflate = LayoutInflater.from(this.f40860e).inflate(R.layout.comment_reply_item, (ViewGroup) null);
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
                        view2.setOnClickListener(new m0(size, informationCommentBean, str, rVar, i2));
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
                                Z(view2, sub2);
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
                    view2.setOnClickListener(new l0(i10, i2, str, rVar));
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

    private void R(RelativeLayout relativeLayout, GameDetialStrategyItem gameDetialStrategyItem) {
        gameDetialStrategyItem.getPic_list();
        if (this.f40874s == null) {
            this.f40874s = J();
        }
        String[] pic_list = gameDetialStrategyItem.getPic_list();
        int[] iArr = {R.id.img_m_1, R.id.img_m_2, R.id.img_m_3};
        for (int i2 = 0; i2 < 3; i2++) {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) relativeLayout.findViewById(iArr[i2]);
            if (i2 >= gameDetialStrategyItem.getPic_list().length) {
                simpleDraweeView.setVisibility(8);
            } else {
                W(simpleDraweeView, i2, gameDetialStrategyItem.getPic_list()[i2], i2 + 0, pic_list);
            }
        }
    }

    private void X(View view) {
        if (this.f40857b == 0) {
            view.setBackgroundColor(1275068416);
        }
    }

    private void Z(View view, InformationCommentBean.Sub sub) {
        view.setOnClickListener(new j0(sub));
    }

    private void b0(View view, CommentBaseBean commentBaseBean) {
        view.setOnClickListener(new w(commentBaseBean));
    }

    private void c0(View view, InformationCommentBean informationCommentBean) {
        view.setOnClickListener(new i0(informationCommentBean));
    }

    private void d0(ImageView imageView, TextView textView, CommentBaseBean commentBaseBean, int i2) {
        n0 n0Var = new n0(commentBaseBean, i2, imageView, textView);
        imageView.setOnClickListener(n0Var);
        textView.setOnClickListener(n0Var);
    }

    private void e0(View view, CommentBaseBean commentBaseBean) {
        view.setOnClickListener(new k0(commentBaseBean));
    }

    private void m(e1 e1Var, y0.n nVar) {
        S(e1Var.f40933a, nVar.f41173a);
    }

    private View n(int i2, View view, ViewGroup viewGroup) {
        View view2;
        a1 a1Var;
        if (view == null) {
            a1Var = new a1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_record_footer, (ViewGroup) null);
            a1Var.f40885b = (TextView) view2.findViewById(R.id.showAllCommit);
            RelativeLayout relativeLayout = (RelativeLayout) view2.findViewById(R.id.commentFooterLayout);
            a1Var.f40884a = relativeLayout;
            X(relativeLayout);
            if (this.f40857b == 0) {
                a1Var.f40885b.setBackgroundResource(R.drawable.detial_grey_stroke_butn);
                a1Var.f40885b.setTextColor(-5723992);
            }
            view2.setTag(a1Var);
        } else {
            view2 = view;
            a1Var = (a1) view.getTag();
        }
        y0.b bVar = (y0.b) getItem(i2);
        if (bVar.f41141a) {
            a1Var.f40884a.setVisibility(0);
        } else {
            a1Var.f40884a.setVisibility(8);
        }
        TextView textView = a1Var.f40885b;
        textView.setText("查看全部" + bVar.f41142b + "条评论");
        a1Var.f40885b.setOnClickListener(new u());
        return view2;
    }

    private View o(int i2, View view, ViewGroup viewGroup) {
        View view2;
        b1 b1Var;
        if (view == null) {
            b1Var = new b1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_record_header, (ViewGroup) null);
            b1Var.f40893c = (TextView) view2.findViewById(R.id.commitImage);
            b1Var.f40894d = (TextView) view2.findViewById(R.id.commitCount);
            b1Var.f40891a = (LinearLayout) view2.findViewById(R.id.layoutBottom);
            RelativeLayout relativeLayout = (RelativeLayout) view2.findViewById(R.id.commentHeaderLayout);
            b1Var.f40892b = relativeLayout;
            X(relativeLayout);
            if (this.f40857b == 0) {
                ((TextView) view2.findViewById(R.id.commitTv)).setTextColor(-1);
                b1Var.f40894d.setTextColor(-9145228);
                b1Var.f40893c.setTextColor(-5723992);
                b1Var.f40893c.setBackgroundResource(R.drawable.detial_grey_stroke_butn);
            }
            view2.setTag(b1Var);
        } else {
            view2 = view;
            b1Var = (b1) view.getTag();
        }
        y0.c cVar = (y0.c) getItem(i2);
        if (cVar.f41144a == 0 && cVar.f41145b == 0) {
            b1Var.f40891a.setVisibility(8);
        } else {
            b1Var.f40891a.setVisibility(0);
        }
        if (cVar.f41146c == 1) {
            b1Var.f40892b.setVisibility(0);
            TextView textView = b1Var.f40894d;
            textView.setText(" (" + cVar.f41147d + ") ");
            b1Var.f40893c.setOnClickListener(new x());
        } else {
            b1Var.f40892b.setVisibility(8);
        }
        return view2;
    }

    private View p(int i2, View view, ViewGroup viewGroup) {
        return E(i2, view, viewGroup);
    }

    private View q(int i2, View view, ViewGroup viewGroup) {
        View view2;
        z0 z0Var;
        if (view == null) {
            z0Var = new z0();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.game_detail_comment_item_layout, (ViewGroup) null);
            z0Var.f41211a = (RelativeLayout) view2.findViewById(R.id.main);
            z0Var.f41212b = (SimpleDraweeView) view2.findViewById(R.id.usericon);
            z0Var.f41213c = (ImageView) view2.findViewById(R.id.parise);
            z0Var.f41214d = (TextView) view2.findViewById(R.id.username);
            z0Var.f41215e = (TextView) view2.findViewById(R.id.time);
            z0Var.f41216f = (TextView) view2.findViewById(R.id.content);
            z0Var.f41217g = (TextView) view2.findViewById(R.id.pariseNumber);
            z0Var.f41218h = (VipView) view2.findViewById(R.id.levelTv);
            z0Var.f41219i = view2.findViewById(R.id.line);
            X(z0Var.f41211a);
            if (this.f40857b == 0) {
                z0Var.f41219i.setBackgroundColor(-13290187);
                z0Var.f41216f.setTextColor(-10395295);
                z0Var.f41214d.setTextColor(-1);
                z0Var.f41215e.setTextColor(-5658199);
                z0Var.f41217g.setTextColor(-6250336);
            }
            view2.setTag(z0Var);
        } else {
            view2 = view;
            z0Var = (z0) view.getTag();
        }
        y0.a aVar = (y0.a) getItem(i2);
        if (aVar.f41138b) {
            z0Var.f41219i.setVisibility(8);
        } else {
            z0Var.f41219i.setVisibility(0);
        }
        if (aVar.f41137a) {
            z0Var.f41211a.setVisibility(0);
            CommentBaseBean commentBaseBean = aVar.f41140d;
            z0Var.f41215e.setText(com.join.android.app.common.utils.c.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
            z0Var.f41216f.setText(commentBaseBean.getContent());
            TextView textView = z0Var.f41217g;
            textView.setText(commentBaseBean.getPraise_count() + "");
            if (commentBaseBean.getIs_praise() == 1) {
                z0Var.f41213c.setImageResource(R.drawable.like);
            } else {
                z0Var.f41213c.setImageResource(R.drawable.unlike);
            }
            if (com.join.mgps.Util.d2.i(commentBaseBean.getHead_portrait())) {
                UtilsMy.E2(this.f40860e, commentBaseBean.getHead_portrait(), z0Var.f41212b);
            }
            e0(z0Var.f41211a, commentBaseBean);
            d0(z0Var.f41213c, z0Var.f41217g, commentBaseBean, i2);
            b0(z0Var.f41216f, commentBaseBean);
            z0Var.f41214d.setText(Html.fromHtml(commentBaseBean.getUser_name()));
            z0Var.f41218h.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
            com.join.mgps.Util.i0.S0(z0Var.f41212b, z0Var.f41214d, z0Var.f41215e);
            com.join.mgps.Util.i0.U0(z0Var.f41218h);
        } else {
            z0Var.f41211a.setVisibility(8);
        }
        return view2;
    }

    private View r(int i2, View view, ViewGroup viewGroup) {
        c1 c1Var;
        List<BannerBean> list = ((y0.d) getItem(i2)).f41149a;
        if (view == null) {
            view = LayoutInflater.from(this.f40860e).inflate(R.layout.gamedetial_ad_group_layout, (ViewGroup) null);
            c1Var = new c1(view);
            X(view.findViewById(R.id.top_ad_viewpager));
            view.setTag(c1Var);
        } else {
            c1Var = (c1) view.getTag();
        }
        c1Var.c(list);
        return view;
    }

    private View s(int i2, View view, ViewGroup viewGroup) {
        d1 d1Var;
        View view2;
        y0.e eVar = (y0.e) getItem(i2);
        if (this.f40861f.getFast_entry_switch() == 0) {
            eVar.f41154e = null;
        }
        List<BannerBean> list = eVar.f41154e;
        long j4 = eVar.f41151b;
        String str = eVar.f41152c;
        String str2 = eVar.f41153d;
        if (view == null) {
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.fast_entry_layout, (ViewGroup) null);
            d1Var = new d1();
            d1Var.f40915a = (LinearLayout) view2.findViewById(R.id.autoLayout);
            d1Var.f40923i = (SimpleDraweeView) view2.findViewById(R.id.forumImage);
            d1Var.f40924j = (SimpleDraweeView) view2.findViewById(R.id.qqImage);
            d1Var.f40925k = (SimpleDraweeView) view2.findViewById(R.id.weiCharImage);
            d1Var.f40916b = (LinearLayout) view2.findViewById(R.id.weichartLayout);
            d1Var.f40917c = (LinearLayout) view2.findViewById(R.id.qqLayout);
            d1Var.f40918d = (LinearLayout) view2.findViewById(R.id.forum_layout);
            d1Var.f40922h = (LinearLayout) view2.findViewById(R.id.bottomLayout);
            d1Var.f40919e = (TextView) view2.findViewById(R.id.today_number);
            d1Var.f40926l = (TextView) view2.findViewById(R.id.forumText);
            d1Var.f40927m = (TextView) view2.findViewById(R.id.qqText);
            d1Var.f40928n = (TextView) view2.findViewById(R.id.weiCharText);
            d1Var.f40920f = (TextView) view2.findViewById(R.id.fastFourlayoutText);
            d1Var.f40921g = (SimpleDraweeView) view2.findViewById(R.id.fastFourlayoutImage);
            if (this.f40857b == 0) {
                d1Var.f40916b.setBackgroundResource(R.drawable.detial_fastentry_butn_two);
                d1Var.f40917c.setBackgroundResource(R.drawable.detial_fastentry_butn_two);
                d1Var.f40918d.setBackgroundResource(R.drawable.detial_fastentry_butn_two);
                d1Var.f40915a.setBackgroundResource(R.drawable.detial_fastentry_butn_two);
                view2.findViewById(R.id.title).setVisibility(0);
                X(view2.findViewById(R.id.mainlayout));
            }
            view2.setTag(d1Var);
        } else {
            d1Var = (d1) view.getTag();
            view2 = view;
        }
        if (j4 != 0) {
            d1Var.f40919e.setVisibility(8);
            d1Var.f40918d.setOnClickListener(new r0(j4));
            if (com.join.mgps.Util.d2.i(str)) {
                d1Var.f40917c.setOnClickListener(new s0(str));
                if (com.join.mgps.Util.d2.i(str2)) {
                    d1Var.f40916b.setOnClickListener(new t0(str2));
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean = list.get(0);
                        d1Var.f40920f.setText(bannerBean.getLabel());
                        MyImageLoader.h(d1Var.f40921g, bannerBean.getPic_remote());
                        d1Var.f40915a.setOnClickListener(new a(list));
                    } else {
                        d1Var.f40915a.setVisibility(4);
                    }
                } else {
                    d1Var.f40915a.setVisibility(4);
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean2 = list.get(0);
                        d1Var.f40928n.setText(bannerBean2.getLabel());
                        MyImageLoader.h(d1Var.f40925k, bannerBean2.getPic_remote());
                        d1Var.f40916b.setOnClickListener(new b(list));
                    } else {
                        d1Var.f40916b.setVisibility(4);
                        d1Var.f40922h.setVisibility(8);
                    }
                }
            } else {
                d1Var.f40915a.setVisibility(4);
                if (com.join.mgps.Util.d2.i(str2)) {
                    d1Var.f40917c.setOnClickListener(new c(str2));
                    MyImageLoader.d(d1Var.f40924j, R.drawable.detial_weichart, "");
                    d1Var.f40927m.setText("玩家讨论区");
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean3 = list.get(0);
                        d1Var.f40928n.setText(bannerBean3.getLabel());
                        MyImageLoader.h(d1Var.f40925k, bannerBean3.getPic_remote());
                        d1Var.f40916b.setOnClickListener(new d(list));
                    } else {
                        d1Var.f40922h.setVisibility(8);
                    }
                } else {
                    d1Var.f40922h.setVisibility(8);
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean4 = list.get(0);
                        d1Var.f40927m.setText(bannerBean4.getLabel());
                        MyImageLoader.h(d1Var.f40924j, bannerBean4.getPic_remote());
                        d1Var.f40917c.setOnClickListener(new e(list));
                    }
                }
            }
        } else {
            d1Var.f40919e.setVisibility(8);
            d1Var.f40915a.setVisibility(4);
            if (com.join.mgps.Util.d2.i(str)) {
                d1Var.f40918d.setOnClickListener(new f(str));
                MyImageLoader.d(d1Var.f40923i, R.drawable.detial_qq, "");
                d1Var.f40926l.setText("官方客服");
                if (com.join.mgps.Util.d2.i(str2)) {
                    d1Var.f40917c.setOnClickListener(new g(str2));
                    MyImageLoader.d(d1Var.f40924j, R.drawable.detial_weichart, "");
                    d1Var.f40927m.setText("玩家讨论区");
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean5 = list.get(0);
                        d1Var.f40928n.setText(bannerBean5.getLabel());
                        MyImageLoader.h(d1Var.f40925k, bannerBean5.getPic_remote());
                        d1Var.f40916b.setOnClickListener(new h(list));
                    } else {
                        d1Var.f40928n.setVisibility(8);
                    }
                } else {
                    d1Var.f40922h.setVisibility(8);
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean6 = list.get(0);
                        d1Var.f40927m.setText(bannerBean6.getLabel());
                        MyImageLoader.h(d1Var.f40924j, bannerBean6.getPic_remote());
                        d1Var.f40917c.setOnClickListener(new i(list));
                    } else {
                        d1Var.f40917c.setVisibility(4);
                    }
                }
            } else {
                d1Var.f40922h.setVisibility(8);
                if (com.join.mgps.Util.d2.i(str2)) {
                    d1Var.f40918d.setOnClickListener(new j(str2));
                    MyImageLoader.d(d1Var.f40923i, R.drawable.detial_weichart, "");
                    d1Var.f40926l.setText("玩家讨论区");
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean7 = list.get(0);
                        d1Var.f40927m.setText(bannerBean7.getLabel());
                        MyImageLoader.h(d1Var.f40924j, bannerBean7.getPic_remote());
                        d1Var.f40917c.setOnClickListener(new l(list));
                    } else {
                        d1Var.f40917c.setVisibility(4);
                    }
                } else {
                    d1Var.f40917c.setVisibility(4);
                    if (list != null && list.size() > 0) {
                        BannerBean bannerBean8 = list.get(0);
                        d1Var.f40926l.setText(bannerBean8.getLabel());
                        MyImageLoader.h(d1Var.f40923i, bannerBean8.getPic_remote());
                        d1Var.f40918d.setOnClickListener(new m(list));
                    }
                }
            }
        }
        return view2;
    }

    private View t(int i2, View view, ViewGroup viewGroup) {
        View view2;
        f1 f1Var;
        if (view == null) {
            f1Var = new f1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_gifts, (ViewGroup) null);
            f1Var.f40938a = (RelativeLayout) view2.findViewById(R.id.giftsLayout);
            f1Var.f40940c = (TextView) view2.findViewById(R.id.giftsTitle);
            f1Var.f40939b = (SimpleDraweeView) view2.findViewById(R.id.giftsImage);
            f1Var.f40941d = (ImageView) view2.findViewById(R.id.arrowImage);
            X(f1Var.f40938a);
            view2.setTag(f1Var);
        } else {
            view2 = view;
            f1Var = (f1) view.getTag();
        }
        y0.f fVar = (y0.f) getItem(i2);
        List<RecommendAdInfoData> list = fVar.f41156b;
        if (fVar.f41155a == 1) {
            f1Var.f40938a.setVisibility(0);
            if (list != null && list.size() > 0) {
                f1Var.f40940c.setText(list.get(0).getMain().getLabel());
            }
            MyImageLoader.h(f1Var.f40939b, (list == null || list.size() <= 0 || list.get(0).getMain() == null) ? "" : list.get(0).getMain().getPic_remote());
            f1Var.f40938a.setOnClickListener(new b0(list));
        } else {
            f1Var.f40938a.setVisibility(8);
        }
        return view2;
    }

    private View u(int i2, View view, ViewGroup viewGroup) {
        View view2;
        g1 g1Var;
        if (view == null) {
            g1Var = new g1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_gifts_bottom, (ViewGroup) null);
            LinearLayout linearLayout = (LinearLayout) view2.findViewById(R.id.layoutBottom);
            g1Var.f40946a = linearLayout;
            X(linearLayout);
            view2.setTag(g1Var);
        } else {
            view2 = view;
            g1Var = (g1) view.getTag();
        }
        if (((y0.g) getItem(i2)).f41157a) {
            g1Var.f40946a.setVisibility(0);
        } else {
            g1Var.f40946a.setVisibility(8);
        }
        return view2;
    }

    private View v(int i2, View view, ViewGroup viewGroup) {
        View view2;
        h1 h1Var;
        if (view == null) {
            h1Var = new h1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_gifts_item, (ViewGroup) null);
            h1Var.f40951a = (LinearLayout) view2.findViewById(R.id.layoutContent);
            h1Var.f40952b = (SimpleDraweeView) view2.findViewById(R.id.giftIcon);
            h1Var.f40953c = (TextView) view2.findViewById(R.id.giftName);
            h1Var.f40954d = (TextView) view2.findViewById(R.id.giftSurplus);
            h1Var.f40955e = (TextView) view2.findViewById(R.id.giftCount);
            h1Var.f40956f = (TextView) view2.findViewById(R.id.giftContent);
            h1Var.f40958h = (TextView) view2.findViewById(R.id.getGiftTextView);
            h1Var.f40959i = (TextView) view2.findViewById(R.id.giftSurplusTitle);
            h1Var.f40957g = (RelativeLayout) view2.findViewById(R.id.rightButnLayout);
            view2.setTag(h1Var);
            X(h1Var.f40951a);
        } else {
            view2 = view;
            h1Var = (h1) view.getTag();
        }
        y0.h hVar = (y0.h) getItem(i2);
        if (hVar.f41158a) {
            GiftPackageDataInfoBean giftPackageDataInfoBean = hVar.f41159b;
            h1Var.f40951a.setVisibility(0);
            h1Var.f40951a.setOnClickListener(new r(giftPackageDataInfoBean));
            MyImageLoader.h(h1Var.f40952b, giftPackageDataInfoBean.getGift_package_pic());
            h1Var.f40953c.setText(giftPackageDataInfoBean.getGift_package_title());
            TextView textView = h1Var.f40956f;
            textView.setText("礼包内容:" + giftPackageDataInfoBean.getGift_package_content());
            TextView textView2 = h1Var.f40955e;
            textView2.setText(giftPackageDataInfoBean.getGift_package_count() + "");
            if (giftPackageDataInfoBean.getGift_package_status() == 0) {
                h1Var.f40958h.setText("领取");
                TextView textView3 = h1Var.f40959i;
                textView3.setText("（剩余:" + giftPackageDataInfoBean.getGift_package_surplus() + net.lingala.zip4j.util.e.F0 + giftPackageDataInfoBean.getGift_package_count() + "）");
            } else {
                h1Var.f40954d.setText("该礼包已领取");
                h1Var.f40958h.setText("查看");
            }
            TextView textView4 = h1Var.f40959i;
            textView4.setText("（剩余:" + giftPackageDataInfoBean.getGift_package_surplus() + net.lingala.zip4j.util.e.F0 + giftPackageDataInfoBean.getGift_package_count() + "）");
            h1Var.f40957g.setOnClickListener(new s(giftPackageDataInfoBean));
        } else {
            h1Var.f40951a.setVisibility(8);
        }
        return view2;
    }

    private View w(int i2, View view, ViewGroup viewGroup) {
        f1 f1Var;
        if (view == null) {
            f1Var = new f1();
            view = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_gifts, (ViewGroup) null);
            f1Var.f40938a = (RelativeLayout) view.findViewById(R.id.giftsLayout);
            f1Var.f40940c = (TextView) view.findViewById(R.id.giftsTitle);
            f1Var.f40939b = (SimpleDraweeView) view.findViewById(R.id.giftsImage);
            f1Var.f40941d = (ImageView) view.findViewById(R.id.arrowImage);
            X(f1Var.f40938a);
            view.setTag(f1Var);
        } else {
            f1Var = (f1) view.getTag();
        }
        f1Var.f40938a.setVisibility(8);
        return view;
    }

    private View x(int i2, View view, ViewGroup viewGroup) {
        View view2;
        j1 j1Var;
        y0.j jVar = (y0.j) getItem(i2);
        if (view == null) {
            j1Var = new j1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.detial_gift_and_service_layout, (ViewGroup) null);
            j1Var.f40973a = (LinearLayout) view2.findViewById(R.id.informationLayout);
            j1Var.f40974b = (LinearLayout) view2.findViewById(R.id.giftLayout);
            j1Var.f40975c = (TextView) view2.findViewById(R.id.line);
            j1Var.f40976d = (LinearLayout) view2.findViewById(R.id.look_other);
            j1Var.f40977e = (LinearLayout) view2.findViewById(R.id.look_other2);
            j1Var.f40978f = (SimpleDraweeView) view2.findViewById(R.id.giftIcon);
            j1Var.f40979g = (TextView) view2.findViewById(R.id.getGift);
            j1Var.f40980h = (TextView) view2.findViewById(R.id.giftMessage);
            j1Var.f40981i = (TextView) view2.findViewById(R.id.messageType1);
            j1Var.f40982j = (TextView) view2.findViewById(R.id.messageType2);
            j1Var.f40983k = (TextView) view2.findViewById(R.id.time1);
            j1Var.f40984l = (TextView) view2.findViewById(R.id.time2);
            j1Var.f40985m = (TextView) view2.findViewById(R.id.message1);
            j1Var.f40986n = (TextView) view2.findViewById(R.id.message2);
            j1Var.f40987o = (LinearLayout) view2.findViewById(R.id.backLayout2);
            j1Var.f40988p = (LinearLayout) view2.findViewById(R.id.backLayout22);
            j1Var.f40989q = (LinearLayout) view2.findViewById(R.id.backLayout1);
            view2.setTag(j1Var);
        } else {
            view2 = view;
            j1Var = (j1) view.getTag();
        }
        List<GiftPackageDataInfoBean> list = jVar.f41163a;
        List<ServiceState> list2 = jVar.f41164b;
        j1Var.f40976d.setOnClickListener(new k());
        j1Var.f40977e.setOnClickListener(new v());
        j1Var.f40989q.setOnClickListener(new g0());
        j1Var.f40987o.setOnClickListener(new o0());
        j1Var.f40988p.setOnClickListener(new p0());
        if (list != null && list.size() != 0) {
            GiftPackageDataInfoBean giftPackageDataInfoBean = list.get(0);
            MyImageLoader.h(j1Var.f40978f, list.get(0).getGift_package_pic());
            j1Var.f40980h.setText(list.get(0).getGift_package_title());
            if (giftPackageDataInfoBean.getGift_package_status() == 0) {
                j1Var.f40979g.setText("领取");
            } else {
                j1Var.f40979g.setText("查看");
            }
            j1Var.f40979g.setOnClickListener(new q0(giftPackageDataInfoBean));
        } else {
            j1Var.f40973a.setVisibility(8);
            j1Var.f40975c.setVisibility(8);
        }
        if (list2 != null && list2.size() != 0) {
            ServiceState serviceState = list2.get(0);
            if (this.f40857b == 0) {
                j1Var.f40981i.setBackgroundDrawable(com.join.mgps.Util.h2.d(this.f40860e, "#3ca4fd", 2));
                j1Var.f40981i.setTextColor(Color.parseColor("#3ca4fd"));
            } else {
                j1Var.f40981i.setBackgroundDrawable(com.join.mgps.Util.h2.a(this.f40860e, "#3ca4fd"));
            }
            j1Var.f40981i.setVisibility(0);
            j1Var.f40983k.setText(com.join.android.app.common.utils.c.c(serviceState.getAdd_time()));
            j1Var.f40985m.setText(serviceState.getTitle());
            if (serviceState.getType() == 1) {
                j1Var.f40981i.setText("开服");
            } else {
                j1Var.f40981i.setText("合服");
            }
            j1Var.f40981i.setBackgroundDrawable(com.join.mgps.Util.h2.d(this.f40860e, "#3ca4fd", 2));
            if (list2.size() > 1) {
                ServiceState serviceState2 = list2.get(1);
                if (this.f40857b == 0) {
                    j1Var.f40982j.setBackgroundDrawable(com.join.mgps.Util.h2.d(this.f40860e, "#3ca4fd", 2));
                    j1Var.f40982j.setTextColor(Color.parseColor("#3ca4fd"));
                } else {
                    j1Var.f40982j.setBackgroundDrawable(com.join.mgps.Util.h2.a(this.f40860e, "#3ca4fd"));
                }
                j1Var.f40982j.setVisibility(0);
                j1Var.f40984l.setText(com.join.android.app.common.utils.c.c(serviceState2.getAdd_time()));
                j1Var.f40986n.setText(serviceState2.getTitle());
                if (serviceState2.getType() == 1) {
                    j1Var.f40982j.setText("开服");
                } else {
                    j1Var.f40982j.setText("合服");
                }
                j1Var.f40982j.setBackgroundDrawable(com.join.mgps.Util.h2.d(this.f40860e, "#3ca4fd", 2));
            }
        } else {
            j1Var.f40974b.setVisibility(8);
            j1Var.f40975c.setVisibility(8);
        }
        return view2;
    }

    private View y(int i2, View view, ViewGroup viewGroup) {
        View view2;
        k1 k1Var;
        if (view == null) {
            k1Var = new k1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_infomation_item, (ViewGroup) null);
            k1Var.f40995b = (SimpleDraweeView) view2.findViewById(R.id.informationImage);
            k1Var.f40996c = (TextView) view2.findViewById(R.id.informationTv);
            k1Var.f41001h = (TextView) view2.findViewById(R.id.messageType);
            k1Var.f40997d = (TextView) view2.findViewById(R.id.pubtime);
            k1Var.f40994a = (LinearLayout) view2.findViewById(R.id.layoutInformation);
            k1Var.f40998e = (LinearLayout) view2.findViewById(R.id.informationTitle);
            k1Var.f40999f = (LinearLayout) view2.findViewById(R.id.layoutTop);
            k1Var.f41000g = view2.findViewById(R.id.line_h);
            X(k1Var.f40994a);
            if (this.f40857b == 0) {
                k1Var.f41000g.setVisibility(8);
                k1Var.f40996c.setTextColor(-7434610);
                k1Var.f40997d.setTextColor(-10592674);
                k1Var.f41000g.setVisibility(8);
            }
            view2.setTag(k1Var);
        } else {
            view2 = view;
            k1Var = (k1) view.getTag();
        }
        RecommendInfomationBean recommendInfomationBean = ((y0.k) getItem(i2)).f41165a;
        k1Var.f41001h.setText(recommendInfomationBean.getType());
        if (com.join.mgps.Util.d2.i(recommendInfomationBean.getType())) {
            if (this.f40857b == 0) {
                k1Var.f41001h.setBackgroundDrawable(com.join.mgps.Util.h2.d(this.f40860e, recommendInfomationBean.getType_color(), recommendInfomationBean.getType().length()));
                k1Var.f41001h.setTextColor(Color.parseColor(recommendInfomationBean.getType_color()));
            } else {
                TextView textView = k1Var.f41001h;
                Context context = this.f40860e;
                textView.setBackgroundDrawable(com.join.mgps.Util.h2.a(context, recommendInfomationBean.getType_color() + ""));
            }
            k1Var.f41001h.setVisibility(0);
        } else {
            k1Var.f41001h.setVisibility(8);
        }
        k1Var.f40997d.setText(com.join.android.app.common.utils.c.b(recommendInfomationBean.getTimes()));
        k1Var.f40996c.setText(recommendInfomationBean.getTitle());
        k1Var.f40994a.setOnClickListener(new y(recommendInfomationBean));
        return view2;
    }

    private View z(int i2, View view, ViewGroup viewGroup) {
        View view2;
        l1 l1Var;
        if (view == null) {
            l1Var = new l1();
            view2 = LayoutInflater.from(this.f40860e).inflate(R.layout.mg_gamedetail_infomation_item_top, (ViewGroup) null);
            l1Var.f41015f = (SimpleDraweeView) view2.findViewById(R.id.informationImage);
            l1Var.f41013d = (LinearLayout) view2.findViewById(R.id.layoutInformation);
            l1Var.f41010a = (TextView) view2.findViewById(R.id.pubtime);
            l1Var.f41016g = (TextView) view2.findViewById(R.id.messageType);
            l1Var.f41014e = (TextView) view2.findViewById(R.id.informationTv);
            l1Var.f41011b = (TextView) view2.findViewById(R.id.pv);
            l1Var.f41012c = (TextView) view2.findViewById(R.id.uv);
            X(l1Var.f41013d);
            if (this.f40857b == 0) {
                l1Var.f41014e.setTextColor(-7434610);
                l1Var.f41010a.setTextColor(-10592674);
                l1Var.f41011b.setTextColor(-10592674);
                l1Var.f41012c.setTextColor(-10592674);
                view2.findViewById(R.id.line).setVisibility(8);
            }
            view2.setTag(l1Var);
        } else {
            view2 = view;
            l1Var = (l1) view.getTag();
        }
        RecommendInfomationBean recommendInfomationBean = ((y0.k) getItem(i2)).f41165a;
        MyImageLoader.h(l1Var.f41015f, recommendInfomationBean.getPic_list()[0]);
        TextView textView = l1Var.f41011b;
        textView.setText(recommendInfomationBean.getCommit() + "");
        TextView textView2 = l1Var.f41012c;
        textView2.setText(recommendInfomationBean.getView() + "");
        l1Var.f41010a.setText(com.join.android.app.common.utils.c.b(recommendInfomationBean.getTimes()));
        l1Var.f41014e.setText(recommendInfomationBean.getTitle());
        l1Var.f41016g.setText(recommendInfomationBean.getType());
        if (com.join.mgps.Util.d2.i(recommendInfomationBean.getType())) {
            if (this.f40857b == 0) {
                if (com.join.mgps.Util.d2.h(recommendInfomationBean.getType_color())) {
                    recommendInfomationBean.setType_color("#8dbbec");
                }
                l1Var.f41016g.setBackgroundDrawable(com.join.mgps.Util.h2.d(this.f40860e, recommendInfomationBean.getType_color(), recommendInfomationBean.getType().length()));
                l1Var.f41016g.setTextColor(Color.parseColor(recommendInfomationBean.getType_color()));
            } else {
                TextView textView3 = l1Var.f41016g;
                Context context = this.f40860e;
                textView3.setBackgroundDrawable(com.join.mgps.Util.h2.a(context, recommendInfomationBean.getType_color() + ""));
            }
            l1Var.f41016g.setVisibility(0);
        } else {
            l1Var.f41016g.setVisibility(8);
        }
        l1Var.f41013d.setOnClickListener(new q(recommendInfomationBean));
        return view2;
    }

    LinearLayout.LayoutParams J() {
        DisplayMetrics displayMetrics = this.f40860e.getResources().getDisplayMetrics();
        int dimensionPixelSize = ((displayMetrics.widthPixels - (this.f40860e.getResources().getDimensionPixelSize(R.dimen.dp48) * 2)) - (((int) (displayMetrics.density * 6.0f)) * 2)) / 3;
        return new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
    }

    public v0 P() {
        return this.f40879x;
    }

    public void S(ViewGroup viewGroup, List<GameDetialStrategyTag> list) {
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        if (list == null || list.size() == 0) {
            return;
        }
        TextView[] textViewArr = null;
        for (int i2 = 0; i2 < list.size(); i2++) {
            GameDetialStrategyTag gameDetialStrategyTag = list.get(i2);
            int i4 = i2 % 4;
            if (i4 == 0) {
                View inflate = LayoutInflater.from(this.f40860e).inflate(R.layout.forum_theme_category_item, (ViewGroup) null);
                TextView[] textViewArr2 = {(TextView) inflate.findViewById(R.id.tv1), (TextView) inflate.findViewById(R.id.tv2), (TextView) inflate.findViewById(R.id.tv3), (TextView) inflate.findViewById(R.id.tv4)};
                viewGroup.addView(inflate);
                textViewArr = textViewArr2;
            }
            String tag_name = gameDetialStrategyTag.getTag_name();
            int color = this.f40860e.getResources().getColor(R.color.game_detail_tab_text_color);
            TextView textView = textViewArr[i4];
            textView.setVisibility(0);
            textView.setText(tag_name);
            textView.setTextColor(color);
            if (this.f40857b == 0) {
                textView.setBackgroundResource(R.drawable.detail_strategy_tab_backtwo);
                if (i2 == 0) {
                    textView.setBackgroundResource(R.drawable.detial_strategy_table_back_two_selected);
                    textView.setTextColor(-1);
                } else {
                    textView.setTextColor(Color.parseColor("#7b410b"));
                }
            }
            textView.setOnClickListener(new p(gameDetialStrategyTag, list));
        }
    }

    public void T(int i2, int i4) {
        CommentBaseBean commentBaseBean = ((y0.a) getItem(i2)).f41140d;
        long longValue = Long.valueOf(commentBaseBean.getDespise_count()).longValue();
        if (commentBaseBean.getIs_despise() == 1) {
            commentBaseBean.setIs_despise(0);
            long j4 = longValue - 1;
            if (j4 < 0) {
                commentBaseBean.setDespise_count("0");
            } else {
                commentBaseBean.setDespise_count(j4 + "");
            }
        } else if (i4 != 1) {
            commentBaseBean.setIs_despise(1);
            commentBaseBean.setDespise_count((longValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void U(int i2, int i4) {
        CommentBaseBean commentBaseBean = ((y0.a) getItem(i2)).f41140d;
        long praise_count = commentBaseBean.getPraise_count();
        if (commentBaseBean.getIs_praise() == 1) {
            commentBaseBean.setIs_praise(0);
            long j4 = praise_count - 1;
            if (j4 < 0) {
                commentBaseBean.setPraise_count(0L);
            } else {
                commentBaseBean.setPraise_count(j4);
            }
        } else if (i4 != 1) {
            commentBaseBean.setIs_praise(1);
            commentBaseBean.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    void V(y0 y0Var, boolean z3) {
        if (y0Var == null) {
            return;
        }
        try {
            ((y0.r) y0Var.a()).f41185g = z3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void W(SimpleDraweeView simpleDraweeView, int i2, String str, int i4, String[] strArr) {
        if (this.f40874s == null) {
            this.f40874s = J();
        }
        int i5 = (int) (this.f40860e.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f40874s;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (i2 > 0) {
            layoutParams2.setMargins(i5, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (!com.join.mgps.Util.d2.h(str)) {
            simpleDraweeView.setVisibility(0);
            simpleDraweeView.setLayoutParams(layoutParams2);
            simpleDraweeView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            MyImageLoader.i(simpleDraweeView, str, r.c.f12144g);
            simpleDraweeView.setOnClickListener(new n(i4, strArr));
            return;
        }
        simpleDraweeView.setVisibility(8);
    }

    public void Y(v0 v0Var) {
        this.f40879x = v0Var;
    }

    public void a0(View view, int i2) {
        view.setOnClickListener(new o(i2));
    }

    public void f0(int i2) {
        this.f40857b = i2;
    }

    public void g0(int i2) {
        CommentBaseBean commentBaseBean = ((y0.a) getItem(i2)).f41140d;
        long praise_count = commentBaseBean.getPraise_count();
        commentBaseBean.setIs_praise(0);
        long j4 = praise_count - 1;
        if (j4 < 0) {
            commentBaseBean.setPraise_count(0L);
        } else {
            commentBaseBean.setPraise_count(j4);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<y0> list = this.f40873r;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        List<y0> list = this.f40873r;
        if (list != null) {
            return list.get(i2).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        List<y0> list = this.f40873r;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f40873r.get(i2).b().ordinal();
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i2);
        if (itemViewType == ViewType.TITLE.ordinal()) {
            return K(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.VIEWPAGE.ordinal()) {
            return M(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.UPDATE_RECORD.ordinal()) {
            return L(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.WEB.ordinal()) {
            return O(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_GIFTS.ordinal()) {
            return w(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GAMEAD.ordinal()) {
            return t(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.MESSAGE.ordinal()) {
            return B(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.RECOMMEND.ordinal()) {
            return D(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.INFORMATION.ordinal()) {
            return y(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMIT_HEADER.ordinal()) {
            return o(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMIT.ordinal()) {
            return q(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMIT_REPLY.ordinal()) {
            return p(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.COMMIT_FOOTER.ordinal()) {
            return n(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_ITEM_TOP.ordinal()) {
            return A(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_GIFTS_ITEM.ordinal()) {
            return v(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_GIFTS_BOTTOM.ordinal()) {
            return u(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.VOUCHER.ordinal()) {
            return N(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.DETIAL_ADGROUP.ordinal()) {
            return r(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.INFORMATIONTOP.ordinal()) {
            return z(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.SERVICEITEM.ordinal()) {
            return F(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.STRAYTEGYTABLE.ordinal()) {
            return H(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.STRAYTEGYITEM_IMAGE.ordinal()) {
            return G(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.STRAYTEGYITEM_NOIMAGE.ordinal()) {
            return I(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GAME_FAST_ENTRY.ordinal()) {
            return s(i2, view, viewGroup);
        }
        if (itemViewType == ViewType.GIFT_AND_SERVICE.ordinal()) {
            return x(i2, view, viewGroup);
        }
        return itemViewType == ViewType.NULLITEM.ordinal() ? C(i2, view, viewGroup) : view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public void k(int i2) {
        CommentBaseBean commentBaseBean = ((y0.a) getItem(i2)).f41140d;
        long praise_count = commentBaseBean.getPraise_count();
        commentBaseBean.setIs_praise(1);
        commentBaseBean.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    y0 l(String str, InformationCommentBean informationCommentBean, int i2, boolean z3) {
        return new y0(ViewType.COMMIT_REPLY, new y0.r(str, informationCommentBean, i2, z3));
    }
}
