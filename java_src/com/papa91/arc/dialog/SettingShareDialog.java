package com.papa91.arc.dialog;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import java.io.File;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class SettingShareDialog extends SettingDialog {
    ImageView iv_close;
    LinearLayout ll_Qzone;
    LinearLayout ll_pyq;
    LinearLayout ll_qq;
    LinearLayout ll_wx;
    SimpleDraweeView sdv_image;
    IShareListener shareListener;

    /* loaded from: classes4.dex */
    public interface IShareListener {
        void onShare(int i2);
    }

    public SettingShareDialog(@NonNull Context context) {
        super(context);
        initView();
    }

    private void initView() {
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        this.sdv_image = (SimpleDraweeView) findViewById(R.id.sdv_image);
        this.ll_wx = (LinearLayout) findViewById(R.id.ll_wx);
        this.ll_pyq = (LinearLayout) findViewById(R.id.ll_pyq);
        this.ll_qq = (LinearLayout) findViewById(R.id.ll_qq);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.ll_Qzone);
        this.ll_Qzone = linearLayout;
        setOnListener(this.iv_close, this.ll_wx, this.ll_pyq, this.ll_qq, linearLayout);
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_share;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        IShareListener iShareListener;
        super.onClick(view);
        if (view == this.iv_close) {
            dismiss();
        } else if (view == this.ll_wx) {
            IShareListener iShareListener2 = this.shareListener;
            if (iShareListener2 != null) {
                iShareListener2.onShare(0);
            }
        } else if (view == this.ll_pyq) {
            IShareListener iShareListener3 = this.shareListener;
            if (iShareListener3 != null) {
                iShareListener3.onShare(1);
            }
        } else if (view == this.ll_qq) {
            IShareListener iShareListener4 = this.shareListener;
            if (iShareListener4 != null) {
                iShareListener4.onShare(2);
            }
        } else if (view != this.ll_Qzone || (iShareListener = this.shareListener) == null) {
        } else {
            iShareListener.onShare(3);
        }
    }

    public void setIamge(String str) {
        this.sdv_image.setImageURI(Uri.parse("file://" + new File(str).getAbsolutePath()));
    }

    public void setShareListener(IShareListener iShareListener) {
        this.shareListener = iShareListener;
    }
}
