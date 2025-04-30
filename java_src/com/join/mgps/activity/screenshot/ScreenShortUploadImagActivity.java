package com.join.mgps.activity.screenshot;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseActivity;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.n0;
import com.join.mgps.Util.n1;
import com.join.mgps.Util.u;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import java.io.File;
import java.io.IOException;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.json.JSONException;
import org.json.JSONObject;
@EActivity(R.layout.screenshort_upload_activity)
/* loaded from: classes3.dex */
public class ScreenShortUploadImagActivity extends BaseActivity {
    Activity activity;
    @ViewById
    ImageView back;
    @ViewById
    EditText commitMessage;
    x0 dialog;
    File filePath;
    @ViewById
    TextView finishButn;
    @Extra
    String gameId;
    @Extra
    String imagepath;
    @ViewById
    SimpleDraweeView imgUpload;
    List<ScreenshortTabBean> listTables;
    Context mContext;
    private n1 mPhotoSelectUtils;
    private Dialog mPicChsDialog;
    @ViewById
    SlidingTabLayoutScreenShort selecter;
    @Extra
    int typeId;
    @ViewById
    ViewPager viewPager;

    private void ChangIcon() {
        Dialog dialog = new Dialog(this.mContext, R.style.floate_dialog);
        this.mPicChsDialog = dialog;
        dialog.setContentView(R.layout.dialog_pic_choose);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Window window = this.mPicChsDialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        window.setGravity(80);
        attributes.width = defaultDisplay.getWidth();
        this.mPicChsDialog.getWindow().setAttributes(attributes);
        TextView textView = (TextView) this.mPicChsDialog.findViewById(R.id.chos_camera);
        textView.setVisibility(8);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenShortUploadImagActivity.this.mPicChsDialog.dismiss();
                boolean z3 = false;
                if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    UtilsMy.c2(ScreenShortUploadImagActivity.this.activity, "android.permission.WRITE_EXTERNAL_STORAGE");
                } else if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                    UtilsMy.c2(ScreenShortUploadImagActivity.this.activity, "android.permission.READ_EXTERNAL_STORAGE");
                } else if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, "android.permission.CAMERA") != 0) {
                    UtilsMy.c2(ScreenShortUploadImagActivity.this.activity, "android.permission.CAMERA");
                } else {
                    z3 = true;
                }
                if (z3) {
                    ScreenShortUploadImagActivity.this.mPhotoSelectUtils.h();
                }
            }
        });
        ((TextView) this.mPicChsDialog.findViewById(R.id.pic_lib)).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenShortUploadImagActivity.this.mPicChsDialog.dismiss();
                boolean z3 = false;
                if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    UtilsMy.c2(ScreenShortUploadImagActivity.this.activity, "android.permission.WRITE_EXTERNAL_STORAGE");
                } else if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                    UtilsMy.c2(ScreenShortUploadImagActivity.this.activity, "android.permission.READ_EXTERNAL_STORAGE");
                } else {
                    z3 = true;
                }
                if (z3) {
                    ScreenShortUploadImagActivity.this.mPhotoSelectUtils.e();
                }
            }
        });
        ((TextView) this.mPicChsDialog.findViewById(R.id.btn_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenShortUploadImagActivity.this.mPicChsDialog.dismiss();
            }
        });
        this.mPicChsDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.activity = this;
        this.mContext = this;
        this.dialog = a0.c0(this).x(this.mContext);
        if (d2.i(this.imagepath)) {
            File file = new File(this.imagepath);
            if (file.exists()) {
                this.filePath = file;
                SimpleDraweeView simpleDraweeView = this.imgUpload;
                MyImageLoader.i(simpleDraweeView, "file://" + this.imagepath, r.c.f12144g);
            }
        }
        this.mPhotoSelectUtils = new n1(this, new n1.a() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.1
            @Override // com.join.mgps.Util.n1.a
            public void onFinish(File file2, Uri uri) {
                SimpleDraweeView simpleDraweeView2 = ScreenShortUploadImagActivity.this.imgUpload;
                MyImageLoader.i(simpleDraweeView2, "file://" + file2.getAbsolutePath(), r.c.f12144g);
                ScreenShortUploadImagActivity.this.filePath = file2;
            }
        }, false);
        this.listTables = (List) getIntent().getBundleExtra("datas").getSerializable("datas");
        this.viewPager.setAdapter(new PagerAdapter() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.2
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return ScreenShortUploadImagActivity.this.listTables.size();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @Nullable
            public CharSequence getPageTitle(int i2) {
                return ScreenShortUploadImagActivity.this.listTables.get(i2).getTitle();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
                return false;
            }
        });
        this.selecter.setViewPager(this.viewPager);
        for (int i2 = 0; i2 < this.listTables.size(); i2++) {
            if (this.listTables.get(i2).getId() == this.typeId) {
                this.selecter.setCurrentTab(i2);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void finishButn() {
        String obj = this.commitMessage.getText().toString();
        if (d2.h(obj)) {
            i2.a(this.mContext).b("点评内容不能为空");
            return;
        }
        File file = this.filePath;
        if (file != null && file.exists()) {
            this.dialog.show();
            uploadImagData(obj);
            return;
        }
        i2.a(this.mContext).b("请选择截图");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void imgUpload() {
        ChangIcon();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        this.mPhotoSelectUtils.a(i2, i4, intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 1001) {
            this.mPhotoSelectUtils.h();
        } else if (i2 == 1002) {
            this.mPhotoSelectUtils.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void uploadFailed(String str) {
        this.dialog.dismiss();
        if (d2.i(str)) {
            i2.a(this.mContext).b(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00ed -> B:33:0x00f5). Please submit an issue!!! */
    @Background
    public void uploadImagData(String str) {
        String f4;
        try {
            int i2 = this.typeId;
            AccountBean accountData = AccountUtil_.getInstance_(this.mContext).getAccountData();
            int i4 = 0;
            while (true) {
                if (i4 >= this.listTables.size()) {
                    break;
                } else if (i4 == this.viewPager.getCurrentItem()) {
                    i2 = this.listTables.get(i4).getId();
                    break;
                } else {
                    i4++;
                }
            }
            String str2 = u.f27851j + "uploadFile" + System.currentTimeMillis();
            try {
                new ImageFactory().compressAndGenImage(this.filePath.getAbsolutePath(), str2, 500, false);
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            File file = new File(str2);
            if (file.exists()) {
                f4 = n0.f(file, accountData.getUid() + "", accountData.getToken(), this.gameId, i2 + "", str);
            } else {
                f4 = n0.f(this.filePath, accountData.getUid() + "", accountData.getToken(), this.gameId, i2 + "", str);
            }
            try {
                JSONObject jSONObject = new JSONObject(f4);
                int i5 = jSONObject.getInt("flag");
                int i6 = jSONObject.getInt("code");
                if (i5 == 1 && i6 == 600) {
                    uploadSuccess();
                } else {
                    uploadFailed(jSONObject.getString("error_info"));
                }
            } catch (JSONException unused) {
                uploadFailed("");
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void uploadSuccess() {
        this.dialog.dismiss();
        i2.a(this.mContext).b("图片审核后显示");
        finish();
    }
}
