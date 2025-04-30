package com.join.mgps.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DownloadUrlBean;
import java.util.ArrayList;
import java.util.Iterator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
@EActivity(R.layout.download_choice_url_layout)
/* loaded from: classes3.dex */
public class DownloadChoiceUrlDialog extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private Context f47324a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    ArrayList<DownloadUrlBean> f47325b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    DownloadTask f47326c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    boolean f47327d;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadChoiceUrlDialog.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ArrayList<DownloadUrlBean> arrayList = DownloadChoiceUrlDialog.this.f47325b;
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<DownloadUrlBean> it2 = DownloadChoiceUrlDialog.this.f47325b.iterator();
                while (it2.hasNext()) {
                    DownloadUrlBean next = it2.next();
                    if (next.getIs_confirm() == 1) {
                        DownloadChoiceUrlDialog.this.f47326c.setUrl(next.getDown_source_url());
                        DownloadChoiceUrlDialog downloadChoiceUrlDialog = DownloadChoiceUrlDialog.this;
                        com.php25.PDownload.d.c(downloadChoiceUrlDialog.f47326c, downloadChoiceUrlDialog.f47324a);
                    }
                }
            }
            DownloadChoiceUrlDialog.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadUrlBean f47330a;

        c(DownloadUrlBean downloadUrlBean) {
            this.f47330a = downloadUrlBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadChoiceUrlDialog.this.f47326c.setUrl(this.f47330a.getDown_source_url());
            DownloadChoiceUrlDialog downloadChoiceUrlDialog = DownloadChoiceUrlDialog.this;
            com.php25.PDownload.d.c(downloadChoiceUrlDialog.f47326c, downloadChoiceUrlDialog.f47324a);
            DownloadChoiceUrlDialog.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f47324a = this;
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.allpath);
        ((TextView) findViewById(R.id.titleText)).setText("选择下载源");
        ((TextView) findViewById(R.id.cancletext)).setOnClickListener(new a());
        ((TextView) findViewById(R.id.ok)).setOnClickListener(new b());
        if (this.f47325b != null) {
            LayoutInflater from = LayoutInflater.from(this);
            Iterator<DownloadUrlBean> it2 = this.f47325b.iterator();
            while (it2.hasNext()) {
                DownloadUrlBean next = it2.next();
                if (next.getDown_url_type() != 1 || this.f47327d) {
                    View inflate = from.inflate(R.layout.download_choice_item, (ViewGroup) null);
                    ((TextView) inflate.findViewById(R.id.downUrlName)).setText(next.getDown_source_name());
                    ((RelativeLayout) inflate.findViewById(R.id.localPathLayout)).setOnClickListener(new c(next));
                    linearLayout.addView(inflate);
                }
            }
        }
    }
}
