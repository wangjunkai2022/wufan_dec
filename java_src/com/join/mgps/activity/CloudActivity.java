package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CloudCreateInfo;
import com.join.mgps.dto.CloudInfo;
import com.join.mgps.dto.CloudStatus;
import com.join.mgps.dto.CloudUploadInfo;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.RomArchived;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.cloud)
/* loaded from: classes3.dex */
public class CloudActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ListView f28637a;

    /* renamed from: b  reason: collision with root package name */
    List<DownloadTask> f28638b;

    /* renamed from: c  reason: collision with root package name */
    List<CloudInfo> f28639c;

    /* renamed from: d  reason: collision with root package name */
    List<CloudInfo> f28640d;

    /* renamed from: e  reason: collision with root package name */
    i f28641e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    Button f28642f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f28643g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.rpc.k f28644h;

    /* renamed from: m  reason: collision with root package name */
    boolean f28649m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.dialog.z f28650n;

    /* renamed from: o  reason: collision with root package name */
    boolean f28651o;

    /* renamed from: q  reason: collision with root package name */
    int f28653q;

    /* renamed from: i  reason: collision with root package name */
    Map<Long, File> f28645i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    List<Long> f28646j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    Map<String, File> f28647k = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    int f28648l = 0;

    /* renamed from: p  reason: collision with root package name */
    int f28652p = 0;

    /* renamed from: r  reason: collision with root package name */
    boolean f28654r = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f28655a;

        a(ImageView imageView) {
            this.f28655a = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CloudActivity.this.f28649m) {
                this.f28655a.setImageResource(R.drawable.cloud_select_no);
            } else {
                this.f28655a.setImageResource(R.drawable.cloud_select_yes);
            }
            CloudActivity cloudActivity = CloudActivity.this;
            cloudActivity.f28649m = !cloudActivity.f28649m;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.v f28657a;

        b(com.join.mgps.dialog.v vVar) {
            this.f28657a = vVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f28657a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.v f28659a;

        c(com.join.mgps.dialog.v vVar) {
            this.f28659a = vVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudActivity cloudActivity = CloudActivity.this;
            com.join.mgps.Util.b2.j(cloudActivity, "showFirst", Boolean.valueOf(cloudActivity.f28649m));
            this.f28659a.dismiss();
            CloudActivity.this.P0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudActivity.this.f28654r = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudActivity.this.f28650n.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudActivity.this.f28650n.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements com.join.android.app.common.http.b {
        g() {
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object obj) {
            com.join.mgps.Util.t0.g("onFailed----------");
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object obj) {
            try {
                if (new JSONObject((String) obj).optJSONObject("data").optString("status").equals("ok")) {
                    CloudActivity.this.f28652p++;
                    com.join.mgps.Util.t0.g("ok------------" + CloudActivity.this.f28652p);
                    CloudActivity cloudActivity = CloudActivity.this;
                    cloudActivity.I0(cloudActivity.f28652p, cloudActivity.f28647k.size());
                    CloudActivity cloudActivity2 = CloudActivity.this;
                    if (cloudActivity2.f28652p == cloudActivity2.f28647k.size()) {
                        CloudActivity.this.uploadSuccess();
                    }
                }
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements com.join.android.app.common.http.b {
        h() {
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object obj) {
            System.out.println("onFailure--------------");
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object obj) {
            System.out.println("onSuccess--------------");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends BaseAdapter {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f28667a;

            a(int i2) {
                this.f28667a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CloudRomListActivity_.E0(CloudActivity.this).a(CloudActivity.this.f28639c.get(this.f28667a).getDownloadTask()).start();
            }
        }

        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f28669a;

            b(int i2) {
                this.f28669a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CloudInfo cloudInfo = CloudActivity.this.f28639c.get(this.f28669a);
                if (cloudInfo.isSelect()) {
                    cloudInfo.setSelect(false);
                    CloudActivity.this.f28648l--;
                } else {
                    cloudInfo.setSelect(true);
                    CloudActivity.this.f28648l++;
                }
                CloudActivity.this.O0();
            }
        }

        i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return CloudActivity.this.f28638b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return CloudActivity.this.f28638b.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(CloudActivity.this).inflate(R.layout.cloud_item, (ViewGroup) null);
            }
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(R.id.img);
            ((TextView) view.findViewById(R.id.name)).setText(CloudActivity.this.f28639c.get(i2).getDownloadTask().getShowName());
            ((TextView) view.findViewById(R.id.number)).setText("共" + CloudActivity.this.f28639c.get(i2).getRomArchivedNum() + "个存档，" + CloudActivity.this.f28638b.get(i2).getRomArchivedSize() + "MB");
            ImageView imageView = (ImageView) view.findViewById(R.id.select);
            ((LinearLayout) view.findViewById(R.id.main_lay)).setOnClickListener(new a(i2));
            if (CloudActivity.this.f28639c.get(i2).isSelect()) {
                imageView.setImageResource(R.drawable.cloud_select_yes);
            } else {
                imageView.setImageResource(R.drawable.cloud_select_no);
            }
            imageView.setOnClickListener(new b(i2));
            MyImageLoader.h(simpleDraweeView, CloudActivity.this.f28638b.get(i2).getPortraitURL());
            return view;
        }
    }

    /* loaded from: classes3.dex */
    public class j implements Comparator {
        public j() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            CloudInfo cloudInfo = (CloudInfo) obj;
            CloudInfo cloudInfo2 = (CloudInfo) obj2;
            if (cloudInfo.getDownloadTask().getFinishTime() > cloudInfo2.getDownloadTask().getFinishTime()) {
                return 1;
            }
            return cloudInfo.getDownloadTask().getFinishTime() == cloudInfo2.getDownloadTask().getFinishTime() ? 0 : -1;
        }
    }

    public String E0(int i2, int i4) {
        double d4 = i2;
        Double.isNaN(d4);
        double d5 = i4;
        Double.isNaN(d5);
        return new DecimalFormat("##%").format((d4 * 1.0d) / (d5 * 1.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        this.f28648l = 0;
        if (this.f28643g.getText().toString().trim().equals("选择")) {
            for (CloudInfo cloudInfo : this.f28639c) {
                cloudInfo.setSelect(true);
                this.f28648l++;
            }
            this.f28643g.setText("取消");
        } else if (this.f28643g.getText().toString().trim().equals("取消")) {
            for (CloudInfo cloudInfo2 : this.f28639c) {
                cloudInfo2.setSelect(false);
            }
            this.f28648l = 0;
            this.f28643g.setText("选择");
        }
        O0();
    }

    void G0() {
        this.f28651o = true;
        boolean booleanValue = com.join.mgps.Util.b2.f(this, "showFirst", Boolean.FALSE).booleanValue();
        this.f28649m = booleanValue;
        if (booleanValue) {
            com.join.mgps.dialog.v vVar = new com.join.mgps.dialog.v(this, R.style.MyDialog);
            vVar.show();
            TextView textView = (TextView) vVar.findViewById(R.id.cancel);
            TextView textView2 = (TextView) vVar.findViewById(R.id.ok);
            ImageView imageView = (ImageView) vVar.findViewById(R.id.cloud_select_img);
            if (this.f28649m) {
                imageView.setImageResource(R.drawable.cloud_select_yes);
            } else {
                imageView.setImageResource(R.drawable.cloud_select_no);
            }
            imageView.setOnClickListener(new a(imageView));
            textView.setOnClickListener(new b(vVar));
            textView2.setOnClickListener(new c(vVar));
            return;
        }
        P0();
    }

    void H0() {
        com.join.mgps.dialog.z zVar = new com.join.mgps.dialog.z(this, R.style.MyDialog);
        this.f28650n = zVar;
        zVar.show();
        this.f28650n.a("80%");
        this.f28650n.d("中断下载");
        this.f28650n.f("存档下载中，请勿中断网络");
        this.f28650n.c(R.drawable.cloud_progress_icon);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(int i2, int i4) {
        com.join.mgps.dialog.z zVar = this.f28650n;
        if (zVar == null || !zVar.isShowing()) {
            com.join.mgps.dialog.z zVar2 = new com.join.mgps.dialog.z(this, R.style.MyDialog);
            this.f28650n = zVar2;
            zVar2.show();
        }
        this.f28650n.a(E0(i2, i4));
        this.f28650n.d("中断备份");
        this.f28650n.f("存档备份中，请勿中断网络");
        this.f28650n.c(R.drawable.cloud_progress_icon);
        this.f28650n.e(new d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0(int i2, int i4) {
        com.join.mgps.dialog.z zVar = this.f28650n;
        if (zVar == null || !zVar.isShowing()) {
            com.join.mgps.dialog.z zVar2 = new com.join.mgps.dialog.z(this, R.style.MyDialog);
            this.f28650n = zVar2;
            zVar2.show();
        }
        this.f28650n.a(E0(i2, i4));
        this.f28650n.d("完成");
        com.join.mgps.dialog.z zVar3 = this.f28650n;
        zVar3.f("传输中断，已传输" + i2 + "个存档");
        this.f28650n.c(R.drawable.cloud_pass_icon_fail);
        this.f28650n.e(new e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        this.f28650n.b(8);
        this.f28650n.c(R.drawable.cloud_pass_icon_ok);
        this.f28650n.f("成功备份存档");
        this.f28650n.d("完成");
        this.f28650n.e(new f());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        if (this.f28651o) {
            return;
        }
        G0();
    }

    @Background
    public void M0(Context context, CloudUploadInfo cloudUploadInfo, File file) {
        if (file.exists()) {
            com.join.android.app.common.http.h.b().e(context, cloudUploadInfo, file, new h());
        }
    }

    void N0() {
        this.f28652p = 0;
        I0(0, this.f28647k.size());
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
        linkedMultiValueMap.add("token", AccountUtil_.getInstance_(getApplicationContext()).getToken());
        linkedMultiValueMap.add("brand_name", System.currentTimeMillis() + "");
        GameWorldResponse<CloudCreateInfo> f02 = this.f28644h.f0(linkedMultiValueMap);
        if (f02.getError() == 0) {
            CloudCreateInfo data = f02.getData();
            this.f28653q = data.getRid();
            for (String str : this.f28647k.keySet()) {
                if (this.f28654r) {
                    J0(this.f28652p, this.f28647k.size());
                    return;
                }
                CloudUploadInfo cloudUploadInfo = new CloudUploadInfo();
                cloudUploadInfo.setUid(Integer.parseInt(AccountUtil_.getInstance_(getApplicationContext()).getUid()));
                cloudUploadInfo.setRid(data.getRid());
                cloudUploadInfo.setToken(AccountUtil_.getInstance_(getApplicationContext()).getToken());
                cloudUploadInfo.setGame_id(str);
                com.join.android.app.common.http.h.b().e(this, cloudUploadInfo, this.f28647k.get(str), new g());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        this.f28641e.notifyDataSetChanged();
        int i2 = 0;
        if (this.f28648l == 0) {
            this.f28642f.setEnabled(false);
            this.f28642f.setText("未选中任何存档");
            return;
        }
        this.f28642f.setEnabled(true);
        for (CloudInfo cloudInfo : this.f28639c) {
            if (cloudInfo.isSelect()) {
                i2++;
            }
        }
        Button button = this.f28642f;
        button.setText("备份存档（已选中" + i2 + "款游戏)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P0() {
        this.f28640d.clear();
        for (CloudInfo cloudInfo : this.f28639c) {
            if (cloudInfo.isSelect()) {
                this.f28640d.add(cloudInfo);
            }
        }
        this.f28647k.clear();
        for (CloudInfo cloudInfo2 : this.f28640d) {
            DownloadTask downloadTask = cloudInfo2.getDownloadTask();
            List<RomArchived> l4 = com.join.mgps.Util.f0.l(downloadTask.getPlugin_num(), downloadTask.getGameZipPath());
            ArrayList arrayList = new ArrayList();
            File file = null;
            for (RomArchived romArchived : l4) {
                File file2 = new File(romArchived.getArchivedPath());
                File file3 = new File(romArchived.getArchivedImagePath());
                if (!this.f28646j.contains(Long.valueOf(com.join.mgps.Util.m.a(file2)))) {
                    arrayList.add(file2);
                    arrayList.add(file3);
                }
                if (file == null) {
                    file = new File(file2.getParent() + File.separator + file2.getParentFile().getName() + ".zip");
                }
            }
            if (file != null) {
                if (file.exists()) {
                    file.delete();
                }
                try {
                    if (arrayList.size() > 0) {
                        com.join.mgps.Util.s2.n(arrayList, file, "");
                        this.f28647k.put(downloadTask.getCrc_link_type_val(), file);
                    }
                    N0();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }
        this.f28651o = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f28644h = com.join.mgps.rpc.impl.k.n0();
        O0();
        this.f28640d = new ArrayList();
        this.f28639c = new ArrayList();
        this.f28638b = g1.f.G().u();
        for (int i2 = 0; i2 < this.f28638b.size(); i2++) {
            DownloadTask downloadTask = this.f28638b.get(i2);
            CloudInfo cloudInfo = new CloudInfo();
            cloudInfo.setDownloadTask(downloadTask);
            List<RomArchived> l4 = com.join.mgps.Util.f0.l(downloadTask.getPlugin_num(), downloadTask.getGameZipPath());
            cloudInfo.setRomArchiveds(l4);
            cloudInfo.setRomArchivedNum(l4.size());
            long j4 = 0;
            for (RomArchived romArchived : l4) {
                j4 += romArchived.getSize();
            }
            cloudInfo.setRomArchivedSize(j4);
            this.f28639c.add(cloudInfo);
        }
        Collections.sort(this.f28639c, new j());
        i iVar = new i();
        this.f28641e = iVar;
        this.f28637a.setAdapter((ListAdapter) iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void uploadSuccess() {
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
        linkedMultiValueMap.add("token", AccountUtil_.getInstance_(getApplicationContext()).getToken());
        linkedMultiValueMap.add("rid", this.f28653q + "");
        CloudStatus data = this.f28644h.V(linkedMultiValueMap).getData();
        if (data.getStatus().equals("ok")) {
            K0();
        }
        com.join.mgps.Util.t0.g("status----" + data.getStatus());
    }
}
