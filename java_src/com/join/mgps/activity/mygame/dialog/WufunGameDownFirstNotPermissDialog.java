package com.join.mgps.activity.mygame.dialog;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.d2;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.pref.h;
import f1.a;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.wufungame_first_downpermiss_dialog)
/* loaded from: classes3.dex */
public class WufunGameDownFirstNotPermissDialog extends BaseActivity {
    @ViewById
    TextView gameName;
    @ViewById
    SimpleDraweeView img;
    @Pref
    PrefDef_ prefDef;
    @Extra
    int from = 1;
    Handler handler = new Handler() { // from class: com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WufunGameDownFirstNotPermissDialog wufunGameDownFirstNotPermissDialog = WufunGameDownFirstNotPermissDialog.this;
            if (!wufunGameDownFirstNotPermissDialog.isbackground && !wufunGameDownFirstNotPermissDialog.show10Permiss()) {
                WufunGameDownFirstNotPermissDialog.this.hasgetpermiss();
                WufunGameDownFirstNotPermissDialog.this.finish();
                return;
            }
            WufunGameDownFirstNotPermissDialog.this.handler.sendEmptyMessageDelayed(1, 3000L);
        }
    };
    boolean isbackground = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void hasgetpermiss() {
        sendBroadcast(new Intent(a.f65485k0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean show10Permiss() {
        boolean createNewFile;
        if (Build.VERSION.SDK_INT <= 28 || !this.prefDef.needShowPermissdialog().d().booleanValue()) {
            return false;
        }
        try {
            String g4 = h.n(this).g();
            if (d2.i(g4)) {
                File file = new File(g4);
                if (!file.exists()) {
                    return !file.mkdirs();
                }
                File file2 = new File(g4, "test_canwhite.txt");
                if (file2.exists()) {
                    createNewFile = file2.delete();
                } else {
                    createNewFile = file2.createNewFile();
                }
                return !createNewFile;
            }
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        if (this.from == 2) {
            this.gameName.setText("如需恢复游戏，请允许存储权限。");
        }
        this.handler.sendEmptyMessageDelayed(1, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void mainxxx() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.isbackground = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.isbackground = false;
        if (show10Permiss()) {
            return;
        }
        this.prefDef.needShowPermissdialog().g(Boolean.FALSE);
        this.handler.removeMessages(1);
        hasgetpermiss();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void settingInfo() {
        IntentUtil.getInstance().goFormDetial(this, "7543990");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void startButn() {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }
}
