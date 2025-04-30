package com.join.android.app.component.album;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import com.BaseActivity;
import com.join.android.app.component.album.a;
import com.join.android.app.component.album.lib.b;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.d2;
import com.join.mgps.activity.LocalGameActivity;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import w2.g;
/* loaded from: classes.dex */
public class MyAlbumActivity extends BaseActivity implements View.OnClickListener {
    private static final String A = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + "/Camera";
    private static int B = 0;

    /* renamed from: w  reason: collision with root package name */
    public static final String f17332w = "key_selected_images";

    /* renamed from: x  reason: collision with root package name */
    public static final int f17333x = 256;

    /* renamed from: y  reason: collision with root package name */
    private static final int f17334y = 257;

    /* renamed from: z  reason: collision with root package name */
    private static final int f17335z = 258;

    /* renamed from: a  reason: collision with root package name */
    private int f17336a;

    /* renamed from: b  reason: collision with root package name */
    private com.join.android.app.component.album.a f17337b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.android.app.component.album.lib.b f17338c;

    /* renamed from: d  reason: collision with root package name */
    private List<String> f17339d;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f17340e;

    /* renamed from: f  reason: collision with root package name */
    private GridView f17341f;

    /* renamed from: g  reason: collision with root package name */
    private com.join.android.app.component.album.adapter.c f17342g;

    /* renamed from: h  reason: collision with root package name */
    private View f17343h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f17344i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f17345j;

    /* renamed from: k  reason: collision with root package name */
    private ImageView f17346k;

    /* renamed from: l  reason: collision with root package name */
    private Button f17347l;

    /* renamed from: m  reason: collision with root package name */
    private View f17348m;

    /* renamed from: n  reason: collision with root package name */
    private ImageView f17349n;

    /* renamed from: o  reason: collision with root package name */
    private com.join.android.app.component.album.lib.a f17350o;

    /* renamed from: q  reason: collision with root package name */
    private Uri f17352q;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f17351p = true;

    /* renamed from: r  reason: collision with root package name */
    private Map<String, com.join.android.app.component.album.lib.a> f17353r = new HashMap();

    /* renamed from: s  reason: collision with root package name */
    public Handler f17354s = new d();

    /* renamed from: t  reason: collision with root package name */
    String f17355t = "";

    /* renamed from: u  reason: collision with root package name */
    String f17356u = "";

