package com.papa91.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.widget.htmltext.ClickableTableSpan;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import com.papa91.arc.widget.htmltext.OnClickATagListener;
import com.papa91.mix.R;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* loaded from: classes4.dex */
public class RealNameLoginDialog extends Dialog {
    public static final int BUTENTYPE_CENTER = 4;
    public static final int BUTENTYPE_CLOSE = 1;
    public static final int BUTENTYPE_LEFT = 2;
    public static final int BUTENTYPE_RIGHT = 3;
    private static Context context;
    private static RealNameLoginDialog dialog;
    private OnButnClickLienster clickListener;
    private View close;
    private Button dialog_button_center;
    private Button dialog_button_left;
    private Button dialog_button_right;
    private HtmlTextView dialog_content;
    private String dialog_content_Text;
    private boolean flag;
    PopwindowBean realNameCheckInfo;
    private TextView tip_title;
    private String tip_title_Text;

    /* loaded from: classes4.dex */
    public interface OnButnClickLienster {
        void clickAnydButn(RealNameLoginDialog realNameLoginDialog, int i2, ButtonBean buttonBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class UrlClickSpan extends ClickableTableSpan {
        private UrlClickSpan() {
        }

        @Override // com.papa91.arc.widget.htmltext.ClickableTableSpan
        public ClickableTableSpan newInstance() {
            return this;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#3C43E7"));
        }
    }

    public RealNameLoginDialog(Context context2) {
        super(context2);
        this.tip_title_Text = "提示";
        this.dialog_content_Text = "登陆后，开始悟饭游戏的精彩旅游";
        this.flag = false;
    }

    public static RealNameLoginDialog getInstance(Context context2) {
        if (dialog == null || context2 != context) {
            dialog = new RealNameLoginDialog(context2, R.style.MyDialog);
        }
        return dialog;
    }

    private void initData() {
        PopwindowBean popwindowBean = this.realNameCheckInfo;
        if (popwindowBean != null) {
            this.tip_title.setText(popwindowBean.getTitle());
            this.dialog_content.setHighlightColor(getContext().getResources().getColor(AsyncImageView.DEFAULT_TRANSPARENT));
            this.dialog_content.setClickableTableSpan(new UrlClickSpan());
            this.dialog_content.setOnClickATagListener(new OnClickATagListener() { // from class: com.papa91.view.a
                @Override // com.papa91.arc.widget.htmltext.OnClickATagListener
                public final boolean onClick(View view, String str, String str2) {
                    boolean lambda$initData$0;
                    lambda$initData$0 = RealNameLoginDialog.this.lambda$initData$0(view, str, str2);
                    return lambda$initData$0;
                }
            });
            this.dialog_content.setHtml(this.realNameCheckInfo.getSubTitle());
            if (this.realNameCheckInfo.getButtonClose() != null) {
                this.close.setVisibility(0);
                this.close.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.RealNameLoginDialog.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        OnButnClickLienster onButnClickLienster = RealNameLoginDialog.this.clickListener;
                        RealNameLoginDialog realNameLoginDialog = RealNameLoginDialog.this;
                        onButnClickLienster.clickAnydButn(realNameLoginDialog, 1, realNameLoginDialog.realNameCheckInfo.getButtonClose());
                    }
                });
            } else {
                this.close.setVisibility(8);
            }
            if (this.realNameCheckInfo.getButtonCenter() != null) {
                this.dialog_button_center.setVisibility(0);
                this.dialog_button_center.setText(this.realNameCheckInfo.getButtonCenter().getButtonHint());
                this.dialog_button_center.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.RealNameLoginDialog.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        OnButnClickLienster onButnClickLienster = RealNameLoginDialog.this.clickListener;
                        RealNameLoginDialog realNameLoginDialog = RealNameLoginDialog.this;
                        onButnClickLienster.clickAnydButn(realNameLoginDialog, 4, realNameLoginDialog.realNameCheckInfo.getButtonCenter());
                    }
                });
            } else {
                this.dialog_button_center.setVisibility(4);
            }
            if (this.realNameCheckInfo.getButtonLeft() != null) {
                this.dialog_button_left.setVisibility(0);
                this.dialog_button_left.setText(this.realNameCheckInfo.getButtonLeft().getButtonHint());
                this.dialog_button_left.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.RealNameLoginDialog.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        OnButnClickLienster onButnClickLienster = RealNameLoginDialog.this.clickListener;
                        RealNameLoginDialog realNameLoginDialog = RealNameLoginDialog.this;
                        onButnClickLienster.clickAnydButn(realNameLoginDialog, 2, realNameLoginDialog.realNameCheckInfo.getButtonLeft());
                    }
                });
            } else {
                this.dialog_button_left.setVisibility(4);
            }
            if (this.realNameCheckInfo.getButtonRight() != null) {
                this.dialog_button_right.setVisibility(0);
                this.dialog_button_right.setText(this.realNameCheckInfo.getButtonRight().getButtonHint());
                this.dialog_button_right.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.RealNameLoginDialog.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        OnButnClickLienster onButnClickLienster = RealNameLoginDialog.this.clickListener;
                        RealNameLoginDialog realNameLoginDialog = RealNameLoginDialog.this;
                        onButnClickLienster.clickAnydButn(realNameLoginDialog, 3, realNameLoginDialog.realNameCheckInfo.getButtonRight());
                    }
                });
                return;
            }
            this.dialog_button_right.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initData$0(View view, String str, String str2) {
        MarketUtil.intent(getContext(), "4", "0", str2, "", "");
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(this.flag);
        setContentView(R.layout.realname_notice_dialog);
        this.tip_title = (TextView) findViewById(R.id.tip_title);
        this.dialog_content = (HtmlTextView) findViewById(R.id.dialog_content);
        this.dialog_button_left = (Button) findViewById(R.id.dialog_button_left);
        this.dialog_button_right = (Button) findViewById(R.id.dialog_button_right);
        this.dialog_button_center = (Button) findViewById(R.id.dialog_button_center);
        this.close = findViewById(R.id.close);
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        window.setAttributes(attributes);
        initData();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0 && this.flag) {
            dismiss();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public RealNameLoginDialog setDialogData(PopwindowBean popwindowBean) {
        this.realNameCheckInfo = popwindowBean;
        if (this.tip_title != null) {
            initData();
        }
        return this;
    }

    public RealNameLoginDialog setDialogListener(OnButnClickLienster onButnClickLienster) {
        this.clickListener = onButnClickLienster;
        return this;
    }

    public RealNameLoginDialog setIsCancelable(boolean z3) {
        setCancelable(z3);
        return this;
    }

    @Override // android.app.Dialog
    public void show() {
        if (((Activity) context).isFinishing()) {
            return;
        }
        super.show();
    }

    public RealNameLoginDialog(Context context2, int i2) {
        super(context2, i2);
        this.tip_title_Text = "提示";
        this.dialog_content_Text = "登陆后，开始悟饭游戏的精彩旅游";
        this.flag = false;
        context = context2;
    }

    protected RealNameLoginDialog(Context context2, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context2, z3, onCancelListener);
        this.tip_title_Text = "提示";
        this.dialog_content_Text = "登陆后，开始悟饭游戏的精彩旅游";
        this.flag = false;
    }
}
