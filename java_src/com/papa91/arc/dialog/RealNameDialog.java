package com.papa91.arc.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.bean.ReqSubmitRealNameArgs;
import com.papa91.arc.bean.Request;
import com.papa91.arc.bean.Response;
import com.papa91.arc.ext.ThreadManager;
import com.papa91.arc.http.HttpUtils;
import com.papa91.arc.interfaces.RealNameCallBack;
import com.papa91.arc.util.SignUtil;
import com.papa91.arc.util.StringUtils;
import com.papa91.arc.widget.htmltext.ClickableTableSpan;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import com.papa91.arc.widget.htmltext.OnClickATagListener;
import m.framework.ui.widget.asyncview.AsyncImageView;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class RealNameDialog extends Dialog implements View.OnClickListener, View.OnFocusChangeListener, TextWatcher {
    private String UserID;
    private Integer action;
    View bottomGift;
    Button btn_center;
    RealNameCallBack callBack;
    long clickTime;
    private boolean codeFocus;
    EditText et_code;
    EditText et_name;
    HtmlTextView giftMessage;
    ImageView iv_close;
    ImageView iv_delete_code;
    ImageView iv_delete_name;
    View ll_top;
    private boolean loading_submit_real_name;
    private boolean nameFocus;
    PopwindowBean pop_window;
    HtmlTextView tv_content;
    HtmlTextView tv_title;
    private Integer type;

    /* loaded from: classes4.dex */
    private class UrlClickSpan extends ClickableTableSpan {
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

    public RealNameDialog(Context context, PopwindowBean popwindowBean, RealNameCallBack realNameCallBack) {
        super(context, R.style.MyDialog);
        this.clickTime = 0L;
        this.pop_window = popwindowBean;
        this.callBack = realNameCallBack;
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.arc.dialog.g
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                boolean lambda$new$0;
                lambda$new$0 = RealNameDialog.lambda$new$0(dialogInterface, i2, keyEvent);
                return lambda$new$0;
            }
        });
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    private void commitRename(String str, String str2) {
        try {
            if (!isNetworkConnected()) {
                Toast.makeText(getContext(), "请联网后重试！", 0).show();
                return;
            }
            HttpUtils.init(getContext());
            if (this.loading_submit_real_name) {
                return;
            }
            this.loading_submit_real_name = true;
            ReqSubmitRealNameArgs reqSubmitRealNameArgs = new ReqSubmitRealNameArgs();
            reqSubmitRealNameArgs.setUid(this.UserID);
            reqSubmitRealNameArgs.setPlatformType("ANDROID");
            reqSubmitRealNameArgs.setIdCard(str2);
            reqSubmitRealNameArgs.setName(str);
            reqSubmitRealNameArgs.setType(this.type);
            reqSubmitRealNameArgs.setAction(this.action);
            final Request request = Request.getRequest(getContext(), reqSubmitRealNameArgs);
            request.setSign(SignUtil.getSignForAPP(request));
            ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.arc.dialog.k
                @Override // java.lang.Runnable
                public final void run() {
                    RealNameDialog.this.lambda$commitRename$5(request);
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
            RealNameCallBack realNameCallBack = this.callBack;
            if (realNameCallBack != null) {
                realNameCallBack.onEvent("realNameClickSubmit", "0");
            }
            this.loading_submit_real_name = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$commitRename$4(Response response) {
        if (response != null && response.getCode() == 200) {
            PopwindowBean popwindowBean = (PopwindowBean) response.getData();
            RealNameCallBack realNameCallBack = this.callBack;
            if (realNameCallBack != null) {
                realNameCallBack.onEvent("realNameClickSubmit", "1");
                this.callBack.onSuccess(this, popwindowBean);
                return;
            }
            return;
        }
        RealNameCallBack realNameCallBack2 = this.callBack;
        if (realNameCallBack2 != null) {
            realNameCallBack2.onEvent("realNameClickSubmit", "0");
        }
        RealNameCallBack realNameCallBack3 = this.callBack;
        if (realNameCallBack3 != null) {
            realNameCallBack3.onFail(-1);
        }
        Toast.makeText(getContext(), (response == null || TextUtils.isEmpty(response.getMessage())) ? "网络连接异常，请检查网络连接" : response.getMessage(), 0).show();
        this.loading_submit_real_name = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$commitRename$5(Request request) {
        try {
            final Response<PopwindowBean> submitRealName = HttpUtils.submitRealName(request);
            this.loading_submit_real_name = false;
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.dialog.l
                @Override // java.lang.Runnable
                public final void run() {
                    RealNameDialog.this.lambda$commitRename$4(submitRealName);
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
            RealNameCallBack realNameCallBack = this.callBack;
            if (realNameCallBack != null) {
                realNameCallBack.onEvent("realNameClickSubmit", "0");
            }
            this.loading_submit_real_name = false;
            RealNameCallBack realNameCallBack2 = this.callBack;
            if (realNameCallBack2 != null) {
                realNameCallBack2.onFail(-2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        return i2 == 4 && keyEvent.getRepeatCount() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onCreate$1(View view, String str, String str2) {
        MarketUtil.intent(getContext(), "4", "0", str2, "", "");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onCreate$2(View view, String str, String str2) {
        MarketUtil.intent(getContext(), "4", "0", str2, "", "");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$3(View view) {
        this.callBack.onCancel(this, this.pop_window.getButtonClose());
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
    }

    public boolean isNetworkConnected() {
        if (getContext() != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isAvailable();
                }
                return false;
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_center) {
            if (System.currentTimeMillis() - this.clickTime < 1000) {
                return;
            }
            this.clickTime = System.currentTimeMillis();
            String obj = this.et_name.getText().toString();
            String obj2 = this.et_code.getText().toString();
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(this.et_name.getWindowToken(), 0);
            }
            if (!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj2)) {
                commitRename(obj, obj2);
            } else {
                Toast.makeText(getContext(), "请填写正确的身份信息", 1).show();
            }
        } else if (view.getId() == R.id.iv_delete_name) {
            this.et_name.setText("");
        } else if (view.getId() == R.id.iv_delete_code) {
            this.et_code.setText("");
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i2 = getContext().getResources().getConfiguration().orientation;
        if (i2 == 2) {
            window.getDecorView().setSystemUiVisibility(1284);
        } else if (i2 == 1) {
            window.getDecorView().setSystemUiVisibility(256);
        }
        attributes.width = -1;
        attributes.height = -1;
        window.setAttributes(attributes);
        setContentView(R.layout.real_name_dialog);
        this.et_name = (EditText) findViewById(R.id.et_name);
        this.et_code = (EditText) findViewById(R.id.et_code);
        this.btn_center = (Button) findViewById(R.id.btn_center);
        this.tv_title = (HtmlTextView) findViewById(R.id.tv_title);
        this.tv_content = (HtmlTextView) findViewById(R.id.tv_content);
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        this.iv_delete_name = (ImageView) findViewById(R.id.iv_delete_name);
        this.iv_delete_code = (ImageView) findViewById(R.id.iv_delete_code);
        this.ll_top = findViewById(R.id.ll_top);
        this.bottomGift = findViewById(R.id.bottomGift);
        this.giftMessage = (HtmlTextView) findViewById(R.id.giftMessage);
        this.et_name.addTextChangedListener(this);
        this.et_code.addTextChangedListener(this);
        this.et_name.setOnFocusChangeListener(this);
        this.et_code.setOnFocusChangeListener(this);
        this.btn_center.setOnClickListener(this);
        this.iv_delete_name.setOnClickListener(this);
        this.iv_delete_code.setOnClickListener(this);
        if (this.pop_window != null) {
            this.tv_content.setHighlightColor(getContext().getResources().getColor(AsyncImageView.DEFAULT_TRANSPARENT));
            this.tv_content.setClickableTableSpan(new UrlClickSpan());
            this.tv_content.setOnClickATagListener(new OnClickATagListener() { // from class: com.papa91.arc.dialog.i
                @Override // com.papa91.arc.widget.htmltext.OnClickATagListener
                public final boolean onClick(View view, String str, String str2) {
                    boolean lambda$onCreate$1;
                    lambda$onCreate$1 = RealNameDialog.this.lambda$onCreate$1(view, str, str2);
                    return lambda$onCreate$1;
                }
            });
            this.giftMessage.setHighlightColor(getContext().getResources().getColor(AsyncImageView.DEFAULT_TRANSPARENT));
            this.giftMessage.setClickableTableSpan(new UrlClickSpan());
            this.giftMessage.setOnClickATagListener(new OnClickATagListener() { // from class: com.papa91.arc.dialog.j
                @Override // com.papa91.arc.widget.htmltext.OnClickATagListener
                public final boolean onClick(View view, String str, String str2) {
                    boolean lambda$onCreate$2;
                    lambda$onCreate$2 = RealNameDialog.this.lambda$onCreate$2(view, str, str2);
                    return lambda$onCreate$2;
                }
            });
            this.tv_title.setHtml(this.pop_window.getTitle());
            this.tv_content.setHtml(this.pop_window.getSubTitle());
            if (this.pop_window.getButtonCenter() == null) {
                this.btn_center.setVisibility(8);
            } else {
                StringUtils.setText(this.btn_center, this.pop_window.getButtonCenter().getButtonHint());
                this.btn_center.setVisibility(0);
            }
            if (this.pop_window.getButtonClose() != null) {
                this.iv_close.setVisibility(0);
                this.iv_close.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.h
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        RealNameDialog.this.lambda$onCreate$3(view);
                    }
                });
            } else {
                this.iv_close.setVisibility(8);
            }
            if (this.pop_window.getSubTitle3() != null && !this.pop_window.getSubTitle3().equals("")) {
                this.bottomGift.setVisibility(0);
                this.giftMessage.setHtml(this.pop_window.getSubTitle3());
                return;
            }
            this.bottomGift.setVisibility(8);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        this.nameFocus = false;
        this.codeFocus = false;
        if (z3) {
            EditText editText = this.et_name;
            if (view == editText) {
                this.nameFocus = true;
                setClearIconVisible(this.iv_delete_name, editText.getText().length() > 0);
                return;
            }
            EditText editText2 = this.et_code;
            if (view == editText2) {
                this.codeFocus = true;
                setClearIconVisible(this.iv_delete_code, editText2.getText().length() > 0);
            }
        } else if (view == this.et_name) {
            setClearIconVisible(this.iv_delete_name, false);
        } else if (view == this.et_code) {
            setClearIconVisible(this.iv_delete_code, false);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        if (this.nameFocus) {
            setClearIconVisible(this.iv_delete_name, charSequence.length() > 0);
        }
        if (this.codeFocus) {
            setClearIconVisible(this.iv_delete_code, charSequence.length() > 0);
        }
    }

    protected void setClearIconVisible(View view, boolean z3) {
        view.setVisibility(z3 ? 0 : 8);
    }

    public void show(String str, Integer num, Integer num2) {
        super.show();
        this.type = num;
        this.action = num2;
        this.UserID = str;
    }
}