    /* renamed from: v  reason: collision with root package name */
    List<String> f17357v = new ArrayList();

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
            MyAlbumActivity.this.f17353r = (Map) obj;
            MyAlbumActivity.this.f17337b.h();
            MyAlbumActivity myAlbumActivity = MyAlbumActivity.this;
            myAlbumActivity.f17350o = (com.join.android.app.component.album.lib.a) myAlbumActivity.f17353r.get("ALL");
            MyAlbumActivity.this.d1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements PopupWindow.OnDismissListener {
        b() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = MyAlbumActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            MyAlbumActivity.this.getWindow().setAttributes(attributes);
            MyAlbumActivity.this.f1(true);
            MyAlbumActivity.this.f17348m.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements a.e {
        c() {
        }

        @Override // com.join.android.app.component.album.a.e
        public void a(com.join.android.app.component.album.lib.a aVar) {
            MyAlbumActivity.this.f17350o = aVar;
            MyAlbumActivity.this.d1();
        }
    }

    /* loaded from: classes.dex */
    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            MyAlbumActivity.this.dismissLoading();
            MyAlbumActivity.this.j1((List) message.obj);
        }
    }

    /* loaded from: classes.dex */
    class e extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.component.album.lib.a f17362a;

        e(com.join.android.app.component.album.lib.a aVar) {
            this.f17362a = aVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            List<String> k4 = MyAlbumActivity.this.f17338c.k(this.f17362a.d());
            Message message = new Message();
            message.what = 1;
            message.obj = k4;
            MyAlbumActivity.this.f17354s.sendMessage(message);
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
                    if (MyAlbumActivity.this.checkPermiss("android.permission.CAMERA") && MyAlbumActivity.this.checkPermiss("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        MyAlbumActivity.this.P0();
                    }
                } else if (bVar.f59249c) {
                } else {
                    a0.c0(MyAlbumActivity.this).W(MyAlbumActivity.this, bVar);
                }
            }
        }

        f() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 < 1) {
                try {
                    new com.tbruyelle.rxpermissions2.c(MyAlbumActivity.this).r("android.permission.CAMERA").B5(new a());
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            MyAlbumActivity.this.c1(view, (String) ((com.join.android.app.component.album.adapter.c) adapterView.getAdapter()).getItem(i2));
        }
    }

    private String N0(Intent intent) {
        if (intent == null) {
            return "";
        }
        Uri data = intent.getData();
        if (data == null) {
            if (intent.hasExtra("data")) {
                File file = new File(T0(this, R0(getApplicationContext(), (Bitmap) intent.getParcelableExtra("data"))));
                System.out.println(file.getAbsoluteFile());
                return file.getAbsolutePath();
            }
            Toast.makeText(getApplicationContext(), "拍照失败", 1).show();
            return null;
        }
        return T0(this, data);
    }

    private com.join.android.app.component.album.lib.a O0() {
        com.join.android.app.component.album.lib.a aVar = new com.join.android.app.component.album.lib.a();
        File file = new File(A);
        aVar.j(file.getPath());
        aVar.l(file.getName());
        return aVar;
    }

    private com.join.android.app.component.album.lib.a S0() {
        com.join.android.app.component.album.lib.a aVar = new com.join.android.app.component.album.lib.a();
        aVar.j("All");
        aVar.k("");
        aVar.i(1);
        aVar.l(LocalGameActivity.f32927r);
        return aVar;
    }

    private String T0(Context context, Uri uri) {
        int columnIndex;
        String str = null;
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme == null) {
            str = uri.getPath();
        } else if (com.facebook.common.util.f.f11767c.equals(scheme)) {
            str = uri.getPath();
        } else if ("content".equals(scheme)) {
            File file = new File(uri.getPath());
            if (file.exists()) {
                str = file.getAbsolutePath();
            } else {
                Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
                if (query != null) {
                    if (query.moveToFirst() && (columnIndex = query.getColumnIndex("_data")) > -1) {
                        str = query.getString(columnIndex);
                    }
                    query.close();
                }
            }
        }
        return TextUtils.isEmpty(str) ? uri.toString() : str;
    }

    private List<String> U0(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        return (List) extras.get(f17332w);
    }

    private void V0() {
        com.join.android.app.component.album.a aVar = new com.join.android.app.component.album.a(this, LayoutInflater.from(this).inflate(R.layout.album_layout, (ViewGroup) null), -1, this.f17336a, this.f17338c);
        this.f17337b = aVar;
        aVar.setOnDismissListener(new b());
        this.f17337b.f(new c());
    }

    private void W0() {
        if (this.f17339d == null) {
            this.f17339d = new ArrayList();
        }
        if (this.f17340e == null) {
            this.f17340e = new ArrayList();
        }
        this.f17350o = S0();
        this.f17338c.i();
    }

    private void X0() {
        this.f17338c = new com.join.android.app.component.album.lib.b(this);
        this.f17343h = findViewById(R.id.album_title);
        this.f17348m = findViewById(R.id.cover);
        this.f17341f = (GridView) findViewById(R.id.album_grid);
        this.f17346k = (ImageView) findViewById(R.id.back_image);
        this.f17347l = (Button) findViewById(R.id.ok_image);
        this.f17344i = (TextView) findViewById(R.id.layout_title);
        this.f17349n = (ImageView) findViewById(R.id.album_collapse_image);
        this.f17345j = (TextView) findViewById(R.id.select_num);
        this.f17338c.l(new a());
        this.f17346k.setOnClickListener(this);
        this.f17347l.setOnClickListener(this);
        ((View) this.f17344i.getParent()).setOnClickListener(this);
        f1(true);
        this.f17340e = U0(getIntent());
        e1();
        W0();
    }

    private void Y0() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f17336a = displayMetrics.heightPixels;
    }

    private void Z0(com.join.android.app.component.album.lib.a aVar) {
        if (this.f17357v.size() == 0) {
            showLoading();
        }
        new e(aVar).start();
    }

    private void a1(com.join.android.app.component.album.lib.a aVar) {
        this.f17355t = aVar.f();
        this.f17356u = aVar.d();
        j1(aVar.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1() {
        com.join.android.app.component.album.lib.a aVar = this.f17350o;
        if (aVar != null) {
            a1(aVar);
        }
    }

    private void e1() {
        List<String> list = this.f17340e;
        if (list != null && list.size() != 0) {
            this.f17347l.setEnabled(true);
            Button button = this.f17347l;
            button.setText("完成(" + this.f17340e.size() + net.lingala.zip4j.util.e.F0 + B + ")");
            return;
        }
        Button button2 = this.f17347l;
        button2.setText("完成(0/" + B + ")");
        this.f17347l.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f1(boolean z3) {
        if (z3) {
            this.f17349n.setBackgroundResource(R.drawable.arrow_down);
        } else {
            this.f17349n.setBackgroundResource(R.drawable.arrow_up);
        }
    }

    private void g1() {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putSerializable(f17332w, (Serializable) this.f17340e);
        intent.putExtras(bundle);
        setResult(256, intent);
        finish();
    }

    private void h1(View view) {
        this.f17337b.setAnimationStyle(R.style.animation_album_popup);
        i1(this.f17337b, view, 0, 0);
        f1(false);
        this.f17348m.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1(List<String> list) {
        if (this.f17357v.size() > 0) {
            this.f17357v.clear();
            this.f17357v.add("camera");
            if (list != null) {
                this.f17357v.addAll(list);
            }
            this.f17342g.e(this.f17356u);
        } else {
            this.f17357v.clear();
            this.f17357v.add("camera");
            if (list != null) {
                this.f17357v.addAll(list);
                this.f17342g = new com.join.android.app.component.album.adapter.c(this, this.f17357v, this.f17356u, this.f17340e);
            } else {
                this.f17342g = new com.join.android.app.component.album.adapter.c(this, this.f17357v, null, this.f17340e);
            }
            this.f17341f.setAdapter((ListAdapter) this.f17342g);
            this.f17341f.setOnItemClickListener(new f());
        }
        this.f17342g.notifyDataSetChanged();
        this.f17344i.setText(this.f17355t);
        f1(true);
        com.join.android.app.component.album.a aVar = this.f17337b;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    protected void P0() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            String format = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Long.valueOf(System.currentTimeMillis()));
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + "/Camera/IMG_" + format + ".jpg");
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            System.out.println(file.getAbsoluteFile());
            Uri uriForFile = FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file);
            intent.putExtra("output", uriForFile);
            this.f17352q = uriForFile;
            if (intent.resolveActivity(getPackageManager()) != null) {
                startActivityForResult(intent, 258);
                return;
            }
            return;
        }
        Toast.makeText(getApplicationContext(), "请确认已经插入SD卡", 1).show();
    }

    protected void Q0() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        startActivityForResult(intent, 257);
    }

    public Uri R0(Context context, Bitmap bitmap) {
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new ByteArrayOutputStream());
        return Uri.parse(MediaStore.Images.Media.insertImage(context.getContentResolver(), bitmap, "Title", (String) null));
    }

    public synchronized void b1(String str, boolean z3) {
        net.bither.util.b.q().j(getApplicationContext(), str, z3);
    }

    public void c1(View view, String str) {
        ImageView imageView = (ImageView) view.findViewById(R.id.image);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.image_flag);
        if (this.f17340e == null) {
            this.f17340e = new ArrayList();
        }
        if (this.f17340e.contains(str)) {
            this.f17340e.remove(str);
            imageView.setColorFilter((ColorFilter) null);
            imageView2.setImageResource(R.drawable.pic_select_normal);
            e1();
            b1(str, false);
        } else if (this.f17340e.size() == B) {
            Toast.makeText(this, "最多选择" + B + "张图", 0).show();
        } else {
            this.f17340e.add(str);
            imageView.setColorFilter(Color.parseColor("#7f989898"));
            imageView2.setImageResource(R.drawable.pic_select_selected);
            e1();
            b1(str, true);
        }
    }

    public void i1(PopupWindow popupWindow, View view, int i2, int i4) {
        if (Build.VERSION.SDK_INT >= 24) {
            Rect rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            Rect rect2 = new Rect();
            ((Activity) view.getContext()).getWindow().getDecorView().getWindowVisibleDisplayFrame(rect2);
            popupWindow.setHeight(rect2.height() - rect.bottom);
            popupWindow.showAsDropDown(view, i2, i4);
            return;
        }
        popupWindow.showAsDropDown(view, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        String N0;
        super.onActivityResult(i2, i4, intent);
        if (i2 == 258 && i4 == -1) {
            if (this.f17340e == null) {
                this.f17340e = new ArrayList();
            }
            Uri uri = this.f17352q;
            if (uri != null) {
                N0 = T0(this, uri);
            } else {
                N0 = N0(intent);
            }
            if (!d2.h(N0)) {
                List<String> list = this.f17340e;
                if (list != null && list.size() >= B) {
                    List<String> list2 = this.f17340e;
                    list2.remove(list2.size() - 1);
                }
                this.f17340e.add(N0);
                b1(N0, true);
                g1();
                return;
            }
            Toast.makeText(this, "获取图片失败", 0).show();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.back_image) {
            finish();
        } else if (id == R.id.ok_image) {
            g1();
        } else if (id == R.id.album_collapse_image || id == R.id.layout_title || id == R.id.layout_show_album) {
            h1(findViewById(R.id.album_title));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.my_album_activity);
        B = getIntent().getIntExtra("MAX_PICK_SIZE", 9);
        Y0();
        X0();
        V0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        d1();
    }
}
