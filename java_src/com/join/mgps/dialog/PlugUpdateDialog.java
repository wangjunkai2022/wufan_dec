package com.join.mgps.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
@EActivity
/* loaded from: classes3.dex */
public class PlugUpdateDialog extends BaseAppCompatActivity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f47489a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f47490b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f47491c;

    /* renamed from: d  reason: collision with root package name */
    private CheckBox f47492d;

    /* renamed from: e  reason: collision with root package name */
    private View f47493e;

    /* renamed from: f  reason: collision with root package name */
    private View f47494f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    EMUApkTable f47495g;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    String f47496h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    String f47497i;

    public void D0() {
        finish();
    }

    public void E0(String str) {
        EMUApkTable eMUApkTable;
        if (!TextUtils.isEmpty(str) && (eMUApkTable = this.f47495g) != null) {
            if (eMUApkTable.getTag_id().equals(str)) {
                D0();
                return;
            }
            return;
        }
        D0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f47490b.setText(this.f47495g.getApk_name());
        this.f47491c.setText(Html.fromHtml(this.f47495g.getVer_info()));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.dialog_button_cancle) {
            D0();
            IntentUtil.getInstance().goGameMainActivity(this.f47489a, this.f47497i, this.f47496h);
            if (this.f47492d.isChecked()) {
                try {
                    EMUApkTable eMUApkTable = this.f47495g;
                    eMUApkTable.setNotUpdateversion(Integer.parseInt(eMUApkTable.getVer().split("_")[0]));
                    n1.p.o().update(this.f47495g);
                } catch (NumberFormatException e4) {
                    e4.printStackTrace();
                }
            }
        } else if (id == R.id.dialog_button_ok) {
            D0();
            UtilsMy.V0(this.f47495g, this.f47489a);
            if (this.f47492d.isChecked()) {
                try {
                    EMUApkTable eMUApkTable2 = this.f47495g;
                    eMUApkTable2.setNotUpdateversion(Integer.parseInt(eMUApkTable2.getVer().split("_")[0]));
                    n1.p.o().update(this.f47495g);
                } catch (NumberFormatException e5) {
                    e5.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.join.mgps.Util.z1.o(this, 570425344, false);
        this.f47489a = this;
        View inflate = LayoutInflater.from(this).inflate(R.layout.plug_update_dialog_layout, (ViewGroup) null);
        this.f47490b = (TextView) inflate.findViewById(R.id.title);
        this.f47491c = (TextView) inflate.findViewById(R.id.content);
        this.f47492d = (CheckBox) inflate.findViewById(R.id.checkbox);
        this.f47493e = inflate.findViewById(R.id.dialog_button_ok);
        this.f47494f = inflate.findViewById(R.id.dialog_button_cancle);
        this.f47493e.setOnClickListener(this);
        this.f47494f.setOnClickListener(this);
        setContentView(inflate);
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
