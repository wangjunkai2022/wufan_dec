package com.join.android.app.component.album;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.f;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.g0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.u;
import com.join.mgps.Util.u1;
import com.join.mgps.customview.ClipImageLayout;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.UploadPortraitRequestBean;
import com.join.mgps.dto.UploadResultMainBean;
import com.join.mgps.rpc.b;
import com.join.mgps.rpc.g;
import com.papa.sim.statistic.JsonMapper;
import com.papa.sim.statistic.http.b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.crop_pic_layout)
/* loaded from: classes.dex */
public class CropPicActivity extends FragmentActivity {

    /* renamed from: o  reason: collision with root package name */
    static String f17298o = "CropPicActivity";
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f17299a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    Button f17300b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ClipImageLayout f17301c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f17302d;

    /* renamed from: e  reason: collision with root package name */
    private Uri f17303e;

    /* renamed from: f  reason: collision with root package name */
    private Context f17304f;

    /* renamed from: g  reason: collision with root package name */
    b f17305g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f17306h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    String f17307i;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    AccountBean f17308j;

    /* renamed from: k  reason: collision with root package name */
    private x0 f17309k;

    /* renamed from: l  reason: collision with root package name */
    MApplication f17310l;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    int f17311m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f17312n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C0() {
        this.f17309k.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0() {
        this.f17310l.l();
        com.join.mgps.listener.a.b().c();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00bd -> B:29:0x00c5). Please submit an issue!!! */
    public void E0(Bitmap bitmap) {
        try {
            File a4 = u.a();
            if (!a4.getParentFile().isDirectory()) {
                a4.getParentFile().delete();
            }
            if (!a4.getParentFile().exists()) {
                a4.getParentFile().mkdirs();
            }
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, 300, 300, true);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i2 = 100;
            createScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
            while (byteArrayOutputStream.toByteArray().length / 1024 > 30) {
                byteArrayOutputStream.reset();
                i2 -= 10;
                createScaledBitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(a4);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            try {
                if (this.f17311m == 1) {
                    J0(a4);
                    File c4 = u.c();
                    g0.c(a4 + "", c4 + "");
                    Fresco.getImagePipeline().e(MyImageLoader.F(c4));
                    AccountUtil_.getInstance_(this.f17304f).setLocalUserIcon(c4 + "");
                } else {
                    D0();
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        E0(this.f17301c.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0(Bitmap bitmap) {
        this.f17306h.setVisibility(8);
        this.f17301c.setVisibility(0);
        if (bitmap == null) {
            return;
        }
        this.f17301c.getmZoomImageView().setImageBitmap(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0() {
        G0(this.f17301c.c(this.f17304f, this.f17307i));
    }

    public boolean I0(AccountBean accountBean, File file, Context context) {
        this.f17312n = false;
        UploadPortraitRequestBean uploadPortraitRequestBean = new UploadPortraitRequestBean();
        uploadPortraitRequestBean.setDevice_id("");
        uploadPortraitRequestBean.setToken(accountBean.getToken());
        uploadPortraitRequestBean.setUid(accountBean.getUid());
        try {
            UploadResultMainBean uploadResultMainBean = (UploadResultMainBean) JsonMapper.e().fromJson(com.papa.sim.statistic.http.b.I().c(g.f51524k + "/user/upfile/upload_user_head_portrait", "files", file, new b.n[]{new b.n("uid", uploadPortraitRequestBean.getUid() + ""), new b.n("token", uploadPortraitRequestBean.getToken()), new b.n("device_id", uploadPortraitRequestBean.getDevice_id()), new b.n(Constant.MD5, u1.f(uploadPortraitRequestBean))}, file.getName()).body().string(), UploadResultMainBean.class);
            if (uploadResultMainBean != null && uploadResultMainBean.getError() == 0) {
                if (uploadResultMainBean.getData().is_success()) {
                    this.f17312n = true;
                    accountBean.setAvatarSrc(file.getAbsolutePath());
                    AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(accountBean, getApplicationContext());
                } else {
                    this.f17312n = false;
                }
            } else {
                this.f17312n = false;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            this.f17312n = false;
        }
        return this.f17312n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(File file) {
        if (f.j(this)) {
            C0();
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f17304f).getAccountData();
                this.f17308j = accountData;
                if (accountData == null) {
                    showLodingDismis();
                    return;
                }
                boolean z3 = false;
                if (file != null && file.isFile() && file.exists()) {
                    z3 = I0(this.f17308j, file, this.f17304f);
                }
                showLodingDismis();
                if (z3) {
                    D0();
                    return;
                } else {
                    error("连接失败，请稍后再试。");
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingDismis();
                error("连接失败，请稍后再试。");
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        MApplication mApplication = (MApplication) getApplication();
        this.f17310l = mApplication;
        mApplication.k(this);
        this.f17304f = this;
        this.f17309k = a0.c0(this).x(this);
        this.f17305g = com.join.mgps.rpc.impl.a.b0();
        showLoading();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        i2.a(this.f17304f).b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        showLodingDismis();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        this.f17300b.setVisibility(0);
        this.f17302d.setText("裁剪图像");
        this.f17300b.setBackgroundResource(R.drawable.common_blue_selector);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        x0 x0Var = this.f17309k;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.f17309k.dismiss();
    }
}
