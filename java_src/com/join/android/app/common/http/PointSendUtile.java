package com.join.android.app.common.http;

import com.join.mgps.Util.n0;
/* loaded from: classes.dex */
public class PointSendUtile {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f16998a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f16999b;

        a(String str, String str2) {
            this.f16998a = str;
            this.f16999b = str2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String c4 = n0.c(com.join.mgps.rpc.g.I + "/client/send", this.f16998a, this.f16999b);
            StringBuilder sb = new StringBuilder();
            sb.append("44444444444");
            sb.append(c4);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:1|(2:2|3)|(2:5|6)|7|8|9|10|11|(2:13|14)|(3:16|17|(1:19)(1:42))|(2:20|21)|22|23|24|25|(1:27)|28|(1:30)(1:35)|31|33|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(22:1|2|3|(2:5|6)|7|8|9|10|11|(2:13|14)|(3:16|17|(1:19)(1:42))|(2:20|21)|22|23|24|25|(1:27)|28|(1:30)(1:35)|31|33|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        r3.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
        r4.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0087, code lost:
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0088, code lost:
        r11.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0053 A[Catch: Exception -> 0x0061, TryCatch #8 {Exception -> 0x0061, blocks: (B:27:0x004b, B:29:0x0053, B:30:0x0056), top: B:72:0x004b, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0056 A[Catch: Exception -> 0x0061, TRY_LEAVE, TryCatch #8 {Exception -> 0x0061, blocks: (B:27:0x004b, B:29:0x0053, B:30:0x0056), top: B:72:0x004b, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0098 A[Catch: Exception -> 0x00f5, TryCatch #6 {Exception -> 0x00f5, blocks: (B:20:0x003b, B:25:0x0047, B:38:0x0074, B:39:0x0078, B:44:0x008b, B:47:0x0092, B:49:0x0098, B:51:0x009e, B:43:0x0088, B:33:0x0062, B:15:0x0029, B:10:0x001b, B:17:0x002d, B:12:0x001f, B:40:0x007a, B:22:0x003f, B:35:0x0066, B:27:0x004b, B:29:0x0053, B:30:0x0056), top: B:68:0x001b, inners: #0, #2, #3, #5, #7, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void sendPoint(android.content.Context r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.http.PointSendUtile.sendPoint(android.content.Context, java.lang.String):void");
    }
}
