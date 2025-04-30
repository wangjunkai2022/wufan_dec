package com.papa91.arc.dialog;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.common.constants.StatIntents;
import com.papa91.arc.interfaces.IOnItemClickListener;
import com.papa91.arc.view.BaseDialog;
import com.papa91.arc.view.IEmulator;
import com.papa91.arc.view.ToastUtil;
import com.papa91.arc.widget.view.EmptyTipView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingCheatDialog extends SettingDialog {
    View addCheat;
    View addCheatView;
    ExpandableListviewAdapter cheatAdapter;
    Dialog cheatAddDialog;
    EditText cheatCode;
    CheatingAdapter cheatCustomAdapter;
    List<CheatInfo> cheatInfos;
    EditText cheatName;
    CheatTypeAdapter cheatTypeAdapter;
    ConstraintLayout constraintLayout;
    private ExpandableListView elv_cheat;
    private EmptyTipView etv_view;
    View footerView;
    private boolean isGG;
    ImageView iv_close;
    private ListView lv_cheat_custom;
    private ListView lv_type;
    int oldSelIndex;
    View openVip;
    View openVipCustom;
    View paste;
    RadioButton rbt_type_cheat;
    RadioButton rbt_type_gg;
    RadioGroup rg_type;
    View save;
    TextView textView10;
    private TextView tv_back_game;
    private TextView tv_title;
    View viewFooter;
    View vipView;
    View vipViewCustom;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class CheatTypeAdapter extends SimpleBaseAdapter<TypeBean> {

        /* loaded from: classes4.dex */
        class ViewHolder {
            public ImageView iv_arrow;
            public ImageView iv_icon;
            public LinearLayout ll_root;
            public TextView tv_type;

            ViewHolder() {
            }
        }

        CheatTypeAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.ll_root = (LinearLayout) view.findViewById(R.id.ll_root);
                viewHolder.tv_type = (TextView) view.findViewById(R.id.tv_type);
                viewHolder.iv_icon = (ImageView) view.findViewById(R.id.iv_icon);
                viewHolder.iv_arrow = (ImageView) view.findViewById(R.id.iv_arrow);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            TypeBean item = getItem(i2);
            viewHolder.tv_type.setText(item.getName());
            if (item.isSelected()) {
                viewHolder.tv_type.setTextColor(-16777216);
                viewHolder.ll_root.setBackgroundResource(R.drawable.bg_type_h);
                if (item.getIconSelected() != -1) {
                    viewHolder.iv_icon.setImageResource(item.getIconSelected());
                }
                viewHolder.iv_arrow.setVisibility(0);
            } else {
                viewHolder.tv_type.setTextColor(-7022593);
                viewHolder.ll_root.setBackgroundResource(R.drawable.bg_type_n);
                if (item.getIconNormal() != -1) {
                    viewHolder.iv_icon.setImageResource(item.getIconNormal());
                }
                viewHolder.iv_arrow.setVisibility(8);
            }
            if (item.getIconNormal() != -1 && item.getIconSelected() != -1) {
                viewHolder.iv_icon.setVisibility(0);
            } else {
                viewHolder.iv_icon.setVisibility(8);
            }
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_cheat_type;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class CheatingAdapter<T> extends SimpleBaseAdapter<T> {
        public int viewType = 0;

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

        CheatingAdapter() {
        }

        private View initializeCustomView(final int i2, View view, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.del = (TextView) view.findViewById(R.id.del);
                viewHolder.modify = (TextView) view.findViewById(R.id.modify);
                viewHolder.switchBtn = (TextView) view.findViewById(R.id.switchBtn);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            final EditCheatInfo editCheatInfo = (EditCheatInfo) getItem(i2);
            viewHolder.name.setText(editCheatInfo.cheatName);
            viewHolder.switchBtn.setSelected(editCheatInfo.isEnable);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingCheatDialog.CheatingAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int id = view2.getId();
                    if (id == R.id.del) {
                        SettingCheatDialog.this.deleteEditCheatInfo(i2);
                        CheatingAdapter.this.remove(i2);
                        CheatingAdapter.this.notifyDataSetChanged();
                    } else if (id == R.id.modify) {
                        SettingCheatDialog.this.showModifyCheatDialog(i2);
                    } else if (id == R.id.switchBtn) {
                        if (SettingCheatDialog.this.getVip() > 0) {
                            SettingCheatDialog.this.enableEidtCheat(i2, !editCheatInfo.isEnable ? 1 : 0);
                            EditCheatInfo editCheatInfo2 = editCheatInfo;
                            editCheatInfo2.isEnable = true ^ editCheatInfo2.isEnable;
                            CheatingAdapter.this.notifyDataSetChanged();
                            return;
                        }
                        int i4 = !editCheatInfo.isEnable ? 1 : 0;
                        if (i4 == 1) {
                            SettingCheatDialog.this.enableEidtCheat(i2, i4);
                            return;
                        }
                        SettingCheatDialog.this.enableEidtCheat(i2, i4);
                        EditCheatInfo editCheatInfo3 = editCheatInfo;
                        editCheatInfo3.isEnable = true ^ editCheatInfo3.isEnable;
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

        private View initializeVipView(final int i2, View view, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.del = (TextView) view.findViewById(R.id.del);
                viewHolder.modify = (TextView) view.findViewById(R.id.modify);
                viewHolder.switchBtn = (TextView) view.findViewById(R.id.switchBtn);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            final CheatInfo cheatInfo = (CheatInfo) getItem(i2);
            viewHolder.name.setText(cheatInfo.cheatName);
            viewHolder.switchBtn.setSelected(cheatInfo.off != 0);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingCheatDialog.CheatingAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (view2.getId() == R.id.switchBtn) {
                        if (SettingCheatDialog.this.getVip() > 0) {
                            int i4 = cheatInfo.off == 0 ? 1 : 0;
                            SettingCheatDialog.this.cheatInfoEnable(i2, i4);
                            cheatInfo.off = i4;
                        } else {
                            SettingCheatDialog.this.showVip("1");
                        }
                        StatIntents.getInstance(SettingCheatDialog.this.getContext()).statOpenGoldfinger(SettingCheatDialog.this.getGameId(), SettingCheatDialog.this.getUserId());
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

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            if (this.viewType == 0) {
                initializeVipView(i2, view, z3);
            } else {
                initializeCustomView(i2, view, z3);
            }
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_cheat;
        }
    }

    /* loaded from: classes4.dex */
    public class ExpandableListviewAdapter extends BaseExpandableListAdapter {
        private List<CheatInfo> mDatas;
        private int marginTop;
        private int maxHeight;
        private int minHeight;

        /* loaded from: classes4.dex */
        class ChildViewHolder {
            TextView chidren_item;
            RelativeLayout rl_root;
            TextView switchBtn;
            TextView tv_desc;

            ChildViewHolder() {
            }
        }

        /* loaded from: classes4.dex */
        class GroupViewHolder {
            ImageView parent_image;
            TextView parent_textview_id;
            RelativeLayout rl_root;
            TextView switchBtn;
            TextView tv_desc;

            GroupViewHolder() {
            }
        }

        public ExpandableListviewAdapter(Context context, List<CheatInfo> list) {
            this.mDatas = list;
            this.minHeight = (int) context.getResources().getDimension(R.dimen.wdp80);
            this.maxHeight = (int) context.getResources().getDimension(R.dimen.wdp125);
            this.marginTop = (int) context.getResources().getDimension(R.dimen.wdp14);
        }

        @Override // android.widget.ExpandableListAdapter
        public long getChildId(int i2, int i4) {
            return i4;
        }

        @Override // android.widget.ExpandableListAdapter
        public View getChildView(final int i2, final int i4, boolean z3, View view, ViewGroup viewGroup) {
            ChildViewHolder childViewHolder;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_cheat_expand_chidren, viewGroup, false);
                childViewHolder = new ChildViewHolder();
                childViewHolder.chidren_item = (TextView) view.findViewById(R.id.chidren_item);
                childViewHolder.switchBtn = (TextView) view.findViewById(R.id.switchBtn);
                childViewHolder.tv_desc = (TextView) view.findViewById(R.id.tv_desc);
                childViewHolder.rl_root = (RelativeLayout) view.findViewById(R.id.rl_root);
                view.setTag(childViewHolder);
            } else {
                childViewHolder = (ChildViewHolder) view.getTag();
            }
            final CheatInfo child = getChild(i2, i4);
            if (child.cheatName.contains("（")) {
                String[] split = child.cheatName.split("（");
                childViewHolder.chidren_item.setText(split[0]);
                childViewHolder.tv_desc.setText(split[1].substring(0, split[1].length() - 1));
                childViewHolder.tv_desc.setVisibility(0);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.maxHeight);
                layoutParams.setMargins(0, this.marginTop, 0, 0);
                childViewHolder.rl_root.setLayoutParams(layoutParams);
            } else {
                childViewHolder.chidren_item.setText(child.cheatName);
                childViewHolder.tv_desc.setVisibility(8);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, this.minHeight);
                layoutParams2.setMargins(0, this.marginTop, 0, 0);
                childViewHolder.rl_root.setLayoutParams(layoutParams2);
            }
            childViewHolder.switchBtn.setSelected(child.off != 0);
            childViewHolder.switchBtn.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingCheatDialog.ExpandableListviewAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (view2.getId() == R.id.switchBtn) {
                        if (SettingCheatDialog.this.getVip() > 0) {
                            int i5 = child.off == 0 ? 1 : 0;
                            SettingCheatDialog.this.cheatInfoEnable(i2, i4);
                            Iterator<CheatInfo> it2 = ExpandableListviewAdapter.this.getGroup(i2).option.iterator();
                            while (it2.hasNext()) {
                                it2.next().off = 0;
                            }
                            child.off = i5;
                        } else {
                            SettingCheatDialog.this.showVip("1");
                        }
                        StatIntents.getInstance(SettingCheatDialog.this.getContext()).statOpenGoldfinger(SettingCheatDialog.this.getGameId(), SettingCheatDialog.this.getUserId());
                        ExpandableListviewAdapter.this.notifyDataSetChanged();
                    }
                }
            });
            return view;
        }

        @Override // android.widget.ExpandableListAdapter
        public int getChildrenCount(int i2) {
            return this.mDatas.get(i2).option.size();
        }

        @Override // android.widget.ExpandableListAdapter
        public int getGroupCount() {
            return this.mDatas.size();
        }

        @Override // android.widget.ExpandableListAdapter
        public long getGroupId(int i2) {
            return i2;
        }

        @Override // android.widget.ExpandableListAdapter
        public View getGroupView(final int i2, boolean z3, View view, ViewGroup viewGroup) {
            GroupViewHolder groupViewHolder;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_cheat_expand_parent, viewGroup, false);
                groupViewHolder = new GroupViewHolder();
                groupViewHolder.parent_textview_id = (TextView) view.findViewById(R.id.parent_textview_id);
                groupViewHolder.parent_image = (ImageView) view.findViewById(R.id.parent_image);
                groupViewHolder.switchBtn = (TextView) view.findViewById(R.id.switchBtn);
                groupViewHolder.tv_desc = (TextView) view.findViewById(R.id.tv_desc);
                groupViewHolder.rl_root = (RelativeLayout) view.findViewById(R.id.rl_root);
                view.setTag(groupViewHolder);
            } else {
                groupViewHolder = (GroupViewHolder) view.getTag();
            }
            final CheatInfo group = getGroup(i2);
            if (group.cheatName.contains("（")) {
                String[] split = group.cheatName.split("（");
                groupViewHolder.parent_textview_id.setText(split[0]);
                groupViewHolder.tv_desc.setText(split[1].substring(0, split[1].length() - 1));
                groupViewHolder.tv_desc.setVisibility(0);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.maxHeight);
                layoutParams.setMargins(0, this.marginTop, 0, 0);
                groupViewHolder.rl_root.setLayoutParams(layoutParams);
            } else {
                groupViewHolder.parent_textview_id.setText(group.cheatName);
                groupViewHolder.tv_desc.setVisibility(8);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, this.minHeight);
                layoutParams2.setMargins(0, this.marginTop, 0, 0);
                groupViewHolder.rl_root.setLayoutParams(layoutParams2);
            }
            if (group.option.size() > 2) {
                groupViewHolder.switchBtn.setVisibility(8);
                groupViewHolder.parent_image.setVisibility(0);
            } else {
                groupViewHolder.switchBtn.setVisibility(0);
                groupViewHolder.parent_image.setVisibility(8);
                groupViewHolder.switchBtn.setSelected(getGroup(i2).off != 0);
                groupViewHolder.switchBtn.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingCheatDialog.ExpandableListviewAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (view2.getId() == R.id.switchBtn) {
                            if (SettingCheatDialog.this.getVip() > 0) {
                                int i4 = group.off == 0 ? 1 : 0;
                                SettingCheatDialog.this.cheatInfoEnable(i2, i4);
                                group.off = i4;
                            } else {
                                SettingCheatDialog.this.showVip("1");
                            }
                            StatIntents.getInstance(SettingCheatDialog.this.getContext()).statOpenGoldfinger(SettingCheatDialog.this.getGameId(), SettingCheatDialog.this.getUserId());
                            ExpandableListviewAdapter.this.notifyDataSetChanged();
                        }
                    }
                });
            }
            if (z3) {
                groupViewHolder.parent_image.setImageDrawable(ContextCompat.getDrawable(((BaseDialog) SettingCheatDialog.this).mContext, R.drawable.ic_arrow_up));
            } else {
                groupViewHolder.parent_image.setImageDrawable(ContextCompat.getDrawable(((BaseDialog) SettingCheatDialog.this).mContext, R.drawable.ic_arrow_down));
            }
            return view;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean isChildSelectable(int i2, int i4) {
            return true;
        }

        @Override // android.widget.ExpandableListAdapter
        public CheatInfo getChild(int i2, int i4) {
            return getGroup(i2).option.get(i4);
        }

        @Override // android.widget.ExpandableListAdapter
        public CheatInfo getGroup(int i2) {
            return this.mDatas.get(i2);
        }
    }

    public SettingCheatDialog(@NonNull Context context) {
        super(context);
        this.cheatInfos = new ArrayList();
        this.oldSelIndex = 0;
        this.isGG = false;
        this.tv_back_game = (TextView) findViewById(R.id.tv_back_game);
        this.lv_type = (ListView) findViewById(R.id.lv_type);
        this.lv_cheat_custom = (ListView) findViewById(R.id.lv_cheat_custom);
        this.elv_cheat = (ExpandableListView) findViewById(R.id.elv_cheat);
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        this.etv_view = (EmptyTipView) findViewById(R.id.etv_view);
        this.tv_title.setText("金手指");
        this.footerView = new View(context);
        setOnListener(this.tv_back_game);
        initCheatingViews();
        initData();
    }

    private void initCheatingViews() {
        this.constraintLayout = (ConstraintLayout) findViewById(R.id.constraintLayout);
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.layout_cheat_add, (ViewGroup) null);
        this.addCheatView = inflate;
        this.addCheat = inflate.findViewById(R.id.addCheat);
        LayoutInflater from = LayoutInflater.from(this.mContext);
        int i2 = R.layout.layout_cheat_vip;
        View inflate2 = from.inflate(i2, (ViewGroup) null);
        this.vipView = inflate2;
        int i4 = R.id.tv_open_vip;
        this.openVip = inflate2.findViewById(i4);
        View inflate3 = LayoutInflater.from(this.mContext).inflate(i2, (ViewGroup) null);
        this.vipViewCustom = inflate3;
        this.openVipCustom = inflate3.findViewById(i4);
        this.viewFooter = LayoutInflater.from(this.mContext).inflate(R.layout.item_footer_nomore, (ViewGroup) null);
        setOnListener(this.addCheat, this.openVip, this.openVipCustom);
        this.cheatCustomAdapter = new CheatingAdapter();
        this.cheatAdapter = new ExpandableListviewAdapter(getContext(), this.cheatInfos);
        this.lv_cheat_custom.setAdapter((ListAdapter) this.cheatCustomAdapter);
        this.elv_cheat.setAdapter(this.cheatAdapter);
    }

    private void initData() {
        if (this.cheatTypeAdapter == null) {
            this.cheatTypeAdapter = new CheatTypeAdapter();
        }
        this.cheatTypeAdapter.setItemClickListener(new IOnItemClickListener() { // from class: com.papa91.arc.dialog.SettingCheatDialog.1
            @Override // com.papa91.arc.interfaces.IOnItemClickListener
            public void onItemClick(int i2) {
                SettingCheatDialog settingCheatDialog = SettingCheatDialog.this;
                if (i2 != settingCheatDialog.oldSelIndex) {
                    TypeBean item = settingCheatDialog.cheatTypeAdapter.getItem(i2);
                    if (item.getType() == 2) {
                        return;
                    }
                    SettingCheatDialog settingCheatDialog2 = SettingCheatDialog.this;
                    settingCheatDialog2.cheatTypeAdapter.getItem(settingCheatDialog2.oldSelIndex).setSelected(false);
                    item.setSelected(true);
                    SettingCheatDialog settingCheatDialog3 = SettingCheatDialog.this;
                    settingCheatDialog3.oldSelIndex = i2;
                    settingCheatDialog3.cheatTypeAdapter.notifyDataSetChanged();
                    SettingCheatDialog.this.setTab(i2);
                }
            }
        });
        this.lv_type.setAdapter((ListAdapter) this.cheatTypeAdapter);
    }

    private void showListView(View view) {
        this.lv_cheat_custom.setVisibility(8);
        ExpandableListView expandableListView = this.elv_cheat;
        if (view != expandableListView) {
            expandableListView.setVisibility(8);
        }
        view.setVisibility(0);
    }

    public void cheatReset() {
        List<CheatInfo> list = this.cheatInfos;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_cheat;
    }

    public String getTextFromClip(Context context) {
        ClipData primaryClip;
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        return (clipboardManager.hasPrimaryClip() && (primaryClip = clipboardManager.getPrimaryClip()) != null && primaryClip.getItemCount() > 0 && !TextUtils.isEmpty(primaryClip.getItemAt(0).getText())) ? primaryClip.getItemAt(0).getText().toString() : "";
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view == this.tv_back_game) {
            dismiss();
            showAdVideo();
        } else if (view == this.addCheat) {
            showAddCheatDialog();
        } else if (view == this.paste) {
            if (this.cheatCode != null) {
                String textFromClip = getTextFromClip(this.mContext);
                this.cheatCode.setText(textFromClip);
                this.cheatCode.setSelection(textFromClip.length());
            }
        } else if (view == this.save) {
            if (TextUtils.isEmpty(this.cheatName.getText().toString())) {
                ToastUtil.show(this.mContext, "请填写作弊码名称！");
            } else if (TextUtils.isEmpty(this.cheatCode.getText().toString())) {
                ToastUtil.show(this.mContext, "请填写作弊码！");
            } else if (!checkCheatCodeInfo(this.cheatCode.getText().toString(), this.isGG)) {
                ToastUtil.show(this.mContext, "作弊码添不匹配！");
            } else {
                try {
                    try {
                        EditCheatInfo editCheatInfo = new EditCheatInfo(false, this.isGG, this.cheatName.getText().toString(), this.cheatCode.getText().toString());
                        addEditCheatInfo(editCheatInfo);
                        this.cheatCustomAdapter.addData(editCheatInfo);
                        this.cheatCustomAdapter.notifyDataSetChanged();
                    } catch (Exception unused) {
                        ToastUtil.show(this.mContext, "作弊码添加失败！");
                    }
                } finally {
                    this.cheatAddDialog.dismiss();
                }
            }
        } else if (view == this.iv_close) {
            Dialog dialog = this.cheatAddDialog;
            if (dialog == null || !dialog.isShowing()) {
            }
        } else if (view == this.openVip || view == this.openVipCustom) {
            goVipShop(1, false);
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public void onVipChanged() {
        setTab(this.oldSelIndex);
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.IEmulator
    public void pauseGame() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.pauseGame();
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.IEmulator
    public void resumeGame() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.resumeGame();
        }
    }

    public void setTab(int i2) {
        View view;
        View view2;
        try {
            if (this.cheatInfos.size() <= 0) {
                this.cheatInfos.addAll(getCheatListData());
                this.cheatCustomAdapter.setDatas(getEditCheatListData());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (getVip() > 0) {
            if (this.elv_cheat.getHeaderViewsCount() > 0 && (view2 = this.vipView) != null && view2.getParent() != null) {
                this.elv_cheat.removeHeaderView(this.vipView);
            }
            if (this.lv_cheat_custom.getHeaderViewsCount() > 0 && (view = this.vipViewCustom) != null && view.getParent() != null) {
                this.lv_cheat_custom.addFooterView(this.footerView);
                this.lv_cheat_custom.removeHeaderView(this.vipViewCustom);
            }
            View view3 = this.addCheatView;
            if (view3 != null) {
                view3.findViewById(R.id.v_add_space).setVisibility(0);
            }
        } else {
            if (i2 == 0) {
                this.elv_cheat.removeHeaderView(this.vipView);
                this.elv_cheat.addHeaderView(this.vipView);
            } else if (i2 == 1) {
                this.lv_cheat_custom.removeFooterView(this.footerView);
                this.lv_cheat_custom.removeHeaderView(this.vipViewCustom);
                this.lv_cheat_custom.addHeaderView(this.vipViewCustom);
            }
            View view4 = this.addCheatView;
            if (view4 != null) {
                view4.findViewById(R.id.v_add_space).setVisibility(8);
            }
        }
        if (i2 == 0) {
            this.elv_cheat.removeFooterView(this.viewFooter);
            if (this.cheatAdapter.getGroupCount() > 0) {
                showListView(this.elv_cheat);
                this.elv_cheat.addFooterView(this.viewFooter);
            } else {
                showListView(this.etv_view);
            }
            this.cheatAdapter.notifyDataSetChanged();
        } else if (i2 == 1) {
            this.cheatCustomAdapter.viewType = 1;
            this.lv_cheat_custom.removeHeaderView(this.addCheatView);
            this.lv_cheat_custom.addHeaderView(this.addCheatView);
            showListView(this.lv_cheat_custom);
            this.cheatCustomAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        List<TypeBean> menuTypes = getMenuTypes(0);
        for (int i2 = 0; i2 < menuTypes.size(); i2++) {
            if (i2 == this.oldSelIndex) {
                menuTypes.get(i2).setSelected(true);
            } else {
                menuTypes.get(i2).setSelected(false);
            }
        }
        this.cheatTypeAdapter.setDatas(menuTypes);
        setTab(this.oldSelIndex);
        loadAdVideo();
    }

    public void showAddCheatDialog() {
        if (this.cheatAddDialog == null) {
            BaseDialog baseDialog = new BaseDialog(getContext());
            this.cheatAddDialog = baseDialog;
            baseDialog.setContentView(R.layout.dialog_add_cheat);
            this.cheatName = (EditText) this.cheatAddDialog.findViewById(R.id.editText);
            this.cheatCode = (EditText) this.cheatAddDialog.findViewById(R.id.editText2);
            this.paste = this.cheatAddDialog.findViewById(R.id.paste);
            this.save = this.cheatAddDialog.findViewById(R.id.save);
            this.iv_close = (ImageView) this.cheatAddDialog.findViewById(R.id.iv_close);
            this.rg_type = (RadioGroup) this.cheatAddDialog.findViewById(R.id.rg_type);
            this.rbt_type_cheat = (RadioButton) this.cheatAddDialog.findViewById(R.id.rbt_type_cheat);
            this.rbt_type_gg = (RadioButton) this.cheatAddDialog.findViewById(R.id.rbt_type_gg);
            this.textView10 = (TextView) this.cheatAddDialog.findViewById(R.id.textView10);
            if (showGGCodeButton()) {
                this.rbt_type_gg.setVisibility(0);
            } else {
                this.rbt_type_gg.setVisibility(8);
            }
            this.rg_type.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.papa91.arc.dialog.SettingCheatDialog.3
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public void onCheckedChanged(RadioGroup radioGroup, int i2) {
                    if (i2 == SettingCheatDialog.this.rbt_type_cheat.getId()) {
                        SettingCheatDialog.this.isGG = false;
                    } else if (i2 == SettingCheatDialog.this.rbt_type_gg.getId()) {
                        SettingCheatDialog.this.isGG = true;
                    }
                    SettingCheatDialog settingCheatDialog = SettingCheatDialog.this;
                    settingCheatDialog.textView10.setText(settingCheatDialog.getCustomCheatTip(settingCheatDialog.isGG));
                }
            });
            getWindow().setSoftInputMode(16);
        }
        if (this.isGG) {
            this.rg_type.check(this.rbt_type_gg.getId());
        } else {
            this.rg_type.check(this.rbt_type_cheat.getId());
        }
        setOnListener(this.paste, this.save, this.iv_close);
        this.cheatName.setText("");
        this.cheatCode.setText("");
        this.textView10.setText(getCustomCheatTip(this.isGG));
        if (this.cheatAddDialog.isShowing()) {
            return;
        }
        this.cheatAddDialog.show();
    }

    public void showModifyCheatDialog(final int i2) {
        if (i2 < 0 || this.cheatCustomAdapter.getCount() <= i2) {
            return;
        }
        final EditCheatInfo editCheatInfo = (EditCheatInfo) this.cheatCustomAdapter.getItem(i2);
        this.isGG = editCheatInfo.GBA_IS_GS;
        showAddCheatDialog();
        this.cheatName.setText(editCheatInfo.cheatName);
        this.cheatCode.setText(editCheatInfo.cheatValue);
        this.cheatCode.setSelection(editCheatInfo.cheatValue.length());
        this.save.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingCheatDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TextUtils.isEmpty(SettingCheatDialog.this.cheatName.getText().toString())) {
                    ToastUtil.show(SettingCheatDialog.this.getContext(), "作弊码名称不能为空！");
                } else if (TextUtils.isEmpty(SettingCheatDialog.this.cheatCode.getText().toString())) {
                    ToastUtil.show(SettingCheatDialog.this.getContext(), "作弊码不能为空！");
                } else {
                    SettingCheatDialog settingCheatDialog = SettingCheatDialog.this;
                    if (!settingCheatDialog.checkCheatCodeInfo(settingCheatDialog.cheatCode.getText().toString(), SettingCheatDialog.this.isGG)) {
                        ToastUtil.show(SettingCheatDialog.this.getContext(), "作弊码格式有误！");
                        return;
                    }
                    try {
                        try {
                            EditCheatInfo editCheatInfo2 = new EditCheatInfo(editCheatInfo.isEnable, SettingCheatDialog.this.isGG, SettingCheatDialog.this.cheatName.getText().toString(), SettingCheatDialog.this.cheatCode.getText().toString());
                            SettingCheatDialog.this.modifyEditCheatInfo(i2, editCheatInfo2);
                            SettingCheatDialog.this.cheatCustomAdapter.remove(i2);
                            SettingCheatDialog.this.cheatCustomAdapter.addData(i2, editCheatInfo2);
                            SettingCheatDialog.this.cheatCustomAdapter.notifyDataSetChanged();
                        } catch (Exception unused) {
                            ToastUtil.show(view.getContext(), "作弊码添加失败！");
                        }
                    } finally {
                        SettingCheatDialog.this.cheatAddDialog.dismiss();
                    }
                }
            }
        });
    }

    public void updateSwitchState(int i2) {
        CheatingAdapter cheatingAdapter = this.cheatCustomAdapter;
        if (cheatingAdapter != null) {
            EditCheatInfo editCheatInfo = (EditCheatInfo) cheatingAdapter.getItem(i2);
            enableEidtCheat(i2, -1);
            editCheatInfo.isEnable = !editCheatInfo.isEnable;
            this.cheatCustomAdapter.notifyDataSetChanged();
        }
    }
}
