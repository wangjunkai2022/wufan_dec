package com.github.snowdream.android.app.downloader;

import android.os.Process;
import com.MApplication;
import com.join.android.app.common.utils.k;
import com.join.mgps.Util.u;
import com.join.mgps.dto.GameMD5ResultInfo;
import com.join.mgps.dto.GameMd5Data;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.event.j;
import com.join.mgps.rpc.impl.h;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
/* compiled from: AsycDownloadTaskRunner.java */
/* loaded from: classes2.dex */
public class a extends Thread {
    private static final int B = 1;
    private static final int C = 2;

    /* renamed from: b  reason: collision with root package name */
    private String f13912b;

    /* renamed from: c  reason: collision with root package name */
    private String f13913c;

    /* renamed from: d  reason: collision with root package name */
    private DownloadTask f13914d;

    /* renamed from: p  reason: collision with root package name */
    File f13926p;

    /* renamed from: q  reason: collision with root package name */
    File f13927q;

    /* renamed from: r  reason: collision with root package name */
    long f13928r;

    /* renamed from: s  reason: collision with root package name */
    long f13929s;

    /* renamed from: t  reason: collision with root package name */
    long f13930t;

    /* renamed from: u  reason: collision with root package name */
    long f13931u;

    /* renamed from: v  reason: collision with root package name */
    long f13932v;

    /* renamed from: w  reason: collision with root package name */
    long f13933w;
    private static final String A = a.class.getSimpleName();
    private static String D = u.f27848g;

    /* renamed from: a  reason: collision with root package name */
    private long f13911a = -1;

    /* renamed from: e  reason: collision with root package name */
    boolean f13915e = false;

    /* renamed from: f  reason: collision with root package name */
    boolean f13916f = false;

    /* renamed from: g  reason: collision with root package name */
    boolean f13917g = false;

    /* renamed from: h  reason: collision with root package name */
    InputStream f13918h = null;

    /* renamed from: i  reason: collision with root package name */
    RandomAccessFile f13919i = null;

    /* renamed from: j  reason: collision with root package name */
    InputStream f13920j = null;

    /* renamed from: k  reason: collision with root package name */
    RandomAccessFile f13921k = null;

    /* renamed from: l  reason: collision with root package name */
    HttpURLConnection f13922l = null;

    /* renamed from: m  reason: collision with root package name */
    HttpURLConnection f13923m = null;

    /* renamed from: n  reason: collision with root package name */
    HttpURLConnection f13924n = null;

    /* renamed from: o  reason: collision with root package name */
    HttpURLConnection f13925o = null;

    /* renamed from: x  reason: collision with root package name */
    String f13934x = "";

    /* renamed from: y  reason: collision with root package name */
    boolean f13935y = false;

    /* renamed from: z  reason: collision with root package name */
    boolean f13936z = false;

    public a(String str, String str2, DownloadTask downloadTask) {
        this.f13912b = str;
        this.f13913c = str2;
        this.f13914d = downloadTask;
    }

    private void a() {
        this.f13914d.setSpeed("0");
        if (this.f13911a == -1) {
            org.greenrobot.eventbus.c.f().o(new j(this.f13913c, 32));
            return;
        }
        if (this.f13916f) {
            p(this.f13914d, System.currentTimeMillis() - this.f13911a, 2);
        } else {
            o(this.f13914d, System.currentTimeMillis() - this.f13911a);
        }
        org.greenrobot.eventbus.c.f().o(new j(this.f13913c, 32));
    }

