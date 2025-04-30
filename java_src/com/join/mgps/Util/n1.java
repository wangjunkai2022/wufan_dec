package com.join.mgps.Util;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import java.io.File;
/* compiled from: PhotoSelectUtils.java */
/* loaded from: classes3.dex */
public class n1 {

    /* renamed from: m  reason: collision with root package name */
    public static final int f27703m = 10001;

    /* renamed from: n  reason: collision with root package name */
    public static final int f27704n = 10002;

    /* renamed from: o  reason: collision with root package name */
    public static final int f27705o = 10003;

    /* renamed from: a  reason: collision with root package name */
    private Activity f27706a;

    /* renamed from: b  reason: collision with root package name */
    private String f27707b;

    /* renamed from: c  reason: collision with root package name */
    private String f27708c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27709d;

    /* renamed from: e  reason: collision with root package name */
    private Uri f27710e;

    /* renamed from: f  reason: collision with root package name */
    private File f27711f;

    /* renamed from: g  reason: collision with root package name */
    private File f27712g;

    /* renamed from: h  reason: collision with root package name */
    private int f27713h;

    /* renamed from: i  reason: collision with root package name */
    private int f27714i;

    /* renamed from: j  reason: collision with root package name */
    private int f27715j;

    /* renamed from: k  reason: collision with root package name */
    private int f27716k;

    /* renamed from: l  reason: collision with root package name */
    a f27717l;

    /* compiled from: PhotoSelectUtils.java */
    /* loaded from: classes3.dex */
    public interface a {
        void onFinish(File file, Uri uri);
    }

    public n1(Activity activity, a aVar, boolean z3) {
        this.f27707b = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + String.valueOf(System.currentTimeMillis()) + ".jpg";
        this.f27708c = "packageName.fileprovider";
        this.f27709d = false;
        this.f27710e = null;
        this.f27712g = null;
        this.f27713h = 1;
        this.f27714i = 1;
        this.f27715j = 800;
        this.f27716k = 480;
        this.f27706a = activity;
        this.f27717l = aVar;
        this.f27709d = z3;
        this.f27708c = activity.getPackageName() + ".fileprovider";
        this.f27707b = b();
    }

    private String b() {
        return c() + File.separator + String.valueOf(System.currentTimeMillis()) + ".jpg";
    }

    private String c() {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append("Android/data/" + this.f27706a.getPackageName());
        sb.append(str);
        return sb.toString();
    }

    private Uri d(Context context, File file) {
        String absolutePath = file.getAbsolutePath();
        Cursor query = context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=? ", new String[]{absolutePath}, null);
        if (query != null && query.moveToFirst()) {
            int i2 = query.getInt(query.getColumnIndex("_id"));
            Uri parse = Uri.parse("content://media/external/images/media");
            return Uri.withAppendedPath(parse, "" + i2);
        } else if (file.exists()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", absolutePath);
            return context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        } else {
            return null;
        }
    }

    private void i(File file, File file2) {
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        Intent intent = new Intent("com.android.camera.action.CROP");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setDataAndType(d(this.f27706a, file), "image/*");
        } else {
            intent.setDataAndType(Uri.fromFile(file), "image/*");
        }
        intent.putExtra("crop", "true");
        intent.putExtra("mAspectX", this.f27713h);
        intent.putExtra("mAspectY", this.f27714i);
        intent.putExtra("mOutputX", this.f27715j);
        intent.putExtra("mOutputY", this.f27716k);
        intent.putExtra("return-data", false);
        intent.putExtra("output", Uri.fromFile(file2));
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        this.f27706a.startActivityForResult(intent, 10003);
    }

    public void a(int i2, int i4, Intent intent) {
        if (i4 == -1) {
            switch (i2) {
                case 10001:
                    File file = new File(this.f27707b);
                    this.f27711f = file;
                    if (this.f27709d) {
                        File file2 = new File(b());
                        this.f27712g = file2;
                        this.f27710e = Uri.fromFile(file2);
                        i(this.f27711f, this.f27712g);
                        return;
                    }
                    Uri fromFile = Uri.fromFile(file);
                    this.f27710e = fromFile;
                    a aVar = this.f27717l;
                    if (aVar != null) {
                        aVar.onFinish(this.f27711f, fromFile);
                        return;
                    }
                    return;
                case 10002:
                    if (intent != null) {
                        Cursor managedQuery = this.f27706a.managedQuery(intent.getData(), new String[]{"_data"}, null, null, null);
                        int columnIndexOrThrow = managedQuery.getColumnIndexOrThrow("_data");
                        managedQuery.moveToFirst();
                        File file3 = new File(managedQuery.getString(columnIndexOrThrow));
                        this.f27711f = file3;
                        if (this.f27709d) {
                            File file4 = new File(b());
                            this.f27712g = file4;
                            this.f27710e = Uri.fromFile(file4);
                            i(this.f27711f, this.f27712g);
                            return;
                        }
                        Uri fromFile2 = Uri.fromFile(file3);
                        this.f27710e = fromFile2;
                        a aVar2 = this.f27717l;
                        if (aVar2 != null) {
                            aVar2.onFinish(this.f27711f, fromFile2);
                            return;
                        }
                        return;
                    }
                    return;
                case 10003:
                    if (intent == null || this.f27710e == null) {
                        return;
                    }
                    File file5 = new File(this.f27707b);
                    if (file5.exists()) {
                        file5.delete();
                    }
                    a aVar3 = this.f27717l;
                    if (aVar3 != null) {
                        aVar3.onFinish(this.f27712g, this.f27710e);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public void e() {
        Intent intent = new Intent("android.intent.action.PICK", (Uri) null);
        intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
        this.f27706a.startActivityForResult(intent, 10002);
    }

    public void f(String str) {
        this.f27708c = str;
    }

    public void g(String str) {
        this.f27707b = str;
    }

    public void h() {
        Uri insert;
        File file = new File(this.f27707b);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (Build.VERSION.SDK_INT < 24) {
            insert = Uri.fromFile(file);
        } else {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("_data", file.getAbsolutePath());
            insert = this.f27706a.getApplication().getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", insert);
        this.f27706a.startActivityForResult(intent, 10001);
    }

    public n1(Activity activity, a aVar, int i2, int i4, int i5, int i6) {
        this(activity, aVar, true);
        this.f27713h = i2;
        this.f27714i = i4;
        this.f27715j = i5;
        this.f27716k = i6;
    }
}
