package com.join.mgps.activity.vipzone.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.vipzone.bean.PrizeBean;
/* loaded from: classes3.dex */
public class LuckDrawFinishDialog extends Dialog implements View.OnClickListener {
    ImageView closed;
    Context context;
    SimpleDraweeView luck;
    TextView ok;
    PrizeBean prizeBean;
    TextView sub_title;

    public LuckDrawFinishDialog(@NonNull Context context) {
        super(context, R.style.Dialog_Fullscreen);
        this.context = context;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.closed) {
            onClickClosed(view);
        } else if (id != R.id.ok) {
        } else {
            onClickOk(view);
        }
    }

    public void onClickClosed(View view) {
        dismiss();
    }

    public void onClickOk(View view) {
        dismiss();
        if (this.prizeBean.getPrize_type() == 2) {
            Intent intent = new Intent(this.context, LuckDrawAddressDialog.class);
            intent.putExtra("datas", this.prizeBean);
            this.context.startActivity(intent);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(this.context).inflate(R.layout.luck_draw_finish_dialog_layout, (ViewGroup) null);
        setContentView(inflate);
        this.ok = (TextView) inflate.findViewById(R.id.ok);
        this.sub_title = (TextView) inflate.findViewById(R.id.sub_title);
        this.luck = (SimpleDraweeView) inflate.findViewById(R.id.luck);
        this.closed = (ImageView) inflate.findViewById(R.id.closed);
        this.ok.setOnClickListener(this);
        this.closed.setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        this.sub_title.setText(this.prizeBean.getTitle());
        MyImageLoader.h(this.luck, this.prizeBean.getPic());
    }

    public void showMydialog(PrizeBean prizeBean) {
        this.prizeBean = prizeBean;
        show();
    }

    public LuckDrawFinishDialog(@NonNull Context context, int i2) {
        super(context, i2);
        this.context = context;
    }
}
