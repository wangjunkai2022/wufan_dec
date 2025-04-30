package com.join.mgps.rpc.retrofit2;

import android.os.Environment;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.f0;
import com.join.mgps.Util.k;
import com.join.mgps.pref.h;
import java.io.File;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* compiled from: HttpInterceptor.java */
/* loaded from: classes4.dex */
public class a implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request;
        String str;
        Request request2 = chain.request();
        try {
            MApplication mApplication = MApplication.f9223q;
            str = "";
            String H = mApplication != null ? h.n(mApplication).H() : "";
            if (mApplication != null && d2.h(H)) {
                String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + ".papakey";
                if (new File(str2).exists()) {
                    str = k.b((ContextCompat.checkSelfPermission(mApplication, "android.permission.WRITE_EXTERNAL_STORAGE") == 0 ? f0.x(mApplication, str2) : "").getBytes());
                }
                request = request2.newBuilder().header("wufankey", str).header("wf-d", MApplication.f9225r).header("wf-a", MApplication.f9239y).header("wf-ad", MApplication.f9227s).header("wf-m", MApplication.f9229t).header("wf-i", MApplication.f9231u).header("wf-pm", MApplication.f9233v).header("android-ver", MApplication.f9237x).header("wf-o", MApplication.A).header("arm64", MApplication.B).header("wf-single", String.valueOf(MApplication.f9235w)).build();
            } else {
                request = request2.newBuilder().header("wufankey", k.b(H.getBytes())).header("wf-d", MApplication.f9225r).header("wf-a", d2.g(MApplication.f9239y)).header("wf-ad", d2.g(MApplication.f9227s)).header("wf-m", d2.g(MApplication.f9229t)).header("wf-i", d2.g(MApplication.f9231u)).header("wf-pm", d2.g(MApplication.f9233v)).header("android-ver", MApplication.f9237x).header("wf-o", MApplication.A).header("arm64", MApplication.B).header("wf-single", String.valueOf(MApplication.f9235w)).build();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            request = null;
        }
        if (request == null) {
            request = request2.newBuilder().build();
        }
        return chain.proceed(request);
    }
}
