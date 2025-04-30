package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;
/* compiled from: OldUMIDTracker.java */
/* loaded from: classes4.dex */
public class j extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61376a = "oldumid";

    /* renamed from: b  reason: collision with root package name */
    private Context f61377b;

    /* renamed from: c  reason: collision with root package name */
    private String f61378c;

    /* renamed from: d  reason: collision with root package name */
    private String f61379d;

    public j(Context context) {
        super(f61376a);
        this.f61378c = null;
        this.f61379d = null;
        this.f61377b = context;
    }

    private void b(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    private void j() {
        try {
            b("/data/local/tmp/.um");
            HelperUtils.writeFile(new File("/data/local/tmp/.um/sysid.dat"), this.f61379d);
        } catch (Throwable unused) {
        }
    }

    private void k() {
        try {
            b("/sdcard/Android/obj/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/obj/.um/sysid.dat"), this.f61379d);
        } catch (Throwable unused) {
        }
    }

    private void l() {
        try {
            b("/sdcard/Android/data/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/data/.um/sysid.dat"), this.f61379d);
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return this.f61378c;
    }

    public boolean g() {
        return h();
    }

    public boolean h() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f61377b, ai.f60407g, null);
        this.f61379d = imprintProperty;
        if (TextUtils.isEmpty(imprintProperty)) {
            return false;
        }
        this.f61379d = DataHelper.encryptBySHA1(this.f61379d);
        String readFile = HelperUtils.readFile(new File("/sdcard/Android/data/.um/sysid.dat"));
        String readFile2 = HelperUtils.readFile(new File("/sdcard/Android/obj/.um/sysid.dat"));
        String readFile3 = HelperUtils.readFile(new File("/data/local/tmp/.um/sysid.dat"));
        if (TextUtils.isEmpty(readFile)) {
            l();
        } else if (!this.f61379d.equals(readFile)) {
            this.f61378c = readFile;
            return true;
        }
        if (TextUtils.isEmpty(readFile2)) {
            k();
        } else if (!this.f61379d.equals(readFile2)) {
            this.f61378c = readFile2;
            return true;
        }
        if (TextUtils.isEmpty(readFile3)) {
            j();
            return false;
        } else if (this.f61379d.equals(readFile3)) {
            return false;
        } else {
            this.f61378c = readFile3;
            return true;
        }
    }

    public void i() {
        try {
            l();
            k();
            j();
        } catch (Exception unused) {
        }
    }
}
