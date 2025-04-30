package com.papa91;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.papa91.mix.R;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* loaded from: classes4.dex */
public class MessageVipCommonDialog extends AlertDialog implements DialogInterface.OnShowListener, DialogInterface.OnDismissListener {
    private String ad_id;
    private String btn_l;
    private String btn_r;
    private String btn_url;
    private String content;
    private TextView count;
    private SimpleDraweeView dialogAdImg;
    private TextView emusVipCancelTv;
    private TextView emusVipContentTv;
    private TextView emusVipOkTv;
    private View flag;
    private String pic;
    private LinearLayout rootLl;
    private int times;
    private String url;

    public MessageVipCommonDialog(Context context) {
        super(context);
    }

    public String getBtn_url() {
        return this.btn_url;
    }

    public String getUrl() {
        return this.url;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(AsyncImageView.DEFAULT_TRANSPARENT);
        window.setGravity(17);
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = defaultDisplay.getWidth();
        attributes.height = defaultDisplay.getHeight();
        window.setAttributes(attributes);
        setOnShowListener(this);
        setOnDismissListener(this);
        setContentView(R.layout.dialog_vip_common_view);
        this.rootLl = (LinearLayout) findViewById(R.id.rootLl);
        this.emusVipCancelTv = (TextView) findViewById(R.id.emusVipCancelTv);
        this.emusVipOkTv = (TextView) findViewById(R.id.emusVipOkTv);
        this.emusVipContentTv = (TextView) findViewById(R.id.emusVipContentTv);
        this.dialogAdImg = (SimpleDraweeView) findViewById(R.id.dialogAdImg);
        this.flag = findViewById(R.id.flag);
        this.count = (TextView) findViewById(R.id.count);
        String str = this.pic;
        if (str != null && !"".equals(str)) {
            this.dialogAdImg.setImageURI(this.pic);
        }
        String str2 = this.btn_l;
        if (str2 != null && !"".equals(str2)) {
            this.emusVipCancelTv.setText(this.btn_l);
        }
        String str3 = this.btn_r;
        if (str3 != null && !"".equals(str3)) {
            this.emusVipOkTv.setText(this.btn_r);
        }
        String str4 = this.content;
        if (str4 != null && !"".equals(str4)) {
            this.emusVipContentTv.setText(this.content);
        }
        if (this.times == -1) {
            this.flag.setVisibility(8);
            return;
        }
        this.flag.setVisibility(0);
        TextView textView = this.count;
        textView.setText("剩余" + this.times + "次");
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
    }

    public void setCancelBtn(View.OnClickListener onClickListener) {
        this.emusVipCancelTv.setOnClickListener(onClickListener);
    }

    public void setEmusVipContentTv(String str) {
        if (str == null || "".equals(str)) {
            return;
        }
        this.emusVipContentTv.setText(str);
    }

    public void setImgListener(View.OnClickListener onClickListener) {
        this.dialogAdImg.setOnClickListener(onClickListener);
    }

    public void setOkBtn(View.OnClickListener onClickListener) {
        this.emusVipOkTv.setOnClickListener(onClickListener);
    }

    public MessageVipCommonDialog(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2) {
        super(context);
        this.content = str;
        this.url = str2;
        this.pic = str3;
        this.ad_id = str4;
        this.btn_l = str5;
        this.btn_r = str6;
        this.btn_url = str7;
        this.times = i2;
    }
}
