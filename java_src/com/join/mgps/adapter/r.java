package com.join.mgps.adapter;

import android.app.Activity;
import android.app.Dialog;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.dto.DownloadCenterBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* compiled from: DownloadedCenterEmulatorAdapter.java */
/* loaded from: classes3.dex */
public class r extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    String f43424a;

    /* renamed from: b  reason: collision with root package name */
    Activity f43425b;

    /* renamed from: c  reason: collision with root package name */
    ListView f43426c;

    /* renamed from: d  reason: collision with root package name */
    k f43427d;

    /* renamed from: e  reason: collision with root package name */
    DownloadCenterBean f43428e;

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43429a;

        a(DownloadTask downloadTask) {
            this.f43429a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r.this.a(this.f43429a);
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43431a;

        b(DownloadTask downloadTask) {
            this.f43431a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(r.this.f43425b, this.f43431a);
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43433a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43434b;

        c(int i2, DownloadTask downloadTask) {
            this.f43433a = i2;
            this.f43434b = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k kVar = r.this.f43427d;
            if (kVar != null) {
                kVar.D(this.f43433a, this.f43434b);
            } else if (this.f43434b.getFileType() == null || !this.f43434b.getFileType().equals(Dtype.chajian.name())) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(r.this.f43425b, this.f43434b);
            }
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43436a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43437b;

        d(int i2, DownloadTask downloadTask) {
            this.f43436a = i2;
            this.f43437b = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k kVar = r.this.f43427d;
            if (kVar != null) {
                kVar.D(this.f43436a, this.f43437b);
            }
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class e implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43439a;

        /* compiled from: DownloadedCenterEmulatorAdapter.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Dialog f43441a;

            a(Dialog dialog) {
                this.f43441a = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f43441a.dismiss();
            }
        }

        /* compiled from: DownloadedCenterEmulatorAdapter.java */
        /* loaded from: classes3.dex */
        class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f43443a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Dialog f43444b;

            b(boolean z3, Dialog dialog) {
                this.f43443a = z3;
                this.f43444b = dialog;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f43443a) {
                    com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(r.this.f43425b);
                    e eVar = e.this;
                    if (g02.c(r.this.f43425b, eVar.f43439a.getPackageName())) {
                        com.join.android.app.common.utils.a g03 = com.join.android.app.common.utils.a.g0(r.this.f43425b);
                        e eVar2 = e.this;
                        g03.c0(r.this.f43425b, eVar2.f43439a.getPackageName());
                    } else {
                        e eVar3 = e.this;
                        r.this.a(eVar3.f43439a);
                        UtilsMy.C3(e.this.f43439a);
                        r.this.notifyDataSetChanged();
                    }
                } else {
                    e eVar4 = e.this;
                    r.this.a(eVar4.f43439a);
                    UtilsMy.C3(e.this.f43439a);
                    r.this.notifyDataSetChanged();
                }
                this.f43444b.dismiss();
            }
        }

        e(DownloadTask downloadTask) {
            this.f43439a = downloadTask;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            boolean z3;
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(r.this.f43425b, R.style.MyDialog);
            tVar.setContentView(R.layout.delete_center_dialog);
            Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
            TextView textView = (TextView) tVar.findViewById(R.id.dialog_content);
            ((TextView) tVar.findViewById(R.id.tip_title)).setText("删除游戏");
            String fileType = this.f43439a.getFileType();
            if (fileType != null && fileType.equals(Dtype.android.name())) {
                if (com.join.android.app.common.utils.a.g0(r.this.f43425b).c(r.this.f43425b, this.f43439a.getPackageName())) {
                    textView.setText("你确定要卸载该游戏？");
                    button.setText("卸载");
                } else {
                    textView.setText("你确定要删除该游戏？");
                    button.setText("删除");
                }
                z3 = true;
            } else {
                textView.setText("你确定要删除该游戏及文件？");
                button.setText("删除");
                z3 = false;
            }
            ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new a(tVar));
            button.setOnClickListener(new b(z3, tVar));
            tVar.show();
            return true;
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43446a;

        f(DownloadTask downloadTask) {
            this.f43446a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UtilsMy.y3(r.this.f43425b, this.f43446a.getCrc_link_type_val());
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(this.f43446a.getUrl());
            IntentUtil.getInstance().intentActivity(r.this.f43425b, intentDateBean);
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43448a;

        g(DownloadTask downloadTask) {
            this.f43448a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int status = this.f43448a.getStatus();
            if (status != 5) {
                if (status != 9) {
                    return;
                }
                HashMap hashMap = new HashMap();
                hashMap.put("tag_id", this.f43448a.getCrc_link_type_val());
                List<EMUApkTable> h4 = n1.p.o().h(hashMap);
                if (!com.join.android.app.common.utils.f.j(r.this.f43425b)) {
                    com.join.mgps.Util.i2.a(r.this.f43425b).b("无网络连接");
                    return;
                } else if (h4.size() > 0) {
                    UtilsMy.V0(h4.get(0), r.this.f43425b);
                    return;
                } else {
                    return;
                }
            }
            try {
                if (new File(this.f43448a.getGameZipPath()).exists()) {
                    if (com.join.android.app.common.utils.h.I(r.this.f43425b, this.f43448a, null)) {
                        UtilsMy.g2(this.f43448a, 5);
                    } else {
                        com.join.android.app.common.utils.a.g0(r.this.f43425b).v(r.this.f43425b, this.f43448a.getGameZipPath());
                    }
                } else if (UtilsMy.T0(r.this.f43425b, this.f43448a)) {
                } else {
                    if (this.f43448a.getDown_status() == 5) {
                        UtilsMy.R0(r.this.f43425b, this.f43448a);
                        return;
                    }
                    com.php25.PDownload.d.a(this.f43448a);
                    this.f43448a.setStatus(0);
                    if (UtilsMy.n0(this.f43448a.getPay_game_amount(), this.f43448a.getCrc_link_type_val()) > 0) {
                        UtilsMy.m3(r.this.f43425b, this.f43448a.getCrc_link_type_val());
                    } else if (UtilsMy.T0(r.this.f43425b, this.f43448a)) {
                    } else {
                        if (this.f43448a.getDown_status() == 5) {
                            UtilsMy.R0(r.this.f43425b, this.f43448a);
                            return;
                        }
                        Activity activity = r.this.f43425b;
                        DownloadTask downloadTask = this.f43448a;
                        UtilsMy.F0(activity, downloadTask, downloadTask.getTp_down_url(), this.f43448a.getOther_down_switch(), this.f43448a.getCdn_down_switch());
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43450a;

        h(DownloadTask downloadTask) {
            this.f43450a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f43450a;
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.l0(this.f43450a.getPay_game_amount(), this.f43450a.getCrc_link_type_val()) > 0) {
                status = 43;
            }
            if (status == 5) {
                UtilsMy.f3(r.this.f43425b, this.f43450a, "0");
                return;
            }
            EMUUpdateTable eMUUpdateTable = null;
            if (status != 9) {
                if (status == 11) {
                    UtilsMy.j3(this.f43450a, r.this.f43425b);
                } else if (status != 42) {
                    if (status != 43) {
                        return;
                    }
                    if (UtilsMy.n0(this.f43450a.getPay_game_amount(), this.f43450a.getCrc_link_type_val()) > 0) {
                        UtilsMy.m3(r.this.f43425b, this.f43450a.getCrc_link_type_val());
                    } else if (UtilsMy.T0(r.this.f43425b, this.f43450a)) {
                    } else {
                        if (this.f43450a.getDown_status() == 5) {
                            UtilsMy.R0(r.this.f43425b, this.f43450a);
                            return;
                        }
                        Activity activity = r.this.f43425b;
                        DownloadTask downloadTask2 = this.f43450a;
                        UtilsMy.F0(activity, downloadTask2, downloadTask2.getTp_down_url(), this.f43450a.getOther_down_switch(), this.f43450a.getCdn_down_switch());
                    }
                } else {
                    HashMap hashMap = new HashMap(1);
                    hashMap.put("crc_sign_id", this.f43450a.getCrc_link_type_val());
                    List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
                    if (h4 != null && h4.size() > 0) {
                        eMUUpdateTable = h4.get(0);
                    }
                    DownloadTask B = g1.f.G().B(this.f43450a.getCrc_link_type_val());
                    if (B != null) {
                        this.f43450a.setId(B.getId());
                    }
                    if (eMUUpdateTable != null) {
                        this.f43450a.setVer(eMUUpdateTable.getVer());
                        this.f43450a.setVer_name(eMUUpdateTable.getVer_name());
                        this.f43450a.setUrl(eMUUpdateTable.getDown_url_remote());
                        UtilsMy.w3(r.this.f43425b, this.f43450a);
                    }
                }
            } else if (!com.join.android.app.common.utils.f.j(r.this.f43425b)) {
                com.join.mgps.Util.i2.a(r.this.f43425b).b("无网络连接");
            } else {
                TextView textView = (TextView) ((RelativeLayout) view).findViewById(R.id.mgListviewItemInstall);
                HashMap hashMap2 = new HashMap(1);
                hashMap2.put("crc_sign_id", this.f43450a.getCrc_link_type_val());
                List<EMUUpdateTable> h5 = n1.q.o().h(hashMap2);
                if (h5 != null && h5.size() > 0) {
                    eMUUpdateTable = h5.get(0);
                }
                DownloadTask B2 = g1.f.G().B(this.f43450a.getCrc_link_type_val());
                if (B2 != null) {
                    this.f43450a.setId(B2.getId());
                }
                if (UtilsMy.T0(r.this.f43425b, this.f43450a)) {
                    return;
                }
                if (this.f43450a.getDown_status() == 5) {
                    UtilsMy.R0(r.this.f43425b, this.f43450a);
                    return;
                }
                r.this.b(this.f43450a);
                if (eMUUpdateTable != null) {
                    this.f43450a.setVer(eMUUpdateTable.getVer());
                    this.f43450a.setVer_name(eMUUpdateTable.getVer_name());
                    this.f43450a.setUrl(eMUUpdateTable.getDown_url_remote());
                    g1.f.G().m(this.f43450a);
                    UtilsMy.A0(g1.f.G().B(this.f43450a.getCrc_link_type_val()));
                    if (UtilsMy.n0(this.f43450a.getPay_game_amount(), this.f43450a.getCrc_link_type_val()) > 0) {
                        UtilsMy.m3(r.this.f43425b, this.f43450a.getCrc_link_type_val());
                    } else {
                        Activity activity2 = r.this.f43425b;
                        DownloadTask downloadTask3 = this.f43450a;
                        UtilsMy.F0(activity2, downloadTask3, downloadTask3.getTp_down_url(), this.f43450a.getOther_down_switch(), this.f43450a.getCdn_down_switch());
                    }
                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                    textView.setText("暂停");
                    textView.setTextColor(-12941854);
                }
            }
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43452a;

        i(DownloadTask downloadTask) {
            this.f43452a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.f.j(r.this.f43425b)) {
                com.join.mgps.Util.i2.a(r.this.f43425b).b("无网络连接");
                return;
            }
            int downloadType = this.f43452a.getDownloadType();
            if (downloadType != 0 && downloadType != 1) {
                if (downloadType != 2) {
                    return;
                }
                UtilsMy.z3(this.f43452a);
            } else if (UtilsMy.T0(r.this.f43425b, this.f43452a)) {
            } else {
                if (this.f43452a.getDown_status() == 5) {
                    UtilsMy.R0(r.this.f43425b, this.f43452a);
                    return;
                }
                TextView textView = (TextView) view;
                r.this.a(this.f43452a);
                EMUUpdateTable eMUUpdateTable = null;
                HashMap hashMap = new HashMap(1);
                hashMap.put("crc_sign_id", this.f43452a.getCrc_link_type_val());
                List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
                if (h4 != null && h4.size() > 0) {
                    eMUUpdateTable = h4.get(0);
                }
                if (eMUUpdateTable != null) {
                    this.f43452a.setVer(eMUUpdateTable.getVer());
                    this.f43452a.setVer_name(eMUUpdateTable.getVer_name());
                    this.f43452a.setUrl(eMUUpdateTable.getDown_url_remote());
                    if (UtilsMy.n0(this.f43452a.getPay_game_amount(), this.f43452a.getCrc_link_type_val()) > 0) {
                        UtilsMy.m3(r.this.f43425b, this.f43452a.getCrc_link_type_val());
                    } else {
                        Activity activity = r.this.f43425b;
                        DownloadTask downloadTask = this.f43452a;
                        UtilsMy.F0(activity, downloadTask, downloadTask.getTp_down_url(), this.f43452a.getOther_down_switch(), this.f43452a.getCdn_down_switch());
                    }
                    textView.setBackgroundResource(R.drawable.recom_blue_butn);
                    textView.setText("暂停");
                    textView.setTextColor(-12941854);
                }
            }
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f43454a;

        j(DownloadTask downloadTask) {
            this.f43454a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f43454a;
            if (downloadTask == null || downloadTask.getGameZipPath() == null) {
                return;
            }
            if (new File(this.f43454a.getGameZipPath()).exists()) {
                UtilsMy.f3(r.this.f43425b, this.f43454a, "0");
                String str = r.this.f43424a;
                return;
            }
            r.this.f43428e.getDownloadFiles().remove(this.f43454a);
            if (UtilsMy.n0(this.f43454a.getPay_game_amount(), this.f43454a.getCrc_link_type_val()) > 0) {
                UtilsMy.m3(r.this.f43425b, this.f43454a.getCrc_link_type_val());
            } else if (UtilsMy.T0(r.this.f43425b, this.f43454a)) {
            } else {
                if (this.f43454a.getDown_status() == 5) {
                    UtilsMy.R0(r.this.f43425b, this.f43454a);
                    return;
                }
                Activity activity = r.this.f43425b;
                DownloadTask downloadTask2 = this.f43454a;
                UtilsMy.F0(activity, downloadTask2, downloadTask2.getTp_down_url(), this.f43454a.getOther_down_switch(), this.f43454a.getCdn_down_switch());
            }
        }
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    public interface k {
        void D(int i2, DownloadTask downloadTask);
    }

    /* compiled from: DownloadedCenterEmulatorAdapter.java */
    /* loaded from: classes3.dex */
    class l {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f43456a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f43457b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f43458c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43459d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43460e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f43461f;

        /* renamed from: g  reason: collision with root package name */
        public LinearLayout f43462g;

        /* renamed from: h  reason: collision with root package name */
        public LinearLayout f43463h;

        /* renamed from: i  reason: collision with root package name */
        public LinearLayout f43464i;

        /* renamed from: j  reason: collision with root package name */
        RelativeLayout f43465j;

        /* renamed from: k  reason: collision with root package name */
        TextView f43466k;

        /* renamed from: l  reason: collision with root package name */
        public ImageView f43467l;

        /* renamed from: m  reason: collision with root package name */
        public ImageView f43468m;

        l() {
        }
    }

    public r(Activity activity, k kVar) {
        this.f43424a = getClass().getSimpleName();
        this.f43428e = new DownloadCenterBean();
        this.f43425b = activity;
        this.f43427d = kVar;
    }

    public void a(DownloadTask downloadTask) {
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name())) {
                UtilsMy.delete(new File(com.join.mgps.Util.u.f27856o, downloadTask.getPackageName()));
                UtilsMy.delete(new File(com.join.mgps.Util.u.f27857p, downloadTask.getPackageName()));
                UtilsMy.delete(new File(downloadTask.getGameZipPath()));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        Iterator<DownloadTask> it2 = this.f43428e.getDownloadFiles().iterator();
        while (it2.hasNext()) {
            if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
            }
        }
        notifyDataSetChanged();
    }

    public void b(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f43428e.getDownloadFiles().iterator();
        while (it2.hasNext()) {
            if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
            }
        }
        notifyDataSetChanged();
    }

    public DownloadCenterBean c() {
        return this.f43428e;
    }

    public ListView d() {
        return this.f43426c;
    }

    public void e(ListView listView) {
        this.f43426c = listView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43428e.getDownloadFiles().size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f43428e.getDownloadFiles().get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        l lVar;
        try {
            if (view == null) {
                lVar = new l();
                view2 = LayoutInflater.from(this.f43425b).inflate(R.layout.emulator_listview_download_center_history_two, (ViewGroup) null);
                try {
                    lVar.f43457b = (SimpleDraweeView) view2.findViewById(R.id.img);
                    lVar.f43458c = (ImageView) view2.findViewById(R.id.giftPackageSwitch);
                    lVar.f43459d = (TextView) view2.findViewById(R.id.name);
                    lVar.f43461f = (LinearLayout) view2.findViewById(R.id.status);
                    lVar.f43462g = (LinearLayout) view2.findViewById(R.id.dellGame);
                    lVar.f43466k = (TextView) view2.findViewById(R.id.mgListviewItemInstall);
                    lVar.f43465j = (RelativeLayout) view2.findViewById(R.id.rLayoutRight);
                    lVar.f43463h = (LinearLayout) view2.findViewById(R.id.more_layout);
                    lVar.f43464i = (LinearLayout) view2.findViewById(R.id.addtoDesk);
                    lVar.f43460e = (TextView) view2.findViewById(R.id.appInfo);
                    lVar.f43467l = (ImageView) view2.findViewById(R.id.notOpen);
                    lVar.f43468m = (ImageView) view2.findViewById(R.id.itemMoreIv);
                    lVar.f43456a = (LinearLayout) view2.findViewById(R.id.linearLayoutApp);
                    view2.setTag(lVar);
                } catch (Exception e4) {
                    e = e4;
                    e.printStackTrace();
                    return view2;
                }
            } else {
                lVar = (l) view.getTag();
                view2 = view;
            }
            if (i2 <= this.f43428e.getDownloadFiles().size()) {
                DownloadTask downloadTask = this.f43428e.getDownloadFiles().get(i2);
                downloadTask.set_from_type(127);
                try {
                    lVar.f43460e.setText(downloadTask.getDescribe());
                    Double.parseDouble(downloadTask.getShowSize());
                    if (downloadTask.getRomType() != null && downloadTask.getRomType().equals(Dtype.chajian.name()) && com.join.mgps.Util.d2.h(downloadTask.getPortraitURL())) {
                        lVar.f43457b.setImageResource(R.drawable.papa_chajian_icon);
                    } else {
                        MyImageLoader.h(lVar.f43457b, downloadTask.getPortraitURL());
                        UtilsMy.C(downloadTask.getScore(), downloadTask.getDown_count(), downloadTask.getShowSize(), downloadTask.getSp_tag_info(), downloadTask.getTipBeans(), lVar.f43461f, this.f43425b);
                    }
                    if (downloadTask.getGift_package_switch() == 1) {
                        lVar.f43458c.setVisibility(0);
                    } else {
                        lVar.f43458c.setVisibility(8);
                    }
                    lVar.f43459d.setText(downloadTask.getShowName());
                } catch (Exception unused) {
                }
                lVar.f43464i.setOnClickListener(new b(downloadTask));
                lVar.f43456a.setOnClickListener(new c(i2, downloadTask));
                if (this.f43427d != null) {
                    lVar.f43468m.setVisibility(0);
                    lVar.f43468m.setOnClickListener(new d(i2, downloadTask));
                }
                lVar.f43456a.setOnLongClickListener(new e(downloadTask));
                if (downloadTask.isOpen()) {
                    lVar.f43467l.setVisibility(8);
                } else {
                    lVar.f43467l.setVisibility(0);
                }
                if (downloadTask.getPlugin_num() != null) {
                    String plugin_num = downloadTask.getPlugin_num();
                    if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                        lVar.f43466k.setBackgroundResource(R.drawable.recom_blue_butn);
                        lVar.f43466k.setText("开始");
                        lVar.f43461f.setVisibility(8);
                        lVar.f43466k.setTextColor(this.f43425b.getResources().getColor(R.color.app_blue_color));
                        lVar.f43465j.setOnClickListener(new f(downloadTask));
                        lVar.f43462g.setOnClickListener(new a(downloadTask));
                    }
                }
                if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
                    lVar.f43461f.setVisibility(8);
                    if (com.join.mgps.Util.d2.h(downloadTask.getPortraitURL())) {
                        lVar.f43457b.setImageResource(R.drawable.papa_chajian_icon);
                    } else {
                        MyImageLoader.h(lVar.f43457b, downloadTask.getPortraitURL());
                        UtilsMy.C(downloadTask.getScore(), downloadTask.getDown_count(), downloadTask.getShowSize(), downloadTask.getSp_tag_info(), downloadTask.getTipBeans(), lVar.f43461f, this.f43425b);
                    }
                    lVar.f43460e.setText(Html.fromHtml(downloadTask.getDescribe()), TextView.BufferType.SPANNABLE);
                    int status = downloadTask.getStatus();
                    if (status == 5) {
                        lVar.f43466k.setBackgroundResource(R.drawable.recom_green_butn);
                        lVar.f43466k.setText("安装");
                        lVar.f43466k.setTextColor(-9263087);
                    } else if (status == 9) {
                        lVar.f43466k.setBackgroundResource(R.drawable.recom_green_butn);
                        lVar.f43466k.setText("更新");
                        lVar.f43466k.setTextColor(-9263087);
                    }
                    lVar.f43465j.setOnClickListener(new g(downloadTask));
                } else if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name())) {
                    lVar.f43461f.setVisibility(0);
                    int status2 = downloadTask.getStatus();
                    if (UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
                        status2 = 43;
                    }
                    if (status2 != 5) {
                        if (status2 == 9) {
                            lVar.f43466k.setBackgroundResource(R.drawable.recom_green_butn);
                            lVar.f43466k.setText("更新");
                            lVar.f43466k.setTextColor(-9263087);
                        } else if (status2 == 11) {
                            lVar.f43466k.setBackgroundResource(R.drawable.recom_green_butn);
                            lVar.f43466k.setText("安装");
                            lVar.f43466k.setTextColor(-9263087);
                        } else if (status2 == 48) {
                            lVar.f43466k.setBackgroundResource(R.drawable.recom_green_butn);
                            lVar.f43466k.setText("安装中");
                            lVar.f43466k.setTextColor(-9263087);
                        } else if (status2 != 42) {
                            if (status2 == 43) {
                                lVar.f43466k.setBackgroundResource(R.drawable.recom_blue_butn);
                                String string = this.f43425b.getResources().getString(R.string.download_status_purchase);
                                if (downloadTask.getPay_game_amount() > 0) {
                                    string = this.f43425b.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.d2.l(downloadTask.getPay_game_amount()));
                                }
                                lVar.f43466k.setText(string);
                                lVar.f43466k.setTextColor(this.f43425b.getResources().getColor(R.color.app_blue_color));
                            }
                        }
                        lVar.f43465j.setOnClickListener(new h(downloadTask));
                    }
                    lVar.f43466k.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    lVar.f43466k.setText(this.f43425b.getResources().getString(R.string.download_status_finished));
                    lVar.f43466k.setTextColor(-688602);
                    lVar.f43465j.setOnClickListener(new h(downloadTask));
                } else {
                    lVar.f43466k.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    lVar.f43466k.setText(this.f43425b.getResources().getString(R.string.download_status_finished));
                    lVar.f43466k.setTextColor(-688602);
                    if (downloadTask.getStatus() == 9) {
                        lVar.f43466k.setBackgroundResource(R.drawable.recom_green_butn);
                        lVar.f43466k.setText("更新");
                        lVar.f43466k.setTextColor(-9263087);
                        lVar.f43465j.setOnClickListener(new i(downloadTask));
                    } else {
                        lVar.f43465j.setOnClickListener(new j(downloadTask));
                    }
                    lVar.f43461f.setVisibility(0);
                }
                lVar.f43462g.setOnClickListener(new a(downloadTask));
            }
        } catch (Exception e5) {
            e = e5;
            view2 = view;
        }
        return view2;
    }

    public r(Activity activity) {
        this.f43424a = getClass().getSimpleName();
        this.f43428e = new DownloadCenterBean();
        this.f43425b = activity;
        this.f43427d = null;
    }
}
