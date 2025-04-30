package org.ppsspp.ppsspp;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.papa91.arc.util.SDCardUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
/* compiled from: SimpleFileChooser.java */
/* loaded from: classes5.dex */
public class h {

    /* renamed from: g  reason: collision with root package name */
    private static final String f73866g = "..";

    /* renamed from: a  reason: collision with root package name */
    private c f73867a;

    /* renamed from: b  reason: collision with root package name */
    private final Activity f73868b;

    /* renamed from: c  reason: collision with root package name */
    private String[] f73869c;

    /* renamed from: d  reason: collision with root package name */
    private File f73870d;

    /* renamed from: e  reason: collision with root package name */
    private Comparator<File> f73871e = new a();

    /* renamed from: f  reason: collision with root package name */
    private DialogInterface.OnClickListener f73872f = new b();

    /* compiled from: SimpleFileChooser.java */
    /* loaded from: classes5.dex */
    class a implements Comparator<File> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            if (file == null || file2 == null) {
                return 0;
            }
            if (!file.isDirectory() || file2.isDirectory()) {
                if (!file2.isDirectory() || file.isDirectory()) {
                    return file.getName().toUpperCase().compareTo(file2.getName().toUpperCase());
                }
                return 1;
            }
            return -1;
        }
    }

    /* compiled from: SimpleFileChooser.java */
    /* loaded from: classes5.dex */
    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            File e4 = h.this.e(h.this.f73869c[i2]);
            dialogInterface.cancel();
            dialogInterface.dismiss();
            if (e4.isDirectory()) {
                h.this.f(e4);
                h.this.g();
            } else if (h.this.f73867a != null) {
                h.this.f73867a.a(e4);
            }
        }
    }

    /* compiled from: SimpleFileChooser.java */
    /* loaded from: classes5.dex */
    public interface c {
        void a(File file);
    }

    public h(Activity activity, File file, c cVar) {
        this.f73868b = activity;
        this.f73867a = cVar;
        f(file.exists() ? file : new File(SDCardUtil.getExternalStorageDirectory(activity)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File e(String str) {
        if (str.equals(f73866g)) {
            return this.f73870d.getParentFile();
        }
        return new File(this.f73870d, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(File file) {
        this.f73870d = file;
        ArrayList arrayList = new ArrayList();
        if (file.getParentFile() != null) {
            arrayList.add(f73866g);
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            Arrays.sort(listFiles, this.f73871e);
            for (File file2 : listFiles) {
                arrayList.add(file2.getName());
            }
        }
        this.f73869c = (String[]) arrayList.toArray(new String[0]);
    }

    public void g() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f73868b);
        builder.setTitle(this.f73870d.getPath());
        builder.setItems(this.f73869c, this.f73872f);
        builder.show();
    }
}
