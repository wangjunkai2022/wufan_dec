package com.papa91.arc.dialog;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.common.constants.StatIntents;
import com.papa91.arc.dialog.TipTwoDialog;
import com.papa91.arc.interfaces.IOnItemClickListener;
import java.io.File;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingGateDialog extends SettingDialog {
    private GateAdapter gateAdapter;
    GridView gv_list;
    private LinearLayout loding_layout;
    int mid;
    TipTwoDialog tipTwoDialog;
    TextView tv_back_game;
    TextView tv_title;

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
            textView.setText("第" + SettingGateDialog.numberToChinese(item.getGateIndex()) + "关");
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_gate;
        }
    }

    public SettingGateDialog(@NonNull Context context) {
        super(context);
        this.gv_list = (GridView) findViewById(R.id.gv_list);
        this.tv_back_game = (TextView) findViewById(R.id.tv_back_game);
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        this.loding_layout = (LinearLayout) findViewById(R.id.loding_layout);
        this.tv_title.setText("选择关卡");
        this.loding_layout.setOnTouchListener(new View.OnTouchListener() { // from class: com.papa91.arc.dialog.SettingGateDialog.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return SettingGateDialog.this.loding_layout.getVisibility() == 0;
            }
        });
        setOnListener(this.tv_back_game);
        initData();
    }

    private void initData() {
        if (this.gateAdapter == null) {
            GateAdapter gateAdapter = new GateAdapter();
            this.gateAdapter = gateAdapter;
            this.gv_list.setAdapter((ListAdapter) gateAdapter);
        }
        this.gateAdapter.setItemClickListener(new IOnItemClickListener() { // from class: com.papa91.arc.dialog.SettingGateDialog.2
            @Override // com.papa91.arc.interfaces.IOnItemClickListener
            public void onItemClick(int i2) {
                if (SettingGateDialog.this.getVip() > 0) {
                    SettingGateDialog.this.showPrompt(i2);
                } else {
                    SettingGateDialog.this.showVip("3");
                }
                StatIntents.getInstance(SettingGateDialog.this.getContext()).statSelectLevel(SettingGateDialog.this.getGameId(), SettingGateDialog.this.getUserId());
            }
        });
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

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_gate;
    }

    public void hideLoading() {
        this.loding_layout.setVisibility(8);
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view == this.tv_back_game) {
            dismiss();
            showAdVideo();
        }
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        this.gateAdapter.setDatas(getGateData());
        loadAdVideo();
    }

    public void showLoading() {
        this.loding_layout.setVisibility(0);
    }

    public void showPrompt(int i2) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        this.mid = i2;
        if (this.tipTwoDialog == null) {
            TipTwoDialog tipTwoDialog = new TipTwoDialog(context);
            this.tipTwoDialog = tipTwoDialog;
            tipTwoDialog.setListener(new TipTwoDialog.OnOptionsListener() { // from class: com.papa91.arc.dialog.SettingGateDialog.3
                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onCancel() {
                }

                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onClose() {
                }

                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onConfirm() {
                    SettingGateDialog.this.showLoading();
                    new Thread(new Runnable() { // from class: com.papa91.arc.dialog.SettingGateDialog.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SettingGateDialog settingGateDialog = SettingGateDialog.this;
                            settingGateDialog.loadGateStage(settingGateDialog.gateAdapter.getItem(SettingGateDialog.this.mid).getGateIndex());
                        }
                    }).start();
                }
            });
        }
        this.tipTwoDialog.setTipContent("是否读取此关卡？");
        this.tipTwoDialog.show();
    }
}
