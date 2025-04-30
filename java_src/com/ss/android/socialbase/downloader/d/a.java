package com.ss.android.socialbase.downloader.d;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.depend.n;
import com.ss.android.socialbase.downloader.depend.x;
import com.ss.android.socialbase.downloader.downloader.q;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.exception.g;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.network.i;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DownloadMonitorHelper.java */
/* loaded from: classes4.dex */
public class a {
    public static void a(DownloadTask downloadTask, BaseException baseException, int i2) {
        if (downloadTask == null) {
            return;
        }
        try {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            if (downloadInfo == null) {
                return;
            }
            x monitorDepend = downloadTask.getMonitorDepend();
            boolean isMonitorStatus = DownloadStatus.isMonitorStatus(i2);
            if (!isMonitorStatus && !(isMonitorStatus = a(downloadInfo.getExtraMonitorStatus(), i2)) && monitorDepend != null && (monitorDepend instanceof com.ss.android.socialbase.downloader.depend.c)) {
                isMonitorStatus = a(((com.ss.android.socialbase.downloader.depend.c) monitorDepend).a(), i2);
            }
            if (isMonitorStatus) {
                n depend = downloadTask.getDepend();
                if (depend != null) {
                    depend.a(downloadInfo, baseException, i2);
                }
                a(monitorDepend, downloadInfo, baseException, i2);
                a(com.ss.android.socialbase.downloader.downloader.c.g(), downloadInfo, baseException, i2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static boolean a(int[] iArr, int i2) {
        if (iArr != null && iArr.length > 0) {
            for (int i4 : iArr) {
                if (i2 == i4) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void a(x xVar, DownloadInfo downloadInfo, BaseException baseException, int i2) {
        if (xVar == null) {
            return;
        }
        try {
            String b4 = xVar.b();
            if (TextUtils.isEmpty(b4)) {
                b4 = "default";
            }
            JSONObject a4 = a(b4, downloadInfo, baseException, i2);
            if (a4 == null) {
                a4 = new JSONObject();
            }
            xVar.a(a4);
        } catch (Throwable unused) {
        }
    }

    public static void a(b bVar, DownloadInfo downloadInfo, BaseException baseException, int i2) {
        if (bVar == null || !downloadInfo.isNeedSDKMonitor() || TextUtils.isEmpty(downloadInfo.getMonitorScene())) {
            return;
        }
        try {
            JSONObject a4 = a(downloadInfo.getMonitorScene(), downloadInfo, baseException, i2);
            if (a4 == null) {
                a4 = new JSONObject();
            }
            if (i2 == -1) {
                a4.put("status", baseException.getErrorCode());
                bVar.a("download_failed", a4, null, null);
                return;
            }
            a(i2, a4, downloadInfo);
            bVar.a("download_common", a4, null, null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void a(int i2, JSONObject jSONObject, DownloadInfo downloadInfo) throws JSONException {
        String str;
        if (i2 == -5) {
            str = "download_uncomplete";
        } else if (i2 == -4) {
            str = "download_cancel";
        } else if (i2 != -3) {
            str = i2 != -2 ? i2 != 0 ? i2 != 2 ? i2 != 6 ? "" : "download_first_start" : "download_start" : "download_create" : "download_pause";
        } else {
            double downloadSpeed = downloadInfo.getDownloadSpeed();
            if (downloadSpeed >= 0.0d) {
                jSONObject.put("download_speed", downloadSpeed);
            }
            str = "download_success";
        }
        jSONObject.put("status", str);
    }

    public static String a(String str) {
        try {
            return TextUtils.isDigitsOnly(str) ? String.valueOf(Long.valueOf(str).longValue() % 100) : "";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    private static JSONObject a(String str, DownloadInfo downloadInfo, BaseException baseException, int i2) {
        String str2;
        String str3;
        String str4;
        int i4;
        String str5;
        String str6;
        String str7;
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                q k4 = com.ss.android.socialbase.downloader.downloader.c.k();
                if (k4 != null) {
                    str2 = k4.b();
                    str3 = a(str2);
                    str4 = k4.a();
                    i4 = k4.c();
                } else {
                    str2 = "";
                    str3 = str2;
                    str4 = str3;
                    i4 = 0;
                }
                String a4 = (baseException == null || !(baseException instanceof g)) ? "" : ((g) baseException).a();
                jSONObject2.put("event_page", str);
                jSONObject2.put(PluginConstants.KEY_APP_ID, str4);
                jSONObject2.put("device_id", str2);
                jSONObject2.put("device_id_postfix", str3);
                jSONObject2.put("update_version", i4);
                jSONObject2.put("download_status", i2);
                if (downloadInfo != null) {
                    jSONObject2.put("setting_tag", com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).c("setting_tag"));
                    jSONObject2.put("download_id", downloadInfo.getId());
                    jSONObject2.put("name", downloadInfo.getName());
                    jSONObject2.put("url", downloadInfo.getUrl());
                    jSONObject2.put("save_path", downloadInfo.getSavePath());
                    jSONObject2.put("download_time", downloadInfo.getDownloadTime());
                    jSONObject2.put("cur_bytes", downloadInfo.getCurBytes());
                    jSONObject2.put("total_bytes", downloadInfo.getTotalBytes());
                    jSONObject2.put("network_quality", downloadInfo.getNetworkQuality());
                    int i5 = 1;
                    jSONObject2.put("only_wifi", downloadInfo.isOnlyWifi() ? 1 : 0);
                    jSONObject2.put("need_https_degrade", downloadInfo.isNeedHttpsToHttpRetry() ? 1 : 0);
                    jSONObject2.put("https_degrade_retry_used", downloadInfo.isHttpsToHttpRetryUsed() ? 1 : 0);
                    jSONObject2.put("md5", downloadInfo.getMd5() == null ? "" : downloadInfo.getMd5());
                    jSONObject2.put("chunk_count", downloadInfo.getChunkCount());
                    jSONObject2.put("is_force", downloadInfo.isForce() ? 1 : 0);
                    jSONObject2.put("retry_count", downloadInfo.getRetryCount());
                    jSONObject2.put("cur_retry_time", downloadInfo.getCurRetryTime());
                    jSONObject2.put("need_retry_delay", downloadInfo.isNeedRetryDelay() ? 1 : 0);
                    jSONObject2.put("need_reuse_first_connection", downloadInfo.isNeedReuseFirstConnection() ? 1 : 0);
                    jSONObject2.put("default_http_service_backup", downloadInfo.isNeedDefaultHttpServiceBackUp() ? 1 : 0);
                    jSONObject2.put("retry_delay_status", downloadInfo.getRetryDelayStatus().ordinal());
                    jSONObject2.put("backup_url_used", downloadInfo.isBackUpUrlUsed() ? 1 : 0);
                    jSONObject2.put("download_byte_error_retry_status", downloadInfo.getByteInvalidRetryStatus().ordinal());
                    jSONObject2.put("forbidden_handler_status", downloadInfo.getAsyncHandleStatus().ordinal());
                    jSONObject2.put("need_independent_process", downloadInfo.isNeedIndependentProcess() ? 1 : 0);
                    jSONObject2.put("head_connection_error_msg", downloadInfo.getHeadConnectionException() != null ? downloadInfo.getHeadConnectionException() : "");
                    jSONObject2.put(BaseConstants.EVENT_LABEL_EXTRA, downloadInfo.getExtra() != null ? downloadInfo.getExtra() : "");
                    if (!downloadInfo.isAddListenerToSameTask()) {
                        i5 = 0;
                    }
                    jSONObject2.put("add_listener_to_same_task", i5);
                    jSONObject2.put("backup_url_count", downloadInfo.getBackUpUrls() != null ? downloadInfo.getBackUpUrls().size() : 0);
                    jSONObject2.put("cur_backup_url_index", downloadInfo.getBackUpUrls() != null ? downloadInfo.getCurBackUpUrlIndex() : -1);
                    jSONObject2.put("forbidden_urls", downloadInfo.getForbiddenBackupUrls() != null ? downloadInfo.getForbiddenBackupUrls().toString() : "");
                    jSONObject2.put("task_id", TextUtils.isEmpty(downloadInfo.getTaskId()) ? "" : downloadInfo.getTaskId());
                    String url = downloadInfo.getUrl();
                    if (TextUtils.isEmpty(url)) {
                        str5 = "";
                        str6 = str5;
                        str7 = str6;
                    } else {
                        Uri parse = Uri.parse(url);
                        str6 = parse.getHost();
                        str7 = parse.getPath();
                        str5 = parse.getLastPathSegment();
                        if (!TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str5)) {
                            try {
                                str7 = str7.substring(0, str7.length() - str5.length());
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                    }
                    jSONObject2.put("url_host", str6);
                    jSONObject2.put("url_path", str7);
                    jSONObject2.put("url_last_path_segment", str5);
                }
                jSONObject2.put("error_code", baseException != null ? baseException.getErrorCode() : 0);
                jSONObject2.put("error_msg", baseException != null ? baseException.getErrorMessage() : "");
                jSONObject2.put("request_log", a4);
                return jSONObject2;
            } catch (JSONException e4) {
                e = e4;
                jSONObject = jSONObject2;
                e.printStackTrace();
                return jSONObject;
            }
        } catch (JSONException e5) {
            e = e5;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(24:11|(4:68|69|70|(16:72|73|14|(2:49|(1:(2:57|(1:59)(2:60|61)))(1:54))|17|18|(2:22|23)|26|27|28|(1:30)|31|32|(1:44)|35|(2:39|41)(1:38)))|13|14|(0)|49|(1:51)|(0)|17|18|(3:20|22|23)|26|27|28|(0)|31|32|(0)|42|44|35|(0)|39|41) */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0114, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0115, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0058 A[Catch: all -> 0x013a, TRY_LEAVE, TryCatch #3 {all -> 0x013a, blocks: (B:18:0x002f, B:20:0x0033, B:44:0x007f, B:46:0x0095, B:49:0x00a8, B:50:0x00ad, B:52:0x00e9, B:53:0x00fa, B:66:0x012e, B:60:0x0120, B:62:0x0126, B:56:0x0115, B:26:0x0047, B:28:0x004d, B:33:0x0058, B:36:0x0065, B:40:0x006b, B:42:0x0077, B:13:0x0025), top: B:76:0x0025, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e9 A[Catch: JSONException -> 0x0114, all -> 0x013a, TryCatch #0 {JSONException -> 0x0114, blocks: (B:50:0x00ad, B:52:0x00e9, B:53:0x00fa), top: B:72:0x00ad, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(@androidx.annotation.Nullable com.ss.android.socialbase.downloader.network.g r14, java.lang.String r15, java.lang.String r16, long r17, java.lang.String r19, int r20, java.io.IOException r21, com.ss.android.socialbase.downloader.model.DownloadInfo r22) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.d.a.a(com.ss.android.socialbase.downloader.network.g, java.lang.String, java.lang.String, long, java.lang.String, int, java.io.IOException, com.ss.android.socialbase.downloader.model.DownloadInfo):void");
    }

    public static void a(com.ss.android.socialbase.downloader.g.a aVar, DownloadInfo downloadInfo, String str, i iVar, boolean z3, boolean z4, BaseException baseException, long j4, long j5, boolean z5, long j6, long j7, long j8, JSONObject jSONObject) {
        a("download_io", aVar.b("monitor_download_io"), aVar, downloadInfo, str, null, null, iVar, z3, z4, baseException, j4, j5, z5, j6, j7, j8, null);
    }

    public static void a(com.ss.android.socialbase.downloader.g.a aVar, DownloadInfo downloadInfo, String str, String str2, String str3, boolean z3, i iVar, BaseException baseException, long j4, long j5) {
        a("segment_io", aVar.b("monitor_segment_io"), aVar, downloadInfo, str, str2, str3, iVar, z3, false, baseException, j4, j5, false, -1L, -1L, -1L, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[Catch: all -> 0x01a9, TryCatch #1 {all -> 0x01a9, blocks: (B:7:0x0016, B:9:0x002d, B:26:0x0065, B:28:0x0070, B:32:0x0077, B:34:0x0083, B:35:0x008d, B:39:0x009a, B:41:0x009e, B:42:0x00a4, B:44:0x00a8, B:48:0x00c4, B:50:0x00d7, B:52:0x0111, B:53:0x0122, B:55:0x0134, B:59:0x0149, B:61:0x0158, B:63:0x0167, B:64:0x016a, B:76:0x019d, B:69:0x0189, B:71:0x018f, B:20:0x004d, B:24:0x005e, B:23:0x005a), top: B:83:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0111 A[Catch: all -> 0x01a9, TryCatch #1 {all -> 0x01a9, blocks: (B:7:0x0016, B:9:0x002d, B:26:0x0065, B:28:0x0070, B:32:0x0077, B:34:0x0083, B:35:0x008d, B:39:0x009a, B:41:0x009e, B:42:0x00a4, B:44:0x00a8, B:48:0x00c4, B:50:0x00d7, B:52:0x0111, B:53:0x0122, B:55:0x0134, B:59:0x0149, B:61:0x0158, B:63:0x0167, B:64:0x016a, B:76:0x019d, B:69:0x0189, B:71:0x018f, B:20:0x004d, B:24:0x005e, B:23:0x005a), top: B:83:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0134 A[Catch: all -> 0x01a9, TryCatch #1 {all -> 0x01a9, blocks: (B:7:0x0016, B:9:0x002d, B:26:0x0065, B:28:0x0070, B:32:0x0077, B:34:0x0083, B:35:0x008d, B:39:0x009a, B:41:0x009e, B:42:0x00a4, B:44:0x00a8, B:48:0x00c4, B:50:0x00d7, B:52:0x0111, B:53:0x0122, B:55:0x0134, B:59:0x0149, B:61:0x0158, B:63:0x0167, B:64:0x016a, B:76:0x019d, B:69:0x0189, B:71:0x018f, B:20:0x004d, B:24:0x005e, B:23:0x005a), top: B:83:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018f A[Catch: all -> 0x01a9, TryCatch #1 {all -> 0x01a9, blocks: (B:7:0x0016, B:9:0x002d, B:26:0x0065, B:28:0x0070, B:32:0x0077, B:34:0x0083, B:35:0x008d, B:39:0x009a, B:41:0x009e, B:42:0x00a4, B:44:0x00a8, B:48:0x00c4, B:50:0x00d7, B:52:0x0111, B:53:0x0122, B:55:0x0134, B:59:0x0149, B:61:0x0158, B:63:0x0167, B:64:0x016a, B:76:0x019d, B:69:0x0189, B:71:0x018f, B:20:0x004d, B:24:0x005e, B:23:0x005a), top: B:83:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019b A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.lang.String r19, int r20, com.ss.android.socialbase.downloader.g.a r21, com.ss.android.socialbase.downloader.model.DownloadInfo r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, com.ss.android.socialbase.downloader.network.i r26, boolean r27, boolean r28, com.ss.android.socialbase.downloader.exception.BaseException r29, long r30, long r32, boolean r34, long r35, long r37, long r39, org.json.JSONObject r41) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.d.a.a(java.lang.String, int, com.ss.android.socialbase.downloader.g.a, com.ss.android.socialbase.downloader.model.DownloadInfo, java.lang.String, java.lang.String, java.lang.String, com.ss.android.socialbase.downloader.network.i, boolean, boolean, com.ss.android.socialbase.downloader.exception.BaseException, long, long, boolean, long, long, long, org.json.JSONObject):void");
    }

    public static void a(DownloadInfo downloadInfo, List<com.ss.android.socialbase.downloader.f.i> list) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("segments", com.ss.android.socialbase.downloader.f.i.a(list));
            jSONObject.put("cur_bytes", downloadInfo.getCurBytes());
            jSONObject.put("total_bytes", downloadInfo.getTotalBytes());
            c P = com.ss.android.socialbase.downloader.downloader.c.P();
            if (P != null) {
                P.a(downloadInfo.getId(), "segments_error", jSONObject);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
