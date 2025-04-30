package com.papa91.arc;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Group;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.mgps.Util.g0;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.papa91.arc.bean.Slot;
import com.papa91.arc.bean.SubBean;
import com.papa91.arc.bean.VipBean;
import com.papa91.arc.util.GameSettings;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arc.view.BaseDialog;
import com.papa91.arc.view.GlideImageLoader;
import com.papa91.arc.view.OnTabSelectListener;
import com.papa91.arc.view.SegmentTabLayout;
import com.papa91.arc.view.ToastUtil;
import com.papa91.wrapper.UserPrefs;
import com.youth.banner.Banner;
import com.youth.banner.view.BannerViewPager;
import java.io.File;
import java.io.FilenameFilter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
import m.framework.ui.widget.asyncview.AsyncImageView;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;
import org.ppsspp.ppsspp.NativeActivity;
import org.ppsspp.ppsspp.NativeApp;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class MenuFrameActivity extends BaseDialog implements v2.b, View.OnClickListener {
    static List<CheatInfo> cheatInfos = new ArrayList();
    static List<EditCheatInfo> editCheatInfos = new ArrayList();
    int MAX_SLOT_COUNT;
    int SLOT_COUNT;
    View addCheat;
    View advanced;
    Banner banner;
    BannerViewPager bannerViewPager;
    Dialog cheatAddDialog;
    EditText cheatCode;
    EditText cheatName;
    CheatingAdapter cheatingAdapter;
    View cheatingCustom;
    View cheatingVip;
    View close;
    ConstraintLayout constraintLayout;
    Context context;
    Dialog dialogExit;
    int from;
    View goCheatingVip;
    View goSlotVip;
    Group group;
    List<String> images;
    ListView listView;
    Handler mHandler;
    MenuType menuType;
    View newSlot;
    View newSlotNo;
    View noCheatTip;
    View paste;
    int performance;
    int performanceLevel;
    UserPrefs prefs;
    View qa;
    View qaClose;
    View qaSlot;
    View save;
    TextView slotActionTip;
    SlotAdapter slotAdapter;
    View slotFullTip;
    List<Slot> slots;
    TextView textView7;
    SegmentTabLayout tlCustom;
    SegmentTabLayout tlPerformance;
    int tmpPerformance;
    Integer[] usedSlot;
    ImageView vipBattle;
    List<VipBean> vipBeans;
    ImageView vipCheating;
    ImageView vipSelectScene;
    ImageView vipSlot;
    ImageView vipSp;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.papa91.arc.MenuFrameActivity$11  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass11 {
        static final /* synthetic */ int[] $SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType;

        static {
            int[] iArr = new int[MenuType.values().length];
            $SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType = iArr;
            try {
                iArr[MenuType.vip.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType[MenuType.slot.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType[MenuType.cheating.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType[MenuType.performance.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class CheatingAdapter extends BaseAdapter {
        private List<CheatInfo> cheatInfos;
        private List<EditCheatInfo> editCheatInfos;
        public int tab = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class ViewHolder {
            public TextView del;
            public TextView modify;
            public TextView name;
            public TextView switchBtn;

            ViewHolder() {
            }
        }

        public CheatingAdapter(List<CheatInfo> list, List<EditCheatInfo> list2) {
            this.cheatInfos = list;
            this.editCheatInfos = list2;
        }

        private View initializeCustomView(final int i2, View view, Group group) {
            ViewHolder viewHolder;
            if (view != null) {
                viewHolder = (ViewHolder) view.getTag();
            } else {
                viewHolder = new ViewHolder();
                view = LayoutInflater.from(MenuFrameActivity.this.context).inflate(R.layout.item_cheat, (ViewGroup) null);
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.del = (TextView) view.findViewById(R.id.del);
                viewHolder.modify = (TextView) view.findViewById(R.id.modify);
                viewHolder.switchBtn = (TextView) view.findViewById(R.id.switchBtn);
                view.setTag(viewHolder);
            }
            final EditCheatInfo editCheatInfo = (EditCheatInfo) getItem(i2);
            viewHolder.name.setText(editCheatInfo.cheatName);
            viewHolder.switchBtn.setSelected(editCheatInfo.isEnable);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.papa91.arc.MenuFrameActivity.CheatingAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int id = view2.getId();
                    if (id == R.id.del) {
                        NativeApp.deleteEditCheat(i2);
                        CheatingAdapter.this.editCheatInfos.remove(i2);
                        MenuFrameActivity.this.cheatingAdapter.notifyDataSetChanged();
                    } else if (id == R.id.modify) {
                        MenuFrameActivity.this.showModifyCheatDialog(i2);
                    } else if (id == R.id.switchBtn) {
                        boolean z3 = editCheatInfo.isEnable;
                        NativeApp.enableEidtCheat(i2);
                        EditCheatInfo editCheatInfo2 = editCheatInfo;
                        editCheatInfo2.isEnable = !editCheatInfo2.isEnable;
                        CheatingAdapter.this.notifyDataSetChanged();
                    }
                }
            };
            viewHolder.del.setVisibility(0);
            viewHolder.modify.setVisibility(0);
            viewHolder.del.setOnClickListener(onClickListener);
            viewHolder.modify.setOnClickListener(onClickListener);
            viewHolder.switchBtn.setOnClickListener(onClickListener);
            return view;
        }

        private View initializeVipView(final int i2, View view, Group group) {
            ViewHolder viewHolder;
            if (view != null) {
                viewHolder = (ViewHolder) view.getTag();
            } else {
                viewHolder = new ViewHolder();
                view = LayoutInflater.from(MenuFrameActivity.this.context).inflate(R.layout.item_cheat, (ViewGroup) null);
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.del = (TextView) view.findViewById(R.id.del);
                viewHolder.modify = (TextView) view.findViewById(R.id.modify);
                viewHolder.switchBtn = (TextView) view.findViewById(R.id.switchBtn);
                view.setTag(viewHolder);
            }
            final CheatInfo cheatInfo = (CheatInfo) getItem(i2);
            viewHolder.name.setText(cheatInfo.cheatName);
            viewHolder.switchBtn.setSelected(cheatInfo.off != 0);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.papa91.arc.MenuFrameActivity.CheatingAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (view2.getId() == R.id.switchBtn) {
                        if (NativeActivity.m_VIP > 0) {
                            int i4 = cheatInfo.off == 0 ? 1 : 0;
                            NativeApp.cheatEnable(i2, i4);
                            cheatInfo.off = i4;
                        } else {
                            MenuFrameActivity.this.goCheatingVip();
                        }
                        CheatingAdapter.this.notifyDataSetChanged();
                    }
                }
            };
            viewHolder.del.setVisibility(8);
            viewHolder.modify.setVisibility(8);
            viewHolder.switchBtn.setOnClickListener(onClickListener);
            view.requestLayout();
            return view;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.tab == 0) {
                List<CheatInfo> list = this.cheatInfos;
                if (list != null) {
                    return list.size();
                }
                return 0;
            }
            List<EditCheatInfo> list2 = this.editCheatInfos;
            if (list2 != null) {
                return list2.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            if (this.tab == 0) {
                List<CheatInfo> list = this.cheatInfos;
                if (list != null) {
                    return list.get(i2);
                }
                return null;
            }
            List<EditCheatInfo> list2 = this.editCheatInfos;
            if (list2 != null) {
                return list2.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (this.tab == 0) {
                return initializeVipView(i2, view, MenuFrameActivity.this.group);
            }
            return initializeCustomView(i2, view, MenuFrameActivity.this.group);
        }
    }

    /* loaded from: classes4.dex */
    public enum MenuType {
        slot,
        cheating,
        performance,
        vip
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class SlotAdapter extends BaseAdapter {
        private List<Slot> slots;

        /* loaded from: classes4.dex */
        class ViewHolder {
            public ImageView cover;
            public TextView date;
            public View del;
            public View load;
            public TextView name;
            public View save;

            ViewHolder() {
            }
        }

        public SlotAdapter(List<Slot> list) {
            this.slots = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Slot> list = this.slots;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            List<Slot> list = this.slots;
            if (list != null) {
                return list.get(i2);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(final int i2, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            if (view != null) {
                viewHolder = (ViewHolder) view.getTag();
            } else {
                viewHolder = new ViewHolder();
                view = LayoutInflater.from(MenuFrameActivity.this.context).inflate(R.layout.item_slot, (ViewGroup) null);
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.cover = (ImageView) view.findViewById(R.id.cover);
                viewHolder.date = (TextView) view.findViewById(R.id.date);
                viewHolder.load = view.findViewById(R.id.load);
                viewHolder.save = view.findViewById(R.id.save);
                viewHolder.del = view.findViewById(R.id.del);
                view.setTag(viewHolder);
            }
            final Slot slot = (Slot) getItem(i2);
            viewHolder.name.setText(slot.getName());
            viewHolder.date.setText(slot.getDate());
            if (viewHolder.cover instanceof SimpleDraweeView) {
                viewHolder.cover.setImageURI(Uri.parse("file://" + new File(slot.getThumb()).getAbsolutePath()));
            }
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.papa91.arc.MenuFrameActivity.SlotAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    MenuFrameActivity.this.showSlotPrompt(view2.getId(), slot, i2);
                }
            };
            viewHolder.del.setOnClickListener(onClickListener);
            viewHolder.save.setOnClickListener(onClickListener);
            viewHolder.load.setOnClickListener(onClickListener);
            if (slot.getId() == 0) {
                viewHolder.del.setVisibility(8);
                viewHolder.save.setVisibility(8);
            } else {
                viewHolder.del.setVisibility(0);
                viewHolder.save.setVisibility(0);
            }
            return view;
        }
    }

    public MenuFrameActivity(@NonNull Context context) {
        this(context, R.style.PspDialog);
    }

    private int findEmptySlot() {
        for (int i2 = 0; i2 < this.SLOT_COUNT; i2++) {
            if (this.usedSlot[i2].intValue() == 0) {
                return i2 + 1;
            }
        }
        return -1;
    }

    private int getLayoutResId() {
        int i2 = AnonymousClass11.$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType[this.menuType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        return -1;
                    }
                    return R.layout.activity_menu_frame_performance1;
                }
                return R.layout.activity_menu_frame_cheating;
            }
            return R.layout.activity_menu_frame_slot;
        }
        return R.layout.activity_menu_frame_vip;
    }

    private String getSlotPath() {
        return getUgcPath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUgcPath() {
        String str = NativeActivity.ugcPath;
        if (TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                String str2 = NativeActivity.romPath;
                String substring = str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                str = SDCardUtil.getExternalStorageDirectory(getContext()) + "/papa91/psp/" + substring + net.lingala.zip4j.util.e.F0 + substring;
            }
        } else if (!TextUtils.isEmpty(NativeActivity.romPath)) {
            String str3 = NativeActivity.romPath;
            str = NativeActivity.ugcPath + net.lingala.zip4j.util.e.F0 + str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        }
        if (!TextUtils.isEmpty(str)) {
            new File(str).getParentFile().mkdirs();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUgcPathInternal() {
        String str = NativeActivity.ugcPath;
        if (TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                String str2 = NativeActivity.romPath;
                String substring = str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                str = this.context.getFilesDir() + "/emus/" + substring + net.lingala.zip4j.util.e.F0 + substring;
            }
        } else if (!TextUtils.isEmpty(NativeActivity.romPath)) {
            String str3 = NativeActivity.romPath;
            String substring2 = str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            str = this.context.getFilesDir() + "/emus/" + substring2 + net.lingala.zip4j.util.e.F0 + substring2;
        }
        if (!TextUtils.isEmpty(str)) {
            new File(str).getParentFile().mkdirs();
        }
        return str;
    }

    private void goForumPost() {
        MarketUtil.intent(this.context, "8", "", "3256971", "", "");
    }

    private void initCheatingViews() {
        this.textView7 = (TextView) findViewById(R.id.textView7);
        this.cheatingVip = findViewById(R.id.cheatingVip);
        this.cheatingCustom = findViewById(R.id.cheatingCustom);
        this.constraintLayout = (ConstraintLayout) findViewById(R.id.constraintLayout);
        this.close = findViewById(R.id.close);
        this.goCheatingVip = findViewById(R.id.goCheatingVip);
        this.listView = (ListView) findViewById(R.id.listView);
        this.addCheat = findViewById(R.id.addCheat);
        this.noCheatTip = findViewById(R.id.noCheatTip);
        this.group = (Group) findViewById(R.id.group);
        this.textView7.getPaint().setFlags(8);
        this.textView7.getPaint().setAntiAlias(true);
        if (NativeActivity.m_VIP > 0) {
            this.group.setVisibility(8);
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(this.constraintLayout);
            constraintSet.setGoneMargin(this.listView.getId(), 3, (int) TypedValue.applyDimension(1, 0.0f, this.listView.getContext().getResources().getDisplayMetrics()));
            constraintSet.applyTo(this.constraintLayout);
        } else {
            this.group.setVisibility(0);
            ConstraintSet constraintSet2 = new ConstraintSet();
            constraintSet2.clone(this.constraintLayout);
            constraintSet2.setGoneMargin(this.listView.getId(), 3, (int) TypedValue.applyDimension(1, 12.0f, this.listView.getContext().getResources().getDisplayMetrics()));
            constraintSet2.applyTo(this.constraintLayout);
        }
        try {
            List<CheatInfo> list = cheatInfos;
            if (list == null || list.size() == 0) {
                cheatInfos.addAll(NativeApp.getCheatList());
            }
            List<EditCheatInfo> list2 = editCheatInfos;
            if (list2 == null || list2.size() == 0) {
                editCheatInfos.addAll(NativeApp.getEditCheatList());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        CheatingAdapter cheatingAdapter = new CheatingAdapter(cheatInfos, editCheatInfos);
        this.cheatingAdapter = cheatingAdapter;
        this.listView.setAdapter((ListAdapter) cheatingAdapter);
        this.goCheatingVip.setOnClickListener(this);
        this.close.setOnClickListener(this);
        this.cheatingVip.setOnClickListener(this);
        this.cheatingCustom.setOnClickListener(this);
        this.addCheat.setOnClickListener(this);
        this.cheatingVip.performClick();
    }

    private void initPerformanceViews() {
        this.close = findViewById(R.id.close);
        this.advanced = findViewById(R.id.advanced);
        this.tlPerformance = (SegmentTabLayout) findViewById(R.id.tlPerformance);
        this.tlCustom = (SegmentTabLayout) findViewById(R.id.tlCustom);
        this.advanced.setVisibility(4);
        this.tlCustom.setTabData(new String[]{"关", "开"});
        this.tlCustom.setOnTabSelectListener(new OnTabSelectListener() { // from class: com.papa91.arc.MenuFrameActivity.1
            @Override // com.papa91.arc.view.OnTabSelectListener
            public void onTabReselect(int i2) {
            }

            @Override // com.papa91.arc.view.OnTabSelectListener
            public void onTabSelect(int i2) {
                if (i2 == 0) {
                    MenuFrameActivity.this.advanced.setVisibility(4);
                    MenuFrameActivity menuFrameActivity = MenuFrameActivity.this;
                    int i4 = menuFrameActivity.tmpPerformance;
                    if (i4 < 0 || i4 > 4) {
                        menuFrameActivity.tmpPerformance = 1;
                    }
                    menuFrameActivity.tlPerformance.setCurrentTab(menuFrameActivity.tmpPerformance);
                    return;
                }
                MenuFrameActivity.this.advanced.setVisibility(0);
                MenuFrameActivity.this.tlPerformance.setCurrentTab(-1);
            }
        });
        this.tlPerformance.setOnTabSelectListener(new OnTabSelectListener() { // from class: com.papa91.arc.MenuFrameActivity.2
            @Override // com.papa91.arc.view.OnTabSelectListener
            public void onTabReselect(int i2) {
            }

            @Override // com.papa91.arc.view.OnTabSelectListener
            public void onTabSelect(int i2) {
                MenuFrameActivity.this.selectPerformance(i2);
                if (MenuFrameActivity.this.tlCustom.getCurrentTab() == 1) {
                    MenuFrameActivity.this.tlCustom.setCurrentTab(0);
                    MenuFrameActivity.this.advanced.setVisibility(4);
                }
            }
        });
        this.close.setOnClickListener(this);
        this.advanced.setOnClickListener(this);
        setPerformanceTotalLevel(4);
        if (isCustomPerformance()) {
            this.advanced.setVisibility(0);
            this.tlPerformance.setCurrentTab(-1);
            this.tlCustom.setCurrentTab(1);
            return;
        }
        this.advanced.setVisibility(4);
        this.tlPerformance.setCurrentTab(this.performance);
        this.tlCustom.setCurrentTab(0);
    }

    private void initSlotViews() {
        this.close = findViewById(R.id.close);
        this.qa = findViewById(R.id.qa);
        this.qaSlot = findViewById(R.id.qaSlot);
        this.qaClose = findViewById(R.id.qaClose);
        this.newSlotNo = findViewById(R.id.newSlotNo);
        this.group = (Group) findViewById(R.id.group);
        this.listView = (ListView) findViewById(R.id.listView);
        View inflate = LayoutInflater.from(this.context).inflate(R.layout.activity_menu_frame_slot_header, (ViewGroup) null);
        this.newSlot = inflate.findViewById(R.id.newSlot);
        this.goSlotVip = inflate.findViewById(R.id.goSlotVip);
        this.slotFullTip = inflate.findViewById(R.id.slotFullTip);
        this.listView.addHeaderView(inflate);
        setOnListener(this.close, this.qaSlot, this.qaClose, this.newSlotNo, this.newSlot, this.goSlotVip);
        if (NativeActivity.m_VIP > 0) {
            this.SLOT_COUNT = 20;
            List asList = Arrays.asList(this.usedSlot);
            this.usedSlot = new Integer[this.SLOT_COUNT];
            for (int i2 = 0; i2 < asList.size(); i2++) {
                this.usedSlot[i2] = (Integer) asList.get(i2);
            }
        }
        UserPrefs userPrefs = new UserPrefs(this.context);
        this.prefs = userPrefs;
        if (userPrefs.getSlotTipShow()) {
            this.qa.setVisibility(0);
        } else {
            this.qa.setVisibility(8);
        }
        this.slots.clear();
        this.slots.addAll(getRecordInfo(getSlotPath()));
        notifySlotChanged();
    }

    private void initViews() {
        int i2 = AnonymousClass11.$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType[this.menuType.ordinal()];
        if (i2 == 1) {
            initVipViews();
        } else if (i2 == 2) {
            initSlotViews();
        } else if (i2 == 3) {
            initCheatingViews();
        } else if (i2 != 4) {
        } else {
            initPerformanceViews();
        }
    }

    private void initVipViews() {
        this.banner = (Banner) findViewById(R.id.banner);
        this.bannerViewPager = (BannerViewPager) findViewById(R.id.bannerViewPager);
        this.vipSp = (ImageView) findViewById(R.id.vipSp);
        this.vipCheating = (ImageView) findViewById(R.id.vipCheating);
        this.vipSlot = (ImageView) findViewById(R.id.vipSlot);
        this.vipSelectScene = (ImageView) findViewById(R.id.vipSelectScene);
        this.vipBattle = (ImageView) findViewById(R.id.vipBattle);
        this.close = findViewById(R.id.close);
        this.images.clear();
        for (int i2 = 0; i2 < 5; i2++) {
            if (i2 < this.vipBeans.size()) {
                this.images.add(this.vipBeans.get(i2).getMain().getPic_remote());
            } else {
                this.images.add("");
            }
        }
        this.banner.z(this.images).y(new GlideImageLoader()).D(this).I();
        this.close.setOnClickListener(this);
        this.vipSp.setOnClickListener(this);
        this.vipCheating.setOnClickListener(this);
        this.vipSlot.setOnClickListener(this);
        this.vipSelectScene.setOnClickListener(this);
        this.vipBattle.setOnClickListener(this);
        this.banner.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.papa91.arc.MenuFrameActivity.10
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i4) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i4, float f4, int i5) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i4) {
                MenuFrameActivity.this.select(i4);
            }
        });
        this.bannerViewPager.setCurrentItem(this.from + 1);
    }

    private void onCheatingClick(View view) {
        int id = view.getId();
        if (id == R.id.cheatingCustom) {
            this.cheatingVip.setSelected(false);
            this.cheatingCustom.setSelected(true);
            this.addCheat.setVisibility(0);
            this.noCheatTip.setVisibility(8);
            try {
                List<EditCheatInfo> list = editCheatInfos;
                if (list == null || list.size() == 0) {
                    editCheatInfos.addAll(NativeApp.getEditCheatList());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            CheatingAdapter cheatingAdapter = this.cheatingAdapter;
            cheatingAdapter.tab = 1;
            cheatingAdapter.notifyDataSetChanged();
        } else if (id == R.id.cheatingVip) {
            this.cheatingVip.setSelected(true);
            this.cheatingCustom.setSelected(false);
            this.addCheat.setVisibility(8);
            try {
                List<CheatInfo> list2 = cheatInfos;
                if (list2 == null || list2.size() == 0) {
                    cheatInfos.addAll(NativeApp.getCheatList());
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            if (cheatInfos.size() == 0) {
                this.noCheatTip.setVisibility(0);
            } else {
                this.noCheatTip.setVisibility(8);
            }
            CheatingAdapter cheatingAdapter2 = this.cheatingAdapter;
            cheatingAdapter2.tab = 0;
            cheatingAdapter2.notifyDataSetChanged();
        } else if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.goCheatingVip) {
            goCheatingVip();
        } else if (id == R.id.addCheat) {
            showAddCheatDialog();
        } else if (id == R.id.paste) {
            if (this.cheatCode != null) {
                String textFromClip = getTextFromClip(view.getContext());
                this.cheatCode.setText(textFromClip);
                this.cheatCode.setSelection(textFromClip.length());
            }
        } else if (id == R.id.cancel) {
            Dialog dialog = this.cheatAddDialog;
            if (dialog == null || !dialog.isShowing()) {
            }
        } else if (id == R.id.save && validateCode(this.context)) {
            try {
                try {
                    EditCheatInfo editCheatInfo = new EditCheatInfo(false, false, this.cheatName.getText().toString(), this.cheatCode.getText().toString());
                    NativeApp.addEditCheat(editCheatInfo);
                    editCheatInfos.add(editCheatInfo);
                    this.cheatingAdapter.notifyDataSetChanged();
                } catch (Exception unused) {
                    ToastUtil.show(view.getContext(), "作弊码添加失败！");
                }
            } finally {
                this.cheatAddDialog.dismiss();
            }
        }
    }

    private void onPerformanceClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.advanced) {
            NativeApp.enterGameSettings(0);
            EmuActivity_psp.lastWindow = 2;
            dismiss();
        }
    }

    private void onSlotClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.qaSlot) {
            goForumPost();
        } else if (id == R.id.qaClose) {
            this.prefs.setSlotTipShow(false);
            this.qa.setVisibility(8);
        } else if (id != R.id.newSlot && id != R.id.newSlotNo) {
            if (id == R.id.goSlotVip) {
                dismiss();
                setMenuType(MenuType.vip, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            }
        } else {
            int size = this.slots.size();
            if (this.slots.size() > 0 && this.slots.get(0).getId() == 0) {
                size--;
            }
            int i2 = this.SLOT_COUNT;
            if (size < i2) {
                saveSlot();
            } else if (i2 == 10) {
                setMenuType(MenuType.vip, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            }
        }
    }

    private void onVipClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            dismiss();
        } else if (id == R.id.vipSp) {
            this.bannerViewPager.setCurrentItem(1);
        } else if (id == R.id.vipCheating) {
            this.bannerViewPager.setCurrentItem(2);
        } else if (id == R.id.vipSlot) {
            this.bannerViewPager.setCurrentItem(3);
        } else if (id == R.id.vipSelectScene) {
            this.bannerViewPager.setCurrentItem(4);
        } else if (id == R.id.vipBattle) {
            this.bannerViewPager.setCurrentItem(5);
        }
    }

    @Override // v2.b
    public void OnBannerClick(int i2) {
        SubBean sub;
        if (i2 >= this.vipBeans.size() || (sub = this.vipBeans.get(i2).getSub()) == null) {
            return;
        }
        MarketUtil.intent(this.context, sub.getLink_type(), sub.getJump_type(), sub.getLink_type_val(), sub.getCrc_link_type_val(), sub.getTpl_type());
    }

    public void cheatReset() {
        List<CheatInfo> list = cheatInfos;
        if (list != null) {
            list.clear();
        }
        List<EditCheatInfo> list2 = editCheatInfos;
        if (list2 != null) {
            list2.clear();
        }
    }

    void delSlot(final int i2) {
        this.mHandler.post(new Runnable() { // from class: com.papa91.arc.MenuFrameActivity.6
            @Override // java.lang.Runnable
            public void run() {
                int i4 = i2;
                int i5 = i4 - 1;
                Integer[] numArr = MenuFrameActivity.this.usedSlot;
                if (i5 < numArr.length) {
                    numArr[i4 - 1] = 0;
                }
                String ugcPath = MenuFrameActivity.this.getUgcPath();
                File file = new File(ugcPath + g0.f27568a + i2);
                if (file.exists()) {
                    file.delete();
                }
                File file2 = new File(ugcPath + g0.f27568a + i2 + ".png");
                if (file2.exists()) {
                    file2.delete();
                }
                String ugcPathInternal = MenuFrameActivity.this.getUgcPathInternal();
                File file3 = new File(ugcPathInternal + g0.f27568a + i2);
                if (file3.exists()) {
                    file3.delete();
                }
                File file4 = new File(ugcPathInternal + g0.f27568a + i2 + ".png");
                if (file4.exists()) {
                    file4.delete();
                }
                MenuFrameActivity.this.notifySlotChanged();
            }
        });
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        SegmentTabLayout segmentTabLayout;
        super.dismiss();
        MenuType menuType = this.menuType;
        MenuType menuType2 = MenuType.performance;
        if (menuType == menuType2 && (segmentTabLayout = this.tlCustom) != null && segmentTabLayout.getCurrentTab() == 1 && EmuActivity_psp.lastWindow == 2) {
            return;
        }
        if (this.menuType == menuType2) {
            SegmentTabLayout segmentTabLayout2 = this.tlCustom;
            if (segmentTabLayout2 != null && segmentTabLayout2.getCurrentTab() == 1) {
                if (!GameSettings.getCustomSettingEnable()) {
                    GameSettings.setCustomSettingEnable(true);
                    NativeApp.applyGameSettingConfig(5);
                }
                int i2 = this.tmpPerformance;
                if (i2 != this.performance) {
                    this.performance = i2;
                    GameSettings.setGameSettingLevel(i2);
                }
            } else {
                if (GameSettings.getCustomSettingEnable()) {
                    GameSettings.setCustomSettingEnable(false);
                    int i4 = this.tmpPerformance;
                    int i5 = this.performance;
                    if (i4 == i5) {
                        NativeApp.applyGameSettingConfig(i5);
                    }
                }
                int i6 = this.tmpPerformance;
                if (i6 != this.performance) {
                    this.performance = i6;
                    NativeApp.applyGameSettingConfig(i6);
                    GameSettings.setGameSettingLevel(this.performance);
                }
            }
        }
        NativeApp.resumeGame();
    }

    public List<Slot> getRecordInfo(String str) {
        resetUsedSlot();
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        File parentFile = new File(str).getParentFile();
        if (parentFile.exists()) {
            List asList = Arrays.asList(parentFile.listFiles(getSlotFilter()));
            if (asList != null && asList.size() > 0) {
                Collections.sort(asList, new Comparator<File>() { // from class: com.papa91.arc.MenuFrameActivity.8
                    @Override // java.util.Comparator
                    public int compare(File file, File file2) {
                        if (file.lastModified() < file2.lastModified()) {
                            return 1;
                        }
                        return file.lastModified() == file2.lastModified() ? 0 : -1;
                    }
                });
            }
            for (int i2 = 0; i2 < asList.size(); i2++) {
                String name = ((File) asList.get(i2)).getName();
                String substring = name.substring(name.lastIndexOf(g0.f27568a) + 1);
                Slot slot = new Slot();
                slot.setPath(((File) asList.get(i2)).getAbsolutePath());
                slot.setTimestamp(((File) asList.get(i2)).lastModified());
                try {
                    slot.setId(Integer.parseInt(substring));
                } catch (NumberFormatException e4) {
                    e4.printStackTrace();
                }
                if (slot.getId() <= this.MAX_SLOT_COUNT) {
                    slot.setDate(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(((File) asList.get(i2)).lastModified())));
                    slot.setThumb(((File) asList.get(i2)).getAbsolutePath() + ".png");
                    if (slot.getId() != -1) {
                        if (slot.getId() == 0) {
                            slot.setName("快速存档");
                            arrayList.add(0, slot);
                        } else {
                            int id = slot.getId() - 1;
                            Integer[] numArr = this.usedSlot;
                            if (id < numArr.length) {
                                numArr[slot.getId() - 1] = 1;
                            }
                            slot.setName("存档" + substring);
                            arrayList.add(slot);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    FilenameFilter getSlotFilter() {
        return new FilenameFilter() { // from class: com.papa91.arc.MenuFrameActivity.9
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (str.contains(g0.f27568a)) {
                    return isNumeric(str.substring(str.lastIndexOf(g0.f27568a) + 1));
                }
                return false;
            }

            public boolean isNumeric(String str) {
                return Pattern.compile("[0-9]*").matcher(str).matches();
            }
        };
    }

    public String getTextFromClip(Context context) {
        ClipData primaryClip;
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        return (clipboardManager.hasPrimaryClip() && (primaryClip = clipboardManager.getPrimaryClip()) != null && primaryClip.getItemCount() > 0 && !TextUtils.isEmpty(primaryClip.getItemAt(0).getText())) ? primaryClip.getItemAt(0).getText().toString() : "";
    }

    void goCheatingVip() {
        dismiss();
        setMenuType(MenuType.vip, "1");
    }

    boolean isCustomPerformance() {
        int gameSettingLevel = GameSettings.getGameSettingLevel();
        this.performance = gameSettingLevel;
        this.tmpPerformance = gameSettingLevel;
        return GameSettings.getCustomSettingEnable();
    }

    void notifySlotChanged() {
        if (this.slots.size() > 0) {
            this.group.setVisibility(8);
            this.newSlot.setVisibility(0);
            this.listView.setVisibility(0);
            if (this.SLOT_COUNT > 10 && findEmptySlot() == -1) {
                this.newSlot.setVisibility(4);
                this.goSlotVip.setVisibility(4);
                this.slotFullTip.setVisibility(0);
            } else {
                this.newSlot.setVisibility(0);
                this.slotFullTip.setVisibility(8);
                if (NativeActivity.m_VIP > 0) {
                    this.goSlotVip.setVisibility(8);
                } else {
                    this.goSlotVip.setVisibility(0);
                }
            }
        } else {
            this.group.setVisibility(0);
            this.newSlot.setVisibility(8);
            this.listView.setVisibility(8);
            this.goSlotVip.setVisibility(8);
            this.slotFullTip.setVisibility(8);
        }
        if (this.slotAdapter == null) {
            this.slotAdapter = new SlotAdapter(this.slots);
        }
        this.listView.setAdapter((ListAdapter) this.slotAdapter);
        this.slotAdapter.notifyDataSetChanged();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i2 = AnonymousClass11.$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType[this.menuType.ordinal()];
        if (i2 == 1) {
            onVipClick(view);
        } else if (i2 == 2) {
            onSlotClick(view);
        } else if (i2 == 3) {
            onCheatingClick(view);
        } else if (i2 != 4) {
        } else {
            onPerformanceClick(view);
        }
    }

    void resetButtonState() {
        setVipTabSelect(this.vipSp, this.from == 0, R.drawable.vip_tab_sp_selected, R.drawable.vip_tab_sp_default);
        setVipTabSelect(this.vipCheating, this.from == 1, R.drawable.vip_tab_cheating_selected, R.drawable.vip_tab_cheating_default);
        setVipTabSelect(this.vipSlot, this.from == 2, R.drawable.vip_tab_slot_selected, R.drawable.vip_tab_slot_default);
        setVipTabSelect(this.vipSelectScene, this.from == 3, R.drawable.vip_tab_select_sence_selected, R.drawable.vip_tab_select_sence_default);
        setVipTabSelect(this.vipBattle, this.from == 4, R.drawable.vip_tab_battle_selected, R.drawable.vip_tab_battle_default);
    }

    void resetUsedSlot() {
        for (int i2 = 0; i2 < this.SLOT_COUNT; i2++) {
            this.usedSlot[i2] = 0;
        }
    }

    void saveSlot() {
        saveSlot(findEmptySlot());
    }

    void select(int i2) {
        this.from = i2;
        resetButtonState();
    }

    void selectPerformance(int i2) {
        this.tmpPerformance = i2;
    }

    public void setMenuType(MenuType menuType, String... strArr) {
        SegmentTabLayout segmentTabLayout;
        this.menuType = menuType;
        setContentView(getLayoutResId());
        initViews();
        com.yatoooon.screenadaptation.e.a().f(getWindow().getDecorView());
        MenuType menuType2 = MenuType.vip;
        if (menuType == menuType2 && strArr != null && strArr.length > 0) {
            this.from = Integer.parseInt(strArr[0]);
        }
        show();
        if (menuType == MenuType.cheating) {
            this.cheatingVip.performClick();
        } else if (menuType == menuType2) {
            BannerViewPager bannerViewPager = this.bannerViewPager;
            if (bannerViewPager != null) {
                bannerViewPager.setCurrentItem(this.from + 1);
            }
        } else if (menuType == MenuType.performance) {
            if (strArr != null && strArr.length > 0) {
                try {
                    setPerformanceTotalLevel(Integer.parseInt(strArr[0]));
                } catch (NumberFormatException e4) {
                    e4.printStackTrace();
                }
                if (strArr.length > 1 && Integer.parseInt(strArr[1]) == 1 && (segmentTabLayout = this.tlCustom) != null) {
                    segmentTabLayout.setCurrentTab(1);
                    this.advanced.setVisibility(0);
                    this.tlPerformance.setCurrentTab(-1);
                }
            }
            selectPerformance(this.performance);
        }
    }

    void setOnListener(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            view.setOnClickListener(this);
        }
    }

    void setPerformanceTotalLevel(int i2) {
        this.performanceLevel = i2;
        String[] strArr = {"低画质", "流畅画质", "高画质", "超高画质"};
        String[] strArr2 = {"低画质", "流畅画质", "高画质", "超高画质", "最佳画质"};
        if (i2 == 4) {
            this.tlPerformance.setTabData(strArr);
        } else {
            this.tlPerformance.setTabData(strArr2);
        }
    }

    void setVipTabSelect(ImageView imageView, boolean z3, int i2, int i4) {
        if (imageView == null || imageView.isSelected() == z3) {
            return;
        }
        if (z3) {
            if (Build.VERSION.SDK_INT >= 16) {
                imageView.setBackground(this.context.getResources().getDrawable(R.drawable.vip_btn_selected));
            } else {
                imageView.setBackgroundResource(R.drawable.vip_btn_selected);
            }
            imageView.setImageResource(i2);
        } else {
            if (Build.VERSION.SDK_INT >= 16) {
                imageView.setBackground(null);
            } else {
                imageView.setBackgroundResource(AsyncImageView.DEFAULT_TRANSPARENT);
            }
            imageView.setImageResource(i4);
        }
        imageView.setSelected(z3);
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        NativeApp.pauseGame();
    }

    public void showAddCheatDialog() {
        if (this.cheatAddDialog == null) {
            BaseDialog baseDialog = new BaseDialog(this.context, R.style.PspDialog);
            this.cheatAddDialog = baseDialog;
            baseDialog.setContentView(R.layout.dialog_add_cheat);
            this.cheatName = (EditText) this.cheatAddDialog.findViewById(R.id.editText);
            this.cheatCode = (EditText) this.cheatAddDialog.findViewById(R.id.editText2);
            this.paste = this.cheatAddDialog.findViewById(R.id.paste);
            this.save = this.cheatAddDialog.findViewById(R.id.save);
            getWindow().setSoftInputMode(16);
        }
        this.paste.setOnClickListener(this);
        this.save.setOnClickListener(this);
        this.cheatName.setText("");
        this.cheatCode.setText("");
        if (this.cheatAddDialog.isShowing()) {
            this.cheatAddDialog.dismiss();
        }
        this.cheatAddDialog.show();
    }

    public void showModifyCheatDialog(final int i2) {
        showAddCheatDialog();
        if (i2 < 0 || editCheatInfos.size() <= i2) {
            return;
        }
        final EditCheatInfo editCheatInfo = editCheatInfos.get(i2);
        this.cheatName.setText(editCheatInfo.cheatName);
        this.cheatCode.setText(editCheatInfo.cheatValue);
        this.cheatCode.setSelection(editCheatInfo.cheatValue.length());
        this.save.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.MenuFrameActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TextUtils.isEmpty(MenuFrameActivity.this.cheatName.getText().toString())) {
                    ToastUtil.show(MenuFrameActivity.this.context, "作弊码名称不能为空！");
                } else if (TextUtils.isEmpty(MenuFrameActivity.this.cheatCode.getText().toString())) {
                    ToastUtil.show(MenuFrameActivity.this.context, "作弊码不能为空！");
                } else {
                    try {
                        if (!NativeApp.checkCheatCode(MenuFrameActivity.this.cheatCode.getText().toString())) {
                            ToastUtil.show(MenuFrameActivity.this.context, "作弊码格式有误！");
                            return;
                        }
                        try {
                            EditCheatInfo editCheatInfo2 = new EditCheatInfo(editCheatInfo.isEnable, false, MenuFrameActivity.this.cheatName.getText().toString(), MenuFrameActivity.this.cheatCode.getText().toString());
                            NativeApp.modifyEditCheat(i2, editCheatInfo2);
                            MenuFrameActivity.editCheatInfos.remove(i2);
                            MenuFrameActivity.editCheatInfos.add(i2, editCheatInfo2);
                            MenuFrameActivity.this.cheatingAdapter.notifyDataSetChanged();
                        } catch (Exception unused) {
                            ToastUtil.show(view.getContext(), "作弊码添加失败！");
                        }
                    } finally {
                        MenuFrameActivity.this.cheatAddDialog.dismiss();
                    }
                }
            }
        });
    }

    public void showSlotPrompt(final int i2, final Slot slot, final int i4) {
        Context context = this.context;
        if (context == null) {
            return;
        }
        if (this.dialogExit == null) {
            BaseDialog baseDialog = new BaseDialog(context, R.style.PspDialog);
            this.dialogExit = baseDialog;
            baseDialog.setContentView(R.layout.dialog_exit);
            this.dialogExit.setCanceledOnTouchOutside(true);
            this.slotActionTip = (TextView) this.dialogExit.findViewById(R.id.textView2);
            this.dialogExit.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.MenuFrameActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Dialog dialog = MenuFrameActivity.this.dialogExit;
                    if (dialog != null) {
                        dialog.dismiss();
                    }
                }
            });
        }
        this.dialogExit.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.MenuFrameActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Dialog dialog = MenuFrameActivity.this.dialogExit;
                if (dialog != null) {
                    dialog.dismiss();
                }
                int i5 = i2;
                if (i5 == R.id.del) {
                    MenuFrameActivity.this.slots.remove(i4);
                    MenuFrameActivity.this.notifySlotChanged();
                    MenuFrameActivity.this.delSlot(slot.getId());
                } else if (i5 == R.id.save) {
                    com.facebook.imagepipeline.core.g imagePipeline = Fresco.getImagePipeline();
                    Uri parse = Uri.parse("file://" + slot.getThumb());
                    imagePipeline.h(parse);
                    imagePipeline.f(parse);
                    imagePipeline.e(parse);
                    MenuFrameActivity.this.saveSlot(slot.getId());
                } else if (i5 == R.id.load) {
                    MenuFrameActivity.this.dismiss();
                    NativeApp.loadState(slot.getPath());
                }
            }
        });
        if (i2 == R.id.del) {
            this.slotActionTip.setText("是否删除存档？");
        } else if (i2 == R.id.save) {
            this.slotActionTip.setText("是否覆盖存档？");
        } else if (i2 == R.id.load) {
            this.slotActionTip.setText("是否读取此存档？");
        }
        if (this.dialogExit.isShowing()) {
            return;
        }
        this.dialogExit.show();
    }

    public void updateVip() {
        Group group;
        MenuType menuType = this.menuType;
        if (menuType == MenuType.slot) {
            initSlotViews();
        } else if (menuType != MenuType.cheating || (group = this.group) == null) {
        } else {
            if (NativeActivity.m_VIP > 0) {
                group.setVisibility(8);
            } else {
                group.setVisibility(0);
            }
        }
    }

    public void updateVipDatas(List<VipBean> list) {
        if (list == null) {
            return;
        }
        this.vipBeans.clear();
        this.vipBeans.addAll(list);
        this.images.clear();
        for (int i2 = 0; i2 < 5; i2++) {
            if (i2 < list.size()) {
                this.images.add(list.get(i2).getMain().getPic_remote());
            } else {
                this.images.add("");
            }
        }
        Banner banner = this.banner;
        if (banner != null) {
            banner.update(this.images);
        }
    }

    boolean validateCode(Context context) {
        if (TextUtils.isEmpty(this.cheatName.getText().toString())) {
            ToastUtil.show(context, "作弊码名称不能为空！");
            return false;
        } else if (TextUtils.isEmpty(this.cheatCode.getText().toString())) {
            ToastUtil.show(context, "作弊码不能为空！");
            return false;
        } else if (NativeApp.checkCheatCode(this.cheatCode.getText().toString())) {
            return true;
        } else {
            ToastUtil.show(context, "作弊码格式有误！");
            return false;
        }
    }

    public MenuFrameActivity(@NonNull Context context, int i2) {
        super(context, i2);
        this.performanceLevel = 4;
        this.performance = 1;
        this.tmpPerformance = 1;
        this.slots = new ArrayList();
        this.SLOT_COUNT = 10;
        this.MAX_SLOT_COUNT = 20;
        this.usedSlot = new Integer[10];
        this.mHandler = new Handler();
        this.images = new ArrayList();
        this.vipBeans = new ArrayList();
        this.context = context;
        setWidth(-1);
        setHeight(-1);
    }

    void saveSlot(final int i2) {
        dismiss();
        this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.MenuFrameActivity.7
            @Override // java.lang.Runnable
            public void run() {
                String ugcPath = MenuFrameActivity.this.getUgcPath();
                if (!TextUtils.isEmpty(ugcPath)) {
                    NativeApp.saveState(ugcPath + g0.f27568a + i2);
                }
                MenuFrameActivity.this.notifySlotChanged();
            }
        }, 80L);
    }
}
