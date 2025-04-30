package com.join.mgps.task;

import android.content.Context;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.event.s;
import java.io.File;
/* compiled from: UNAndroidZIPThread.java */
/* loaded from: classes4.dex */
public class e extends Thread implements c {

    /* renamed from: a  reason: collision with root package name */
    private Context f52280a;

    /* renamed from: b  reason: collision with root package name */
    private DownloadTask f52281b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f52282c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f52283d;

    /* renamed from: e  reason: collision with root package name */
    a f52284e;

    public e(DownloadTask downloadTask, Context context) {
        this.f52282c = true;
        this.f52283d = false;
        this.f52284e = null;
        this.f52281b = downloadTask;
        this.f52280a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(java.lang.String r17, java.lang.String r18, java.lang.String r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.task.e.c(java.lang.String, java.lang.String, java.lang.String, boolean):void");
    }

    @Override // com.join.mgps.task.c
    public void a() {
        this.f52282c = false;
        this.f52284e.a(false);
        DownloadTask downloadTask = this.f52281b;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // com.join.mgps.task.c
    public boolean isRunning() {
        return this.f52282c;
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x04d2 A[Catch: Exception -> 0x046d, all -> 0x0471, TryCatch #3 {Exception -> 0x046d, blocks: (B:87:0x0223, B:89:0x0227, B:90:0x022b, B:158:0x0468, B:165:0x047b, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:179:0x0540, B:189:0x056b, B:188:0x0568), top: B:207:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x04e1 A[Catch: Exception -> 0x046d, all -> 0x0471, TRY_LEAVE, TryCatch #3 {Exception -> 0x046d, blocks: (B:87:0x0223, B:89:0x0227, B:90:0x022b, B:158:0x0468, B:165:0x047b, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:179:0x0540, B:189:0x056b, B:188:0x0568), top: B:207:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0556 A[Catch: all -> 0x0471, Exception -> 0x0566, TryCatch #10 {all -> 0x0471, blocks: (B:9:0x0032, B:11:0x0038, B:13:0x0044, B:18:0x0065, B:20:0x0077, B:22:0x0089, B:25:0x0092, B:27:0x00ac, B:29:0x00d1, B:31:0x00d7, B:33:0x00db, B:58:0x0168, B:60:0x0173, B:61:0x0176, B:64:0x0185, B:71:0x019b, B:73:0x01a8, B:75:0x01d6, B:78:0x0205, B:80:0x020e, B:82:0x0214, B:87:0x0223, B:89:0x0227, B:90:0x022b, B:94:0x0236, B:96:0x023d, B:98:0x0245, B:103:0x0253, B:104:0x0262, B:106:0x026a, B:108:0x0272, B:109:0x0275, B:111:0x0283, B:113:0x028f, B:115:0x029d, B:117:0x02a7, B:118:0x02be, B:120:0x02c6, B:122:0x02d8, B:123:0x0324, B:124:0x0369, B:126:0x037f, B:128:0x0387, B:129:0x038c, B:133:0x03af, B:134:0x03b2, B:136:0x03ba, B:138:0x03c2, B:139:0x03d0, B:141:0x03d4, B:143:0x0405, B:142:0x03e9, B:144:0x0429, B:145:0x0435, B:147:0x0446, B:149:0x044e, B:154:0x045b, B:153:0x0458, B:158:0x0468, B:79:0x020a, B:165:0x047b, B:166:0x0497, B:168:0x04ba, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:178:0x050e, B:179:0x0540, B:180:0x0545, B:182:0x0556, B:184:0x055e, B:189:0x056b, B:188:0x0568, B:76:0x01fc, B:68:0x0190, B:66:0x018b, B:70:0x0196, B:26:0x0095, B:37:0x00e8, B:39:0x00fa, B:41:0x010c, B:44:0x0115, B:45:0x0118, B:47:0x0130, B:49:0x0142, B:51:0x0154, B:54:0x015d, B:55:0x0160), top: B:207:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x050e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00db A[Catch: Exception -> 0x00e3, all -> 0x0471, TRY_LEAVE, TryCatch #10 {all -> 0x0471, blocks: (B:9:0x0032, B:11:0x0038, B:13:0x0044, B:18:0x0065, B:20:0x0077, B:22:0x0089, B:25:0x0092, B:27:0x00ac, B:29:0x00d1, B:31:0x00d7, B:33:0x00db, B:58:0x0168, B:60:0x0173, B:61:0x0176, B:64:0x0185, B:71:0x019b, B:73:0x01a8, B:75:0x01d6, B:78:0x0205, B:80:0x020e, B:82:0x0214, B:87:0x0223, B:89:0x0227, B:90:0x022b, B:94:0x0236, B:96:0x023d, B:98:0x0245, B:103:0x0253, B:104:0x0262, B:106:0x026a, B:108:0x0272, B:109:0x0275, B:111:0x0283, B:113:0x028f, B:115:0x029d, B:117:0x02a7, B:118:0x02be, B:120:0x02c6, B:122:0x02d8, B:123:0x0324, B:124:0x0369, B:126:0x037f, B:128:0x0387, B:129:0x038c, B:133:0x03af, B:134:0x03b2, B:136:0x03ba, B:138:0x03c2, B:139:0x03d0, B:141:0x03d4, B:143:0x0405, B:142:0x03e9, B:144:0x0429, B:145:0x0435, B:147:0x0446, B:149:0x044e, B:154:0x045b, B:153:0x0458, B:158:0x0468, B:79:0x020a, B:165:0x047b, B:166:0x0497, B:168:0x04ba, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:178:0x050e, B:179:0x0540, B:180:0x0545, B:182:0x0556, B:184:0x055e, B:189:0x056b, B:188:0x0568, B:76:0x01fc, B:68:0x0190, B:66:0x018b, B:70:0x0196, B:26:0x0095, B:37:0x00e8, B:39:0x00fa, B:41:0x010c, B:44:0x0115, B:45:0x0118, B:47:0x0130, B:49:0x0142, B:51:0x0154, B:54:0x015d, B:55:0x0160), top: B:207:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a8 A[Catch: Exception -> 0x00e3, all -> 0x0471, TRY_LEAVE, TryCatch #10 {all -> 0x0471, blocks: (B:9:0x0032, B:11:0x0038, B:13:0x0044, B:18:0x0065, B:20:0x0077, B:22:0x0089, B:25:0x0092, B:27:0x00ac, B:29:0x00d1, B:31:0x00d7, B:33:0x00db, B:58:0x0168, B:60:0x0173, B:61:0x0176, B:64:0x0185, B:71:0x019b, B:73:0x01a8, B:75:0x01d6, B:78:0x0205, B:80:0x020e, B:82:0x0214, B:87:0x0223, B:89:0x0227, B:90:0x022b, B:94:0x0236, B:96:0x023d, B:98:0x0245, B:103:0x0253, B:104:0x0262, B:106:0x026a, B:108:0x0272, B:109:0x0275, B:111:0x0283, B:113:0x028f, B:115:0x029d, B:117:0x02a7, B:118:0x02be, B:120:0x02c6, B:122:0x02d8, B:123:0x0324, B:124:0x0369, B:126:0x037f, B:128:0x0387, B:129:0x038c, B:133:0x03af, B:134:0x03b2, B:136:0x03ba, B:138:0x03c2, B:139:0x03d0, B:141:0x03d4, B:143:0x0405, B:142:0x03e9, B:144:0x0429, B:145:0x0435, B:147:0x0446, B:149:0x044e, B:154:0x045b, B:153:0x0458, B:158:0x0468, B:79:0x020a, B:165:0x047b, B:166:0x0497, B:168:0x04ba, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:178:0x050e, B:179:0x0540, B:180:0x0545, B:182:0x0556, B:184:0x055e, B:189:0x056b, B:188:0x0568, B:76:0x01fc, B:68:0x0190, B:66:0x018b, B:70:0x0196, B:26:0x0095, B:37:0x00e8, B:39:0x00fa, B:41:0x010c, B:44:0x0115, B:45:0x0118, B:47:0x0130, B:49:0x0142, B:51:0x0154, B:54:0x015d, B:55:0x0160), top: B:207:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01fc A[Catch: Exception -> 0x021c, all -> 0x0471, TryCatch #10 {all -> 0x0471, blocks: (B:9:0x0032, B:11:0x0038, B:13:0x0044, B:18:0x0065, B:20:0x0077, B:22:0x0089, B:25:0x0092, B:27:0x00ac, B:29:0x00d1, B:31:0x00d7, B:33:0x00db, B:58:0x0168, B:60:0x0173, B:61:0x0176, B:64:0x0185, B:71:0x019b, B:73:0x01a8, B:75:0x01d6, B:78:0x0205, B:80:0x020e, B:82:0x0214, B:87:0x0223, B:89:0x0227, B:90:0x022b, B:94:0x0236, B:96:0x023d, B:98:0x0245, B:103:0x0253, B:104:0x0262, B:106:0x026a, B:108:0x0272, B:109:0x0275, B:111:0x0283, B:113:0x028f, B:115:0x029d, B:117:0x02a7, B:118:0x02be, B:120:0x02c6, B:122:0x02d8, B:123:0x0324, B:124:0x0369, B:126:0x037f, B:128:0x0387, B:129:0x038c, B:133:0x03af, B:134:0x03b2, B:136:0x03ba, B:138:0x03c2, B:139:0x03d0, B:141:0x03d4, B:143:0x0405, B:142:0x03e9, B:144:0x0429, B:145:0x0435, B:147:0x0446, B:149:0x044e, B:154:0x045b, B:153:0x0458, B:158:0x0468, B:79:0x020a, B:165:0x047b, B:166:0x0497, B:168:0x04ba, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:178:0x050e, B:179:0x0540, B:180:0x0545, B:182:0x0556, B:184:0x055e, B:189:0x056b, B:188:0x0568, B:76:0x01fc, B:68:0x0190, B:66:0x018b, B:70:0x0196, B:26:0x0095, B:37:0x00e8, B:39:0x00fa, B:41:0x010c, B:44:0x0115, B:45:0x0118, B:47:0x0130, B:49:0x0142, B:51:0x0154, B:54:0x015d, B:55:0x0160), top: B:207:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0205 A[Catch: Exception -> 0x021c, all -> 0x0471, TryCatch #10 {all -> 0x0471, blocks: (B:9:0x0032, B:11:0x0038, B:13:0x0044, B:18:0x0065, B:20:0x0077, B:22:0x0089, B:25:0x0092, B:27:0x00ac, B:29:0x00d1, B:31:0x00d7, B:33:0x00db, B:58:0x0168, B:60:0x0173, B:61:0x0176, B:64:0x0185, B:71:0x019b, B:73:0x01a8, B:75:0x01d6, B:78:0x0205, B:80:0x020e, B:82:0x0214, B:87:0x0223, B:89:0x0227, B:90:0x022b, B:94:0x0236, B:96:0x023d, B:98:0x0245, B:103:0x0253, B:104:0x0262, B:106:0x026a, B:108:0x0272, B:109:0x0275, B:111:0x0283, B:113:0x028f, B:115:0x029d, B:117:0x02a7, B:118:0x02be, B:120:0x02c6, B:122:0x02d8, B:123:0x0324, B:124:0x0369, B:126:0x037f, B:128:0x0387, B:129:0x038c, B:133:0x03af, B:134:0x03b2, B:136:0x03ba, B:138:0x03c2, B:139:0x03d0, B:141:0x03d4, B:143:0x0405, B:142:0x03e9, B:144:0x0429, B:145:0x0435, B:147:0x0446, B:149:0x044e, B:154:0x045b, B:153:0x0458, B:158:0x0468, B:79:0x020a, B:165:0x047b, B:166:0x0497, B:168:0x04ba, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:178:0x050e, B:179:0x0540, B:180:0x0545, B:182:0x0556, B:184:0x055e, B:189:0x056b, B:188:0x0568, B:76:0x01fc, B:68:0x0190, B:66:0x018b, B:70:0x0196, B:26:0x0095, B:37:0x00e8, B:39:0x00fa, B:41:0x010c, B:44:0x0115, B:45:0x0118, B:47:0x0130, B:49:0x0142, B:51:0x0154, B:54:0x015d, B:55:0x0160), top: B:207:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x020a A[Catch: Exception -> 0x021c, all -> 0x0471, TryCatch #10 {all -> 0x0471, blocks: (B:9:0x0032, B:11:0x0038, B:13:0x0044, B:18:0x0065, B:20:0x0077, B:22:0x0089, B:25:0x0092, B:27:0x00ac, B:29:0x00d1, B:31:0x00d7, B:33:0x00db, B:58:0x0168, B:60:0x0173, B:61:0x0176, B:64:0x0185, B:71:0x019b, B:73:0x01a8, B:75:0x01d6, B:78:0x0205, B:80:0x020e, B:82:0x0214, B:87:0x0223, B:89:0x0227, B:90:0x022b, B:94:0x0236, B:96:0x023d, B:98:0x0245, B:103:0x0253, B:104:0x0262, B:106:0x026a, B:108:0x0272, B:109:0x0275, B:111:0x0283, B:113:0x028f, B:115:0x029d, B:117:0x02a7, B:118:0x02be, B:120:0x02c6, B:122:0x02d8, B:123:0x0324, B:124:0x0369, B:126:0x037f, B:128:0x0387, B:129:0x038c, B:133:0x03af, B:134:0x03b2, B:136:0x03ba, B:138:0x03c2, B:139:0x03d0, B:141:0x03d4, B:143:0x0405, B:142:0x03e9, B:144:0x0429, B:145:0x0435, B:147:0x0446, B:149:0x044e, B:154:0x045b, B:153:0x0458, B:158:0x0468, B:79:0x020a, B:165:0x047b, B:166:0x0497, B:168:0x04ba, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:178:0x050e, B:179:0x0540, B:180:0x0545, B:182:0x0556, B:184:0x055e, B:189:0x056b, B:188:0x0568, B:76:0x01fc, B:68:0x0190, B:66:0x018b, B:70:0x0196, B:26:0x0095, B:37:0x00e8, B:39:0x00fa, B:41:0x010c, B:44:0x0115, B:45:0x0118, B:47:0x0130, B:49:0x0142, B:51:0x0154, B:54:0x015d, B:55:0x0160), top: B:207:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0214 A[Catch: Exception -> 0x021c, all -> 0x0471, TRY_LEAVE, TryCatch #10 {all -> 0x0471, blocks: (B:9:0x0032, B:11:0x0038, B:13:0x0044, B:18:0x0065, B:20:0x0077, B:22:0x0089, B:25:0x0092, B:27:0x00ac, B:29:0x00d1, B:31:0x00d7, B:33:0x00db, B:58:0x0168, B:60:0x0173, B:61:0x0176, B:64:0x0185, B:71:0x019b, B:73:0x01a8, B:75:0x01d6, B:78:0x0205, B:80:0x020e, B:82:0x0214, B:87:0x0223, B:89:0x0227, B:90:0x022b, B:94:0x0236, B:96:0x023d, B:98:0x0245, B:103:0x0253, B:104:0x0262, B:106:0x026a, B:108:0x0272, B:109:0x0275, B:111:0x0283, B:113:0x028f, B:115:0x029d, B:117:0x02a7, B:118:0x02be, B:120:0x02c6, B:122:0x02d8, B:123:0x0324, B:124:0x0369, B:126:0x037f, B:128:0x0387, B:129:0x038c, B:133:0x03af, B:134:0x03b2, B:136:0x03ba, B:138:0x03c2, B:139:0x03d0, B:141:0x03d4, B:143:0x0405, B:142:0x03e9, B:144:0x0429, B:145:0x0435, B:147:0x0446, B:149:0x044e, B:154:0x045b, B:153:0x0458, B:158:0x0468, B:79:0x020a, B:165:0x047b, B:166:0x0497, B:168:0x04ba, B:171:0x04ce, B:173:0x04d2, B:174:0x04d6, B:176:0x04e1, B:178:0x050e, B:179:0x0540, B:180:0x0545, B:182:0x0556, B:184:0x055e, B:189:0x056b, B:188:0x0568, B:76:0x01fc, B:68:0x0190, B:66:0x018b, B:70:0x0196, B:26:0x0095, B:37:0x00e8, B:39:0x00fa, B:41:0x010c, B:44:0x0115, B:45:0x0118, B:47:0x0130, B:49:0x0142, B:51:0x0154, B:54:0x015d, B:55:0x0160), top: B:207:0x0032 }] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 1419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.task.e.run():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UNAndroidZIPThread.java */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private boolean f52285a = true;

        /* renamed from: b  reason: collision with root package name */
        File f52286b;

        /* renamed from: c  reason: collision with root package name */
        File f52287c;

        /* renamed from: d  reason: collision with root package name */
        File f52288d;

        public a(File file, File file2) {
            this.f52288d = null;
            this.f52286b = file;
            this.f52288d = file2;
        }

        public void a(boolean z3) {
            this.f52285a = z3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f52285a) {
                try {
                    long n12 = UtilsMy.n1(this.f52286b);
                    long n13 = UtilsMy.n1(this.f52287c);
                    File file = this.f52288d;
                    long length = file != null ? file.length() : 0L;
                    StringBuilder sb = new StringBuilder();
                    sb.append("zip currentSize =");
                    sb.append(n12);
                    sb.append("   surrentApk= ");
                    sb.append(length);
                    long size = e.this.f52281b.getSize() * 2;
                    try {
                        if (d2.i(e.this.f52281b.getUnzip_size())) {
                            size = Long.parseLong(e.this.f52281b.getUnzip_size());
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    if (size == 0) {
                        size = 1;
                    }
                    e.this.f52281b.setProgress((((n12 + n13) + length) * 100) / size);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("totalSize=");
                    sb2.append(size);
                    sb2.append(";zip progress =");
                    sb2.append(e.this.f52281b.getProgress());
                    UtilsMy.B3(e.this.f52281b);
                    if (e.this.f52283d) {
                        org.greenrobot.eventbus.c.f().o(new s(6, e.this.f52281b.getCrc_link_type_val(), e.this.f52281b.getProgress()));
                    }
                    Thread.sleep(1000L);
                } catch (InterruptedException e5) {
                    e5.printStackTrace();
                    e.this.a();
                    return;
                }
            }
        }

        public a(File file, File file2, File file3) {
            this.f52288d = null;
            this.f52286b = file;
            this.f52287c = file2;
            this.f52288d = file3;
        }
    }

    public e(DownloadTask downloadTask, Context context, boolean z3) {
        this.f52282c = true;
        this.f52283d = false;
        this.f52284e = null;
        this.f52281b = downloadTask;
        this.f52280a = context;
        this.f52283d = z3;
    }
}
