package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.l6;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.UploadDialogBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.UpLoadGameConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.upload_layout)
/* loaded from: classes3.dex */
public class UploadActivity extends BaseActivity {
    private static final String G = Environment.getExternalStorageDirectory().getPath() + "/wufan91/upload";
    private static final String H = Environment.getExternalStorageDirectory().getPath() + "/wufan91/upload/img";
    @Pref
    static PrefDef_ I = null;
    public static final int J = 0;
    public static final int K = 1;

    /* renamed from: n0  reason: collision with root package name */
    public static final int f36006n0 = -1;

    /* renamed from: o0  reason: collision with root package name */
    public static final String f36007o0 = "upload";

    /* renamed from: p0  reason: collision with root package name */
    public static final String f36008p0 = "upload_result";
    @ViewById
    LinearLayout A;
    @ViewById
    LinearLayout B;
    @ViewById
    LinearLayout C;
    @ViewById
    TextView D;
    @ViewById
    TextView E;
    @ViewById
    TextView F;

    /* renamed from: a  reason: collision with root package name */
    private File f36009a;

    /* renamed from: b  reason: collision with root package name */
    List<UploadDialogBean> f36010b;

    /* renamed from: c  reason: collision with root package name */
    List<UploadDialogBean> f36011c;

    /* renamed from: d  reason: collision with root package name */
    UploadDialogBean f36012d;

    /* renamed from: e  reason: collision with root package name */
    UploadDialogBean f36013e;

    /* renamed from: f  reason: collision with root package name */
    c f36014f;

    /* renamed from: g  reason: collision with root package name */
    b f36015g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f36016h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f36017i;

    /* renamed from: j  reason: collision with root package name */
    File f36018j;

    /* renamed from: k  reason: collision with root package name */
    File f36019k;

    /* renamed from: l  reason: collision with root package name */
    File f36020l;

    /* renamed from: m  reason: collision with root package name */
    File f36021m;

    /* renamed from: n  reason: collision with root package name */
    File f36022n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f36023o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f36024p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    SimpleDraweeView f36025q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    SimpleDraweeView f36026r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    SimpleDraweeView f36027s;

    /* renamed from: t  reason: collision with root package name */
    File f36028t;

    /* renamed from: u  reason: collision with root package name */
    File f36029u;

    /* renamed from: v  reason: collision with root package name */
    UpLoadGameConfig f36030v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    EditText f36031w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    EditText f36032x;
    @Extra

    /* renamed from: y  reason: collision with root package name */
    AccountBean f36033y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    ScrollView f36034z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.android.app.common.http.b {
        a() {
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object obj) {
            System.out.println("onFailure--------------");
            if (UploadActivity.I.upLoadState().d().equals(1)) {
                UploadActivity.I.upLoadState().g(-1);
                Intent intent = new Intent(UploadActivity.f36007o0);
                intent.putExtra("upload_result", -1);
                UploadActivity.this.sendBroadcast(intent);
            }
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object obj) {
            System.out.println("onSuccess--------------");
            if (UploadActivity.I.upLoadState().d().equals(1)) {
                UploadActivity.I.upLoadState().g(0);
                UploadActivity.I.upLoadConfig().i();
                File file = new File(UploadActivity.I.upLoadFileName().d());
                if (file.exists()) {
                    file.delete();
                }
                UploadActivity.I.upLoadFileName().i();
                Intent intent = new Intent(UploadActivity.f36007o0);
                intent.putExtra("upload_result", 0);
                UploadActivity.this.sendBroadcast(intent);
                UploadActivity.this.Y0();
            }
        }
    }

