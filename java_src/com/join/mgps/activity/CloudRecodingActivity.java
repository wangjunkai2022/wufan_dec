package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.CloudBackupsDataTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import com.join.mgps.dto.CloudBackupsDataBean;
import com.join.mgps.dto.CloudBackupsRecoverListBean;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.cloud_recoding_layout)
/* loaded from: classes3.dex */
public class CloudRecodingActivity extends BaseActivity {
    @Extra

    /* renamed from: a  reason: collision with root package name */
    boolean f28734a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f28735b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f28736c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f28737d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f28738e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f28739f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f28740g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f28741h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f28742i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f28743j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    ImageView f28744k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    ProgressBar f28745l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ProgressBar f28746m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ProgressBar f28747n;

    /* renamed from: o  reason: collision with root package name */
    private Context f28748o;

    /* renamed from: p  reason: collision with root package name */
    private AccountBean f28749p;

    /* renamed from: q  reason: collision with root package name */
    com.join.mgps.rpc.b f28750q;
    @Extra

    /* renamed from: r  reason: collision with root package name */
    CloudBackupsCanUseBean f28751r;

    private void E0(CloudBackupsDataBean cloudBackupsDataBean, String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdir();
        }
        String str2 = str + File.separator + cloudBackupsDataBean.getGame_id() + ".zip";
        File file2 = new File(str2);
        if (file2.exists()) {
            UtilsMy.delete(file2);
        }
        try {
            URLConnection openConnection = new URL(cloudBackupsDataBean.getFile()).openConnection();
            openConnection.getContentLength();
            InputStream inputStream = openConnection.getInputStream();
            byte[] bArr = new byte[10240];
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.close();
                    inputStream.close();
                    CloudBackupsDataTable cloudBackupsDataTable = new CloudBackupsDataTable();
                    cloudBackupsDataTable.setDownFinish(true);
                    cloudBackupsDataTable.setFilePath(str2);
                    cloudBackupsDataTable.setGameId(cloudBackupsDataBean.getGame_id());
                    n1.h.o().m(cloudBackupsDataTable);
                    return;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0() {
        String str = com.join.mgps.pref.h.n(this.f28748o).g() + "recoverdata";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        this.f28749p = AccountUtil_.getInstance_(this.f28748o).getAccountData();
        AccountResultMainBean<CloudBackupsRecoverListBean> K = this.f28750q.K(this.f28749p.getUid() + "", this.f28749p.getToken(), this.f28751r.getRid());
        if (K == null || K.getError() != 0) {
            return;
        }
        for (CloudBackupsDataBean cloudBackupsDataBean : K.getData().getGame_list()) {
            String game_id = cloudBackupsDataBean.getGame_id();
            cloudBackupsDataBean.getFile();
            if (g1.f.G().B(game_id) == null) {
                E0(cloudBackupsDataBean, str);
                Intent intent = new Intent();
                intent.setAction(f1.a.f65494p);
                intent.putExtra("gameId", game_id);
                this.f28748o.sendBroadcast(intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f28750q = com.join.mgps.rpc.impl.a.b0();
        this.f28748o = this;
        F0();
    }
}