    private void b(DownloadTask downloadTask, long j4, int i2) {
        downloadTask.setDuration(downloadTask.getDuration() + j4);
        downloadTask.setInterrupt(i2);
        if (downloadTask.getStatus() == 5) {
            downloadTask.setProgress(100L);
        }
        try {
            g1.f.G().update(downloadTask);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void c() {
        try {
            InputStream inputStream = this.f13920j;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        RandomAccessFile randomAccessFile = this.f13921k;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        HttpURLConnection httpURLConnection = this.f13924n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
                this.f13924n = null;
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }
    }

    private void d() {
        try {
            InputStream inputStream = this.f13918h;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        RandomAccessFile randomAccessFile = this.f13919i;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        HttpURLConnection httpURLConnection = this.f13925o;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
                this.f13925o = null;
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }
    }

    private long g(HttpURLConnection httpURLConnection) {
        int i2 = 0;
        while (true) {
            String headerFieldKey = httpURLConnection.getHeaderFieldKey(i2);
            if (headerFieldKey == null) {
                return 0L;
            }
            if (headerFieldKey.equals("Content-Length")) {
                return Long.parseLong(httpURLConnection.getHeaderField(i2));
            }
            i2++;
        }
    }

    private String k(GameMd5Data gameMd5Data) {
        try {
            RequestModel<GameMd5Data> requestModel = new RequestModel<>();
            requestModel.setDefault(MApplication.f9223q);
            requestModel.setArgs(gameMd5Data);
            ResponseModel<GameMD5ResultInfo> body = h.L().J().G0(requestModel).execute().body();
            return (body == null || body.getData() == null || body.getData().getInfo() == null) ? "skip" : body.getData().getInfo().getState();
        } catch (IOException e4) {
            e4.printStackTrace();
            return "skip";
        }
    }

    private boolean l(DownloadTask downloadTask) {
        if (downloadTask.getStatus() != 7) {
            return downloadTask.getStatus() == 40;
        }
        org.greenrobot.eventbus.c.f().o(new j(this.f13913c, 34));
        return true;
    }

    private boolean m(DownloadTask downloadTask) {
        if (downloadTask.getStatus() == 27) {
            org.greenrobot.eventbus.c.f().o(new j(this.f13913c, 35));
            return true;
        } else if (downloadTask.getMobleNetNeedStop() == 1) {
            a();
            return true;
        } else {
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:5|6|(13:8|(22:12|(3:292|293|(1:295)(20:296|15|16|(1:18)|19|20|(3:281|282|(13:287|288|46|47|(7:52|53|54|(1:122)(1:58)|59|60|(21:62|63|(18:68|(1:70)(1:117)|71|(1:116)(2:75|76)|115|78|(2:99|100)|80|81|82|(1:84)|85|(1:87)|88|(4:90|91|92|93)|94|95|93)|118|71|(1:73)|116|115|78|(0)|80|81|82|(0)|85|(0)|88|(0)|94|95|93))|123|(9:125|(1:127)(1:245)|128|(3:130|(2:132|(2:135|136)(1:134))|243)|244|137|(9:139|(1:141)|142|(3:150|151|(10:153|154|155|156|157|(1:159)|160|(1:162)|163|(2:165|167)(1:169)))|177|178|179|(1:181)|182)(2:193|(2:199|(9:201|(1:203)|204|(9:215|216|217|218|(1:220)|221|(1:223)|224|(2:226|228)(1:229))|233|234|235|(1:237)|238)))|183|184)(2:246|247)|54|(1:56)|122|59|60|(0)))|22|(6:24|(1:26)(1:278)|27|(6:29|(1:31)|32|(1:255)(2:36|(1:253)(2:40|(2:42|43)))|254|43)(2:256|(2:262|(4:264|(1:266)|267|(1:277))))|44|45)(2:279|280)|46|47|(9:49|52|53|54|(0)|122|59|60|(0))|123|(0)(0)|54|(0)|122|59|60|(0)))|14|15|16|(0)|19|20|(0)|22|(0)(0)|46|47|(0)|123|(0)(0)|54|(0)|122|59|60|(0))|302|303|304|(1:306)|307|(1:309)|310|(4:312|313|314|(1:319)(2:317|318))|322|314|(1:319)(1:320))(1:326)|119|81|82|(0)|85|(0)|88|(0)|94|95|93) */
    /* JADX WARN: Can't wrap try/catch for region: R(22:12|(3:292|293|(1:295)(20:296|15|16|(1:18)|19|20|(3:281|282|(13:287|288|46|47|(7:52|53|54|(1:122)(1:58)|59|60|(21:62|63|(18:68|(1:70)(1:117)|71|(1:116)(2:75|76)|115|78|(2:99|100)|80|81|82|(1:84)|85|(1:87)|88|(4:90|91|92|93)|94|95|93)|118|71|(1:73)|116|115|78|(0)|80|81|82|(0)|85|(0)|88|(0)|94|95|93))|123|(9:125|(1:127)(1:245)|128|(3:130|(2:132|(2:135|136)(1:134))|243)|244|137|(9:139|(1:141)|142|(3:150|151|(10:153|154|155|156|157|(1:159)|160|(1:162)|163|(2:165|167)(1:169)))|177|178|179|(1:181)|182)(2:193|(2:199|(9:201|(1:203)|204|(9:215|216|217|218|(1:220)|221|(1:223)|224|(2:226|228)(1:229))|233|234|235|(1:237)|238)))|183|184)(2:246|247)|54|(1:56)|122|59|60|(0)))|22|(6:24|(1:26)(1:278)|27|(6:29|(1:31)|32|(1:255)(2:36|(1:253)(2:40|(2:42|43)))|254|43)(2:256|(2:262|(4:264|(1:266)|267|(1:277))))|44|45)(2:279|280)|46|47|(9:49|52|53|54|(0)|122|59|60|(0))|123|(0)(0)|54|(0)|122|59|60|(0)))|14|15|16|(0)|19|20|(0)|22|(0)(0)|46|47|(0)|123|(0)(0)|54|(0)|122|59|60|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x069c, code lost:
        if (r19.f13914d.getTask_down_type() == 3) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x06b2, code lost:
        if (r19.f13914d.getTask_down_type() == 2) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x06ba, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0735, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0736, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02b9 A[Catch: Exception -> 0x00ee, all -> 0x0709, TRY_ENTER, TryCatch #0 {Exception -> 0x00ee, blocks: (B:31:0x00d1, B:33:0x00d9, B:36:0x00e3, B:99:0x029d, B:102:0x02a6, B:219:0x05cb, B:228:0x05ff, B:231:0x0609, B:233:0x0612, B:234:0x0636, B:106:0x02b9, B:108:0x02c1, B:110:0x02ce, B:112:0x031b, B:114:0x0325, B:116:0x0333, B:119:0x0346, B:121:0x0355, B:124:0x0362, B:126:0x036c, B:128:0x0372, B:130:0x0378, B:132:0x037e, B:141:0x039b, B:140:0x0398, B:155:0x03c2, B:163:0x0426, B:213:0x059e, B:162:0x0423, B:170:0x045d, B:172:0x04a7, B:175:0x04b4, B:177:0x04be, B:179:0x04c4, B:181:0x04ca, B:183:0x04d0, B:186:0x04e2, B:200:0x0509, B:208:0x056d, B:207:0x056a, B:117:0x033e, B:109:0x02ca, B:42:0x00fe, B:44:0x0106, B:46:0x0115, B:48:0x0180, B:51:0x018d, B:53:0x0197, B:55:0x019d, B:57:0x01a5, B:59:0x01ab, B:65:0x01ca, B:92:0x0287, B:72:0x01ec, B:74:0x0236, B:77:0x0244, B:79:0x024e, B:81:0x0254, B:83:0x025a, B:85:0x0260, B:87:0x0271), top: B:323:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x05cb A[Catch: Exception -> 0x00ee, all -> 0x0709, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ee, blocks: (B:31:0x00d1, B:33:0x00d9, B:36:0x00e3, B:99:0x029d, B:102:0x02a6, B:219:0x05cb, B:228:0x05ff, B:231:0x0609, B:233:0x0612, B:234:0x0636, B:106:0x02b9, B:108:0x02c1, B:110:0x02ce, B:112:0x031b, B:114:0x0325, B:116:0x0333, B:119:0x0346, B:121:0x0355, B:124:0x0362, B:126:0x036c, B:128:0x0372, B:130:0x0378, B:132:0x037e, B:141:0x039b, B:140:0x0398, B:155:0x03c2, B:163:0x0426, B:213:0x059e, B:162:0x0423, B:170:0x045d, B:172:0x04a7, B:175:0x04b4, B:177:0x04be, B:179:0x04c4, B:181:0x04ca, B:183:0x04d0, B:186:0x04e2, B:200:0x0509, B:208:0x056d, B:207:0x056a, B:117:0x033e, B:109:0x02ca, B:42:0x00fe, B:44:0x0106, B:46:0x0115, B:48:0x0180, B:51:0x018d, B:53:0x0197, B:55:0x019d, B:57:0x01a5, B:59:0x01ab, B:65:0x01ca, B:92:0x0287, B:72:0x01ec, B:74:0x0236, B:77:0x0244, B:79:0x024e, B:81:0x0254, B:83:0x025a, B:85:0x0260, B:87:0x0271), top: B:323:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x05d6 A[Catch: Exception -> 0x06ba, all -> 0x0709, TRY_LEAVE, TryCatch #3 {all -> 0x0709, blocks: (B:6:0x000b, B:8:0x0023, B:10:0x0029, B:13:0x0033, B:15:0x0041, B:18:0x004a, B:24:0x0091, B:28:0x009a, B:31:0x00d1, B:33:0x00d9, B:36:0x00e3, B:96:0x0294, B:99:0x029d, B:102:0x02a6, B:217:0x05a7, B:219:0x05cb, B:223:0x05d2, B:225:0x05d6, B:228:0x05ff, B:231:0x0609, B:233:0x0612, B:237:0x0684, B:239:0x068c, B:241:0x0695, B:247:0x06a3, B:249:0x06ab, B:251:0x06b4, B:246:0x06a0, B:288:0x0711, B:234:0x0636, B:236:0x0661, B:104:0x02ad, B:106:0x02b9, B:108:0x02c1, B:110:0x02ce, B:112:0x031b, B:114:0x0325, B:116:0x0333, B:119:0x0346, B:121:0x0355, B:124:0x0362, B:126:0x036c, B:128:0x0372, B:130:0x0378, B:132:0x037e, B:136:0x0390, B:141:0x039b, B:140:0x0398, B:155:0x03c2, B:156:0x03f1, B:158:0x03fd, B:163:0x0426, B:209:0x0596, B:213:0x059e, B:162:0x0423, B:170:0x045d, B:172:0x04a7, B:175:0x04b4, B:177:0x04be, B:179:0x04c4, B:181:0x04ca, B:183:0x04d0, B:186:0x04e2, B:200:0x0509, B:201:0x0538, B:203:0x0544, B:208:0x056d, B:207:0x056a, B:117:0x033e, B:109:0x02ca, B:216:0x05a5, B:40:0x00f2, B:42:0x00fe, B:44:0x0106, B:46:0x0115, B:48:0x0180, B:51:0x018d, B:53:0x0197, B:55:0x019d, B:57:0x01a5, B:59:0x01ab, B:65:0x01ca, B:88:0x027f, B:92:0x0287, B:72:0x01ec, B:74:0x0236, B:77:0x0244, B:79:0x024e, B:81:0x0254, B:83:0x025a, B:85:0x0260, B:87:0x0271, B:95:0x0292, B:23:0x0058), top: B:324:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x06ed A[Catch: Exception -> 0x0735, TryCatch #5 {Exception -> 0x0735, blocks: (B:272:0x06e9, B:274:0x06ed, B:275:0x06f3, B:277:0x06f7, B:278:0x06fd, B:280:0x0701, B:289:0x0717, B:291:0x071b, B:292:0x0721, B:294:0x0725, B:295:0x072b, B:297:0x072f), top: B:330:0x06e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x06f7 A[Catch: Exception -> 0x0735, TryCatch #5 {Exception -> 0x0735, blocks: (B:272:0x06e9, B:274:0x06ed, B:275:0x06f3, B:277:0x06f7, B:278:0x06fd, B:280:0x0701, B:289:0x0717, B:291:0x071b, B:292:0x0721, B:294:0x0725, B:295:0x072b, B:297:0x072f), top: B:330:0x06e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0701 A[Catch: Exception -> 0x0735, TRY_LEAVE, TryCatch #5 {Exception -> 0x0735, blocks: (B:272:0x06e9, B:274:0x06ed, B:275:0x06f3, B:277:0x06f7, B:278:0x06fd, B:280:0x0701, B:289:0x0717, B:291:0x071b, B:292:0x0721, B:294:0x0725, B:295:0x072b, B:297:0x072f), top: B:330:0x06e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x071b A[Catch: Exception -> 0x0735, TryCatch #5 {Exception -> 0x0735, blocks: (B:272:0x06e9, B:274:0x06ed, B:275:0x06f3, B:277:0x06f7, B:278:0x06fd, B:280:0x0701, B:289:0x0717, B:291:0x071b, B:292:0x0721, B:294:0x0725, B:295:0x072b, B:297:0x072f), top: B:330:0x06e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0725 A[Catch: Exception -> 0x0735, TryCatch #5 {Exception -> 0x0735, blocks: (B:272:0x06e9, B:274:0x06ed, B:275:0x06f3, B:277:0x06f7, B:278:0x06fd, B:280:0x0701, B:289:0x0717, B:291:0x071b, B:292:0x0721, B:294:0x0725, B:295:0x072b, B:297:0x072f), top: B:330:0x06e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x072f A[Catch: Exception -> 0x0735, TRY_LEAVE, TryCatch #5 {Exception -> 0x0735, blocks: (B:272:0x06e9, B:274:0x06ed, B:275:0x06f3, B:277:0x06f7, B:278:0x06fd, B:280:0x0701, B:289:0x0717, B:291:0x071b, B:292:0x0721, B:294:0x0725, B:295:0x072b, B:297:0x072f), top: B:330:0x06e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:320:0x076b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:323:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:326:0x06ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:365:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fe A[Catch: Exception -> 0x00ee, all -> 0x0709, TRY_ENTER, TryCatch #0 {Exception -> 0x00ee, blocks: (B:31:0x00d1, B:33:0x00d9, B:36:0x00e3, B:99:0x029d, B:102:0x02a6, B:219:0x05cb, B:228:0x05ff, B:231:0x0609, B:233:0x0612, B:234:0x0636, B:106:0x02b9, B:108:0x02c1, B:110:0x02ce, B:112:0x031b, B:114:0x0325, B:116:0x0333, B:119:0x0346, B:121:0x0355, B:124:0x0362, B:126:0x036c, B:128:0x0372, B:130:0x0378, B:132:0x037e, B:141:0x039b, B:140:0x0398, B:155:0x03c2, B:163:0x0426, B:213:0x059e, B:162:0x0423, B:170:0x045d, B:172:0x04a7, B:175:0x04b4, B:177:0x04be, B:179:0x04c4, B:181:0x04ca, B:183:0x04d0, B:186:0x04e2, B:200:0x0509, B:208:0x056d, B:207:0x056a, B:117:0x033e, B:109:0x02ca, B:42:0x00fe, B:44:0x0106, B:46:0x0115, B:48:0x0180, B:51:0x018d, B:53:0x0197, B:55:0x019d, B:57:0x01a5, B:59:0x01ab, B:65:0x01ca, B:92:0x0287, B:72:0x01ec, B:74:0x0236, B:77:0x0244, B:79:0x024e, B:81:0x0254, B:83:0x025a, B:85:0x0260, B:87:0x0271), top: B:323:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x029d A[Catch: Exception -> 0x00ee, all -> 0x0709, TRY_ENTER, TryCatch #0 {Exception -> 0x00ee, blocks: (B:31:0x00d1, B:33:0x00d9, B:36:0x00e3, B:99:0x029d, B:102:0x02a6, B:219:0x05cb, B:228:0x05ff, B:231:0x0609, B:233:0x0612, B:234:0x0636, B:106:0x02b9, B:108:0x02c1, B:110:0x02ce, B:112:0x031b, B:114:0x0325, B:116:0x0333, B:119:0x0346, B:121:0x0355, B:124:0x0362, B:126:0x036c, B:128:0x0372, B:130:0x0378, B:132:0x037e, B:141:0x039b, B:140:0x0398, B:155:0x03c2, B:163:0x0426, B:213:0x059e, B:162:0x0423, B:170:0x045d, B:172:0x04a7, B:175:0x04b4, B:177:0x04be, B:179:0x04c4, B:181:0x04ca, B:183:0x04d0, B:186:0x04e2, B:200:0x0509, B:208:0x056d, B:207:0x056a, B:117:0x033e, B:109:0x02ca, B:42:0x00fe, B:44:0x0106, B:46:0x0115, B:48:0x0180, B:51:0x018d, B:53:0x0197, B:55:0x019d, B:57:0x01a5, B:59:0x01ab, B:65:0x01ca, B:92:0x0287, B:72:0x01ec, B:74:0x0236, B:77:0x0244, B:79:0x024e, B:81:0x0254, B:83:0x025a, B:85:0x0260, B:87:0x0271), top: B:323:0x00d1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n() {
        /*
            Method dump skipped, instructions count: 1905
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.snowdream.android.app.downloader.a.n():void");
    }

    private void o(DownloadTask downloadTask, long j4) {
        downloadTask.setDuration(downloadTask.getDuration() + j4);
        if (downloadTask.getStatus() == 5) {
            downloadTask.setProgress(100L);
        }
        try {
            g1.f.G().update(downloadTask);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void p(DownloadTask downloadTask, long j4, int i2) {
        downloadTask.setDuration(downloadTask.getDuration() + j4);
        downloadTask.setInterrupt(i2);
        if (downloadTask.getStatus() == 5) {
            downloadTask.setProgress(100L);
        }
        try {
            g1.f.G().update(downloadTask);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(26:47|48|(5:376|377|378|379|380)(1:50)|(3:51|52|53)|(6:361|362|(1:364)|365|(2:369|(1:371))|372)(2:57|(10:66|67|(1:69)|70|(3:304|305|(5:314|315|316|317|318))|72|73|(8:75|(1:77)|78|(7:80|(4:82|(1:84)(1:100)|85|(1:87))(1:101)|88|(1:99)|92|(2:94|(1:96)(1:97))|98)|102|(8:104|(4:109|110|111|(2:120|121)(4:115|117|118|119))|124|110|111|(1:113)|120|121)|125|(5:127|128|(1:130)|131|132))|133|(9:141|142|143|144|(8:148|(2:149|(12:151|152|153|154|(3:156|157|158)|163|164|(1:166)|167|(3:169|(8:171|172|173|174|(1:176)|177|(1:179)|180)(1:278)|181)(1:279)|182|(2:273|274)(2:184|(2:187|188)(1:186)))(2:284|285))|275|189|(3:269|270|(1:272))(4:191|(8:193|(2:195|196)(4:247|248|249|(5:251|(4:253|235|236|27)|198|199|(2:224|(2:238|239)(2:226|(4:234|235|236|27)(1:231)))(4:203|204|(4:206|(1:208)(1:216)|209|(1:211))(4:217|(1:219)(1:223)|220|(1:222))|212)))|197|198|199|(1:201)|224|(0)(0))(10:258|259|260|(7:262|(4:264|235|236|27)|198|199|(0)|224|(0)(0))|197|198|199|(0)|224|(0)(0))|214|215)|213|214|215)|288|289|290|291)(4:137|138|139|140))(4:62|63|64|65))|351|(0)|66|67|(0)|70|(0)|72|73|(0)|133|(1:135)|141|142|143|144|(1:292)(9:146|148|(3:149|(0)(0)|186)|275|189|(0)(0)|213|214|215)|288|289|290|291) */
    /* JADX WARN: Can't wrap try/catch for region: R(8:193|(2:195|196)(4:247|248|249|(5:251|(4:253|235|236|27)|198|199|(2:224|(2:238|239)(2:226|(4:234|235|236|27)(1:231)))(4:203|204|(4:206|(1:208)(1:216)|209|(1:211))(4:217|(1:219)(1:223)|220|(1:222))|212)))|197|198|199|(1:201)|224|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0537, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0539, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0546, code lost:
        if (r0.getMessage().contains("EISDIR") != false) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x054e, code lost:
        if (r30.f13926p.exists() != false) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0558, code lost:
        com.join.mgps.Util.UtilsMy.delete(r30.f13926p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x055d, code lost:
        r2 = new java.io.RandomAccessFile(r30.f13926p, net.lingala.zip4j.util.e.f73015e0);
        r30.f13921k = r2;
        r2.seek(r30.f13928r);
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x09be, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x09bf, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x09cf, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x09d0, code lost:
        r25 = r13;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0366 A[Catch: Exception -> 0x02dd, all -> 0x09f2, TRY_ENTER, TryCatch #13 {all -> 0x09f2, blocks: (B:9:0x002c, B:11:0x004d, B:14:0x0057, B:17:0x008a, B:19:0x0092, B:20:0x0097, B:25:0x00a4, B:28:0x00ad, B:30:0x00b7, B:32:0x0103, B:35:0x0114, B:37:0x0127, B:40:0x0131, B:43:0x016b, B:45:0x0187, B:54:0x01a7, B:105:0x02d6, B:111:0x02e6, B:114:0x0308, B:116:0x0314, B:118:0x031c, B:120:0x0324, B:122:0x032c, B:126:0x033d, B:131:0x0355, B:130:0x0352, B:134:0x035c, B:137:0x0366, B:139:0x036e, B:140:0x0379, B:142:0x037f, B:144:0x0389, B:148:0x039e, B:150:0x03aa, B:152:0x03c1, B:154:0x03c7, B:157:0x03df, B:159:0x03e7, B:161:0x03ef, B:162:0x03fb, B:163:0x0400, B:156:0x03cf, B:147:0x039a, B:151:0x03b1, B:164:0x0406, B:166:0x040c, B:168:0x041e, B:171:0x0427, B:173:0x045d, B:175:0x046e, B:177:0x0474, B:180:0x048b, B:357:0x09ff, B:172:0x0447, B:184:0x049f, B:186:0x04b8, B:188:0x04e0, B:191:0x04f1, B:193:0x04fd, B:195:0x0503, B:198:0x051a, B:199:0x0526, B:211:0x056d, B:213:0x05bc, B:217:0x05c8, B:220:0x05d3, B:224:0x05dc, B:228:0x05e5, B:231:0x05ff, B:234:0x0609, B:236:0x0634, B:238:0x063a, B:240:0x065b, B:244:0x067b, B:246:0x069f, B:248:0x06bb, B:259:0x0704, B:261:0x0709, B:263:0x0712, B:265:0x0724, B:267:0x0753, B:269:0x075b, B:297:0x0876, B:299:0x087e, B:301:0x0884, B:303:0x08b1, B:305:0x08d0, B:307:0x08f1, B:309:0x08fd, B:317:0x0964, B:306:0x08e1, B:310:0x090b, B:312:0x092a, B:314:0x094b, B:316:0x0957, B:313:0x093b, B:318:0x0969, B:320:0x0972, B:321:0x0977, B:323:0x097f, B:329:0x09b6, B:325:0x098b, B:327:0x098f, B:275:0x077a, B:280:0x0796, B:284:0x07c1, B:273:0x0775, B:279:0x0793, B:286:0x07f7, B:291:0x0813, B:295:0x083e, B:290:0x0810, B:251:0x06c4, B:253:0x06cc, B:245:0x0691, B:334:0x09c6, B:203:0x0539, B:205:0x0548, B:207:0x0550, B:209:0x0558, B:210:0x055d, B:62:0x01ce, B:63:0x01de, B:68:0x01e9, B:71:0x020b, B:72:0x0212, B:74:0x021f, B:76:0x023d, B:78:0x0252, B:81:0x026b, B:83:0x0277, B:85:0x0285, B:67:0x01e6, B:91:0x0299, B:93:0x02a7, B:96:0x02b1, B:98:0x02bd, B:100:0x02cb), top: B:379:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0724 A[Catch: Exception -> 0x09cd, all -> 0x09f2, TRY_ENTER, TryCatch #4 {Exception -> 0x09cd, blocks: (B:238:0x063a, B:240:0x065b, B:244:0x067b, B:246:0x069f, B:248:0x06bb, B:259:0x0704, B:261:0x0709, B:263:0x0712, B:265:0x0724, B:267:0x0753, B:280:0x0796, B:273:0x0775, B:279:0x0793, B:291:0x0813, B:290:0x0810, B:251:0x06c4, B:253:0x06cc, B:245:0x0691, B:334:0x09c6), top: B:372:0x063a }] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x087e A[Catch: Exception -> 0x09be, all -> 0x09f2, TryCatch #12 {Exception -> 0x09be, blocks: (B:297:0x0876, B:299:0x087e, B:301:0x0884, B:303:0x08b1, B:305:0x08d0, B:307:0x08f1, B:309:0x08fd, B:317:0x0964, B:306:0x08e1, B:310:0x090b, B:312:0x092a, B:314:0x094b, B:316:0x0957, B:313:0x093b, B:318:0x0969, B:320:0x0972, B:321:0x0977, B:323:0x097f, B:329:0x09b6, B:325:0x098b, B:327:0x098f, B:284:0x07c1, B:295:0x083e), top: B:387:0x0876 }] */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0977 A[Catch: Exception -> 0x09be, all -> 0x09f2, TryCatch #12 {Exception -> 0x09be, blocks: (B:297:0x0876, B:299:0x087e, B:301:0x0884, B:303:0x08b1, B:305:0x08d0, B:307:0x08f1, B:309:0x08fd, B:317:0x0964, B:306:0x08e1, B:310:0x090b, B:312:0x092a, B:314:0x094b, B:316:0x0957, B:313:0x093b, B:318:0x0969, B:320:0x0972, B:321:0x0977, B:323:0x097f, B:329:0x09b6, B:325:0x098b, B:327:0x098f, B:284:0x07c1, B:295:0x083e), top: B:387:0x0876 }] */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0314 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0709 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0972 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x06ff A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void e() {
        /*
            Method dump skipped, instructions count: 2594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.snowdream.android.app.downloader.a.e():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(29:57|58|59|60|61|(2:370|371)(1:63)|64|65|(6:354|355|(1:357)|358|(1:369)(3:362|(1:366)|367)|368)(1:69)|348|(0)|78|(0)|81|(0)|101|(0)(0)|124|(0)|162|(0)|170|171|172|(0)(0)|294|295|296|297) */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0569, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x056b, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0578, code lost:
        if (r0.getMessage().contains("EISDIR") != false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0580, code lost:
        if (r29.f13927q.exists() != false) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x058a, code lost:
        com.join.mgps.Util.UtilsMy.delete(r29.f13927q);
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x058f, code lost:
        r7 = new java.io.RandomAccessFile(r29.f13927q, net.lingala.zip4j.util.e.f73015e0);
        r29.f13919i = r7;
        r7.seek(r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02bc A[Catch: Exception -> 0x01a1, all -> 0x08a8, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02f3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x032a A[Catch: Exception -> 0x01a1, all -> 0x08a8, TRY_ENTER, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0378 A[Catch: Exception -> 0x01a1, all -> 0x08a8, TRY_ENTER, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03e5 A[Catch: Exception -> 0x01a1, all -> 0x08a8, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x040b A[Catch: Exception -> 0x01a1, all -> 0x08a8, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04b8 A[Catch: Exception -> 0x01a1, all -> 0x08a8, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x053d A[Catch: Exception -> 0x01a1, all -> 0x08a8, TRY_ENTER, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094 A[Catch: Exception -> 0x0053, all -> 0x08a8, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x05ec A[Catch: Exception -> 0x0897, all -> 0x08a8, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0724 A[Catch: Exception -> 0x070f, all -> 0x08a8, TRY_ENTER, TryCatch #0 {Exception -> 0x070f, blocks: (B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:290:0x0724, B:292:0x072d, B:276:0x06de, B:278:0x06e6), top: B:367:0x0617 }] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x073f A[Catch: Exception -> 0x0888, all -> 0x08a8, TRY_ENTER, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x07ea A[Catch: Exception -> 0x0895, all -> 0x08a8, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0807 A[Catch: Exception -> 0x0895, all -> 0x08a8, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bc A[Catch: Exception -> 0x0053, all -> 0x08a8, TRY_ENTER, TryCatch #3 {all -> 0x08a8, blocks: (B:9:0x001d, B:12:0x003d, B:15:0x0046, B:20:0x008e, B:22:0x0094, B:23:0x009b, B:25:0x00a8, B:28:0x00b2, B:31:0x00bc, B:33:0x00c0, B:35:0x00c6, B:39:0x00d3, B:41:0x00dd, B:43:0x00f2, B:45:0x00fb, B:47:0x0117, B:50:0x0128, B:52:0x0130, B:55:0x013a, B:57:0x0144, B:60:0x017c, B:65:0x01ab, B:128:0x02f5, B:131:0x02fc, B:134:0x031e, B:136:0x032a, B:138:0x0332, B:140:0x033a, B:142:0x0342, B:146:0x0353, B:151:0x036b, B:150:0x0368, B:154:0x0372, B:156:0x0378, B:158:0x0382, B:162:0x0397, B:164:0x03a3, B:167:0x03bd, B:169:0x03c3, B:174:0x03dd, B:176:0x03e5, B:178:0x03ed, B:179:0x03f9, B:183:0x040b, B:185:0x0415, B:186:0x041a, B:188:0x0420, B:190:0x0432, B:193:0x043b, B:195:0x0482, B:197:0x0493, B:199:0x0499, B:202:0x04b0, B:204:0x04b8, B:205:0x04bd, B:194:0x0460, B:206:0x04c2, B:208:0x04db, B:210:0x04ef, B:212:0x04f8, B:214:0x0518, B:217:0x0531, B:219:0x053d, B:221:0x0543, B:224:0x055a, B:228:0x056b, B:230:0x057a, B:232:0x0582, B:234:0x058a, B:235:0x058f, B:236:0x059d, B:238:0x05ec, B:242:0x05f8, B:247:0x0608, B:248:0x060a, B:250:0x0617, B:252:0x0624, B:255:0x062e, B:257:0x063e, B:259:0x065c, B:261:0x0671, B:264:0x067b, B:266:0x0687, B:265:0x067e, B:270:0x06a6, B:272:0x06c5, B:271:0x06be, B:273:0x06d5, B:288:0x071f, B:290:0x0724, B:292:0x072d, B:294:0x073f, B:296:0x0762, B:298:0x0768, B:300:0x078c, B:304:0x0796, B:309:0x07e6, B:311:0x07ea, B:313:0x0823, B:312:0x0807, B:360:0x08b3, B:306:0x07b1, B:308:0x07d9, B:317:0x082b, B:319:0x0834, B:322:0x083b, B:324:0x0843, B:333:0x087c, B:331:0x0857, B:276:0x06de, B:278:0x06e6, B:341:0x088e, B:173:0x03ce, B:161:0x0393, B:166:0x03ad, B:73:0x01d7, B:74:0x01e7, B:79:0x01f2, B:82:0x0216, B:83:0x021d, B:85:0x0228, B:86:0x024a, B:91:0x025a, B:93:0x0260, B:95:0x0266, B:97:0x026d, B:100:0x0286, B:102:0x0292, B:104:0x02a0, B:78:0x01ef, B:108:0x02ae, B:110:0x02bc, B:115:0x02cc, B:117:0x02d2, B:119:0x02d8, B:19:0x0059), top: B:371:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:390:0x017c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:409:0x088a A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x071b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void f() {
        /*
            Method dump skipped, instructions count: 2258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.snowdream.android.app.downloader.a.f():void");
    }

    public String h() {
        return this.f13913c;
    }

    public String i() {
        return this.f13912b;
    }

    public void j() {
        this.f13917g = true;
    }

    public void q(String str) {
        this.f13912b = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        setPriority(1);
        Process.setThreadPriority(19);
        if (this.f13917g) {
            return;
        }
        D = u.f27846e;
        k.c(this.f13914d);
        DownloadTask downloadTask = this.f13914d;
        if (downloadTask != null && downloadTask.isValid()) {
            if (this.f13917g) {
                return;
            }
            org.greenrobot.eventbus.c.f().o(new j(this.f13913c, 20));
            if (m(this.f13914d) || l(this.f13914d)) {
                return;
            }
            n();
            return;
        }
        a();
    }
}
