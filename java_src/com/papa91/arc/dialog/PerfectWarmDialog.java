package com.papa91.arc.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.interfaces.IDialogListener;
import com.papa91.arc.util.StringUtils;
import com.papa91.arc.view.BaseDialog;
import com.papa91.arc.widget.htmltext.ClickableTableSpan;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import com.papa91.arc.widget.htmltext.OnClickATagListener;
import m.framework.ui.widget.asyncview.AsyncImageView;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class PerfectWarmDialog extends BaseDialog {
    private TextView btn_center;
    private TextView btn_left;
    private TextView btn_right;
    ImageView iv_close;
    IDialogListener listener;
    private PopwindowBean pop_window;
    TextView tv_title;
    HtmlTextView tv_warm;

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
            textPaint.setColor(Color.parseColor("#828D94"));
        }
    }

    public PerfectWarmDialog(@NonNull Context context) {
        super(context);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.arc.dialog.a
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                boolean lambda$new$0;
                lambda$new$0 = PerfectWarmDialog.lambda$new$0(dialogInterface, i2, keyEvent);
                return lambda$new$0;
            }
        });
        setContentView(R.layout.dialog_perfect_warm);
        setBackgroundDimEnabled(true);
    }

    private void initViews() {
        this.tv_warm = (HtmlTextView) findViewById(R.id.tv_warm);
        this.btn_left = (TextView) findViewById(R.id.btn_left);
        this.btn_center = (TextView) findViewById(R.id.btn_center);
        this.btn_right = (TextView) findViewById(R.id.btn_right);
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        PopwindowBean popwindowBean = this.pop_window;
        if (popwindowBean != null) {
            if (popwindowBean.getButtonClose() != null) {
                this.iv_close.setVisibility(0);
            } else {
                this.iv_close.setVisibility(8);
            }
            this.iv_close.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PerfectWarmDialog.this.lambda$initViews$1(view);
                }
            });
            if (this.pop_window.getButtonLeft() == null) {
                this.btn_left.setVisibility(8);
            } else {
                this.btn_left.setVisibility(0);
                this.btn_left.setText(this.pop_window.getButtonLeft().getButtonHint());
            }
            if (this.pop_window.getButtonRight() == null) {
                this.btn_right.setVisibility(8);
            } else {
                this.btn_right.setVisibility(0);
                this.btn_right.setText(this.pop_window.getButtonRight().getButtonHint());
            }
            if (this.pop_window.getButtonCenter() != null) {
                this.btn_center.setVisibility(0);
                if (StringUtils.isNotEmpty(this.pop_window.getButtonCenter().getButtonHint())) {
                    this.btn_center.setText(this.pop_window.getButtonCenter().getButtonHint());
                }
            } else {
                this.btn_center.setVisibility(8);
            }
            this.btn_left.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PerfectWarmDialog.this.lambda$initViews$2(view);
                }
            });
            this.btn_center.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PerfectWarmDialog.this.lambda$initViews$3(view);
                }
            });
            this.btn_right.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PerfectWarmDialog.this.lambda$initViews$4(view);
                }
            });
            if (StringUtils.isNotEmpty(this.pop_window.getTitle())) {
                this.tv_title.setVisibility(0);
                this.tv_title.setText(this.pop_window.getTitle());
            } else {
                this.tv_title.setVisibility(8);
            }
            this.tv_warm.setClickableTableSpan(new UrlClickSpan());
            this.tv_warm.setOnClickATagListener(new OnClickATagListener() { // from class: com.papa91.arc.dialog.f
                @Override // com.papa91.arc.widget.htmltext.OnClickATagListener
                public final boolean onClick(View view, String str, String str2) {
                    boolean lambda$initViews$5;
                    lambda$initViews$5 = PerfectWarmDialog.this.lambda$initViews$5(view, str, str2);
                    return lambda$initViews$5;
                }
            });
            this.tv_warm.setHighlightColor(getContext().getResources().getColor(AsyncImageView.DEFAULT_TRANSPARENT));
            if (StringUtils.isNotEmpty(this.pop_window.getSubTitle())) {
                this.tv_warm.setHtml(this.pop_window.getSubTitle());
                this.tv_warm.setVisibility(0);
                return;
            }
            this.tv_warm.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$1(View view) {
        IDialogListener iDialogListener = this.listener;
        if (iDialogListener != null) {
            iDialogListener.onCloseClick(this, this.pop_window.getButtonClose());
        } else {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$2(View view) {
        IDialogListener iDialogListener = this.listener;
        if (iDialogListener != null) {
            iDialogListener.onLeftClick(this, this.pop_window.getButtonLeft());
        } else {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$3(View view) {
        IDialogListener iDialogListener = this.listener;
        if (iDialogListener != null) {
            iDialogListener.onCenterClick(this, this.pop_window.getButtonCenter());
        } else {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$4(View view) {
        IDialogListener iDialogListener = this.listener;
        if (iDialogListener != null) {
            iDialogListener.onRightClick(this, this.pop_window.getButtonRight());
        } else {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initViews$5(View view, String str, String str2) {
        MarketUtil.intent(getContext(), "4", "0", str2, "", "");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        return keyEvent.getKeyCode() == 4;
    }

    public void setData(PopwindowBean popwindowBean) {
        if (popwindowBean != null) {
            this.pop_window = popwindowBean;
        }
    }

    public PerfectWarmDialog setListener(IDialogListener iDialogListener) {
        this.listener = iDialogListener;
        return this;
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        initViews();
    }
}
