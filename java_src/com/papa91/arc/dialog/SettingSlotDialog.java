package com.papa91.arc.dialog;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.mgps.Util.g0;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.bean.Slot;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.dialog.TipOneDialog;
import com.papa91.arc.dialog.TipTwoDialog;
import com.papa91.arc.interfaces.IOnItemClickListener;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arc.view.IEmulator;
import com.papa91.wrapper.UserPrefs;
import com.umeng.analytics.pro.ai;
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
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingSlotDialog extends SettingDialog {
    int MAX_SLOT_COUNT;
    int SLOT_COUNT;
    private View addView;
    private boolean autoSlotStatus;
    private View autoView;
    private View fullView;
    private boolean hasShowDot;
    private ListView lv_auto_slot;
    private ListView lv_slot;
    private ListView lv_type;
    Handler mHandler;
    int mid;
    Slot mslot;
    int oldSelIndex;
    UserPrefs prefs;
    SlotAdapter slotAdapter;
    SlotQuickAdapter slotAdapterQuick;
    SlotTypeAdapter slotTypeAdapter;
    List<Slot> slots;
    List<Slot> slotsQuick;
    private int time;
    TipOneDialog tipOneDialog;
    TipTwoDialog tipTwoDialog;
    private TextView tv_auto_desc;
    private TextView tv_back_game;
    TextView tv_max_slot_tip;
    private TextView tv_status;
    private TextView tv_switchBtn;
    private TextView tv_time;
    private TextView tv_title;
    Integer[] usedSlot;
    private View vipFootView;
    private View vipQuickFootView;
    private View vipQuickView;
    private View vipView;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class SlotAdapter extends SimpleBaseAdapter<Slot> {

        /* loaded from: classes4.dex */
        class ViewHolder {
            public SimpleDraweeView cover;
            public TextView date;
            public View del;
            public View load;
            public TextView name;
            public View save;

            ViewHolder() {
            }
        }

        SlotAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(final int i2, View view, ViewGroup viewGroup, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.cover = (SimpleDraweeView) view.findViewById(R.id.cover);
                viewHolder.date = (TextView) view.findViewById(R.id.date);
                viewHolder.load = view.findViewById(R.id.load);
                viewHolder.save = view.findViewById(R.id.save);
                viewHolder.del = view.findViewById(R.id.del);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            Slot item = getItem(i2);
            viewHolder.name.setText(item.getName());
            viewHolder.date.setText(item.getDate());
            viewHolder.cover.setImageURI(Uri.parse("file://" + new File(item.getThumb()).getAbsolutePath()));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingSlotDialog.SlotAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    SettingSlotDialog.this.showSlotPrompt(view2.getId(), SlotAdapter.this.getItem(i2));
                }
            };
            viewHolder.del.setOnClickListener(onClickListener);
            viewHolder.save.setOnClickListener(onClickListener);
            viewHolder.load.setOnClickListener(onClickListener);
            if (item.getId() == 0) {
                viewHolder.del.setVisibility(8);
                viewHolder.save.setVisibility(8);
                return;
            }
            viewHolder.del.setVisibility(0);
            viewHolder.save.setVisibility(0);
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_slot;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class SlotQuickAdapter extends SimpleBaseAdapter<Slot> {

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

        SlotQuickAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(final int i2, View view, ViewGroup viewGroup, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.cover = (ImageView) view.findViewById(R.id.cover);
                viewHolder.date = (TextView) view.findViewById(R.id.date);
                viewHolder.load = view.findViewById(R.id.load);
                viewHolder.save = view.findViewById(R.id.save);
                viewHolder.del = view.findViewById(R.id.del);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            viewHolder.save.setVisibility(8);
            viewHolder.del.setVisibility(8);
            Slot item = getItem(i2);
            viewHolder.name.setText(item.getName());
            viewHolder.date.setText(item.getDate());
            viewHolder.cover.setImageURI(Uri.parse("file://" + new File(item.getThumb()).getAbsolutePath()));
            viewHolder.load.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingSlotDialog.SlotQuickAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (SettingSlotDialog.this.getVip() > 0) {
                        SettingSlotDialog.this.showSlotPrompt(view2.getId(), SlotQuickAdapter.this.getItem(i2));
                    } else {
                        SettingSlotDialog.this.showQuickSlotVip();
                    }
                }
            });
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_slot_quick;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class SlotTypeAdapter extends SimpleBaseAdapter<TypeBean> {

        /* loaded from: classes4.dex */
        class ViewHolder {
            public ImageView iv_arrow;
            public ImageView iv_dot;
            public ImageView iv_slot_store;
            public LinearLayout ll_root;
            public TextView tv_type;

            ViewHolder() {
            }
        }

        SlotTypeAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.ll_root = (LinearLayout) view.findViewById(R.id.ll_root);
                viewHolder.tv_type = (TextView) view.findViewById(R.id.tv_type);
                viewHolder.iv_slot_store = (ImageView) view.findViewById(R.id.iv_icon);
                viewHolder.iv_arrow = (ImageView) view.findViewById(R.id.iv_arrow);
                viewHolder.iv_dot = (ImageView) view.findViewById(R.id.iv_dot);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            TypeBean item = getItem(i2);
            viewHolder.tv_type.setText(item.getName());
            if (item.isSelected()) {
                viewHolder.tv_type.setTextColor(-16777216);
                viewHolder.ll_root.setBackgroundResource(R.drawable.bg_type_h);
                viewHolder.iv_arrow.setVisibility(0);
                if (item.getIconSelected() != -1) {
                    viewHolder.iv_slot_store.setImageResource(item.getIconSelected());
                }
            } else {
                viewHolder.tv_type.setTextColor(-7022593);
                viewHolder.ll_root.setBackgroundResource(R.drawable.bg_type_n);
                viewHolder.iv_arrow.setVisibility(8);
                if (item.getIconNormal() != -1) {
                    viewHolder.iv_slot_store.setImageResource(item.getIconNormal());
                }
            }
            if (item.getIconNormal() != -1 && item.getIconSelected() != -1) {
                viewHolder.iv_slot_store.setVisibility(0);
            } else {
                viewHolder.iv_slot_store.setVisibility(8);
            }
            if (item.isShowDot()) {
                viewHolder.iv_dot.setVisibility(0);
            } else {
                viewHolder.iv_dot.setVisibility(8);
            }
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_slot_type;
        }
    }

    public SettingSlotDialog(@NonNull Context context) {
        super(context);
        this.slots = new ArrayList();
        this.SLOT_COUNT = 10;
        this.MAX_SLOT_COUNT = 20;
        this.usedSlot = new Integer[10];
        this.time = 0;
        this.hasShowDot = false;
        this.autoSlotStatus = false;
        this.mHandler = new Handler(new Handler.Callback() { // from class: com.papa91.arc.dialog.SettingSlotDialog.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i2 = message.what;
                return false;
            }
        });
        this.oldSelIndex = 0;
        this.slotsQuick = new ArrayList();
        this.tv_back_game = (TextView) findViewById(R.id.tv_back_game);
        this.lv_type = (ListView) findViewById(R.id.lv_type);
        this.lv_slot = (ListView) findViewById(R.id.lv_slot);
        this.lv_auto_slot = (ListView) findViewById(R.id.lv_auto_slot);
        TextView textView = (TextView) findViewById(R.id.tv_title);
        this.tv_title = textView;
        textView.setText("存档");
        this.vipFootView = new View(getContext());
        this.vipQuickFootView = new View(getContext());
        setOnListener(this.tv_back_game);
        initSlotViews();
        initSlotQuickViews();
        initData();
    }

    private int findEmptySlot() {
        for (int i2 = 0; i2 < this.SLOT_COUNT; i2++) {
            if (this.usedSlot[i2].intValue() == 0) {
                return i2 + 1;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUgcPathInternal() {
        String ugcPath = ugcPath();
        if (TextUtils.isEmpty(ugcPath)) {
            if (!TextUtils.isEmpty(romPath())) {
                String substring = romPath().substring(romPath().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                ugcPath = getContext().getFilesDir() + "/emus/" + substring + net.lingala.zip4j.util.e.F0 + substring;
            }
        } else if (!TextUtils.isEmpty(romPath())) {
            String substring2 = romPath().substring(romPath().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            ugcPath = getContext().getFilesDir() + "/emus/" + substring2 + net.lingala.zip4j.util.e.F0 + substring2;
        }
        if (!TextUtils.isEmpty(ugcPath)) {
            new File(ugcPath).getParentFile().mkdirs();
        }
        return ugcPath;
    }

    private void initData() {
        if (this.slotTypeAdapter == null) {
            this.slotTypeAdapter = new SlotTypeAdapter();
        }
        this.slotTypeAdapter.setItemClickListener(new IOnItemClickListener() { // from class: com.papa91.arc.dialog.SettingSlotDialog.4
            @Override // com.papa91.arc.interfaces.IOnItemClickListener
            public void onItemClick(int i2) {
                SettingSlotDialog settingSlotDialog = SettingSlotDialog.this;
                if (i2 != settingSlotDialog.oldSelIndex) {
                    TypeBean item = settingSlotDialog.slotTypeAdapter.getItem(i2);
                    if (item.getType() == 2) {
                        SettingSlotDialog.this.goSlotShop();
                        return;
                    }
                    if (item.getType() == 1) {
                        item.setShowDot(false);
                        SettingSlotDialog.this.hasShowDot = true;
                    }
                    SettingSlotDialog settingSlotDialog2 = SettingSlotDialog.this;
                    settingSlotDialog2.slotTypeAdapter.getItem(settingSlotDialog2.oldSelIndex).setSelected(false);
                    item.setSelected(true);
                    SettingSlotDialog settingSlotDialog3 = SettingSlotDialog.this;
                    settingSlotDialog3.oldSelIndex = i2;
                    settingSlotDialog3.slotTypeAdapter.notifyDataSetChanged();
                    SettingSlotDialog.this.setTab(i2);
                }
            }
        });
        this.lv_type.setAdapter((ListAdapter) this.slotTypeAdapter);
    }

    private void initSlotQuickViews() {
        this.vipQuickView = LayoutInflater.from(getContext()).inflate(R.layout.layout_slot_vip, (ViewGroup) null);
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.item_slot_auto, (ViewGroup) null);
        this.autoView = inflate;
        this.tv_time = (TextView) inflate.findViewById(R.id.tv_time);
        this.tv_status = (TextView) this.autoView.findViewById(R.id.tv_status);
        this.tv_switchBtn = (TextView) this.autoView.findViewById(R.id.tv_switchBtn);
        this.tv_auto_desc = (TextView) this.autoView.findViewById(R.id.tv_auto_desc);
        setOnListener(this.vipQuickView, this.tv_switchBtn);
    }

    private void initSlotViews() {
        this.vipView = LayoutInflater.from(getContext()).inflate(R.layout.layout_slot_vip, (ViewGroup) null);
        this.addView = LayoutInflater.from(getContext()).inflate(R.layout.item_slot_new, (ViewGroup) null);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.item_slot_limit, (ViewGroup) null);
        this.fullView = inflate;
        this.tv_max_slot_tip = (TextView) inflate.findViewById(R.id.tv_max_slot_tip);
        setOnListener(this.addView, this.fullView, this.vipView);
    }

    private void refreshQuickState() {
        this.time = getAutoStateTimeCount();
        TextView textView = this.tv_time;
        if (textView != null) {
            textView.setText(this.time + ai.az);
        }
        TextView textView2 = this.tv_auto_desc;
        if (textView2 != null) {
            textView2.setText("每20s保存一次存档，最多" + getAutoStateMax() + "个");
        }
        if (this.time <= 0) {
            notifySlotChanged();
        }
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            this.autoSlotStatus = iEmulator.getAutoSlotStatus();
        }
        TextView textView3 = this.tv_switchBtn;
        if (textView3 != null) {
            textView3.setSelected(this.autoSlotStatus);
            updateAutoSlotStatus();
        }
    }

    private void updateAutoSlotStatus() {
        if (this.autoSlotStatus) {
            this.tv_status.setText("后自动存档");
            this.tv_status.setTextColor(Color.parseColor("#FF000000"));
            this.tv_time.setVisibility(0);
            return;
        }
        this.tv_status.setText("未开启");
        this.tv_status.setTextColor(Color.parseColor("#0D5B80"));
        this.tv_time.setVisibility(8);
    }

    void delSlot(final int i2) {
        this.mHandler.post(new Runnable() { // from class: com.papa91.arc.dialog.SettingSlotDialog.2
            @Override // java.lang.Runnable
            public void run() {
                int i4 = i2;
                int i5 = i4 - 1;
                Integer[] numArr = SettingSlotDialog.this.usedSlot;
                if (i5 < numArr.length) {
                    numArr[i4 - 1] = 0;
                }
                String str = SettingSlotDialog.this.ugcPath() + SettingSlotDialog.this.getModSubfix();
                File file = new File(str + g0.f27568a + i2);
                String name = file.getName();
                StringBuilder sb = new StringBuilder();
                sb.append(file.getAbsolutePath());
                sb.append("    ");
                sb.append(name);
                if (file.exists()) {
                    file.delete();
                }
                String replace = file.getAbsolutePath().replace(SDCardUtil.getExternalStorageDirectory(SettingSlotDialog.this.getContext()) + "/papa91", SettingSlotDialog.this.getContext().getFilesDir().getAbsolutePath() + "/emus");
                File file2 = new File(str + g0.f27568a + i2 + ".png");
                String name2 = file2.getName();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(file2.getAbsolutePath());
                sb2.append("    ");
                sb2.append(name2);
                if (file2.exists()) {
                    file2.delete();
                }
                String replace2 = file2.getAbsolutePath().replace(SDCardUtil.getExternalStorageDirectory(SettingSlotDialog.this.getContext()) + "/papa91", SettingSlotDialog.this.getContext().getFilesDir().getAbsolutePath() + "/emus");
                if (!TextUtils.isEmpty(str) && str.startsWith(SDCardUtil.getExternalStorageDirectory(SettingSlotDialog.this.getContext()))) {
                    String replace3 = str.replace(SDCardUtil.getExternalStorageDirectory(SettingSlotDialog.this.getContext()), SDCardUtil.getExternalStorageDirectory());
                    File file3 = new File(replace3 + g0.f27568a + i2);
                    file3.getAbsolutePath();
                    if (file3.exists()) {
                        file3.delete();
                    }
                    File file4 = new File(replace3 + g0.f27568a + i2 + ".png");
                    file4.getAbsolutePath();
                    if (file4.exists()) {
                        file4.delete();
                    }
                }
                File file5 = new File(replace);
                file5.getAbsolutePath();
                if (file5.exists()) {
                    file5.delete();
                }
                File file6 = new File(replace2);
                file6.getAbsolutePath();
                if (!file6.exists()) {
                    String ugcPathInternal = SettingSlotDialog.this.getUgcPathInternal();
                    File file7 = new File(ugcPathInternal + g0.f27568a + i2);
                    String absolutePath = file7.getParentFile().getAbsolutePath();
                    if (!file7.exists()) {
                        File file8 = new File(absolutePath, name);
                        if (file8.exists()) {
                            file8.delete();
                        }
                        file8.getAbsolutePath();
                    }
                    file7.getAbsolutePath();
                    if (file7.exists()) {
                        file7.delete();
                    }
                    File file9 = new File(ugcPathInternal + g0.f27568a + i2 + ".png");
                    file9.getAbsolutePath();
                    if (file9.exists()) {
                        file9.delete();
                    }
                    if (!file9.exists()) {
                        File file10 = new File(absolutePath, name2);
                        if (file10.exists()) {
                            file10.delete();
                        }
                        file10.getAbsolutePath();
                    }
                } else {
                    file6.delete();
                }
                SettingSlotDialog.this.notifySlotChanged();
            }
        });
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public void dismissOnly() {
        super.dismissOnly();
    }

    void evictCache(String str) {
        com.facebook.imagepipeline.core.g imagePipeline = Fresco.getImagePipeline();
        Uri parse = Uri.parse("file://" + str);
        imagePipeline.h(parse);
        imagePipeline.f(parse);
        imagePipeline.e(parse);
    }

    FilenameFilter getAutoSlotFilter() {
        return new FilenameFilter() { // from class: com.papa91.arc.dialog.SettingSlotDialog.10
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (str.contains(g0.f27568a) && str.contains("_auto") && !str.contains("lob")) {
                    return isNumeric(str.substring(str.lastIndexOf(g0.f27568a) + 1));
                }
                return false;
            }

            public boolean isNumeric(String str) {
                return Pattern.compile("[0-9]*").matcher(str).matches();
            }
        };
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_slot;
    }

    List<Slot> getQuickSlots() {
        File[] listFiles = new File(ugcPath()).getParentFile().listFiles(getAutoSlotFilter());
        ArrayList arrayList = new ArrayList();
        if (listFiles != null && listFiles.length > 0) {
            arrayList.addAll(Arrays.asList(listFiles));
        }
        ArrayList arrayList2 = new ArrayList();
        Collections.sort(arrayList, new Comparator<File>() { // from class: com.papa91.arc.dialog.SettingSlotDialog.9
            @Override // java.util.Comparator
            public int compare(File file, File file2) {
                if (file.lastModified() > file2.lastModified()) {
                    return -1;
                }
                return file.lastModified() < file2.lastModified() ? 1 : 0;
            }
        });
        if (arrayList.size() > 0) {
            int i2 = 0;
            while (i2 < arrayList.size()) {
                String name = ((File) arrayList.get(i2)).getName();
                String substring = name.substring(name.lastIndexOf(g0.f27568a) + 1);
                Slot slot = new Slot();
                slot.setPath(((File) arrayList.get(i2)).getAbsolutePath());
                slot.setTimestamp(((File) arrayList.get(i2)).lastModified());
                try {
                    slot.setId(Integer.parseInt(substring));
                } catch (NumberFormatException e4) {
                    e4.printStackTrace();
                }
                StringBuilder sb = new StringBuilder();
                sb.append("自动存档");
                int i4 = i2 + 1;
                sb.append(i4);
                slot.setName(sb.toString());
                slot.setDate(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(((File) arrayList.get(i2)).lastModified())));
                slot.setThumb(((File) arrayList.get(i2)).getAbsolutePath() + ".png");
                arrayList2.add(slot);
                i2 = i4;
            }
        }
        return arrayList2;
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
                Collections.sort(asList, new Comparator<File>() { // from class: com.papa91.arc.dialog.SettingSlotDialog.5
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
        return new FilenameFilter() { // from class: com.papa91.arc.dialog.SettingSlotDialog.6
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (!str.contains(g0.f27568a) || !str.contains(SettingSlotDialog.this.getModSubfix()) || str.contains("_auto") || str.contains("lob")) {
                    return false;
                }
                return isNumeric(str.substring(str.lastIndexOf(g0.f27568a) + 1));
            }

            public boolean isNumeric(String str) {
                return Pattern.compile("[0-9]*").matcher(str).matches();
            }
        };
    }

    void notifySlotChanged() {
        if (getVip() > 0) {
            this.lv_slot.addFooterView(this.vipFootView);
            this.lv_slot.removeHeaderView(this.vipView);
            this.lv_auto_slot.addFooterView(this.vipQuickFootView);
            this.lv_auto_slot.removeHeaderView(this.vipQuickView);
        } else {
            this.lv_slot.removeFooterView(this.vipFootView);
            this.lv_slot.removeHeaderView(this.vipView);
            this.lv_slot.addHeaderView(this.vipView);
            this.lv_auto_slot.removeFooterView(this.vipQuickFootView);
            this.lv_auto_slot.removeHeaderView(this.vipQuickView);
            this.lv_auto_slot.addHeaderView(this.vipQuickView);
        }
        this.lv_auto_slot.removeHeaderView(this.autoView);
        this.lv_auto_slot.addHeaderView(this.autoView);
        if (this.slots.size() < this.SLOT_COUNT && findEmptySlot() != -1) {
            this.lv_slot.removeHeaderView(this.addView);
            this.lv_slot.addHeaderView(this.addView);
            this.lv_slot.removeHeaderView(this.fullView);
        } else {
            this.lv_slot.removeHeaderView(this.addView);
            this.lv_slot.removeHeaderView(this.fullView);
            this.lv_slot.addHeaderView(this.fullView);
            if (getVip() > 0) {
                this.tv_max_slot_tip.setText("存档数量已达上限");
                this.fullView.findViewById(R.id.v_add_space).setVisibility(0);
            } else {
                this.tv_max_slot_tip.setText("存档数量已达上限,请开通会员");
                this.fullView.findViewById(R.id.v_add_space).setVisibility(8);
            }
        }
        if (getVip() > 0) {
            View view = this.addView;
            int i2 = R.id.v_add_space;
            view.findViewById(i2).setVisibility(0);
            this.autoView.findViewById(i2).setVisibility(0);
        } else {
            View view2 = this.addView;
            int i4 = R.id.v_add_space;
            view2.findViewById(i4).setVisibility(8);
            this.autoView.findViewById(i4).setVisibility(8);
        }
        if (this.slotAdapter == null) {
            SlotAdapter slotAdapter = new SlotAdapter();
            this.slotAdapter = slotAdapter;
            this.lv_slot.setAdapter((ListAdapter) slotAdapter);
        }
        this.slotAdapter.setDatas(this.slots);
        this.slotAdapter.notifyDataSetChanged();
        if (this.slotAdapterQuick == null) {
            SlotQuickAdapter slotQuickAdapter = new SlotQuickAdapter();
            this.slotAdapterQuick = slotQuickAdapter;
            this.lv_auto_slot.setAdapter((ListAdapter) slotQuickAdapter);
        }
        this.slotAdapterQuick.setDatas(this.slotsQuick);
        this.slotAdapterQuick.notifyDataSetChanged();
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.tv_back_game) {
            dismiss();
            showAdVideo();
        } else if (view != this.addView && view != this.fullView) {
            if (view != this.vipView && view != this.vipQuickView) {
                TextView textView = this.tv_switchBtn;
                if (view != textView || this.emulatorListener == null) {
                    return;
                }
                boolean z3 = !this.autoSlotStatus;
                this.autoSlotStatus = z3;
                textView.setSelected(z3);
                updateAutoSlotStatus();
                this.emulatorListener.setAutoSlotStatus(this.autoSlotStatus ? 1 : 0);
                return;
            }
            goVipShop(2, false);
        } else {
            int size = this.slots.size();
            if (this.slots.size() > 0 && this.slots.get(0).getId() == 0) {
                size--;
            }
            int i2 = this.SLOT_COUNT;
            if (size < i2) {
                saveSlot();
            } else if (i2 == 10) {
                showVip(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            }
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public void onVipChanged() {
        super.onVipChanged();
        updateData();
        refreshQuickState();
    }

    void resetUsedSlot() {
        for (int i2 = 0; i2 < this.SLOT_COUNT; i2++) {
            this.usedSlot[i2] = 0;
        }
    }

    void saveSlot() {
        saveSlot(findEmptySlot());
    }

    public void setTab(int i2) {
        if (i2 == 0) {
            this.lv_slot.setVisibility(0);
            this.lv_auto_slot.setVisibility(8);
        } else if (i2 == 1) {
            this.lv_slot.setVisibility(8);
            this.lv_auto_slot.setVisibility(0);
            refreshQuickState();
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        updateData();
        refreshQuickState();
        loadAdVideo();
    }

    public void showQuickSlotVip() {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        if (this.tipOneDialog == null) {
            TipOneDialog tipOneDialog = new TipOneDialog(context);
            this.tipOneDialog = tipOneDialog;
            tipOneDialog.setListener(new TipOneDialog.OnOptionsListener() { // from class: com.papa91.arc.dialog.SettingSlotDialog.8
                @Override // com.papa91.arc.dialog.TipOneDialog.OnOptionsListener
                public void onClose() {
                }

                @Override // com.papa91.arc.dialog.TipOneDialog.OnOptionsListener
                public void onConfirm() {
                    SettingSlotDialog.this.dismiss();
                    MarketUtil.intent(SettingSlotDialog.this.getContext(), "4", "", "https://anv3cjapi.5fun.com/member/vip_view/fc_archive", "", "");
                }
            });
        }
        this.tipOneDialog.show();
    }

    public void showSlotPrompt(int i2, Slot slot) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        this.mid = i2;
        this.mslot = slot;
        if (this.tipTwoDialog == null) {
            TipTwoDialog tipTwoDialog = new TipTwoDialog(context);
            this.tipTwoDialog = tipTwoDialog;
            tipTwoDialog.setListener(new TipTwoDialog.OnOptionsListener() { // from class: com.papa91.arc.dialog.SettingSlotDialog.7
                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onCancel() {
                }

                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onClose() {
                }

                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onConfirm() {
                    SettingSlotDialog settingSlotDialog = SettingSlotDialog.this;
                    int i4 = settingSlotDialog.mid;
                    if (i4 == R.id.del) {
                        settingSlotDialog.slots.remove(settingSlotDialog.mslot);
                        SettingSlotDialog settingSlotDialog2 = SettingSlotDialog.this;
                        settingSlotDialog2.delSlot(settingSlotDialog2.mslot.getId());
                    } else if (i4 == R.id.save) {
                        settingSlotDialog.evictCache(settingSlotDialog.mslot.getThumb());
                        SettingSlotDialog settingSlotDialog3 = SettingSlotDialog.this;
                        settingSlotDialog3.saveSlot(settingSlotDialog3.mslot.getId());
                    } else if (i4 == R.id.load) {
                        settingSlotDialog.dismiss();
                        SettingSlotDialog settingSlotDialog4 = SettingSlotDialog.this;
                        settingSlotDialog4.loadSlotState(settingSlotDialog4.mslot.getPath());
                        SettingSlotDialog.this.resumeGame();
                        SettingSlotDialog.this.showAdVideo();
                    }
                }
            });
        }
        if (i2 == R.id.del) {
            this.tipTwoDialog.setTipContent("是否删除存档？");
        } else if (i2 == R.id.save) {
            this.tipTwoDialog.setTipContent("是否覆盖存档？");
        } else if (i2 == R.id.load) {
            this.tipTwoDialog.setTipContent("是否读取此存档？");
        }
        this.tipTwoDialog.show();
    }

    public void updateData() {
        List<Slot> quickSlots = getQuickSlots();
        List<TypeBean> menuTypes = getMenuTypes(1);
        for (int i2 = 0; i2 < menuTypes.size(); i2++) {
            if (i2 == this.oldSelIndex) {
                menuTypes.get(i2).setSelected(true);
            } else {
                menuTypes.get(i2).setSelected(false);
            }
            if (!this.hasShowDot) {
                if (menuTypes.get(i2).getType() == 1) {
                    menuTypes.get(i2).setShowDot(quickSlots.size() > 0);
                } else {
                    menuTypes.get(i2).setShowDot(false);
                }
            }
        }
        this.slotTypeAdapter.setDatas(menuTypes);
        if (getVip() > 0) {
            this.SLOT_COUNT = 20;
            List asList = Arrays.asList(this.usedSlot);
            this.usedSlot = new Integer[this.SLOT_COUNT];
            for (int i4 = 0; i4 < asList.size(); i4++) {
                this.usedSlot[i4] = (Integer) asList.get(i4);
            }
        }
        this.prefs = new UserPrefs(getContext());
        this.slots.clear();
        List<Slot> list = this.slots;
        list.addAll(getRecordInfo(ugcPath() + getModSubfix()));
        this.slotsQuick.clear();
        this.slotsQuick.addAll(quickSlots);
        notifySlotChanged();
    }

    void saveSlot(final int i2) {
        this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.dialog.SettingSlotDialog.3
            @Override // java.lang.Runnable
            public void run() {
                String ugcPath = SettingSlotDialog.this.ugcPath();
                SettingSlotDialog.this.evictCache(ugcPath);
                SettingSlotDialog settingSlotDialog = SettingSlotDialog.this;
                settingSlotDialog.saveSlotState(ugcPath + g0.f27568a + i2);
            }
        }, 180L);
    }
}
