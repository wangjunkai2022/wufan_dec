package com.join.mgps.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.enums.ConstantIntEnum;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity
/* loaded from: classes.dex */
public class PlugInstallDialog extends BaseAppCompatActivity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f47473a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47474b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f47475c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f47476d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f47477e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f47478f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    EMUApkTable f47479g;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    DownloadTask f47480h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    int f47481i;

    /* renamed from: j  reason: collision with root package name */
    private int f47482j = 0;

    public void D0() {
        finish();
    }

    public void E0(String str) {
        EMUApkTable eMUApkTable;
        if (!TextUtils.isEmpty(str) && (eMUApkTable = this.f47479g) != null) {
            if (eMUApkTable.getTag_id().equals(str)) {
                D0();
                return;
            }
            return;
        }
        D0();
    }

    public void F0() {
        String str;
        this.f47474b.setBackgroundResource(R.drawable.emu_f_complete);
        this.f47475c.setText("完成");
        this.f47475c.setBackgroundResource(R.drawable.shape_plug_btn_bg);
        this.f47475c.setEnabled(true);
        this.f47476d.setVisibility(8);
        this.f47478f.setText("请享受游戏之旅");
        ConstantIntEnum[] values = ConstantIntEnum.values();
        int i2 = 0;
        while (true) {
            str = "已安装完成";
            if (i2 >= values.length) {
                break;
            }
            if (this.f47479g.getTag_id().equals(values[i2].value() + "")) {
                str = values[i2].nickName() + "已安装完成";
                break;
            }
            i2++;
        }
        this.f47477e.setText(str);
        this.f47482j = 3;
    }

    public void G0() {
        String str;
        this.f47474b.setBackgroundResource(R.drawable.emu_f_install);
        this.f47475c.setText("完成");
        this.f47475c.setBackgroundResource(R.drawable.shape_plug_btn_disable_bg);
        int i2 = 0;
        this.f47475c.setEnabled(false);
        this.f47476d.setVisibility(8);
        this.f47478f.setText("大约需要几秒钟");
        ConstantIntEnum[] values = ConstantIntEnum.values();
        while (true) {
            str = "插件安装中";
            if (i2 >= values.length) {
                break;
            }
            if (this.f47479g.getTag_id().equals(values[i2].value() + "")) {
                str = values[i2].nickName() + "插件安装中";
                break;
            }
            i2++;
        }
        this.f47477e.setText(str);
        this.f47482j = 2;
    }

    public void H0() {
        this.f47474b.setBackgroundResource(R.drawable.emu_f_update);
        this.f47475c.setText("一键安装");
        this.f47475c.setEnabled(true);
        this.f47475c.setBackgroundResource(R.drawable.shape_plug_btn_bg);
        int i2 = 0;
        if (this.f47481i == 2) {
            this.f47476d.setVisibility(8);
        } else {
            this.f47476d.setVisibility(0);
        }
        this.f47478f.setText("我们已为你准备好安装包");
        String str = "插件可更新";
        ConstantIntEnum[] values = ConstantIntEnum.values();
        while (true) {
            if (i2 >= values.length) {
                break;
            }
            if (this.f47479g.getTag_id().equals(values[i2].value() + "")) {
                str = values[i2].nickName() + "插件可更新";
                break;
            }
            i2++;
        }
        this.f47477e.setText(str);
        this.f47482j = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.Util.c0.a().d(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.skip) {
            D0();
            DownloadTask downloadTask = this.f47480h;
            if (downloadTask != null) {
                UtilsMy.d3(this.f47473a, downloadTask, 1);
            }
        } else if (id == R.id.submit) {
            int i2 = this.f47482j;
            if (i2 != 1) {
                if (i2 == 3) {
                    D0();
                    return;
                }
                return;
            }
            G0();
            DownloadTask V = g1.f.G().V(Integer.parseInt(this.f47480h.getPlugin_num()));
            if (V.getStatus() == 11 && V.getDown_type() == 2) {
                com.join.android.app.common.servcie.a.e().q(this, V);
            } else {
                UtilsMy.V0(this.f47479g, this.f47473a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.join.mgps.Util.z1.o(this, 570425344, false);
        this.f47473a = this;
        View inflate = LayoutInflater.from(this).inflate(R.layout.layout_emu_plugin_dialog, (ViewGroup) null);
        this.f47474b = (ImageView) inflate.findViewById(R.id.icon);
        this.f47475c = (TextView) inflate.findViewById(R.id.submit);
        this.f47476d = (TextView) inflate.findViewById(R.id.skip);
        this.f47477e = (TextView) inflate.findViewById(R.id.title);
        this.f47478f = (TextView) inflate.findViewById(R.id.subTitle);
        this.f47476d.setVisibility(8);
        this.f47475c.setOnClickListener(this);
        this.f47476d.setOnClickListener(this);
        setContentView(inflate);
        int i2 = this.f47481i;
        if (i2 != 1 && i2 != 2) {
            G0();
        } else {
            H0();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        if (a4 != null && a4.getStatus() == 5) {
            F0();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        com.join.mgps.Util.z1.o(this, 570425344, false);
    }
}
