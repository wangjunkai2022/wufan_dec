package org.cocos2dx.lib;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.papa91.wrapper.KeyboardListenLayout;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
/* loaded from: classes5.dex */
public class Cocos2dxEditBoxDialog extends Dialog implements View.OnClickListener, TextView.OnEditorActionListener {
    private final int kEditBoxInputFlagInitialCapsAllCharacters;
    private final int kEditBoxInputFlagInitialCapsSentence;
    private final int kEditBoxInputFlagInitialCapsWord;
    private final int kEditBoxInputFlagPassword;
    private final int kEditBoxInputFlagSensitive;
    private final int kEditBoxInputModeAny;
    private final int kEditBoxInputModeDecimal;
    private final int kEditBoxInputModeEmailAddr;
    private final int kEditBoxInputModeNumeric;
    private final int kEditBoxInputModePhoneNumber;
    private final int kEditBoxInputModeSingleLine;
    private final int kEditBoxInputModeUrl;
    private final int kKeyboardReturnTypeDefault;
    private final int kKeyboardReturnTypeDone;
    private final int kKeyboardReturnTypeGo;
    private final int kKeyboardReturnTypeSearch;
    private final int kKeyboardReturnTypeSend;
    private EditText mInputEditText;
    private final int mInputFlag;
    private int mInputFlagConstraints;
    private final int mInputMode;
    private int mInputModeContraints;
    private boolean mIsMultiline;
    private final int mMaxLength;
    private final String mMessage;
    private final int mReturnType;
    private TextView mTextViewTitle;
    private final String mTitle;
    long time;

    public Cocos2dxEditBoxDialog(Context context, String str, String str2, int i2, int i4, int i5, int i6) {
        super(context, 16973841);
        this.kEditBoxInputModeAny = 0;
        this.kEditBoxInputModeEmailAddr = 1;
        this.kEditBoxInputModeNumeric = 2;
        this.kEditBoxInputModePhoneNumber = 3;
        this.kEditBoxInputModeUrl = 4;
        this.kEditBoxInputModeDecimal = 5;
        this.kEditBoxInputModeSingleLine = 6;
        this.kEditBoxInputFlagPassword = 0;
        this.kEditBoxInputFlagSensitive = 1;
        this.kEditBoxInputFlagInitialCapsWord = 2;
        this.kEditBoxInputFlagInitialCapsSentence = 3;
        this.kEditBoxInputFlagInitialCapsAllCharacters = 4;
        this.kKeyboardReturnTypeDefault = 0;
        this.kKeyboardReturnTypeDone = 1;
        this.kKeyboardReturnTypeSend = 2;
        this.kKeyboardReturnTypeSearch = 3;
        this.kKeyboardReturnTypeGo = 4;
        this.time = 0L;
        this.mTitle = str;
        this.mMessage = str2;
        this.mInputMode = i2;
        this.mInputFlag = i4;
        this.mReturnType = i5;
        this.mMaxLength = i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeKeyboard() {
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mInputEditText.getWindowToken(), 0);
    }

    private int convertDipsToPixels(float f4) {
        return Math.round(f4 * getContext().getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openKeyboard() {
        ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this.mInputEditText, 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Cocos2dxHelper.setEditTextDialogResult(this.mInputEditText.getText().toString());
        closeKeyboard();
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(new ColorDrawable(Integer.MIN_VALUE));
        KeyboardListenLayout keyboardListenLayout = new KeyboardListenLayout(getContext());
        keyboardListenLayout.setOnClickListener(this);
        this.mTextViewTitle = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int convertDipsToPixels = convertDipsToPixels(10.0f);
        layoutParams.rightMargin = convertDipsToPixels;
        layoutParams.leftMargin = convertDipsToPixels;
        this.mTextViewTitle.setTextSize(1, 20.0f);
        this.mInputEditText = new EditText(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        int convertDipsToPixels2 = convertDipsToPixels(10.0f);
        layoutParams2.rightMargin = convertDipsToPixels2;
        layoutParams2.leftMargin = convertDipsToPixels2;
        this.mInputEditText.setOnEditorActionListener(this);
        keyboardListenLayout.addView(this.mInputEditText, layoutParams2);
        setContentView(keyboardListenLayout);
        getWindow().addFlags(1024);
        this.mTextViewTitle.setText(this.mTitle);
        this.mInputEditText.setText(this.mMessage);
        this.mInputEditText.setSingleLine(true);
        this.mInputEditText.setImeOptions(this.mInputEditText.getImeOptions() | 33554432 | 2 | 4);
        int imeOptions = this.mInputEditText.getImeOptions();
        switch (this.mInputMode) {
            case 0:
                this.mInputModeContraints = IjkMediaPlayer.OnNativeInvokeListener.CTRL_WILL_TCP_OPEN;
                break;
            case 1:
                this.mInputModeContraints = 33;
                break;
            case 2:
                this.mInputModeContraints = 4098;
                break;
            case 3:
                this.mInputModeContraints = 3;
                break;
            case 4:
                this.mInputModeContraints = 17;
                break;
            case 5:
                this.mInputModeContraints = 12290;
                break;
            case 6:
                this.mInputModeContraints = 1;
                break;
        }
        if (this.mIsMultiline) {
            this.mInputModeContraints |= 131072;
        }
        this.mInputEditText.setInputType(this.mInputModeContraints | this.mInputFlagConstraints);
        int i2 = this.mInputFlag;
        if (i2 == 0) {
            this.mInputFlagConstraints = 129;
        } else if (i2 == 1) {
            this.mInputFlagConstraints = 524288;
        } else if (i2 == 2) {
            this.mInputFlagConstraints = 8192;
        } else if (i2 == 3) {
            this.mInputFlagConstraints = 16384;
        } else if (i2 == 4) {
            this.mInputFlagConstraints = 4096;
        }
        this.mInputEditText.setInputType(this.mInputFlagConstraints | this.mInputModeContraints);
        int i4 = this.mReturnType;
        if (i4 == 0) {
            this.mInputEditText.setImeOptions(imeOptions | 1);
        } else if (i4 == 1) {
            this.mInputEditText.setImeOptions(imeOptions | 6);
        } else if (i4 == 2) {
            this.mInputEditText.setImeOptions(imeOptions | 4);
        } else if (i4 == 3) {
            this.mInputEditText.setImeOptions(imeOptions | 3);
        } else if (i4 != 4) {
            this.mInputEditText.setImeOptions(imeOptions | 1);
        } else {
            this.mInputEditText.setImeOptions(imeOptions | 2);
        }
        if (this.mMaxLength > 0) {
            this.mInputEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.mMaxLength)});
        }
        new Handler().postDelayed(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxDialog.1
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxEditBoxDialog.this.mInputEditText.requestFocus();
                Cocos2dxEditBoxDialog.this.mInputEditText.setSelection(Cocos2dxEditBoxDialog.this.mInputEditText.length());
                Cocos2dxEditBoxDialog.this.openKeyboard();
            }
        }, 200L);
        this.mInputEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.cocos2dx.lib.Cocos2dxEditBoxDialog.2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                if (i5 != 0 || (i5 == 0 && keyEvent != null && keyEvent.getAction() == 0)) {
                    Cocos2dxHelper.setEditTextDialogResult(Cocos2dxEditBoxDialog.this.mInputEditText.getText().toString());
                    Cocos2dxEditBoxDialog.this.closeKeyboard();
                    Cocos2dxEditBoxDialog.this.dismiss();
                    return true;
                }
                return false;
            }
        });
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        return keyEvent.getKeyCode() == 66 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 6;
    }
}
