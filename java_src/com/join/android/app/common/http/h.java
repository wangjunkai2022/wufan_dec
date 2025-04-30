package com.join.android.app.common.http;

import android.content.Context;
import android.os.Build;
import com.MApplication;
import com.join.android.app.common.http.d;
import com.join.android.app.common.utils.j;
import com.join.mgps.Util.e1;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u1;
import com.join.mgps.dto.CloudUploadInfo;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.SearchHistoryBean;
import com.papa.sim.statistic.UpLoadGameConfig;
import com.papa.sim.statistic.UpLoadGameConfigTemp;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.ai;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.File;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* compiled from: RPCClient.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static h f17071a;

    /* compiled from: RPCClient.java */
    /* loaded from: classes.dex */
    class a extends d.p<String> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f17072b;

        a(com.join.android.app.common.http.b bVar) {
            this.f17072b = bVar;
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f17072b.a(exc);
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
            this.f17072b.onSuccess(str);
        }
    }

    /* compiled from: RPCClient.java */
    /* loaded from: classes.dex */
    class b extends d.p<String> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f17074b;

        b(com.join.android.app.common.http.b bVar) {
            this.f17074b = bVar;
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f17074b.a(exc);
        }

        @Override // com.join.android.app.common.http.d.p
        /* renamed from: f */
        public void e(String str) {
            this.f17074b.onSuccess(str);
        }
    }

    private h() {
    }

    public static h b() {
        if (f17071a == null) {
            f17071a = new h();
        }
        return f17071a;
    }

    public void a(String str) {
        d.t(str);
    }

    public void c(Context context) {
        String a4 = e1.a(context);
        d.y("http://datainterface.5fun.com/tf?net_type=" + a4 + "&v=" + j.n(context).y() + "_" + j.n(context).z(), null, null);
    }

    public String d(String[] strArr, String str, String str2, String str3, String str4, String str5, g gVar, String str6, int i2) {
        String str7;
        String str8;
        MultipartBody build;
        Response execute;
        OkHttpClient okHttpClient = new OkHttpClient();
        if (strArr.length < 2) {
            return "";
        }
        File file = new File(strArr[0]);
        File file2 = new File(strArr[1]);
        int i4 = i2 != 1 ? 1 : 2;
        if (i4 == 1) {
            MultipartBody.Builder addFormDataPart = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("archiveFile", file.getName(), RequestBody.create(MediaType.parse(HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE), file)).addFormDataPart("archiveCover", file2.getName(), RequestBody.create(MediaType.parse(HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE), file2)).addFormDataPart("uid", str).addFormDataPart("token", str2).addFormDataPart("gameId", str3).addFormDataPart("archiveName", str4).addFormDataPart("archiveDesc", str6);
            StringBuilder sb = new StringBuilder();
            sb.append(i4);
            str7 = "";
            sb.append(str7);
            str8 = str5;
            build = addFormDataPart.addFormDataPart("shareType", sb.toString()).addFormDataPart("archiveFileName", str8).build();
        } else {
            str7 = "";
            str8 = str5;
            MultipartBody.Builder addFormDataPart2 = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("uid", str).addFormDataPart("token", str2).addFormDataPart("gameId", str3).addFormDataPart("archiveName", str4).addFormDataPart("archiveDesc", str6);
            build = addFormDataPart2.addFormDataPart("shareType", i4 + str7).build();
        }
        f fVar = new f(build, gVar, str8);
        Request.Builder builder = new Request.Builder();
        try {
            execute = okHttpClient.newCall(builder.url(com.join.mgps.rpc.g.f51569z + "/cloud/shareArchive").post(fVar).build()).execute();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return !execute.isSuccessful() ? str7 : execute.body().string();
    }

    public void e(Context context, CloudUploadInfo cloudUploadInfo, File file, com.join.android.app.common.http.b bVar) {
        d.I().f(com.join.mgps.rpc.g.f51530m + "/v16/backup/upload", "backup_file", file, new d.n[]{new d.n("rid", cloudUploadInfo.getRid() + ""), new d.n("uid", cloudUploadInfo.getUid() + ""), new d.n("token", cloudUploadInfo.getToken()), new d.n("backup_type", "game"), new d.n("game_id", cloudUploadInfo.getGame_id())}, new b(bVar), file.getName());
    }

    public String f(String str, String str2, String str3, RequestModel requestModel, String str4, String str5, g gVar) {
        Response execute;
        String string;
        OkHttpClient.Builder newBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient build = newBuilder.readTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).build();
        File file = new File(str);
        MultipartBody.Builder addFormDataPart = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("args.archiveFile", file.getName(), RequestBody.create(MediaType.parse(HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE), file)).addFormDataPart("args.uid", str2).addFormDataPart("args.userToken", str3).addFormDataPart("WF", "wufun").addFormDataPart("androidId", requestModel.getAndroidId());
        f fVar = new f(addFormDataPart.addFormDataPart("androidVer", Build.VERSION.SDK_INT + "").addFormDataPart("args.async", "1").addFormDataPart("channelNum", str4).addFormDataPart("deviceId", requestModel.getDeviceId()).addFormDataPart("hDeviceId", MApplication.f9225r).addFormDataPart(ai.f60415o, requestModel.getPackage_name()).addFormDataPart("package_type", requestModel.getPackage_type()).addFormDataPart("platform", requestModel.getPlatform()).addFormDataPart("version", requestModel.getVersion()).build(), gVar, str5);
        Request.Builder builder = new Request.Builder();
        try {
            execute = build.newCall(builder.url(com.join.mgps.rpc.g.B + "/common/upload").post(fVar).build()).execute();
            string = execute.body().string();
            t0.c("upload File " + string);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return !execute.isSuccessful() ? "" : string;
    }

    public void g(Context context, UpLoadGameConfig upLoadGameConfig, File file, com.join.android.app.common.http.b bVar) {
        UpLoadGameConfigTemp upLoadGameConfigTemp = new UpLoadGameConfigTemp();
        upLoadGameConfigTemp.setUid(upLoadGameConfig.getUid());
        upLoadGameConfigTemp.setDevice_id("");
        upLoadGameConfigTemp.setVer(j.n(context).y());
        upLoadGameConfigTemp.setToken(upLoadGameConfig.getToken());
        upLoadGameConfigTemp.setGame_name(upLoadGameConfig.getGame_name());
        upLoadGameConfigTemp.setGame_type(upLoadGameConfig.getGame_type());
        upLoadGameConfigTemp.setGame_platform_type(upLoadGameConfig.getGame_platform_type());
        upLoadGameConfigTemp.setGame_explain(upLoadGameConfig.getGame_explain());
        String f4 = u1.f(upLoadGameConfigTemp);
        d.I().f(com.join.mgps.rpc.g.f51524k + "/user/upfile/upload_game_pack", "files", file, new d.n[]{new d.n("uid", upLoadGameConfig.getUid() + ""), new d.n(DeviceInfo.TAG_VERSION, j.n(context).y() + ""), new d.n("token", upLoadGameConfig.getToken()), new d.n(SearchHistoryBean.GAME_NAME, upLoadGameConfig.getGame_name()), new d.n("game_type", upLoadGameConfig.getGame_type() + ""), new d.n(DeviceInfo.TAG_VERSION, j.n(context).y() + ""), new d.n("token", upLoadGameConfig.getToken()), new d.n(SearchHistoryBean.GAME_NAME, upLoadGameConfig.getGame_name()), new d.n("game_type", upLoadGameConfig.getGame_type() + ""), new d.n("game_platform_type", upLoadGameConfig.getGame_platform_type() + ""), new d.n("game_explain", upLoadGameConfig.getGame_explain()), new d.n(Constant.MD5, f4), new d.n("device_id", "")}, new a(bVar), file.getName());
    }

    public String h(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, g gVar) {
        OkHttpClient.Builder newBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient build = newBuilder.readTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).build();
        File file = new File(str);
        File file2 = new File(str8);
        f fVar = new f(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("args.archiveFile", file.getName(), RequestBody.create(MediaType.parse(HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE), file)).addFormDataPart("args.archiveCover", file2.getName(), file2.exists() ? RequestBody.create(MediaType.parse(HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE), file2) : null).addFormDataPart("args.uid", str2).addFormDataPart("args.userToken", str3).addFormDataPart("args.gameId", str4).addFormDataPart("args.archiveDesc", str5).addFormDataPart("args.version", str6).build(), gVar, str7);
        Request.Builder builder = new Request.Builder();
        try {
            Response execute = build.newCall(builder.url(com.join.mgps.rpc.g.B + "/v6_2/game/cloudArchive/release").post(fVar).build()).execute();
            String string = execute.body().string();
            t0.c("upload File " + string);
            return !execute.isSuccessful() ? "" : string;
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public String i(String[] strArr, String str, String str2, String str3, String str4, String str5, String str6, g gVar) {
        Response execute;
        String string;
        OkHttpClient okHttpClient = new OkHttpClient();
        if (strArr.length < 2) {
            return "";
        }
        File file = new File(strArr[0]);
        File file2 = new File(strArr[1]);
        f fVar = new f(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("archiveFile", file.getName(), RequestBody.create(MediaType.parse(HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE), file)).addFormDataPart("archiveCover", file2.getName(), RequestBody.create(MediaType.parse(HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE), file2)).addFormDataPart("uid", str).addFormDataPart("token", str2).addFormDataPart("gameId", str3).addFormDataPart("archiveName", str4).addFormDataPart("archiveFileName", str5).addFormDataPart("archiveFileMd5", str6).build(), gVar, str5);
        Request.Builder builder = new Request.Builder();
        try {
            execute = okHttpClient.newCall(builder.url(com.join.mgps.rpc.g.f51569z + "/cloud/backupArchive").post(fVar).build()).execute();
            string = execute.body().string();
            t0.c("upload File " + string);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return !execute.isSuccessful() ? "" : string;
    }
}
