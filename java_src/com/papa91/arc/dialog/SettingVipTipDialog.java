package com.papa91.arc.dialog;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.common.constants.StatIntents;
import com.papa91.arc.interfaces.IOnItemClickListener;
import java.io.File;
import java.util.List;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingVipTipDialog extends SettingDialog {
    private CheatingAdapter cheatingAdapter;
    private GateAdapter gateAdapter;
    GridView gv_list;
    ImageView iv_close;
    ListView lv_list;
    private int mCharid;
    private int mType;
    INoTipListener noTipListener;
    private OneKeyAdapter oneKeyAdapter;
    private SkillTableDataBean skillTableDataBean;
    TextView tv_nomore_tip;
    TextView tv_open_vip;
    TextView tv_title;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class CheatingAdapter extends SimpleBaseAdapter<CheatInfo> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class ViewHolder {
            public TextView name;
            public TextView switchBtn;

            ViewHolder() {
            }
        }

        CheatingAdapter() {
        }

        private View initializeVipView(int i2, View view, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.switchBtn = (TextView) view.findViewById(R.id.switchBtn);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            final CheatInfo item = getItem(i2);
            viewHolder.name.setText(item.cheatName);
            viewHolder.switchBtn.setSelected(item.off != 0);
            viewHolder.switchBtn.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingVipTipDialog.CheatingAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (view2.getId() == R.id.switchBtn) {
                        if (SettingVipTipDialog.this.getVip() > 0) {
                            CheatInfo cheatInfo = item;
                            cheatInfo.off = cheatInfo.off == 0 ? 1 : 0;
                        } else {
                            SettingVipTipDialog.this.goVipShop(1, true);
                            StatIntents.getInstance(SettingVipTipDialog.this.getContext()).statUesVippopup(SettingVipTipDialog.this.getGameId(), SettingVipTipDialog.this.getUserId(), 0);
                        }
                        CheatingAdapter.this.notifyDataSetChanged();
                    }
                }
            });
            view.requestLayout();
            return view;
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            initializeVipView(i2, view, z3);
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_cheat_tip;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class GateAdapter extends SimpleBaseAdapter<GateBean> {

        /* loaded from: classes4.dex */
        class ViewHolder {
            SimpleDraweeView sdv_image;
            TextView tv_gate;

            ViewHolder() {
            }
        }

        GateAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i2, View view, ViewGroup viewGroup, boolean z3) {
            ViewHolder viewHolder;
            if (z3) {
                viewHolder = new ViewHolder();
                viewHolder.sdv_image = (SimpleDraweeView) view.findViewById(R.id.sdv_image);
                viewHolder.tv_gate = (TextView) view.findViewById(R.id.tv_gate);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            GateBean item = getItem(i2);
            viewHolder.sdv_image.setImageURI(Uri.parse("file://" + new File(item.getGateMaskPath()).getAbsolutePath()));
            TextView textView = viewHolder.tv_gate;
            textView.setText("第" + SettingVipTipDialog.numberToChinese(item.getGateIndex()) + "关");
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_gate_tip;
        }
    }

    /* loaded from: classes4.dex */
    public interface INoTipListener {
        void onNoTipClick(int i2, int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class OneKeyAdapter extends SimpleBaseAdapter<SkillTableDataBean.SkillsTableBean.SkillBean> {

        /* loaded from: classes4.dex */
        class ViewHolder {
            TextView name;
            TextView switchBtn;
            TextView tv_desc;

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
                viewHolder.name = (TextView) view.findViewById(R.id.name);
                viewHolder.tv_desc = (TextView) view.findViewById(R.id.tv_desc);
                viewHolder.switchBtn = (TextView) view.findViewById(R.id.switchBtn);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            SkillTableDataBean.SkillsTableBean.SkillBean item = getItem(i2);
            viewHolder.name.setText(item.getSkill_name());
            viewHolder.tv_desc.setText(item.getSkill_set());
            viewHolder.switchBtn.setSelected(false);
            viewHolder.switchBtn.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingVipTipDialog.OneKeyAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (view2.getId() != R.id.switchBtn || SettingVipTipDialog.this.getVip() > 0) {
                        return;
                    }
                    SettingVipTipDialog.this.goVipShop(0, true);
                    StatIntents.getInstance(SettingVipTipDialog.this.getContext()).statUesVippopup(SettingVipTipDialog.this.getGameId(), SettingVipTipDialog.this.getUserId(), 1);
                }
            });
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_one_key_tip;
        }
    }

    public SettingVipTipDialog(@NonNull Context context) {
        super(context);
        initView();
        initData();
    }

    private void initCheatView() {
        List<CheatInfo> cheatListData = getCheatListData();
        if (this.cheatingAdapter == null) {
            this.cheatingAdapter = new CheatingAdapter();
        }
        if (cheatListData != null) {
            this.cheatingAdapter.setDatas(cheatListData);
            this.lv_list.setDividerHeight(dp2px(6.0f));
            this.lv_list.setAdapter((ListAdapter) this.cheatingAdapter);
        }
    }

    private void initData() {
        if (this.gateAdapter == null) {
            GateAdapter gateAdapter = new GateAdapter();
            this.gateAdapter = gateAdapter;
            this.gv_list.setAdapter((ListAdapter) gateAdapter);
        }
    }

    private void initGateView() {
        this.gateAdapter.setDatas(getGateData());
        this.gateAdapter.setItemClickListener(new IOnItemClickListener() { // from class: com.papa91.arc.dialog.SettingVipTipDialog.1
            @Override // com.papa91.arc.interfaces.IOnItemClickListener
            public void onItemClick(int i2) {
                SettingVipTipDialog.this.goVipShop(3, true);
                StatIntents.getInstance(SettingVipTipDialog.this.getContext()).statUesVippopup(SettingVipTipDialog.this.getGameId(), SettingVipTipDialog.this.getUserId(), 2);
            }
        });
    }

    private void initOneKeyView(int i2) {
        this.skillTableDataBean = getSkillTableData();
        if (this.oneKeyAdapter == null) {
            this.oneKeyAdapter = new OneKeyAdapter();
        }
        this.oneKeyAdapter.setDatas(this.skillTableDataBean.getSkills_table().get(i2).getSkill());
        this.lv_list.setAdapter((ListAdapter) this.oneKeyAdapter);
    }

    private void initView() {
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        this.tv_nomore_tip = (TextView) findViewById(R.id.tv_nomore_tip);
        this.lv_list = (ListView) findViewById(R.id.lv_list);
        this.gv_list = (GridView) findViewById(R.id.gv_list);
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        TextView textView = (TextView) findViewById(R.id.tv_open_vip);
        this.tv_open_vip = textView;
        setOnListener(this.iv_close, textView, this.tv_nomore_tip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String numberToChinese(int i2) {
        String[] strArr = {"零", "一", "二", "三", "四", "五", "六", "七", "八", "九"};
        String[] strArr2 = {"", "十", "百", "千", "万", "十", "百", "千", "亿", "十"};
        String str = i2 < 0 ? "负" : "";
        if (i2 < 0) {
            i2 = -i2;
        }
        StringBuilder sb = new StringBuilder(str);
        String valueOf = String.valueOf(i2);
        int length = valueOf.length();
        char[] charArray = valueOf.toCharArray();
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = length - i4;
            int i6 = charArray[i4] - '0';
            if (i6 != 0) {
                sb.append(strArr[i6]);
                sb.append(strArr2[i5 - 1]);
            } else if (sb.toString().endsWith(strArr[0])) {
                if (i5 % 4 == 1) {
                    sb.deleteCharAt(sb.length() - 1);
                    sb.append(strArr2[i5 - 1]);
                }
            } else {
                sb.append(strArr[0]);
            }
        }
        return sb.toString();
    }

    private void showView(View view) {
        this.gv_list.setVisibility(8);
        this.lv_list.setVisibility(8);
        view.setVisibility(0);
    }

    protected int dp2px(float f4) {
        return (int) ((f4 * this.mContext.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_vip_tip;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view == this.iv_close) {
            dismiss();
            int i2 = this.mType;
            if (i2 == 0) {
                StatIntents.getInstance(getContext()).statExitVippopup(getGameId(), getUserId(), 0);
            } else if (i2 == 1) {
                StatIntents.getInstance(getContext()).statExitVippopup(getGameId(), getUserId(), 1);
            } else if (i2 == 2) {
                StatIntents.getInstance(getContext()).statExitVippopup(getGameId(), getUserId(), 2);
            }
        } else if (view == this.tv_nomore_tip) {
            INoTipListener iNoTipListener = this.noTipListener;
            if (iNoTipListener != null) {
                iNoTipListener.onNoTipClick(this.mType, this.mCharid);
            }
            int i4 = this.mType;
            if (i4 == 0) {
                StatIntents.getInstance(getContext()).statNotpromptVippopup(getGameId(), getUserId(), 0);
            } else if (i4 == 1) {
                StatIntents.getInstance(getContext()).statNotpromptVippopup(getGameId(), getUserId(), 1);
            } else if (i4 == 2) {
                StatIntents.getInstance(getContext()).statNotpromptVippopup(getGameId(), getUserId(), 2);
            }
            dismiss();
        } else if (view == this.tv_open_vip) {
            int i5 = this.mType;
            if (i5 == 0) {
                goVipShop(1, true);
                StatIntents.getInstance(getContext()).statOnclickVippopup(getGameId(), getUserId(), 0);
            } else if (i5 == 1) {
                goVipShop(0, true);
                StatIntents.getInstance(getContext()).statOnclickVippopup(getGameId(), getUserId(), 1);
            } else if (i5 == 2) {
                goVipShop(3, true);
                StatIntents.getInstance(getContext()).statOnclickVippopup(getGameId(), getUserId(), 2);
            }
        }
    }

    public void setNoTipListener(INoTipListener iNoTipListener) {
        this.noTipListener = iNoTipListener;
    }

    public void show(int i2, int i4) {
        this.mType = i2;
        this.mCharid = i4;
        if (i2 == 0) {
            this.tv_title.setText("试试下列金手指");
            showView(this.lv_list);
            initCheatView();
        } else if (i2 == 1) {
            this.tv_title.setText("一键出必杀技");
            showView(this.lv_list);
            initOneKeyView(i4);
        } else if (i2 == 2) {
            this.tv_title.setText("跳到任意关卡");
            showView(this.gv_list);
            initGateView();
        }
        super.show();
    }
}