    private boolean F0() {
        if (TextUtils.isEmpty(this.f36031w.getText().toString())) {
            com.join.mgps.Util.i2.a(this).b("游戏名称不能为空");
            return false;
        } else if (this.f36012d == null) {
            com.join.mgps.Util.i2.a(this).b("游戏分类不能为空");
            return false;
        } else if (this.f36013e == null) {
            com.join.mgps.Util.i2.a(this).b("平台类型不能为空");
            return false;
        } else if (this.f36018j == null) {
            com.join.mgps.Util.i2.a(this).b("请选择游戏");
            return false;
        } else if (this.f36019k == null) {
            com.join.mgps.Util.i2.a(this).b("请选择图标");
            return false;
        } else if (this.f36020l == null) {
            com.join.mgps.Util.i2.a(this).b("请选择截图");
            return false;
        } else if (TextUtils.isEmpty(this.f36032x.getText().toString())) {
            com.join.mgps.Util.i2.a(this).b("游戏说明不能为空");
            return false;
        } else {
            return true;
        }
    }

    private boolean H0(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    fileOutputStream.close();
                    return true;
                }
            }
        } catch (IOException unused) {
            return false;
        }
    }

    private boolean I0(File file) {
        if (file.isDirectory()) {
            for (String str : file.list()) {
                if (!I0(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    private String M0() {
        String str = ".zip";
        try {
            if (!TextUtils.isEmpty(this.f36031w.getText().toString().trim())) {
                str = this.f36031w.getText().toString().trim() + "-" + this.f36033y.getAccount() + "-" + System.currentTimeMillis() + ".zip";
            } else {
                String[] split = I.upLoadConfig().d().split(m.a.f72566d);
                str = split[2] + "-" + this.f36033y.getAccount() + "-" + System.currentTimeMillis() + ".zip";
            }
        } catch (Exception unused) {
            str = this.f36033y.getAccount() + "-" + System.currentTimeMillis() + str;
        }
        return Environment.getExternalStorageDirectory().getPath() + "/wufan91/upload/" + str;
    }

    private void Q0() {
        this.f36011c = new ArrayList();
        UploadDialogBean uploadDialogBean = new UploadDialogBean();
        Boolean bool = Boolean.FALSE;
        uploadDialogBean.setIsSelect(bool);
        uploadDialogBean.setName("街机");
        uploadDialogBean.setCode(31);
        this.f36011c.add(uploadDialogBean);
        UploadDialogBean uploadDialogBean2 = new UploadDialogBean();
        uploadDialogBean2.setIsSelect(bool);
        uploadDialogBean2.setName("gba");
        uploadDialogBean2.setCode(33);
        this.f36011c.add(uploadDialogBean2);
        UploadDialogBean uploadDialogBean3 = new UploadDialogBean();
        uploadDialogBean3.setIsSelect(bool);
        uploadDialogBean3.setName("psp");
        uploadDialogBean3.setCode(34);
        this.f36011c.add(uploadDialogBean3);
        UploadDialogBean uploadDialogBean4 = new UploadDialogBean();
        uploadDialogBean4.setIsSelect(bool);
        uploadDialogBean4.setName("fc");
        uploadDialogBean4.setCode(35);
        this.f36011c.add(uploadDialogBean4);
        UploadDialogBean uploadDialogBean5 = new UploadDialogBean();
        uploadDialogBean5.setIsSelect(bool);
        uploadDialogBean5.setName("nds");
        uploadDialogBean5.setCode(32);
        this.f36011c.add(uploadDialogBean5);
        UploadDialogBean uploadDialogBean6 = new UploadDialogBean();
        uploadDialogBean6.setIsSelect(bool);
        uploadDialogBean6.setName("sfc");
        uploadDialogBean6.setCode(43);
        this.f36011c.add(uploadDialogBean6);
        UploadDialogBean uploadDialogBean7 = new UploadDialogBean();
        uploadDialogBean7.setIsSelect(bool);
        uploadDialogBean7.setName(q.a.f73954a);
        uploadDialogBean7.setCode(46);
        this.f36011c.add(uploadDialogBean7);
        UploadDialogBean uploadDialogBean8 = new UploadDialogBean();
        uploadDialogBean8.setIsSelect(bool);
        uploadDialogBean8.setName("md");
        uploadDialogBean8.setCode(51);
        this.f36011c.add(uploadDialogBean8);
    }

    private void R0() {
        this.f36010b = new ArrayList();
        UploadDialogBean uploadDialogBean = new UploadDialogBean();
        Boolean bool = Boolean.FALSE;
        uploadDialogBean.setIsSelect(bool);
        uploadDialogBean.setName("格斗游戏");
        uploadDialogBean.setCode(18);
        this.f36010b.add(uploadDialogBean);
        UploadDialogBean uploadDialogBean2 = new UploadDialogBean();
        uploadDialogBean2.setIsSelect(bool);
        uploadDialogBean2.setName("策略游戏");
        uploadDialogBean2.setCode(19);
        this.f36010b.add(uploadDialogBean2);
        UploadDialogBean uploadDialogBean3 = new UploadDialogBean();
        uploadDialogBean3.setIsSelect(bool);
        uploadDialogBean3.setName("角色扮演");
        uploadDialogBean3.setCode(20);
        this.f36010b.add(uploadDialogBean3);
        UploadDialogBean uploadDialogBean4 = new UploadDialogBean();
        uploadDialogBean4.setIsSelect(bool);
        uploadDialogBean4.setName("竞速游戏");
        uploadDialogBean4.setCode(21);
        this.f36010b.add(uploadDialogBean4);
        UploadDialogBean uploadDialogBean5 = new UploadDialogBean();
        uploadDialogBean5.setIsSelect(bool);
        uploadDialogBean5.setName("体育游戏");
        uploadDialogBean5.setCode(22);
        this.f36010b.add(uploadDialogBean5);
        UploadDialogBean uploadDialogBean6 = new UploadDialogBean();
        uploadDialogBean6.setIsSelect(bool);
        uploadDialogBean6.setName("休闲益智");
        uploadDialogBean6.setCode(23);
        this.f36010b.add(uploadDialogBean6);
        UploadDialogBean uploadDialogBean7 = new UploadDialogBean();
        uploadDialogBean7.setIsSelect(bool);
        uploadDialogBean7.setName("动作游戏");
        uploadDialogBean7.setCode(24);
        this.f36010b.add(uploadDialogBean7);
        UploadDialogBean uploadDialogBean8 = new UploadDialogBean();
        uploadDialogBean8.setIsSelect(bool);
        uploadDialogBean8.setName("射击飞行");
        uploadDialogBean8.setCode(25);
        this.f36010b.add(uploadDialogBean8);
    }

    private boolean S0(File file) {
        return new BigDecimal(file.length()).divide(new BigDecimal(1048576), 2, 0).floatValue() <= 2.0f;
    }

    private boolean T0(String str) {
        return str.contains("jpg") || str.contains("png");
    }

    private void V0() {
        File file = new File(H);
        this.f36028t = file;
        if (file.exists()) {
            I0(this.f36028t);
        }
        this.f36028t.mkdirs();
        File file2 = this.f36019k;
        if (file2 != null && file2.exists()) {
            if (this.f36019k.getName().contains("png")) {
                File file3 = this.f36019k;
                H0(file3, new File(this.f36028t.getAbsolutePath() + "/icon.png"));
            } else if (this.f36019k.getName().contains("jpg")) {
                File file4 = this.f36019k;
                H0(file4, new File(this.f36028t.getAbsolutePath() + "/icon.jpg"));
            }
        }
        File file5 = this.f36020l;
        if (file5 != null && file5.exists()) {
            if (this.f36020l.getName().contains("png")) {
                File file6 = this.f36020l;
                H0(file6, new File(this.f36028t.getAbsolutePath() + "/img_1.png"));
            } else if (this.f36019k.getName().contains("jpg")) {
                File file7 = this.f36020l;
                H0(file7, new File(this.f36028t.getAbsolutePath() + "/img_1.jpg"));
            }
        }
        File file8 = this.f36021m;
        if (file8 != null && file8.exists()) {
            if (this.f36021m.getName().contains("png")) {
                File file9 = this.f36021m;
                H0(file9, new File(this.f36028t.getAbsolutePath() + "/img_2.png"));
            } else if (this.f36019k.getName().contains("jpg")) {
                File file10 = this.f36021m;
                H0(file10, new File(this.f36028t.getAbsolutePath() + "/img_2.jpg"));
            }
        }
        File file11 = this.f36022n;
        if (file11 == null || !file11.exists()) {
            return;
        }
        if (this.f36022n.getName().contains("png")) {
            File file12 = this.f36022n;
            H0(file12, new File(this.f36028t.getAbsolutePath() + "/img_3.png"));
        } else if (this.f36019k.getName().contains("jpg")) {
            File file13 = this.f36022n;
            H0(file13, new File(this.f36028t.getAbsolutePath() + "/img_3.jpg"));
        }
    }

    private void init() {
        R0();
        Q0();
        c cVar = new c(this);
        this.f36014f = cVar;
        cVar.a(this.f36010b);
        this.f36014f.b("选择游戏分类");
        b bVar = new b(this);
        this.f36015g = bVar;
        bVar.a(this.f36011c);
        this.f36015g.b("选择游戏平台");
        this.f36030v = new UpLoadGameConfig();
        I.upLoadConfig().i();
        File file = new File(I.upLoadFileName().d());
        if (file.exists()) {
            file.delete();
        }
        I.upLoadFileName().i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            I.upLoadGame().i();
            this.C.setVisibility(8);
            this.f36034z.setVisibility(0);
            init();
            return;
        }
        com.join.mgps.Util.i2.a(this).b("网络异常");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        startActivityForResult(new Intent(this, SDCardFileExplorerActivity_.class), 100);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        N0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        this.f36014f.show();
    }

    public void N0() {
        Intent intent = new Intent(this, MyAlbumActivity.class);
        intent.putExtra("MAX_PICK_SIZE", 1);
        startActivityForResult(intent, 200);
    }

    public void O0() {
        Intent intent = new Intent(this, MyAlbumActivity.class);
        intent.putExtra("MAX_PICK_SIZE", 3);
        startActivityForResult(intent, 300);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        O0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        this.f36015g.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            I.upLoadGame().i();
            this.C.setVisibility(8);
            this.B.setVisibility(8);
            this.A.setVisibility(8);
            this.f36034z.setVisibility(0);
            init();
            return;
        }
        com.join.mgps.Util.i2.a(this).b("网络异常");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                File file = new File(I.upLoadFileName().d());
                String[] split = I.upLoadConfig().d().split(m.a.f72566d);
                UpLoadGameConfig upLoadGameConfig = new UpLoadGameConfig();
                upLoadGameConfig.setUid(Integer.parseInt(split[0]));
                upLoadGameConfig.setToken(split[1]);
                upLoadGameConfig.setGame_name(split[2]);
                upLoadGameConfig.setGame_type(Integer.parseInt(split[3]));
                upLoadGameConfig.setGame_platform_type(Integer.parseInt(split[4]));
                upLoadGameConfig.setGame_explain(split[5]);
                a1(this, upLoadGameConfig, file);
                com.join.mgps.Util.i2.a(this).b("开始上传");
                I.upLoadState().g(1);
            } catch (Exception unused) {
                com.join.mgps.Util.i2.a(this).b("上传失败");
                I.upLoadState().g(0);
            }
            finish();
            return;
        }
        com.join.mgps.Util.i2.a(this).b("网络异常");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0() {
        Toast.makeText(getApplicationContext(), "上传完成", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        try {
            com.join.android.app.common.http.h.b().a(this.f36029u.getName());
            I.upLoadState().g(-1);
            Intent intent = new Intent(f36007o0);
            intent.putExtra("upload_result", 1);
            sendBroadcast(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Background
    public void a1(Context context, UpLoadGameConfig upLoadGameConfig, File file) {
        if (file.exists()) {
            com.join.android.app.common.http.h.b().g(context, upLoadGameConfig, file, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        if (I.upLoadState().d().intValue() == 0) {
            String d4 = I.upLoadGame().d();
            if (TextUtils.isEmpty(d4)) {
                this.f36034z.setVisibility(0);
                init();
                return;
            }
            this.C.setVisibility(0);
            TextView textView = this.F;
            textView.setText("游戏 " + d4 + " 已上传成功，感谢分享");
        } else if (I.upLoadState().d().intValue() == 1) {
            this.A.setVisibility(0);
            TextView textView2 = this.D;
            textView2.setText("你的游戏 " + I.upLoadGame().d() + " 正在上传中");
        } else if (I.upLoadState().d().intValue() == -1) {
            File file = new File(I.upLoadFileName().d());
            String d5 = I.upLoadConfig().d();
            if (file.exists() && !TextUtils.isEmpty(d5)) {
                this.B.setVisibility(0);
                TextView textView3 = this.E;
                textView3.setText("你的游戏 " + I.upLoadGame().d() + " 上传已中止");
                return;
            }
            I.upLoadState().g(0);
            this.f36034z.setVisibility(0);
            init();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1() {
        com.join.mgps.Util.i2.a(this).b("开始上传");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f36007o0}, registerAt = Receiver.RegisterAt.OnResumeOnPause)
    public void c1(@Receiver.Extra("upload_result") int i2) {
        if (i2 == 0) {
            g1();
        } else if (i2 == -1) {
            f1();
        } else if (i2 == 1) {
            f1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d1() {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (F0()) {
                h1();
                b1();
                return;
            }
            return;
        }
        com.join.mgps.Util.i2.a(this).b("网络异常");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e1() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(8);
        intentDateBean.setLink_type_val("12449");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1() {
        this.f36034z.setVisibility(8);
        this.A.setVisibility(8);
        this.B.setVisibility(8);
        this.C.setVisibility(8);
        File file = new File(I.upLoadFileName().d());
        String d4 = I.upLoadConfig().d();
        if (file.exists() && !TextUtils.isEmpty(d4)) {
            this.B.setVisibility(0);
            TextView textView = this.E;
            textView.setText("你的游戏 " + I.upLoadGame().d() + " 上传已终止");
            return;
        }
        I.upLoadState().g(0);
        this.f36034z.setVisibility(0);
        init();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1() {
        this.C.setVisibility(0);
        this.f36034z.setVisibility(8);
        this.A.setVisibility(8);
        this.B.setVisibility(8);
        TextView textView = this.F;
        textView.setText("游戏 " + I.upLoadGame().d() + " 已上传成功，感谢分享");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void h1() {
        this.f36030v.setUid(this.f36033y.getUid());
        this.f36030v.setToken(this.f36033y.getToken());
        this.f36030v.setGame_name(this.f36031w.getText().toString());
        this.f36030v.setGame_type(this.f36012d.getCode());
        this.f36030v.setGame_platform_type(this.f36013e.getCode());
        this.f36030v.setGame_explain(this.f36032x.getText().toString());
        V0();
        String M0 = M0();
        File file = new File(M0);
        this.f36029u = file;
        if (file.exists()) {
            this.f36029u.delete();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f36018j);
        arrayList.add(this.f36028t);
        I.upLoadFileName().g(M0);
        if (I.upLoadState().d().intValue() != 1) {
            I.upLoadState().g(1);
            I.upLoadGame().g(this.f36031w.getText().toString());
            I.upLoadConfig().i();
            if (this.f36030v != null) {
                I.upLoadConfig().g(this.f36030v.toString());
            }
            try {
                com.join.mgps.Util.s2.m(arrayList, this.f36029u, "");
                a1(this, this.f36030v, this.f36029u);
            } catch (IOException unused) {
                I.upLoadState().g(-1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        ArrayList<String> stringArrayListExtra;
        ArrayList<String> stringArrayListExtra2;
        super.onActivityResult(i2, i4, intent);
        if (i4 == 100) {
            File file = (File) intent.getSerializableExtra("srcFile");
            this.f36018j = file;
            this.f36023o.setText(file.getName());
        } else if (i2 == 200) {
            if (intent == null || (stringArrayListExtra2 = intent.getStringArrayListExtra(MyAlbumActivity.f17332w)) == null || stringArrayListExtra2.size() <= 0) {
                return;
            }
            if (T0(stringArrayListExtra2.get(0))) {
                File file2 = new File(stringArrayListExtra2.get(0));
                this.f36019k = file2;
                this.f36024p.setText(file2.getName());
                return;
            }
            com.join.mgps.Util.i2.a(this).b("请选择PNG或JPG格式图片");
        } else if (i2 != 300 || intent == null || (stringArrayListExtra = intent.getStringArrayListExtra(MyAlbumActivity.f17332w)) == null || stringArrayListExtra.size() <= 0) {
        } else {
            if (stringArrayListExtra.size() == 1) {
                if (T0(stringArrayListExtra.get(0))) {
                    this.f36025q.setVisibility(0);
                    this.f36026r.setVisibility(8);
                    this.f36027s.setVisibility(8);
                    File file3 = new File(stringArrayListExtra.get(0));
                    this.f36020l = file3;
                    this.f36021m = null;
                    this.f36022n = null;
                    if (S0(file3)) {
                        MyImageLoader.h(this.f36025q, stringArrayListExtra.get(0));
                        return;
                    }
                    com.join.mgps.Util.i2.a(this).b("为了你的流量，上传图片不能超过2M哦");
                    this.f36020l.delete();
                    this.f36020l = null;
                    return;
                }
                com.join.mgps.Util.i2.a(this).b("请选择PNG或JPG格式图片");
            } else if (stringArrayListExtra.size() == 2) {
                if (T0(stringArrayListExtra.get(0)) && T0(stringArrayListExtra.get(1))) {
                    this.f36025q.setVisibility(0);
                    this.f36026r.setVisibility(0);
                    this.f36027s.setVisibility(8);
                    this.f36020l = new File(stringArrayListExtra.get(0));
                    this.f36021m = new File(stringArrayListExtra.get(1));
                    this.f36022n = null;
                    if (S0(this.f36020l) && S0(this.f36021m)) {
                        MyImageLoader.h(this.f36025q, stringArrayListExtra.get(0));
                        MyImageLoader.h(this.f36026r, stringArrayListExtra.get(1));
                        return;
                    }
                    com.join.mgps.Util.i2.a(this).b("为了你的流量，上传图片不能超过2M哦");
                    this.f36020l.delete();
                    this.f36021m.delete();
                    this.f36020l = null;
                    this.f36021m = null;
                    return;
                }
                com.join.mgps.Util.i2.a(this).b("请选择PNG或JPG格式图片");
            } else if (stringArrayListExtra.size() >= 3) {
                if (T0(stringArrayListExtra.get(0)) && T0(stringArrayListExtra.get(1)) && T0(stringArrayListExtra.get(2))) {
                    this.f36025q.setVisibility(0);
                    this.f36026r.setVisibility(0);
                    this.f36027s.setVisibility(0);
                    this.f36020l = new File(stringArrayListExtra.get(0));
                    this.f36021m = new File(stringArrayListExtra.get(1));
                    this.f36022n = new File(stringArrayListExtra.get(2));
                    if (S0(this.f36020l) && S0(this.f36021m) && S0(this.f36022n)) {
                        MyImageLoader.h(this.f36025q, stringArrayListExtra.get(0));
                        MyImageLoader.h(this.f36026r, stringArrayListExtra.get(1));
                        MyImageLoader.h(this.f36027s, stringArrayListExtra.get(2));
                        return;
                    }
                    com.join.mgps.Util.i2.a(this).b("为了你的流量，上传图片不能超过2M哦");
                    this.f36020l.delete();
                    this.f36021m.delete();
                    this.f36022n.delete();
                    this.f36020l = null;
                    this.f36021m = null;
                    this.f36022n = null;
                    return;
                }
                com.join.mgps.Util.i2.a(this).b("请选择PNG或JPG格式图片");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends Dialog {

        /* renamed from: a  reason: collision with root package name */
        ListView f36036a;

        /* renamed from: b  reason: collision with root package name */
        Context f36037b;

        /* renamed from: c  reason: collision with root package name */
        l6 f36038c;

        /* renamed from: d  reason: collision with root package name */
        TextView f36039d;

        /* renamed from: e  reason: collision with root package name */
        UploadDialogBean f36040e;

        /* loaded from: classes3.dex */
        class a implements AdapterView.OnItemClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UploadActivity f36042a;

            a(UploadActivity uploadActivity) {
                this.f36042a = uploadActivity;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
                UploadDialogBean uploadDialogBean = (UploadDialogBean) adapterView.getItemAtPosition(i2);
                uploadDialogBean.setIsSelect(Boolean.TRUE);
                UploadDialogBean uploadDialogBean2 = UploadActivity.this.f36013e;
                if (uploadDialogBean2 != null) {
                    uploadDialogBean2.setIsSelect(Boolean.FALSE);
                }
                b.this.f36038c.notifyDataSetChanged();
                UploadActivity uploadActivity = UploadActivity.this;
                uploadActivity.f36013e = uploadDialogBean;
                uploadActivity.f36017i.setText(uploadDialogBean.getName());
                b.this.dismiss();
            }
        }

        public b(Context context) {
            super(context, R.style.dialog_error);
            this.f36037b = context;
            View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_upload, (ViewGroup) null);
            setContentView(inflate);
            ListView listView = (ListView) inflate.findViewById(R.id.listView);
            this.f36036a = listView;
            listView.setOnItemClickListener(new a(UploadActivity.this));
            this.f36039d = (TextView) inflate.findViewById(R.id.name);
            setCancelable(true);
            setCanceledOnTouchOutside(true);
        }

        public void a(List<UploadDialogBean> list) {
            l6 l6Var = new l6(this.f36037b, list);
            this.f36038c = l6Var;
            this.f36036a.setAdapter((ListAdapter) l6Var);
        }

        public void b(String str) {
            this.f36039d.setText(str);
        }

        public b(Context context, int i2) {
            super(context, i2);
            this.f36037b = context;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends Dialog {

        /* renamed from: a  reason: collision with root package name */
        ListView f36044a;

        /* renamed from: b  reason: collision with root package name */
        Context f36045b;

        /* renamed from: c  reason: collision with root package name */
        l6 f36046c;

        /* renamed from: d  reason: collision with root package name */
        TextView f36047d;

        /* renamed from: e  reason: collision with root package name */
        UploadDialogBean f36048e;

        /* loaded from: classes3.dex */
        class a implements AdapterView.OnItemClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UploadActivity f36050a;

            a(UploadActivity uploadActivity) {
                this.f36050a = uploadActivity;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
                UploadDialogBean uploadDialogBean = (UploadDialogBean) adapterView.getItemAtPosition(i2);
                uploadDialogBean.setIsSelect(Boolean.TRUE);
                UploadDialogBean uploadDialogBean2 = UploadActivity.this.f36012d;
                if (uploadDialogBean2 != null) {
                    uploadDialogBean2.setIsSelect(Boolean.FALSE);
                }
                c.this.f36046c.notifyDataSetChanged();
                UploadActivity uploadActivity = UploadActivity.this;
                uploadActivity.f36012d = uploadDialogBean;
                uploadActivity.f36016h.setText(uploadDialogBean.getName());
                c.this.dismiss();
            }
        }

        public c(Context context) {
            super(context, R.style.dialog_error);
            this.f36045b = context;
            View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_upload, (ViewGroup) null);
            setContentView(inflate);
            ListView listView = (ListView) inflate.findViewById(R.id.listView);
            this.f36044a = listView;
            listView.setOnItemClickListener(new a(UploadActivity.this));
            this.f36047d = (TextView) inflate.findViewById(R.id.name);
            setCancelable(true);
            setCanceledOnTouchOutside(true);
        }

        public void a(List<UploadDialogBean> list) {
            l6 l6Var = new l6(this.f36045b, list);
            this.f36046c = l6Var;
            this.f36044a.setAdapter((ListAdapter) l6Var);
        }

        public void b(String str) {
            this.f36047d.setText(str);
        }

        public c(Context context, int i2) {
            super(context, i2);
            this.f36045b = context;
        }
    }
}
