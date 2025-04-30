package com.papa91.arc.dialog;

import android.content.Context;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.net.Uri;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.papa91.arc.SnkConfig;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.bean.SkillConfigBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import com.papa91.arc.common.constants.StatIntents;
import com.papa91.arc.dialog.SettingOneKeyMenuDialog;
import com.papa91.arc.interfaces.IOnItemClickListener;
import com.papa91.arc.view.ToastUtil;
import com.papa91.arc.widget.view.HeaderGridView;
import java.io.File;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingOneKeyDialog extends SettingDialog {
    static SkillConfigBean skillConfigBean;
    int defIdx;
    String gameDir;
    HeaderGridView gv_list;
    ListView lv_hero;
    private OneKeyAdapter mAdapter;
    Handler mHandler;
    private HeroAdapter mHeroAdapter;
    SettingOneKeyMenuDialog menuDialog;
    View oneKeyView;
    String skillGifUrl;
    int skillIdx;
    SkillTableDataBean skillTableDataBean;
    int skillType;
    SkillTableDataBean.SkillsTableBean skillsTableBean;
    SpBindsDataBean spBindsDataBean;
    TextView switchBtn;
    TextView tv_back_game;
    TextView tv_title;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class HeroAdapter extends SimpleBaseAdapter<SkillTableDataBean.SkillsTableBean> {

        /* loaded from: classes4.dex */
        class ViewHolder {
            public ImageView iv_mask;
            public SimpleDraweeView sdv_image;
            public TextView tv_name;

            ViewHolder() {
            }
        }

        HeroAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.sdv_image = (SimpleDraweeView) view.findViewById(R.id.sdv_image);
                viewHolder.iv_mask = (ImageView) view.findViewById(R.id.iv_mask);
                viewHolder.tv_name = (TextView) view.findViewById(R.id.tv_name);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("file://");
            sb.append(new File(SettingOneKeyDialog.this.gameDir + "/img/c_" + i2 + ".jpg").getAbsolutePath());
            viewHolder.sdv_image.setImageURI(Uri.parse(sb.toString()));
            viewHolder.tv_name.setText(getItem(i2).getName());
            ColorMatrix colorMatrix = new ColorMatrix();
            if (i2 == SettingOneKeyDialog.this.defIdx) {
                colorMatrix.setSaturation(0.35f);
                viewHolder.iv_mask.setVisibility(0);
            } else {
                colorMatrix.setSaturation(1.0f);
                viewHolder.iv_mask.setVisibility(8);
            }
            viewHolder.sdv_image.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_onekey_hero;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class OneKeyAdapter extends SimpleBaseAdapter<SkillTableDataBean.SkillsTableBean.SkillBean> {

        /* loaded from: classes4.dex */
        class ViewHolder {
            ImageView iv_key_code;
            SimpleDraweeView sdv_image;
            TextView tv_key;
            TextView tv_key_add;
            TextView tv_name;

            ViewHolder() {
            }
        }

        OneKeyAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.sdv_image = (SimpleDraweeView) view.findViewById(R.id.sdv_image);
                viewHolder.tv_name = (TextView) view.findViewById(R.id.tv_name);
                viewHolder.tv_key = (TextView) view.findViewById(R.id.tv_key);
                viewHolder.tv_key_add = (TextView) view.findViewById(R.id.tv_key_add);
                viewHolder.iv_key_code = (ImageView) view.findViewById(R.id.iv_key_code);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            SkillTableDataBean.SkillsTableBean.SkillBean item = getItem(i2);
            if (SnkConfig.isSnkGame(SettingOneKeyDialog.this.getGameId())) {
                viewHolder.sdv_image.setActualImageResource(R.drawable.img_snk_default_image);
            } else {
                viewHolder.sdv_image.setController(Fresco.newDraweeControllerBuilder().a(Uri.parse(SettingOneKeyDialog.this.skillGifUrl + "/s_" + SettingOneKeyDialog.this.defIdx + "_" + i2 + ".gif")).E(true).build());
            }
            viewHolder.tv_name.setText(item.getSkill_name());
            viewHolder.tv_key.setText(item.getSkill_set());
            if (SettingOneKeyDialog.this.spBindsDataBean != null) {
                int imageIndex = getImageIndex(i2);
                if (imageIndex == -1) {
                    viewHolder.tv_key_add.setVisibility(0);
                    viewHolder.iv_key_code.setVisibility(8);
                } else {
                    viewHolder.iv_key_code.setVisibility(0);
                    viewHolder.tv_key_add.setVisibility(8);
                    SettingOneKeyDialog settingOneKeyDialog = SettingOneKeyDialog.this;
                    if (settingOneKeyDialog.skillType == 0) {
                        viewHolder.iv_key_code.setImageResource(settingOneKeyDialog.getSpBindImages(0)[imageIndex]);
                    } else {
                        viewHolder.iv_key_code.setImageResource(settingOneKeyDialog.getSpBindImages(2)[imageIndex]);
                    }
                }
            } else {
                viewHolder.tv_key_add.setVisibility(0);
                viewHolder.iv_key_code.setVisibility(8);
            }
            if (SettingOneKeyDialog.this.isSPVisible()) {
                return;
            }
            viewHolder.tv_key_add.setVisibility(8);
            viewHolder.iv_key_code.setVisibility(8);
        }

        int getImageIndex(int i2) {
            for (int i4 = 0; i4 < SettingOneKeyDialog.this.spBindsDataBean.getSp_binds().size(); i4++) {
                if (SettingOneKeyDialog.this.spBindsDataBean.getSp_binds().get(i4).getBinds().get(SettingOneKeyDialog.this.defIdx).intValue() == i2) {
                    return i4;
                }
            }
            return -1;
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_onekey;
        }
    }

    public SettingOneKeyDialog(@NonNull Context context) {
        super(context);
        this.defIdx = 0;
        this.skillIdx = -1;
        this.skillType = -1;
        this.mHandler = new Handler();
        this.gv_list = (HeaderGridView) findViewById(R.id.gv_list);
        this.lv_hero = (ListView) findViewById(R.id.lv_hero);
        this.tv_back_game = (TextView) findViewById(R.id.tv_back_game);
        TextView textView = (TextView) findViewById(R.id.tv_title);
        this.tv_title = textView;
        textView.setText("一键技能");
        setOnListener(this.tv_back_game);
        initOneKeyView();
        initData();
    }

    private void initData() {
        if (this.mAdapter == null) {
            OneKeyAdapter oneKeyAdapter = new OneKeyAdapter();
            this.mAdapter = oneKeyAdapter;
            this.gv_list.setAdapter((ListAdapter) oneKeyAdapter);
        }
        if (this.mHeroAdapter == null) {
            HeroAdapter heroAdapter = new HeroAdapter();
            this.mHeroAdapter = heroAdapter;
            this.lv_hero.setAdapter((ListAdapter) heroAdapter);
        }
        this.mAdapter.setItemClickListener(new IOnItemClickListener() { // from class: com.papa91.arc.dialog.SettingOneKeyDialog.1
            @Override // com.papa91.arc.interfaces.IOnItemClickListener
            public void onItemClick(int i2) {
                if (SettingOneKeyDialog.this.getVip() > 0) {
                    if (SettingOneKeyDialog.this.isSPVisible()) {
                        if ("1".equals(SettingOneKeyDialog.this.mAdapter.getItem(i2).getSkill_noSP())) {
                            ToastUtil.show(SettingOneKeyDialog.this.getContext(), "此技能为连招，无法绑定技能键");
                            return;
                        }
                        SettingOneKeyDialog settingOneKeyDialog = SettingOneKeyDialog.this;
                        settingOneKeyDialog.skillIdx = i2;
                        settingOneKeyDialog.showMenu();
                        return;
                    }
                    return;
                }
                SettingOneKeyDialog.this.showVip("0");
            }
        });
        this.mHeroAdapter.setItemClickListener(new IOnItemClickListener() { // from class: com.papa91.arc.dialog.SettingOneKeyDialog.2
            @Override // com.papa91.arc.interfaces.IOnItemClickListener
            public void onItemClick(int i2) {
                SettingOneKeyDialog settingOneKeyDialog = SettingOneKeyDialog.this;
                if (settingOneKeyDialog.defIdx != i2) {
                    SkillTableDataBean skillTableDataBean = settingOneKeyDialog.skillTableDataBean;
                    if (skillTableDataBean != null && skillTableDataBean.getSkills_table() != null) {
                        SettingOneKeyDialog settingOneKeyDialog2 = SettingOneKeyDialog.this;
                        settingOneKeyDialog2.skillsTableBean = settingOneKeyDialog2.skillTableDataBean.getSkills_table().get(i2);
                        SettingOneKeyDialog.this.mAdapter.setDatas(SettingOneKeyDialog.this.skillsTableBean.getSkill());
                    }
                    SettingOneKeyDialog settingOneKeyDialog3 = SettingOneKeyDialog.this;
                    settingOneKeyDialog3.defIdx = i2;
                    settingOneKeyDialog3.mHeroAdapter.notifyDataSetChanged();
                }
            }
        });
    }

    private void initOneKeyView() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_onekey, (ViewGroup) null);
        this.oneKeyView = inflate;
        TextView textView = (TextView) inflate.findViewById(R.id.switchBtn);
        this.switchBtn = textView;
        setOnListener(textView);
        this.gv_list.addHeaderView(this.oneKeyView);
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_onekey;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view == this.tv_back_game) {
            dismiss();
            showAdVideo();
        } else if (view == this.switchBtn) {
            if (getVip() > 0) {
                boolean isSPVisible = isSPVisible();
                setSPMenuVisible(!isSPVisible);
                this.switchBtn.setSelected(!isSPVisible);
                this.mAdapter.notifyDataSetChanged();
            } else {
                showVip("0");
            }
            StatIntents.getInstance(getContext()).statOpenKeyskill(getGameId(), getUserId());
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public void onVipChanged() {
        super.onVipChanged();
        if (getVip() > 0) {
            boolean isSPVisible = isSPVisible();
            setSPMenuVisible(isSPVisible);
            this.switchBtn.setSelected(isSPVisible);
            this.mAdapter.notifyDataSetChanged();
            StatIntents.getInstance(getContext()).statOpenKeyskill(getGameId(), getUserId());
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        this.gameDir = romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0));
        if (skillConfigBean == null) {
            skillConfigBean = getSkillConfigData();
        }
        SkillConfigBean skillConfigBean2 = skillConfigBean;
        if (skillConfigBean2 != null) {
            this.skillGifUrl = skillConfigBean2.getGifHostUrl();
        }
        if (this.skillTableDataBean == null) {
            this.skillTableDataBean = getSkillTableData();
        }
        if (this.spBindsDataBean == null) {
            this.spBindsDataBean = getSpBindsData();
        }
        this.defIdx = getCurrentChar();
        if (getVip() > 0) {
            this.switchBtn.setSelected(isSPVisible());
        }
        SkillTableDataBean skillTableDataBean = this.skillTableDataBean;
        if (skillTableDataBean != null) {
            this.skillType = skillTableDataBean.getType();
            this.mHeroAdapter.setDatas(this.skillTableDataBean.getSkills_table());
            SkillTableDataBean.SkillsTableBean skillsTableBean = this.skillTableDataBean.getSkills_table().get(this.defIdx);
            this.skillsTableBean = skillsTableBean;
            this.mAdapter.setDatas(skillsTableBean.getSkill());
        }
        this.lv_hero.setSelection(this.defIdx);
        loadAdVideo();
    }

    public void showMenu() {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        if (this.menuDialog == null) {
            SettingOneKeyMenuDialog settingOneKeyMenuDialog = new SettingOneKeyMenuDialog(context);
            this.menuDialog = settingOneKeyMenuDialog;
            settingOneKeyMenuDialog.setOnEmulatorListener(this);
        }
        this.menuDialog.setSkillType(this.skillType);
        this.menuDialog.setSpBindsData(this.spBindsDataBean);
        this.menuDialog.setSkillTableData(this.skillsTableBean);
        this.menuDialog.setHeroIndex(this.defIdx);
        this.menuDialog.setSkillIdx(this.skillIdx);
        this.menuDialog.setSpBindListener(new SettingOneKeyMenuDialog.ISpBindListener() { // from class: com.papa91.arc.dialog.SettingOneKeyDialog.3
            @Override // com.papa91.arc.dialog.SettingOneKeyMenuDialog.ISpBindListener
            public void onSpBind(int i2) {
                if (SettingOneKeyDialog.this.spBindsDataBean != null) {
                    for (int i4 = 0; i4 < SettingOneKeyDialog.this.spBindsDataBean.getSp_binds().size(); i4++) {
                        int intValue = SettingOneKeyDialog.this.spBindsDataBean.getSp_binds().get(i4).getBinds().get(SettingOneKeyDialog.this.defIdx).intValue();
                        SettingOneKeyDialog settingOneKeyDialog = SettingOneKeyDialog.this;
                        if (intValue == settingOneKeyDialog.skillIdx) {
                            settingOneKeyDialog.setSPBindData(i4, settingOneKeyDialog.defIdx, -1);
                        }
                    }
                }
                SettingOneKeyDialog settingOneKeyDialog2 = SettingOneKeyDialog.this;
                settingOneKeyDialog2.setSPBindData(i2, settingOneKeyDialog2.defIdx, settingOneKeyDialog2.skillIdx);
                SettingOneKeyDialog.this.saveBindsFileData();
                SettingOneKeyDialog.this.menuDialog.dismissOnly();
                SettingOneKeyDialog settingOneKeyDialog3 = SettingOneKeyDialog.this;
                settingOneKeyDialog3.spBindsDataBean = settingOneKeyDialog3.getSpBindsData();
                SettingOneKeyDialog.this.mAdapter.notifyDataSetChanged();
            }
        });
        this.menuDialog.show();
    }
}
