package com.join.mgps.activity;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import java.io.File;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.sdcard_lay)
/* loaded from: classes3.dex */
public class SDCardFileExplorerActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f35004a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ListView f35005b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f35006c;

    /* renamed from: d  reason: collision with root package name */
    File f35007d;

    /* renamed from: e  reason: collision with root package name */
    File[] f35008e;

    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (SDCardFileExplorerActivity.this.f35008e[i2].isFile()) {
                if (new BigDecimal(SDCardFileExplorerActivity.this.f35008e[i2].length()).divide(new BigDecimal(1048576), 2, 0).floatValue() > 100.0f) {
                    Toast.makeText(SDCardFileExplorerActivity.this, "为了你的流量，上传文件不能超过100M哦", 1).show();
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("srcFile", SDCardFileExplorerActivity.this.f35008e[i2]);
                SDCardFileExplorerActivity.this.setResult(100, intent);
                SDCardFileExplorerActivity.this.finish();
                return;
            }
            File[] listFiles = SDCardFileExplorerActivity.this.f35008e[i2].listFiles();
            if (listFiles != null && listFiles.length != 0) {
                SDCardFileExplorerActivity sDCardFileExplorerActivity = SDCardFileExplorerActivity.this;
                sDCardFileExplorerActivity.f35007d = sDCardFileExplorerActivity.f35008e[i2];
                sDCardFileExplorerActivity.f35008e = listFiles;
                sDCardFileExplorerActivity.F0(listFiles);
                return;
            }
            Toast.makeText(SDCardFileExplorerActivity.this, "当前路径不可访问或者该路径下没有文件", 1).show();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (SDCardFileExplorerActivity.this.f35007d.getCanonicalPath().equals("/mnt/sdcard")) {
                    return;
                }
                SDCardFileExplorerActivity sDCardFileExplorerActivity = SDCardFileExplorerActivity.this;
                sDCardFileExplorerActivity.f35007d = sDCardFileExplorerActivity.f35007d.getParentFile();
                SDCardFileExplorerActivity sDCardFileExplorerActivity2 = SDCardFileExplorerActivity.this;
                sDCardFileExplorerActivity2.f35008e = sDCardFileExplorerActivity2.f35007d.listFiles();
                SDCardFileExplorerActivity sDCardFileExplorerActivity3 = SDCardFileExplorerActivity.this;
                sDCardFileExplorerActivity3.F0(sDCardFileExplorerActivity3.f35008e);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0(File[] fileArr) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < fileArr.length; i2++) {
            HashMap hashMap = new HashMap();
            if (fileArr[i2].isDirectory()) {
                hashMap.put("iconFile", Integer.valueOf((int) R.drawable.folder));
            } else {
                hashMap.put("iconFile", Integer.valueOf((int) R.drawable.file));
            }
            hashMap.put("filename", fileArr[i2].getName());
            long lastModified = new File(fileArr[i2].getName()).lastModified();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            System.out.println(simpleDateFormat.format(new Date(lastModified)));
            hashMap.put("modify", "修改日期：" + simpleDateFormat.format(new Date(lastModified)));
            arrayList.add(hashMap);
        }
        this.f35005b.setAdapter((ListAdapter) new SimpleAdapter(this, arrayList, R.layout.sdcard_list_item, new String[]{"filename", "iconFile"}, new int[]{R.id.file_name, R.id.icon}));
        try {
            TextView textView = this.f35004a;
            textView.setText("当前路径为:" + this.f35007d.getCanonicalPath());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        File file = new File("/mnt/sdcard/");
        if (file.exists()) {
            this.f35007d = file;
            File[] listFiles = file.listFiles();
            this.f35008e = listFiles;
            F0(listFiles);
        }
        this.f35005b.setOnItemClickListener(new a());
        this.f35006c.setOnClickListener(new b());
    }
}
