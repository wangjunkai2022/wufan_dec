package com.papa91.arc.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class EmptyTipView extends LinearLayout {
    private ImageView iv_icon;
    private TextView tv_tip_msg;

    public EmptyTipView(Context context) {
        super(context);
        init();
    }

    private void init() {
        View inflate = View.inflate(getContext(), R.layout.view_empty_tip, this);
        this.iv_icon = (ImageView) inflate.findViewById(R.id.iv_icon);
        this.tv_tip_msg = (TextView) inflate.findViewById(R.id.tv_tip_msg);
    }

    public void setImage(@DrawableRes int i2) {
        this.iv_icon.setImageResource(i2);
    }

    public void setTipMsg(String str) {
        this.tv_tip_msg.setText(str);
    }

    public EmptyTipView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }
}
