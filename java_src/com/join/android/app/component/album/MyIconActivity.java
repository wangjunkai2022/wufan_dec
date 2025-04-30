package com.join.android.app.component.album;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.component.album.a;
import com.join.android.app.component.album.lib.b;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a0;
import com.join.mgps.activity.LocalGameActivity;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import w2.g;
/* loaded from: classes.dex */
public class MyIconActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: v  reason: collision with root package name */
    private static final int f17366v = 257;

    /* renamed from: w  reason: collision with root package name */
    private static final int f17367w = 258;

    /* renamed from: x  reason: collision with root package name */
    private static final String f17368x = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + "/Camera";

    /* renamed from: a  reason: collision with root package name */
    MApplication f17369a;

    /* renamed from: b  reason: collision with root package name */
    private int f17370b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.android.app.component.album.a f17371c;

    /* renamed from: d  reason: collision with root package name */
    private com.join.android.app.component.album.lib.b f17372d;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f17373e;

    /* renamed from: f  reason: collision with root package name */
    private GridView f17374f;

    /* renamed from: g  reason: collision with root package name */
    private com.join.android.app.component.album.adapter.d f17375g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f17376h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f17377i;

    /* renamed from: j  reason: collision with root package name */
    private ImageView f17378j;

    /* renamed from: k  reason: collision with root package name */
    private ImageView f17379k;

    /* renamed from: l  reason: collision with root package name */
    private com.join.android.app.component.album.lib.a f17380l;

    /* renamed from: m  reason: collision with root package name */
    private Context f17381m;

    /* renamed from: o  reason: collision with root package name */
    private Uri f17383o;

    /* renamed from: p  reason: collision with root package name */
    private int f17384p;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f17382n = true;

    /* renamed from: q  reason: collision with root package name */
    private Map<String, com.join.android.app.component.album.lib.a> f17385q = new HashMap();

    /* renamed from: r  reason: collision with root package name */
    public Handler f17386r = new d();

    /* renamed from: s  reason: collision with root package name */
    String f17387s = "";

    /* renamed from: t  reason: collision with root package name */
    String f17388t = "";

    /* renamed from: u  reason: collision with root package name */
    List<String> f17389u = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements b.g {
        a() {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void a() {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void b(Object obj) {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void c(Object obj) {
            MyIconActivity.this.f17385q = (Map) obj;
            MyIconActivity.this.f17371c.h();
            MyIconActivity myIconActivity = MyIconActivity.this;
            myIconActivity.f17380l = (com.join.android.app.component.album.lib.a) myIconActivity.f17385q.get("ALL");
            MyIconActivity.this.d1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements PopupWindow.OnDismissListener {
        b() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = MyIconActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            MyIconActivity.this.getWindow().setAttributes(attributes);
            MyIconActivity.this.e1(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements a.e {
        c() {
        }

        @Override // com.join.android.app.component.album.a.e
        public void a(com.join.android.app.component.album.lib.a aVar) {
            MyIconActivity.this.f17380l = aVar;
            MyIconActivity.this.d1();
        }
    }

    /* loaded from: classes.dex */
    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            MyIconActivity.this.dismissLoading();
            MyIconActivity.this.h1((List) message.obj);
        }
    }

    /* loaded from: classes.dex */
    class e extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.component.album.lib.a f17394a;

        e(com.join.android.app.component.album.lib.a aVar) {
            this.f17394a = aVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            List<String> k4 = MyIconActivity.this.f17372d.k(this.f17394a.d());
            Message message = new Message();
            message.what = 1;
            message.obj = k4;
            MyIconActivity.this.f17386r.sendMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements AdapterView.OnItemClickListener {

        /* loaded from: classes.dex */
        class a implements g<com.tbruyelle.rxpermissions2.b> {
            a() {
            }

            @Override // w2.g
            /* renamed from: a */
            public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
                if (bVar.f59248b) {
                    if (MyIconActivity.this.checkPermiss("android.permission.CAMERA") && MyIconActivity.this.checkPermiss("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        MyIconActivity.this.R0();
                    }
                } else if (bVar.f59249c) {
                } else {
                    a0.c0(MyIconActivity.this).W(MyIconActivity.this, bVar);
                }
            }
        }

        f() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 >= 1) {
                CropPicActivity_.S0(MyIconActivity.this.f17381m).a(MyIconActivity.this.f17375g.getItem(i2).toString()).c(MyIconActivity.this.f17384p).start();
                return;
            }
            try {
                new com.tbruyelle.rxpermissions2.c(MyIconActivity.this).r("android.permission.CAMERA").B5(new a());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    private String P0(Intent intent) {
        if (intent == null) {
            return "";
        }
        Uri data = intent.getData();
        if (data == null) {
            if (intent.hasExtra("data")) {
                File file = new File(V0(this, T0(getApplicationContext(), (Bitmap) intent.getParcelableExtra("data"))));
                System.out.println(file.getAbsoluteFile());
                return file.getAbsolutePath();
            }
            Toast.makeText(getApplicationContext(), "拍照失败", 1).show();
            return null;
        }
        return V0(this, data);
    }

    private com.join.android.app.component.album.lib.a Q0() {
        com.join.android.app.component.album.lib.a aVar = new com.join.android.app.component.album.lib.a();
        File file = new File(f17368x);
        aVar.j(file.getPath());
        aVar.l(file.getName());
        return aVar;
    }

    private com.join.android.app.component.album.lib.a U0() {
        com.join.android.app.component.album.lib.a aVar = new com.join.android.app.component.album.lib.a();
        aVar.j("All");
        aVar.k("");
        aVar.i(1);
        aVar.l(LocalGameActivity.f32927r);
        return aVar;
    }

    private String V0(Context context, Uri uri) {
        Cursor query;
        int columnIndex;
        String str = null;
        if (uri == null || context == null) {
            return null;
        }
        int i2 = context.getApplicationInfo().targetSdkVersion;
        if (Build.VERSION.SDK_INT >= 21 || i2 > 19) {
            try {
                return uri.toString();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        String scheme = uri.getScheme();
        if (scheme == null) {
            return uri.getPath();
        }
        if (com.facebook.common.util.f.f11767c.equals(scheme)) {
            return uri.getPath();
        }
        if (!"content".equals(scheme) || (query = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null)) == null) {
            return null;
        }
        if (query.moveToFirst() && (columnIndex = query.getColumnIndex("_data")) > -1) {
            str = query.getString(columnIndex);
        }
        query.close();
        return str;
    }

    private List<String> W0(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        return (List) extras.get(MyAlbumActivity.f17332w);
    }

    private void X0() {
        com.join.android.app.component.album.a aVar = new com.join.android.app.component.album.a(this, LayoutInflater.from(this).inflate(R.layout.album_layout, (ViewGroup) null), -1, this.f17370b, this.f17372d);
        this.f17371c = aVar;
        aVar.setOnDismissListener(new b());
        this.f17371c.f(new c());
    }

    private void Y0() {
        if (this.f17373e == null) {
            this.f17373e = new ArrayList();
        }
        this.f17372d.i();
        this.f17380l = U0();
        this.f17372d.i();
    }

    private void Z0() {
        this.f17372d = new com.join.android.app.component.album.lib.b(this);
        this.f17374f = (GridView) findViewById(R.id.album_grid);
        this.f17378j = (ImageView) findViewById(R.id.back_image);
        this.f17377i = (TextView) findViewById(R.id.layout_title);
        this.f17379k = (ImageView) findViewById(R.id.album_collapse_image);
        this.f17376h = (ImageView) findViewById(R.id.back_image);
        this.f17378j.setOnClickListener(this);
        this.f17376h.setOnClickListener(this);
        ((View) this.f17377i.getParent()).setOnClickListener(this);
        this.f17372d.l(new a());
        e1(true);
        Y0();
    }

    private void a1() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f17370b = displayMetrics.heightPixels;
    }

    private void b1(com.join.android.app.component.album.lib.a aVar) {
        if (this.f17389u.size() == 0) {
            showLoading();
        }
        new e(aVar).start();
    }

    private void c1(com.join.android.app.component.album.lib.a aVar) {
        this.f17387s = aVar.f();
        this.f17388t = aVar.d();
        h1(aVar.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1() {
        com.join.android.app.component.album.lib.a aVar = this.f17380l;
        if (aVar != null) {
            c1(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e1(boolean z3) {
        if (z3) {
            this.f17379k.setBackgroundResource(R.drawable.arrow_down);
        } else {
            this.f17379k.setBackgroundResource(R.drawable.arrow_up);
        }
    }

    private void f1() {
    }

    private void g1(View view) {
        this.f17371c.setAnimationStyle(R.style.animation_album_popup);
        this.f17371c.showAsDropDown(view, 0, 0);
        e1(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h1(List<String> list) {
        if (this.f17389u.size() > 0) {
            this.f17389u.clear();
            this.f17389u.add("camera");
            if (list != null) {
                this.f17389u.addAll(list);
            }
            this.f17375g.d(this.f17388t);
        } else {
            this.f17389u.clear();
            this.f17389u.add("camera");
            if (list != null) {
                this.f17389u.addAll(list);
                this.f17375g = new com.join.android.app.component.album.adapter.d(this, this.f17389u, this.f17388t);
            } else {
                this.f17375g = new com.join.android.app.component.album.adapter.d(this, this.f17389u, null);
            }
            this.f17374f.setAdapter((ListAdapter) this.f17375g);
            this.f17374f.setOnItemClickListener(new f());
        }
        this.f17375g.notifyDataSetChanged();
        this.f17377i.setText(this.f17387s);
        e1(true);
        com.join.android.app.component.album.a aVar = this.f17371c;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    protected void R0() {
        Uri uriForFile;
        if (Environment.getExternalStorageState().equals("mounted")) {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            String format = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Long.valueOf(System.currentTimeMillis()));
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + "/Camera/IMG_" + format + ".jpg");
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            System.out.println(file.getAbsoluteFile());
            if (Build.VERSION.SDK_INT < 21) {
                uriForFile = Uri.fromFile(file);
            } else {
                uriForFile = FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file);
            }
            intent.putExtra("output", uriForFile);
            this.f17383o = uriForFile;
            if (intent.resolveActivity(getPackageManager()) != null) {
                startActivityForResult(intent, 258);
                return;
            }
            return;
        }
        Toast.makeText(getApplicationContext(), "请确认已经插入SD卡", 1).show();
    }

    protected void S0() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        startActivityForResult(intent, 257);
    }

    public Uri T0(Context context, Bitmap bitmap) {
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new ByteArrayOutputStream());
        return Uri.parse(MediaStore.Images.Media.insertImage(context.getContentResolver(), bitmap, "Title", (String) null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        String P0;
        super.onActivityResult(i2, i4, intent);
        if (i2 == 258 && i4 == -1) {
            Uri uri = this.f17383o;
            if (uri != null) {
                P0 = V0(this, uri);
            } else {
                P0 = P0(intent);
            }
            CropPicActivity_.S0(this.f17381m).a(P0).c(this.f17384p).start();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.back_image) {
            finish();
        } else if (id == R.id.album_collapse_image || id == R.id.layout_title || id == R.id.layout_show_album) {
            g1(findViewById(R.id.album_title));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.my_icon_activity);
        this.f17381m = this;
        MApplication mApplication = (MApplication) getApplication();
        this.f17369a = mApplication;
        mApplication.k(this);
        a1();
        Z0();
        X0();
        this.f17384p = getIntent().getIntExtra("from", 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        d1();
    }
}
