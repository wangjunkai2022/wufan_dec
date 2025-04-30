package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatConfig;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class d extends e {

    /* renamed from: a  reason: collision with root package name */
    private String f59998a;

    /* renamed from: l  reason: collision with root package name */
    private int f59999l;

    /* renamed from: m  reason: collision with root package name */
    private int f60000m;

    public d(Context context, int i2, int i4, Throwable th) {
        super(context, i2);
        this.f60000m = 100;
        if (th != null) {
            Throwable th2 = new Throwable(th);
            try {
                StackTraceElement[] stackTrace = th2.getStackTrace();
                if (stackTrace != null) {
                    int length = stackTrace.length;
                    int i5 = this.f60000m;
                    if (length > i5) {
                        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i5];
                        for (int i6 = 0; i6 < this.f60000m; i6++) {
                            stackTraceElementArr[i6] = stackTrace[i6];
                        }
                        th2.setStackTrace(stackTraceElementArr);
                    }
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th2.printStackTrace(printWriter);
            this.f59998a = stringWriter.toString();
            this.f59999l = i4;
            printWriter.close();
        }
    }

    public d(Context context, int i2, String str, int i4, int i5) {
        super(context, i2);
        this.f60000m = 100;
        if (str != null) {
            i5 = i5 <= 0 ? StatConfig.getMaxReportEventLength() : i5;
            if (str.length() <= i5) {
                this.f59998a = str;
            } else {
                this.f59998a = str.substring(0, i5);
            }
        }
        this.f59999l = i4;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.ERROR;
    }

    public void a(long j4) {
        this.f60003c = j4;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        com.tencent.stat.common.k.a(jSONObject, "er", this.f59998a);
        jSONObject.put("ea", this.f59999l);
        return true;
    }
}
