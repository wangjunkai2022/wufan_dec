package com.join.kotlin.ui.cloudarchive.dialog;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class SwitchView extends LinearLayout implements View.OnClickListener {
    private OnSwitchChangedListener listener;
    View ll_elite_room;
    View ll_standard_room;
    TextView tv_elite_room_name;
    TextView tv_standard_room_name;

    /* loaded from: classes3.dex */
    public interface OnSwitchChangedListener {
        void onSwitchChanged(int i2);
    }

    public SwitchView(Context context) {
        super(context);
    }

    public void initView(Context context) {
        LayoutInflater.from(context).inflate(R.layout.switch_layout, this);
        this.ll_standard_room = findViewById(R.id.ll_standard_room);
        this.ll_elite_room = findViewById(R.id.ll_elite_room);
        this.tv_elite_room_name = (TextView) findViewById(R.id.tv_elite_room_name);
        this.tv_standard_room_name = (TextView) findViewById(R.id.tv_standard_room_name);
        this.ll_standard_room.setOnClickListener(this);
        this.ll_elite_room.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.ll_elite_room) {
            this.listener.onSwitchChanged(2);
            this.ll_elite_room.setBackgroundResource(R.drawable.switch_thumb_right);
            this.ll_standard_room.setBackgroundResource(R.drawable.switch_back);
            this.tv_standard_room_name.setTextColor(Color.parseColor("#C1D0DD"));
            this.tv_elite_room_name.setTextColor(-1);
        } else if (id != R.id.ll_standard_room) {
        } else {
            this.ll_standard_room.setBackgroundResource(R.drawable.switch_thumb);
            this.ll_elite_room.setBackgroundResource(R.drawable.switch_back);
            this.tv_standard_room_name.setTextColor(-1);
            this.tv_elite_room_name.setTextColor(Color.parseColor("#C1D0DD"));
            this.listener.onSwitchChanged(1);
        }
    }

    public void setListener(OnSwitchChangedListener onSwitchChangedListener) {
        this.listener = onSwitchChangedListener;
    }

    public void switchPosition1() {
        this.ll_standard_room.setBackgroundResource(R.drawable.switch_thumb);
        this.ll_elite_room.setBackgroundResource(R.drawable.switch_back);
        this.tv_standard_room_name.setTextColor(-1);
        this.tv_elite_room_name.setTextColor(Color.parseColor("#C1D0DD"));
        this.listener.onSwitchChanged(1);
    }

    public SwitchView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        initView(context);
    }

    public SwitchView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        initView(context);
    }
}
