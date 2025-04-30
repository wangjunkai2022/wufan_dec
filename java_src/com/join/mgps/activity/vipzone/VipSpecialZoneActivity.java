package com.join.mgps.activity.vipzone;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.activity.vipzone.VipSpecialZoneActivity;
import com.join.mgps.activity.vipzone.bean.IconGame;
import com.join.mgps.activity.vipzone.bean.ScreeningConditionBean;
import com.join.mgps.activity.vipzone.bean.SpecialTag;
import com.join.mgps.activity.vipzone.bean.SpecialZoneColloctionbean;
import com.join.mgps.activity.vipzone.bean.SpecialZoneResultbean;
import com.join.mgps.activity.vipzone.bean.SpecialgamelistRequestBean;
import com.join.mgps.activity.vipzone.bean.VipCenterRequestBean;
import com.join.mgps.activity.w1;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.CarouselViewPager2;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.DownloadViewStroke;
import com.join.mgps.customview.n0;
import com.join.mgps.customview.p0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.event.l;
import com.join.mgps.rpc.impl.h;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import g1.f;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
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
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EActivity(R.layout.vip_specialzone_activity)
/* loaded from: classes.dex */
public class VipSpecialZoneActivity extends BaseAppCompatActivity {
    SpecialAdapter adapter;
    @ViewById
    View appbar;
    @ViewById
    ImageView back;
    @Extra
    int boardId;
    Context context;
    List<DownloadTask> downloadTasks;
    @ViewById
    CustomerDownloadView downloadView;
    @ViewById
    View filter;
    @ViewById
    View filterArr;
    n0 filterGames;
    p0 filterPw;
    private int lastVisibleIndex;
    @ViewById
    View loding_faile;
    @ViewById
    View loding_layout;
    LinearLayoutManager manager;
    @ViewById
    XRecyclerView recyclerView;
    ScreeningConditionBean screening_condition;
    @ViewById
    ImageView search;
    @ViewById
    TextView title;
    List<VipCenterDataMain> vipCenterDataMains = new ArrayList();
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    int _from = 0;
    int _from_type = 0;
    int page = 1;
    SpecialTag tag1 = new SpecialTag();
    SpecialTag tag2 = new SpecialTag();
    SpecialTag tag3 = new SpecialTag();
    List<CollectionBeanSubBusiness> businessList = new ArrayList();
    private int firstVisiblePosition = 0;
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    List<View> pageview = new ArrayList();
    PagerAdapter mPagerAdapter = new PagerAdapter() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.4
        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            List<View> list = VipSpecialZoneActivity.this.pageview;
            if (list == null || list.size() <= i2) {
                return;
            }
            ((ViewPager) viewGroup).removeView(VipSpecialZoneActivity.this.pageview.get(i2));
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return VipSpecialZoneActivity.this.pageview.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            List<View> list = VipSpecialZoneActivity.this.pageview;
            if (list != null && list.size() > i2) {
                ((ViewPager) viewGroup).addView(VipSpecialZoneActivity.this.pageview.get(i2));
                return VipSpecialZoneActivity.this.pageview.get(i2);
            }
            List<View> list2 = VipSpecialZoneActivity.this.pageview;
            if (list2 == null || list2.size() <= 0) {
                return null;
            }
            ((ViewPager) viewGroup).addView(VipSpecialZoneActivity.this.pageview.get(0));
            return VipSpecialZoneActivity.this.pageview.get(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class SpecialAdapter extends RecyclerView.Adapter<VipHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.join.mgps.activity.vipzone.VipSpecialZoneActivity$SpecialAdapter$2  reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass2 implements View.OnClickListener {
            AnonymousClass2() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onClick$0(SpecialTag specialTag, SpecialTag specialTag2, SpecialTag specialTag3) {
                VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                vipSpecialZoneActivity.tag1 = specialTag;
                vipSpecialZoneActivity.tag2 = specialTag2;
                vipSpecialZoneActivity.tag3 = specialTag3;
                vipSpecialZoneActivity.page = 1;
                vipSpecialZoneActivity.getGamelist();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void lambda$onClick$1() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                if (vipSpecialZoneActivity.filterGames == null) {
                    vipSpecialZoneActivity.filterGames = new n0(VipSpecialZoneActivity.this.context);
                    VipSpecialZoneActivity.this.filterGames.e(new n0.f() { // from class: com.join.mgps.activity.vipzone.e
                        @Override // com.join.mgps.customview.n0.f
                        public final void onfinifilter(SpecialTag specialTag, SpecialTag specialTag2, SpecialTag specialTag3) {
                            VipSpecialZoneActivity.SpecialAdapter.AnonymousClass2.this.lambda$onClick$0(specialTag, specialTag2, specialTag3);
                        }
                    });
                    VipSpecialZoneActivity.this.filterGames.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.join.mgps.activity.vipzone.d
                        @Override // android.widget.PopupWindow.OnDismissListener
                        public final void onDismiss() {
                            VipSpecialZoneActivity.SpecialAdapter.AnonymousClass2.lambda$onClick$1();
                        }
                    });
                    VipSpecialZoneActivity.this.filterGames.setWidth(-1);
                }
                VipSpecialZoneActivity vipSpecialZoneActivity2 = VipSpecialZoneActivity.this;
                vipSpecialZoneActivity2.filterGames.f(vipSpecialZoneActivity2.recyclerView, vipSpecialZoneActivity2.screening_condition);
            }
        }

        SpecialAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return VipSpecialZoneActivity.this.vipCenterDataMains.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return VipSpecialZoneActivity.this.vipCenterDataMains.get(i2).getType();
        }

        void updateUi(ViewHolderAppItem viewHolderAppItem, Boolean bool, Boolean bool2) {
            if (bool.booleanValue()) {
                viewHolderAppItem.linearLayout2.setVisibility(8);
                viewHolderAppItem.progressBar.setVisibility(8);
                viewHolderAppItem.progressBarZip.setVisibility(8);
                viewHolderAppItem.tipsLayout.setVisibility(0);
                viewHolderAppItem.describe.setVisibility(0);
                return;
            }
            viewHolderAppItem.linearLayout2.setVisibility(0);
            if (bool2.booleanValue()) {
                viewHolderAppItem.progressBar.setVisibility(8);
                viewHolderAppItem.progressBarZip.setVisibility(0);
            } else {
                viewHolderAppItem.progressBarZip.setVisibility(8);
                viewHolderAppItem.progressBar.setVisibility(0);
            }
            viewHolderAppItem.tipsLayout.setVisibility(8);
            viewHolderAppItem.describe.setVisibility(8);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull VipHolder vipHolder, int i2) {
            VipCenterDataMain vipCenterDataMain = VipSpecialZoneActivity.this.vipCenterDataMains.get(i2);
            int itemViewType = getItemViewType(i2);
            if (itemViewType == 1) {
                ViewPagerHolder viewPagerHolder = (ViewPagerHolder) vipHolder;
                viewPagerHolder.viewpager.setAdapter(VipSpecialZoneActivity.this.mPagerAdapter);
                viewPagerHolder.viewpager.setClipToPadding(false);
                viewPagerHolder.viewpager.setPadding(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp32), 0, VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp32), 0);
                viewPagerHolder.viewpager.setPageMargin(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp16));
                viewPagerHolder.viewpager.setCurrentItem(1);
                VipSpecialZoneActivity.this.mPagerAdapter.notifyDataSetChanged();
            } else if (itemViewType != 2) {
                if (itemViewType != 3) {
                    if (itemViewType != 4) {
                        return;
                    }
                    List<IconGame> game_list = ((SpecialZoneColloctionbean) vipCenterDataMain.getObject()).getGame_list();
                    HListView hListView = ((VipHlistHolder) vipHolder).listview;
                    VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                    hListView.setAdapter((ListAdapter) new GameHlistAdapter(game_list, vipSpecialZoneActivity.context, vipSpecialZoneActivity._from));
                    return;
                }
                final SpecialZoneColloctionbean specialZoneColloctionbean = (SpecialZoneColloctionbean) vipCenterDataMain.getObject();
                VipTitleHolder vipTitleHolder = (VipTitleHolder) vipHolder;
                vipTitleHolder.title.setText(specialZoneColloctionbean.getTitle());
                if (!specialZoneColloctionbean.getTitle().equals("热门游戏")) {
                    vipTitleHolder.more.setText(LocalGameActivity.f32927r);
                    vipTitleHolder.more.setCompoundDrawablePadding(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp13));
                    Drawable drawable = ContextCompat.getDrawable(VipSpecialZoneActivity.this.context, R.drawable.special_more);
                    drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                    vipTitleHolder.more.setCompoundDrawables(null, null, drawable, null);
                    vipTitleHolder.more.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.SpecialAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            IntentDateBean intentDateBean = new IntentDateBean();
                            intentDateBean.setLink_type(2);
                            intentDateBean.setTpl_type(specialZoneColloctionbean.getTpl_type());
                            intentDateBean.setCrc_link_type_val(specialZoneColloctionbean.getCollection_id());
                            IntentUtil.getInstance().intentActivity(VipSpecialZoneActivity.this.context, intentDateBean);
                        }
                    });
                    return;
                }
                vipTitleHolder.more.setText("热门游戏");
                vipTitleHolder.line.setVisibility(0);
                vipTitleHolder.more.setCompoundDrawablePadding(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp13));
                Drawable drawable2 = ContextCompat.getDrawable(VipSpecialZoneActivity.this.context, R.drawable.special_filter);
                drawable2.setBounds(0, 0, drawable2.getMinimumWidth(), drawable2.getMinimumHeight());
                vipTitleHolder.more.setCompoundDrawables(null, null, drawable2, null);
                vipTitleHolder.more.setOnClickListener(new AnonymousClass2());
            } else {
                final CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) vipCenterDataMain.object;
                ViewHolderAppItem viewHolderAppItem = (ViewHolderAppItem) vipHolder;
                DownloadTask downloadTask = collectionBeanSubBusiness.getDownloadTask();
                long parseDouble = (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d);
                viewHolderAppItem.line.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewHolderAppItem.line.getLayoutParams();
                layoutParams.setMargins(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp153), 0, VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp30), 0);
                viewHolderAppItem.line.setLayoutParams(layoutParams);
                MyImageLoader.h(viewHolderAppItem.icon, collectionBeanSubBusiness.getIco_remote().trim());
                UtilsMy.C(collectionBeanSubBusiness.getScore(), collectionBeanSubBusiness.getDown_count(), collectionBeanSubBusiness.getSize(), collectionBeanSubBusiness.getSp_tag_info(), collectionBeanSubBusiness.getTag_info(), viewHolderAppItem.tipsLayout, VipSpecialZoneActivity.this.context);
                UtilsMy.m0(collectionBeanSubBusiness.getPay_tag_info(), collectionBeanSubBusiness.getCrc_sign_id());
                UtilsMy.c1(collectionBeanSubBusiness.getDownloadTask(), collectionBeanSubBusiness);
                viewHolderAppItem.downloadViewStroke.a(downloadTask, collectionBeanSubBusiness);
                viewHolderAppItem.name.setText(collectionBeanSubBusiness.getGame_name());
                viewHolderAppItem.describe.setText(collectionBeanSubBusiness.getInfo());
                viewHolderAppItem.relateLayoutApp.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.SpecialAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        IntentUtil.getInstance().goGameDetialActivity(VipSpecialZoneActivity.this.context, collectionBeanSubBusiness.getCrc_sign_id(), collectionBeanSubBusiness.getGame_info_tpl_type(), Integer.valueOf(collectionBeanSubBusiness.getSp_tpl_two_position()).intValue(), collectionBeanSubBusiness.get_from_type());
                    }
                });
                String plugin_num = collectionBeanSubBusiness.getPlugin_num();
                if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                    viewHolderAppItem.tipsLayout.setVisibility(8);
                    viewHolderAppItem.giftPackageSwich.setVisibility(8);
                } else if (downloadTask == null) {
                    updateUi(viewHolderAppItem, Boolean.TRUE, Boolean.FALSE);
                } else {
                    t0.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
                    int status = downloadTask.getStatus();
                    if (status != 0) {
                        if (status != 42) {
                            if (status != 48) {
                                if (status != 2) {
                                    if (status != 3) {
                                        if (status != 5) {
                                            if (status != 6) {
                                                if (status != 7) {
                                                    switch (status) {
                                                        case 9:
                                                        case 11:
                                                            break;
                                                        case 10:
                                                            Boolean bool = Boolean.FALSE;
                                                            updateUi(viewHolderAppItem, bool, bool);
                                                            TextView textView = viewHolderAppItem.appSize;
                                                            textView.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            try {
                                                                viewHolderAppItem.progressBar.setProgress((int) downloadTask.getProgress());
                                                            } catch (Exception e4) {
                                                                e4.printStackTrace();
                                                            }
                                                            viewHolderAppItem.lodingInfo.setText("等待中");
                                                            return;
                                                        case 12:
                                                            updateUi(viewHolderAppItem, Boolean.FALSE, Boolean.TRUE);
                                                            TextView textView2 = viewHolderAppItem.appSize;
                                                            textView2.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            viewHolderAppItem.lodingInfo.setText("解压中..");
                                                            viewHolderAppItem.progressBarZip.setProgress((int) downloadTask.getProgress());
                                                            return;
                                                        case 13:
                                                            updateUi(viewHolderAppItem, Boolean.FALSE, Boolean.TRUE);
                                                            TextView textView3 = viewHolderAppItem.appSize;
                                                            textView3.setText(UtilsMy.a(parseDouble) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                                            viewHolderAppItem.lodingInfo.setText("点击重新解压");
                                                            viewHolderAppItem.progressBarZip.setProgress((int) downloadTask.getProgress());
                                                            return;
                                                        default:
                                                            return;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    Boolean bool2 = Boolean.FALSE;
                                    updateUi(viewHolderAppItem, bool2, bool2);
                                    try {
                                        if (downloadTask.getSize() == 0) {
                                            TextView textView4 = viewHolderAppItem.appSize;
                                            textView4.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                        } else {
                                            TextView textView5 = viewHolderAppItem.appSize;
                                            textView5.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                        }
                                        viewHolderAppItem.progressBar.setProgress((int) downloadTask.getProgress());
                                        return;
                                    } catch (Exception e5) {
                                        e5.printStackTrace();
                                        return;
                                    }
                                }
                                UtilsMy.C3(downloadTask);
                                Boolean bool3 = Boolean.FALSE;
                                updateUi(viewHolderAppItem, bool3, bool3);
                                if (downloadTask.getSize() == 0) {
                                    TextView textView6 = viewHolderAppItem.appSize;
                                    textView6.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                } else {
                                    TextView textView7 = viewHolderAppItem.appSize;
                                    textView7.setText(UtilsMy.a(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                }
                                viewHolderAppItem.progressBar.setProgress((int) downloadTask.getProgress());
                                String speed = downloadTask.getSpeed();
                                TextView textView8 = viewHolderAppItem.lodingInfo;
                                textView8.setText(speed + "/S");
                                return;
                            }
                        }
                        Boolean bool4 = Boolean.TRUE;
                        updateUi(viewHolderAppItem, bool4, bool4);
                        return;
                    }
                    updateUi(viewHolderAppItem, Boolean.TRUE, Boolean.FALSE);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public VipHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            if (i2 == 1) {
                return new ViewPagerHolder(LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.special_zone_viewpager_layout, viewGroup, false));
            } else if (i2 == 2) {
                return new ViewHolderAppItem(LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.item_simulator_download_view, (ViewGroup) null));
            } else if (i2 == 3) {
                return new VipTitleHolder(LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.vip_center_title_layout, viewGroup, false));
            } else if (i2 == 4) {
                return new VipHlistHolder(LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.vip_center_hlistview_layout, viewGroup, false));
            } else if (i2 != 5) {
                return null;
            } else {
                TextView textView = new TextView(VipSpecialZoneActivity.this.context);
                textView.setWidth(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp1280));
                textView.setHeight(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp10));
                textView.setBackgroundColor(Color.parseColor("#EFEFF6"));
                return new VipHolder(textView);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class ViewHolderAppItem extends VipHolder {
        public TextView appSize;
        public TextView describe;
        DownloadViewStroke downloadViewStroke;
        ImageView giftPackageSwich;
        SimpleDraweeView icon;
        View line;
        LinearLayout linearLayout2;
        public TextView lodingInfo;
        TextView name;
        public ProgressBar progressBar;
        public ProgressBar progressBarZip;
        RelativeLayout relateLayoutApp;
        LinearLayout tipsLayout;

        public ViewHolderAppItem(@NonNull View view) {
            super(view);
            this.icon = (SimpleDraweeView) view.findViewById(R.id.mgListviewItemIcon);
            this.giftPackageSwich = (ImageView) view.findViewById(R.id.giftPackageSwich);
            this.name = (TextView) view.findViewById(R.id.mgListviewItemAppname);
            this.describe = (TextView) view.findViewById(R.id.mgListviewItemDescribe);
            this.linearLayout2 = (LinearLayout) view.findViewById(R.id.linearLayout2);
            this.tipsLayout = (LinearLayout) view.findViewById(R.id.tipsLayout);
            this.appSize = (TextView) view.findViewById(R.id.appSize);
            this.lodingInfo = (TextView) view.findViewById(R.id.loding_info);
            this.progressBar = (ProgressBar) view.findViewById(R.id.progressBar);
            this.progressBarZip = (ProgressBar) view.findViewById(R.id.progressBarZip);
            this.downloadViewStroke = (DownloadViewStroke) view.findViewById(R.id.downloadView);
            this.relateLayoutApp = (RelativeLayout) view.findViewById(R.id.relateLayoutApp);
            this.progressBarZip = (ProgressBar) view.findViewById(R.id.progressBarZip);
            this.line = view.findViewById(R.id.line);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class ViewPagerHolder extends VipHolder {
        CarouselViewPager2 viewpager;

        public ViewPagerHolder(@NonNull View view) {
            super(view);
            this.viewpager = (CarouselViewPager2) view.findViewById(R.id.viewpager);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipCenterDataMain {
        public static final int GAMELIST = 2;
        public static final int HLIST = 4;
        public static final int LINE = 5;
        public static final int TITLE = 3;
        public static final int VIEWPAGER = 1;
        Object object;
        int type;

        public VipCenterDataMain(int i2, Object obj) {
            this.type = i2;
            this.object = obj;
        }

        public Object getObject() {
            return this.object;
        }

        public int getType() {
            return this.type;
        }

        public void setObject(Object obj) {
            this.object = obj;
        }

        public void setType(int i2) {
            this.type = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipHlistHolder extends VipHolder {
        HListView listview;

        public VipHlistHolder(@NonNull View view) {
            super(view);
            this.listview = (HListView) view.findViewById(R.id.listview);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipHolder extends RecyclerView.ViewHolder {
        public VipHolder(@NonNull View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class VipTitleHolder extends VipHolder {
        View line;
        TextView more;
        TextView title;

        public VipTitleHolder(@NonNull View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.more = (TextView) view.findViewById(R.id.more);
            this.line = view.findViewById(R.id.line);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addnewDatas(List<CollectionBeanSub> list) {
        for (CollectionBeanSub collectionBeanSub : list) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
            collectionBeanSubBusiness.set_from(this._from);
            collectionBeanSubBusiness.set_from_type(this._from_type);
            setDownloadTasks(collectionBeanSubBusiness);
            this.businessList.add(collectionBeanSubBusiness);
            this.vipCenterDataMains.add(new VipCenterDataMain(2, collectionBeanSubBusiness));
        }
        this.adapter.notifyDataSetChanged();
    }

    private void getData() {
        RequestModel<VipCenterRequestBean> requestModel = new RequestModel<>(this);
        VipCenterRequestBean vipCenterRequestBean = new VipCenterRequestBean();
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        vipCenterRequestBean.setUid(accountData.getUid());
        vipCenterRequestBean.setUserToken(accountData.getToken());
        vipCenterRequestBean.setVip(accountData.getVip_level());
        vipCenterRequestBean.setBoardId(this.boardId);
        requestModel.setArgs(vipCenterRequestBean);
        h.L().J().N(requestModel).enqueue(new Callback<ResponseModel<SpecialZoneResultbean>>() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<SpecialZoneResultbean>> call, Throwable th) {
                th.printStackTrace();
                VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                if (vipSpecialZoneActivity.screening_condition == null) {
                    vipSpecialZoneActivity.loding_faile.setVisibility(0);
                    VipSpecialZoneActivity.this.loding_layout.setVisibility(8);
                    VipSpecialZoneActivity.this.recyclerView.setVisibility(8);
                }
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<SpecialZoneResultbean>> call, Response<ResponseModel<SpecialZoneResultbean>> response) {
                Context context;
                Context context2;
                Context context3;
                if (response != null && response.body() != null) {
                    ResponseModel<SpecialZoneResultbean> body = response.body();
                    if (body.getCode() == 200) {
                        SpecialZoneResultbean data = body.getData();
                        VipSpecialZoneActivity.this.screening_condition = data.getScreening_condition();
                        VipSpecialZoneActivity.this.screening_condition.getSort_type().get(0).setIsselected(true);
                        SpecialTag specialTag = new SpecialTag();
                        specialTag.setId(0);
                        specialTag.setTitle(w1.f38447y0);
                        specialTag.setIsselected(true);
                        VipSpecialZoneActivity.this.screening_condition.getGame_class().add(0, specialTag);
                        SpecialTag specialTag2 = new SpecialTag();
                        specialTag2.setId(0);
                        specialTag2.setTitle(w1.f38447y0);
                        specialTag2.setIsselected(true);
                        VipSpecialZoneActivity.this.screening_condition.getGame_type().add(0, specialTag2);
                        VipSpecialZoneActivity.this.pageview.clear();
                        VipSpecialZoneActivity.this.mPagerAdapter.notifyDataSetChanged();
                        List<BannerBean> banner = data.getBanner();
                        View view = null;
                        View view2 = null;
                        for (int i2 = 0; i2 < banner.size(); i2++) {
                            BannerBean bannerBean = banner.get(i2);
                            final IntentDateBean intentDataBean = bannerBean.getIntentDataBean();
                            intentDataBean.setExtBean(new ExtBean(VipSpecialZoneActivity.this._from_type));
                            View inflate = LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.detial_viewpager_layout, (ViewGroup) null);
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate.findViewById(R.id.adImage);
                            simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.2.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view3) {
                                    IntentUtil.getInstance().intentActivity(VipSpecialZoneActivity.this.context, intentDataBean);
                                }
                            });
                            MyImageLoader.f(simpleDraweeView, R.drawable.banner_normal_icon, bannerBean.getPic_remote(), MyImageLoader.D(VipSpecialZoneActivity.this.context, context.getResources().getDimensionPixelOffset(R.dimen.wdp16)));
                            VipSpecialZoneActivity.this.pageview.add(inflate);
                            if (i2 == 0) {
                                view = LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.detial_viewpager_layout, (ViewGroup) null);
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) view.findViewById(R.id.adImage);
                                simpleDraweeView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.2.2
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view3) {
                                        IntentUtil.getInstance().intentActivity(VipSpecialZoneActivity.this.context, intentDataBean);
                                    }
                                });
                                MyImageLoader.f(simpleDraweeView2, R.drawable.banner_normal_icon, bannerBean.getPic_remote(), MyImageLoader.D(VipSpecialZoneActivity.this.context, context3.getResources().getDimensionPixelOffset(R.dimen.wdp16)));
                            } else if (i2 == banner.size() - 1) {
                                view2 = LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.detial_viewpager_layout, (ViewGroup) null);
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) view2.findViewById(R.id.adImage);
                                simpleDraweeView3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.2.3
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view3) {
                                        IntentUtil.getInstance().intentActivity(VipSpecialZoneActivity.this.context, intentDataBean);
                                    }
                                });
                                MyImageLoader.f(simpleDraweeView3, R.drawable.banner_normal_icon, bannerBean.getPic_remote(), MyImageLoader.D(VipSpecialZoneActivity.this.context, context2.getResources().getDimensionPixelOffset(R.dimen.wdp16)));
                            }
                        }
                        VipSpecialZoneActivity.this.pageview.add(view);
                        VipSpecialZoneActivity.this.pageview.add(0, view2);
                        VipSpecialZoneActivity.this.showmainData(data);
                        return;
                    }
                }
                VipSpecialZoneActivity.this.loding_faile.setVisibility(0);
                VipSpecialZoneActivity.this.loding_layout.setVisibility(8);
                VipSpecialZoneActivity.this.recyclerView.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getGamelist() {
        RequestModel<SpecialgamelistRequestBean> requestModel = new RequestModel<>(this);
        SpecialgamelistRequestBean specialgamelistRequestBean = new SpecialgamelistRequestBean();
        specialgamelistRequestBean.setBoardId(this.boardId);
        specialgamelistRequestBean.setSortType(this.tag1.getId());
        specialgamelistRequestBean.setGameType(this.tag2.getId());
        specialgamelistRequestBean.setGameClass(this.tag3.getId());
        specialgamelistRequestBean.setPage(this.page);
        requestModel.setArgs(specialgamelistRequestBean);
        h.L().J().M(requestModel).enqueue(new Callback<ResponseModel<List<CollectionBeanSub>>>() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.3
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<List<CollectionBeanSub>>> call, Throwable th) {
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<List<CollectionBeanSub>>> call, Response<ResponseModel<List<CollectionBeanSub>>> response) {
                if (response != null && response.body() != null) {
                    ResponseModel<List<CollectionBeanSub>> body = response.body();
                    if (body.getCode() == 200) {
                        List<CollectionBeanSub> data = body.getData();
                        if (data != null && data.size() > 0) {
                            VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                            if (vipSpecialZoneActivity.page == 1) {
                                vipSpecialZoneActivity.businessList.clear();
                                VipSpecialZoneActivity.this.recyclerView.t1();
                                ArrayList<VipCenterDataMain> arrayList = new ArrayList();
                                for (VipCenterDataMain vipCenterDataMain : VipSpecialZoneActivity.this.vipCenterDataMains) {
                                    if (vipCenterDataMain.type == 2) {
                                        arrayList.add(vipCenterDataMain);
                                    }
                                }
                                for (VipCenterDataMain vipCenterDataMain2 : arrayList) {
                                    VipSpecialZoneActivity.this.vipCenterDataMains.remove(vipCenterDataMain2);
                                }
                            }
                            VipSpecialZoneActivity vipSpecialZoneActivity2 = VipSpecialZoneActivity.this;
                            vipSpecialZoneActivity2.page++;
                            vipSpecialZoneActivity2.addnewDatas(data);
                        } else {
                            VipSpecialZoneActivity.this.recyclerView.setNoMore();
                            return;
                        }
                    } else if (body.getCode() == 500) {
                        i2.a(VipSpecialZoneActivity.this.context).b(body.getMessage());
                    }
                }
                VipSpecialZoneActivity.this.recyclerView.q1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filter$0(int i2, String str) {
        ScreeningConditionBean screeningConditionBean;
        this.boardId = i2;
        updateFrom();
        this.title.setText(str);
        this.page = 1;
        this.recyclerView.t1();
        getData();
        n0 n0Var = this.filterGames;
        if (n0Var == null || (screeningConditionBean = this.screening_condition) == null) {
            return;
        }
        n0Var.d(screeningConditionBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filter$1() {
        this.filterArr.setRotation(0.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0038, code lost:
        r1 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        if (r1.getMod_info() == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
        r2 = r6.downloadTasksMap.get(r1.getMod_info().getMod_game_id());
        r4 = r6.downloadTasksMap.get(r1.getGame_id());
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
        if (r2 != null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0063, code lost:
        if (r4 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
        r1.setDownloadTask(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
        if (r2 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
        r1.setDownloadTask(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
        if (r4 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
        r1.setDownloadTask(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0081, code lost:
        if (r1.getGame_id().equals(r7.getCrc_link_type_val()) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
        r1.setDownloadTask(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0093, code lost:
        if (r1.getCrc_sign_id().equals(r7.getCrc_link_type_val()) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0095, code lost:
        r1.setDownloadTask(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        r6.downloadTasksMap.remove(r1.getCrc_link_type_val());
        r0.remove();
        r0 = r6.businessList.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        if (r0.hasNext() == false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void receiveDelete(com.github.snowdream.android.app.downloader.DownloadTask r7) {
        /*
            r6 = this;
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r0 = r6.downloadTasks     // Catch: java.lang.Exception -> L99
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L99
        L6:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L99
            if (r1 == 0) goto L9d
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L99
            com.github.snowdream.android.app.downloader.DownloadTask r1 = (com.github.snowdream.android.app.downloader.DownloadTask) r1     // Catch: java.lang.Exception -> L99
            java.lang.String r2 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            java.lang.String r3 = r7.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> L99
            if (r2 == 0) goto L6
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r2 = r6.downloadTasksMap     // Catch: java.lang.Exception -> L99
            java.lang.String r1 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            r2.remove(r1)     // Catch: java.lang.Exception -> L99
            r0.remove()     // Catch: java.lang.Exception -> L99
            java.util.List<com.join.mgps.business.CollectionBeanSubBusiness> r0 = r6.businessList     // Catch: java.lang.Exception -> L99
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L99
        L32:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L99
            if (r1 == 0) goto L9d
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L99
            com.join.mgps.business.CollectionBeanSubBusiness r1 = (com.join.mgps.business.CollectionBeanSubBusiness) r1     // Catch: java.lang.Exception -> L99
            com.join.mgps.dto.ModInfoBean r2 = r1.getMod_info()     // Catch: java.lang.Exception -> L99
            r3 = 0
            if (r2 == 0) goto L87
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r2 = r6.downloadTasksMap     // Catch: java.lang.Exception -> L99
            com.join.mgps.dto.ModInfoBean r4 = r1.getMod_info()     // Catch: java.lang.Exception -> L99
            java.lang.String r4 = r4.getMod_game_id()     // Catch: java.lang.Exception -> L99
            java.lang.Object r2 = r2.get(r4)     // Catch: java.lang.Exception -> L99
            com.github.snowdream.android.app.downloader.DownloadTask r2 = (com.github.snowdream.android.app.downloader.DownloadTask) r2     // Catch: java.lang.Exception -> L99
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r6.downloadTasksMap     // Catch: java.lang.Exception -> L99
            java.lang.String r5 = r1.getGame_id()     // Catch: java.lang.Exception -> L99
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Exception -> L99
            com.github.snowdream.android.app.downloader.DownloadTask r4 = (com.github.snowdream.android.app.downloader.DownloadTask) r4     // Catch: java.lang.Exception -> L99
            if (r2 != 0) goto L69
            if (r4 != 0) goto L69
            r1.setDownloadTask(r3)     // Catch: java.lang.Exception -> L99
            goto L32
        L69:
            if (r2 == 0) goto L6f
            r1.setDownloadTask(r2)     // Catch: java.lang.Exception -> L99
            goto L32
        L6f:
            if (r4 == 0) goto L75
            r1.setDownloadTask(r4)     // Catch: java.lang.Exception -> L99
            goto L32
        L75:
            java.lang.String r2 = r1.getGame_id()     // Catch: java.lang.Exception -> L99
            java.lang.String r4 = r7.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Exception -> L99
            if (r2 == 0) goto L32
            r1.setDownloadTask(r3)     // Catch: java.lang.Exception -> L99
            goto L32
        L87:
            java.lang.String r2 = r1.getCrc_sign_id()     // Catch: java.lang.Exception -> L99
            java.lang.String r4 = r7.getCrc_link_type_val()     // Catch: java.lang.Exception -> L99
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Exception -> L99
            if (r2 == 0) goto L32
            r1.setDownloadTask(r3)     // Catch: java.lang.Exception -> L99
            goto L32
        L99:
            r7 = move-exception
            r7.printStackTrace()
        L9d:
            com.join.mgps.activity.vipzone.VipSpecialZoneActivity$SpecialAdapter r7 = r6.adapter
            r7.notifyDataSetChanged()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.receiveDelete(com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            this.adapter.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.E3(this.downloadTasks, downloadTask);
        if (!this.downloadTasksMap.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        this.adapter.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.adapter.notifyDataSetChanged();
    }

    private void setDownloadTasks(CollectionBeanSubBusiness collectionBeanSubBusiness) {
        if (collectionBeanSubBusiness.getMod_info() != null) {
            DownloadTask downloadTask = this.downloadTasksMap.get(collectionBeanSubBusiness.getMod_info().getMod_game_id());
            DownloadTask downloadTask2 = this.downloadTasksMap.get(collectionBeanSubBusiness.getGame_id());
            if (downloadTask == null && downloadTask2 == null) {
                collectionBeanSubBusiness.setDownloadTask(null);
                return;
            } else if (downloadTask != null) {
                collectionBeanSubBusiness.setDownloadTask(downloadTask);
                return;
            } else if (downloadTask2 != null) {
                collectionBeanSubBusiness.setDownloadTask(downloadTask2);
                return;
            } else {
                collectionBeanSubBusiness.setDownloadTask(null);
                return;
            }
        }
        collectionBeanSubBusiness.setDownloadTask(this.downloadTasksMap.get(collectionBeanSubBusiness.getGame_id()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showmainData(SpecialZoneResultbean specialZoneResultbean) {
        if (specialZoneResultbean == null) {
            return;
        }
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.recyclerView.setVisibility(0);
        this.page = 2;
        this.vipCenterDataMains.clear();
        this.vipCenterDataMains.add(new VipCenterDataMain(1, specialZoneResultbean.getBanner()));
        this.vipCenterDataMains.add(new VipCenterDataMain(3, specialZoneResultbean.getCollection_game_list()));
        this.vipCenterDataMains.add(new VipCenterDataMain(4, specialZoneResultbean.getCollection_game_list()));
        SpecialZoneColloctionbean specialZoneColloctionbean = new SpecialZoneColloctionbean();
        specialZoneColloctionbean.setTitle("热门游戏");
        this.vipCenterDataMains.add(new VipCenterDataMain(3, specialZoneColloctionbean));
        List<CollectionBeanSub> ranking_game_list = specialZoneResultbean.getRanking_game_list();
        if (ranking_game_list != null) {
            for (CollectionBeanSub collectionBeanSub : ranking_game_list) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                collectionBeanSubBusiness.set_from(this._from);
                collectionBeanSubBusiness.set_from_type(this._from_type);
                setDownloadTasks(collectionBeanSubBusiness);
                this.businessList.add(collectionBeanSubBusiness);
                this.vipCenterDataMains.add(new VipCenterDataMain(2, collectionBeanSubBusiness));
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSubBusiness collectionBeanSubBusiness : this.businessList) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    DownloadTask downloadTask2 = this.downloadTasksMap.get(mod_info.getMain_game_id());
                    boolean z3 = true;
                    boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.downloadTasksMap.get(mod_info.getMod_game_id());
                    if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                        z3 = false;
                    }
                    if (z3 && z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z3) {
                        if (collectionBeanSubBusiness.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z4) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    } else {
                        DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                        if (B == null) {
                            B = f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                        }
                        if (B != null && downloadTask.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                            collectionBeanSubBusiness.setDownloadTask(downloadTask);
                            return;
                        }
                    }
                } else if (collectionBeanSubBusiness.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                    return;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void updateFrom() {
        switch (this.boardId) {
            case 52:
                this._from = 13901;
                this._from_type = 13901;
                break;
            case 53:
                this._from = 13902;
                this._from_type = 13902;
                break;
            case 54:
                this._from = 13903;
                this._from_type = 13903;
                break;
            case 55:
                this._from = 13904;
                this._from_type = 13904;
                break;
        }
        p l4 = p.l(this.context);
        Event event = Event.visitMemberpre;
        Ext ext = new Ext();
        l4.K1(event, ext.setPosition(this.boardId + ""));
    }

    private void updateProgressPartly() {
        CollectionBeanSubBusiness collectionBeanSubBusiness;
        DownloadTask downloadTask;
        this.firstVisiblePosition = this.manager.findFirstVisibleItemPosition();
        this.lastVisibleIndex = this.manager.findLastVisibleItemPosition();
        for (int i2 = this.firstVisiblePosition; i2 <= this.lastVisibleIndex; i2++) {
            VipCenterDataMain vipCenterDataMain = this.vipCenterDataMains.get(i2);
            if (vipCenterDataMain.type == 2 && (collectionBeanSubBusiness = (CollectionBeanSubBusiness) vipCenterDataMain.getObject()) != null && (downloadTask = collectionBeanSubBusiness.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.recyclerView.getChildAt(i2 - this.firstVisiblePosition);
                if (this.recyclerView.getChildViewHolder(childAt) != null) {
                    ViewHolderAppItem viewHolderAppItem = (ViewHolderAppItem) this.recyclerView.getChildViewHolder(childAt);
                    try {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                        if (f4 == null) {
                            return;
                        }
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            TextView textView = viewHolderAppItem.appSize;
                            textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        } else {
                            TextView textView2 = viewHolderAppItem.appSize;
                            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                        }
                        if (downloadTask.getStatus() == 12) {
                            viewHolderAppItem.progressBarZip.setProgress((int) f4.getProgress());
                        } else {
                            viewHolderAppItem.progressBar.setProgress((int) f4.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            TextView textView3 = viewHolderAppItem.lodingInfo;
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
    @AfterViews
    public void afterview() {
        this.context = this;
        c0.a().d(this);
        List<DownloadTask> d4 = f.G().d();
        this.downloadTasks = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.downloadTasks) {
                this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        this.manager = linearLayoutManager;
        this.recyclerView.setLayoutManager(linearLayoutManager);
        SpecialAdapter specialAdapter = new SpecialAdapter();
        this.adapter = specialAdapter;
        this.recyclerView.setAdapter(specialAdapter);
        this.recyclerView.setLoadingMoreEnabled(true);
        this.recyclerView.setLoadingListener(new XRecyclerView.f() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.1
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                VipSpecialZoneActivity.this.getGamelist();
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
            }
        });
        getData();
        switch (this.boardId) {
            case 52:
                this.title.setText("MOD");
                break;
            case 53:
                this.title.setText("金手指");
                break;
            case 54:
                this.title.setText("一键技能");
                break;
            case 55:
                this.title.setText("快速选关");
                break;
        }
        updateFrom();
        getDownloadTaskInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadedMap
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadedMap
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadingMap
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadingMap
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadedMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadedMap
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadedMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadedMap
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.downloadingMap
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadedMap
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadedMap
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadingMap
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.downloadingMap
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void downloadView() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void filter() {
        if (this.filterPw == null) {
            p0 p0Var = new p0(this.context);
            this.filterPw = p0Var;
            p0Var.h(new p0.c() { // from class: com.join.mgps.activity.vipzone.c
                @Override // com.join.mgps.customview.p0.c
                public final void a(int i2, String str) {
                    VipSpecialZoneActivity.this.lambda$filter$0(i2, str);
                }
            });
            this.filterPw.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.join.mgps.activity.vipzone.b
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    VipSpecialZoneActivity.this.lambda$filter$1();
                }
            });
            this.filterPw.setWidth(-1);
        }
        this.filterPw.j(this.appbar, this.boardId);
        this.filterArr.setRotation(180.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = f.G().r();
        List<DownloadTask> q3 = f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.downloadedMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(a4, lVar.c());
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    updateUI(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.downloadTasksMap;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    updateProgressPartly();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void search() {
        IntentUtil.getInstance().goSearchHintActivity(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.downloadedMap.size();
        int size2 = this.downloadingMap.size();
        this.downloadView.setDownloadGameNum(size);
        if (size2 > 0) {
            this.downloadView.d();
        } else {
            this.downloadView.g();
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
}
