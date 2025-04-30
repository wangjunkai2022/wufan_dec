package com.papa91.arc.dialog;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.bean.OneKeyMenuBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import java.util.ArrayList;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingOneKeyMenuDialog extends SettingDialog {
    int heroIndex;
    int[] images_h;
    int[] images_n;
    ImageView iv_close;
    private View ll_root;
    ListView lv_list;
    private BindAdapter mAdapter;
    private ArrayList<OneKeyMenuBean> menus;
    private int skillIdx;
    private int skillType;
    SkillTableDataBean.SkillsTableBean skillsTableBean;
    private ISpBindListener spBindListener;
    SpBindsDataBean spBindsDataBean;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class BindAdapter extends SimpleBaseAdapter<OneKeyMenuBean> {

        /* loaded from: classes4.dex */
        class ViewHolder {
            public SimpleDraweeView sdv_image;
            public TextView tv_bind;
            public TextView tv_name;

            ViewHolder() {
            }
        }

        BindAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(final int i2, View view, ViewGroup viewGroup, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.sdv_image = (SimpleDraweeView) view.findViewById(R.id.sdv_image);
                viewHolder.tv_name = (TextView) view.findViewById(R.id.tv_name);
                viewHolder.tv_bind = (TextView) view.findViewById(R.id.tv_bind);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            OneKeyMenuBean item = getItem(i2);
            viewHolder.tv_name.setText(item.getName());
            viewHolder.tv_bind.setText(item.getText());
            if (item.isCurrent()) {
                viewHolder.sdv_image.setImageResource(item.getIconRes());
                viewHolder.tv_bind.setBackgroundResource(R.drawable.bg_btn_onekey_choose_unable);
                viewHolder.tv_bind.setTextColor(Color.parseColor("#FF9A9A9A"));
                return;
            }
            viewHolder.sdv_image.setImageResource(item.getIconResNormal());
            viewHolder.tv_bind.setBackgroundResource(R.drawable.bg_btn_onekey_choose);
            viewHolder.tv_bind.setTextColor(Color.parseColor("#FF8CC6E5"));
            viewHolder.tv_bind.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingOneKeyMenuDialog.BindAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (SettingOneKeyMenuDialog.this.spBindListener != null) {
                        if (SettingOneKeyMenuDialog.this.spBindsDataBean != null) {
                            for (int i4 = 0; i4 < SettingOneKeyMenuDialog.this.menus.size(); i4++) {
                                SettingOneKeyMenuDialog.this.spBindsDataBean.getSp_binds().get(i4).getBinds().get(SettingOneKeyMenuDialog.this.heroIndex);
                            }
                        }
                        SettingOneKeyMenuDialog.this.spBindListener.onSpBind(i2);
                    }
                }
            });
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_onekey_bind;
        }
    }

    /* loaded from: classes4.dex */
    interface ISpBindListener {
        void onSpBind(int i2);
    }

    public SettingOneKeyMenuDialog(@NonNull Context context) {
        super(context);
        this.menus = new ArrayList<>();
        this.heroIndex = 0;
        this.lv_list = (ListView) findViewById(R.id.lv_list);
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        View findViewById = findViewById(R.id.ll_root);
        this.ll_root = findViewById;
        setOnListener(this.iv_close, findViewById);
        initData();
    }

    private void initData() {
        if (this.mAdapter == null) {
            BindAdapter bindAdapter = new BindAdapter();
            this.mAdapter = bindAdapter;
            this.lv_list.setAdapter((ListAdapter) bindAdapter);
        }
    }

    private void initMenus() {
        this.menus.clear();
        if (this.skillType == 0) {
            this.images_h = getSpBindImages(0);
            this.images_n = getSpBindImages(1);
        } else {
            this.images_n = getSpBindImages(2);
            this.images_h = getSpBindImages(3);
        }
        for (int i2 = 0; i2 < this.images_n.length; i2++) {
            OneKeyMenuBean oneKeyMenuBean = new OneKeyMenuBean();
            oneKeyMenuBean.setIconRes(this.images_h[i2]);
            oneKeyMenuBean.setIconResNormal(this.images_n[i2]);
            SpBindsDataBean spBindsDataBean = this.spBindsDataBean;
            if (spBindsDataBean != null) {
                if (i2 >= spBindsDataBean.getSp_binds().size()) {
                    oneKeyMenuBean.setName("空");
                    oneKeyMenuBean.setText("选择");
                    this.menus.add(oneKeyMenuBean);
                } else {
                    int intValue = this.spBindsDataBean.getSp_binds().get(i2).getBinds().get(this.heroIndex).intValue();
                    if (intValue == -1) {
                        oneKeyMenuBean.setName("空");
                        oneKeyMenuBean.setText("选择");
                        oneKeyMenuBean.setSkillBean(null);
                    } else if (intValue >= this.skillsTableBean.getSkill().size()) {
                        oneKeyMenuBean.setName("空");
                        oneKeyMenuBean.setText("选择");
                        this.menus.add(oneKeyMenuBean);
                    } else {
                        SkillTableDataBean.SkillsTableBean.SkillBean skillBean = this.skillsTableBean.getSkill().get(intValue);
                        if (intValue == -1) {
                            oneKeyMenuBean.setName("空");
                            oneKeyMenuBean.setText("选择");
                        } else if (skillBean != null) {
                            if (this.skillIdx == intValue) {
                                oneKeyMenuBean.setName(skillBean.getSkill_name());
                                oneKeyMenuBean.setCurrent(true);
                                oneKeyMenuBean.setText("当前");
                            } else {
                                oneKeyMenuBean.setName(skillBean.getSkill_name());
                                oneKeyMenuBean.setCurrent(false);
                                oneKeyMenuBean.setText("替换");
                            }
                        } else {
                            oneKeyMenuBean.setName("空");
                            oneKeyMenuBean.setText("选择");
                        }
                        oneKeyMenuBean.setSkillBean(skillBean);
                    }
                }
            } else {
                oneKeyMenuBean.setName("空");
                oneKeyMenuBean.setText("选择");
            }
            this.menus.add(oneKeyMenuBean);
        }
        this.mAdapter.setDatas(this.menus);
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_onekey_menu;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view == this.iv_close || view == this.ll_root) {
            dismissOnly();
        }
    }

    public void setHeroIndex(int i2) {
        this.heroIndex = i2;
    }

    public void setSkillIdx(int i2) {
        this.skillIdx = i2;
    }

    public void setSkillTableData(SkillTableDataBean.SkillsTableBean skillsTableBean) {
        this.skillsTableBean = skillsTableBean;
    }

    public void setSkillType(int i2) {
        this.skillType = i2;
    }

    public void setSpBindListener(ISpBindListener iSpBindListener) {
        this.spBindListener = iSpBindListener;
    }

    public void setSpBindsData(SpBindsDataBean spBindsDataBean) {
        this.spBindsDataBean = spBindsDataBean;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        initMenus();
    }
}
