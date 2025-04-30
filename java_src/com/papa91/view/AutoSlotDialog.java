package com.papa91.view;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.core.g;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.MarketUtil;
import com.papa91.mix.R;
import com.yatoooon.screenadaptation.e;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class AutoSlotDialog extends BaseDialog implements View.OnClickListener {

    /* renamed from: b1  reason: collision with root package name */
    View f56216b1;

    /* renamed from: b2  reason: collision with root package name */
    View f56217b2;

    /* renamed from: b3  reason: collision with root package name */
    View f56218b3;
    TextView buyVip;
    View buyVip1;
    View close;
    View flag;
    SimpleDraweeView img1;
    SimpleDraweeView img2;
    SimpleDraweeView img3;
    View load1;
    View load2;
    View load3;
    List<String> slots;
    TextView time1;
    TextView time2;
    TextView time3;
    int vipLevel;

    /* loaded from: classes4.dex */
    public static class ConfirmDialog extends BaseDialog {
        public ConfirmDialog(@NonNull Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.papa91.view.BaseDialog, android.app.Dialog
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setCanceledOnTouchOutside(false);
            setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.view.AutoSlotDialog.ConfirmDialog.1
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return i2 == 4 && keyEvent.getRepeatCount() == 0;
                }
            });
        }

        public ConfirmDialog(@NonNull Context context, int i2) {
            super(context, i2);
        }
    }

    public AutoSlotDialog(@NonNull Context context) {
        super(context, R.style.Dialog);
        this.slots = new ArrayList();
    }

    @Override // com.papa91.view.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        EmuBaseActivity.setPause(0);
    }

    void evictImageCache(String str) {
        Uri parse = Uri.parse(str);
        g imagePipeline = Fresco.getImagePipeline();
        imagePipeline.h(parse);
        imagePipeline.f(parse);
        imagePipeline.e(parse);
    }

    String getTimeFormat(long j4) {
        long currentTimeMillis = (System.currentTimeMillis() - j4) / 1000;
        if (currentTimeMillis < 60) {
            return currentTimeMillis + "秒前";
        } else if (currentTimeMillis < 3600) {
            return (currentTimeMillis / 60) + "分钟前";
        } else if (currentTimeMillis < 86400) {
            return ((currentTimeMillis / 60) / 60) + "小时前";
        } else if (currentTimeMillis < 2592000) {
            return (((currentTimeMillis / 60) / 60) / 24) + "天前";
        } else {
            return ((((currentTimeMillis / 60) / 60) / 24) / 30) + "个月前";
        }
    }

    void goBuyVip(Context context) {
        MarketUtil.intent(context, "4", "", "https://anv3cjapi.5fun.com/member/vip_view/fc_archive", "", "");
        EmuBaseActivity.sendEmuStat("vipAutosave", new Object[0]);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.buyVip1) {
            goBuyVip(view.getContext());
        } else if (id == R.id.close) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        setContentView(R.layout.dialog_auto_saved_slot);
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.view.AutoSlotDialog.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                return i2 == 4 && keyEvent.getRepeatCount() == 0;
            }
        });
        this.close = findViewById(R.id.close);
        this.buyVip = (TextView) findViewById(R.id.buyVip);
        this.buyVip1 = findViewById(R.id.buyVip1);
        this.flag = findViewById(R.id.flag);
        this.f56216b1 = findViewById(R.id.f56212b1);
        this.f56217b2 = findViewById(R.id.f56213b2);
        this.f56218b3 = findViewById(R.id.f56214b3);
        this.load1 = findViewById(R.id.load1);
        this.load2 = findViewById(R.id.load2);
        this.load3 = findViewById(R.id.load3);
        this.time1 = (TextView) findViewById(R.id.time1);
        this.time2 = (TextView) findViewById(R.id.time2);
        this.time3 = (TextView) findViewById(R.id.time3);
        this.img1 = (SimpleDraweeView) findViewById(R.id.img1);
        this.img2 = (SimpleDraweeView) findViewById(R.id.img2);
        this.img3 = (SimpleDraweeView) findViewById(R.id.img3);
        this.close.setOnClickListener(this);
        e.a().f(getWindow().getDecorView());
    }

    public void setVipLevel(int i2) {
        this.vipLevel = i2;
        if (isShowing()) {
            update();
        }
    }

    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        if (getContext().getResources().getConfiguration().orientation == 2) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.gravity = 17;
            attributes.width = -1;
            attributes.height = -1;
            getWindow().getDecorView().setPadding(0, 0, 0, 0);
            getWindow().setAttributes(attributes);
        }
    }

    void showConfirmDialog(final String str, final int i2) {
        final ConfirmDialog confirmDialog = new ConfirmDialog(getContext(), R.style.Dialog);
        confirmDialog.setContentView(R.layout.dialog_load_slot);
        confirmDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.AutoSlotDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                confirmDialog.dismiss();
            }
        });
        confirmDialog.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.AutoSlotDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (EmuBaseActivity.freeLoadSlot() && i2 == 0) {
                    EmuBaseActivity.freeLoadSlotSet();
                    View view2 = AutoSlotDialog.this.flag;
                    if (view2 != null) {
                        view2.setVisibility(8);
                    }
                }
                confirmDialog.dismiss();
                AutoSlotDialog.this.dismiss();
                EmuBaseActivity.loadAutoSlot(str, i2);
            }
        });
        confirmDialog.show();
    }

    void update() {
        if (this.vipLevel > 0) {
            this.flag.setVisibility(8);
            this.buyVip1.setVisibility(8);
        } else {
            this.flag.setVisibility(0);
            this.buyVip.setVisibility(8);
            this.buyVip1.setVisibility(0);
            this.buyVip1.setOnClickListener(this);
        }
        View[] viewArr = {this.f56216b1, this.f56217b2, this.f56218b3};
        View[] viewArr2 = {this.load1, this.load2, this.load3};
        TextView[] textViewArr = {this.time1, this.time2, this.time3};
        SimpleDraweeView[] simpleDraweeViewArr = {this.img1, this.img2, this.img3};
        for (final int i2 = 0; i2 < 3; i2++) {
            if (i2 >= this.slots.size()) {
                viewArr[i2].setVisibility(4);
            } else {
                viewArr[i2].setVisibility(0);
                String str = "file://" + this.slots.get(i2) + ".png";
                evictImageCache(str);
                simpleDraweeViewArr[i2].setImageURI(Uri.parse(str));
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.papa91.view.AutoSlotDialog.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        EmuBaseActivity.sendEmuStat("onclickAutosave", Integer.valueOf(i2));
                        if (!EmuBaseActivity.isLogined()) {
                            EmuBaseActivity.sign();
                            Toast.makeText(view.getContext(), "该功能需登录后使用", 0).show();
                        } else if (AutoSlotDialog.this.vipLevel < 1 && (!EmuBaseActivity.freeLoadSlot() || i2 != 0)) {
                            Toast.makeText(view.getContext(), "开通会员即可读取该存档", 0).show();
                        } else {
                            AutoSlotDialog autoSlotDialog = AutoSlotDialog.this;
                            autoSlotDialog.showConfirmDialog(autoSlotDialog.slots.get(i2), i2);
                        }
                    }
                };
                viewArr2[i2].setOnClickListener(onClickListener);
                simpleDraweeViewArr[i2].setOnClickListener(onClickListener);
                File file = new File(this.slots.get(i2));
                if (file.exists()) {
                    textViewArr[i2].setText(getTimeFormat(file.lastModified()));
                }
                if (i2 == 0) {
                    if (EmuBaseActivity.freeLoadSlot() && this.vipLevel < 1) {
                        this.flag.setVisibility(0);
                    } else {
                        this.flag.setVisibility(8);
                    }
                }
            }
        }
    }

    public AutoSlotDialog(@NonNull Context context, int i2) {
        super(context, R.style.Dialog);
        this.slots = new ArrayList();
    }

    public void show(int i2, List<String> list) {
        EmuBaseActivity.setPause(1);
        this.vipLevel = i2;
        this.slots.clear();
        if (list != null) {
            this.slots.addAll(list);
        }
        if (!isShowing()) {
            show();
        }
        update();
    }
}
