package com.papa91.arc.dialog;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.papa91.arc.view.BaseDialog;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SimulatorTipOneDialog extends BaseDialog implements View.OnClickListener {
    private Button btn_ok;
    private ImageView iv_close;
    private OnOptionsListener listener;
    private TextView tv_content;
    private TextView tv_title;

    /* loaded from: classes4.dex */
    public interface OnOptionsListener {
        void onClose();

        void onConfirm();
    }

    public SimulatorTipOneDialog(@NonNull Context context) {
        this(context, R.style.PspDialog);
    }

    private void initView() {
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        this.tv_content = (TextView) findViewById(R.id.tv_content);
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        this.btn_ok = (Button) findViewById(R.id.btn_ok);
    }

    private void setListener() {
        this.btn_ok.setOnClickListener(this);
        this.iv_close.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_ok) {
            OnOptionsListener onOptionsListener = this.listener;
            if (onOptionsListener != null) {
                onOptionsListener.onConfirm();
            }
            dismiss();
        } else if (view.getId() == R.id.iv_close) {
            OnOptionsListener onOptionsListener2 = this.listener;
            if (onOptionsListener2 != null) {
                onOptionsListener2.onClose();
            }
            dismiss();
        }
    }

    public SimulatorTipOneDialog setConfirmText(CharSequence charSequence) {
        this.btn_ok.setText(charSequence);
        return this;
    }

    public SimulatorTipOneDialog setTipContent(CharSequence charSequence) {
        this.tv_content.setText(charSequence);
        return this;
    }

    public SimulatorTipOneDialog setTipTitle(CharSequence charSequence) {
        this.tv_title.setText(charSequence);
        return this;
    }

    public SimulatorTipOneDialog(@NonNull Context context, int i2) {
        super(context, i2);
        setContentView(R.layout.dialog_simulator_tip_one);
        setBackgroundDimEnabled(false);
        initView();
        setListener();
    }

    public void setListener(OnOptionsListener onOptionsListener) {
        this.listener = onOptionsListener;
    }
}
