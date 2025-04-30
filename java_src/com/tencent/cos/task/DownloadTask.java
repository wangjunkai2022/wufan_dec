package com.tencent.cos.task;

import com.tencent.cos.COSConfig;
import com.tencent.cos.common.Const;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.model.GetObjectResult;
import com.tencent.cos.network.COSRetryHandler;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.task.listener.IDownloadTaskListener;
import com.tencent.cos.task.listener.ITaskStateListener;
import com.tencent.cos.utils.QLog;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import net.lingala.zip4j.util.e;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes4.dex */
public class DownloadTask extends Task {
    private static final String TAG = "com.tencent.cos.task.DownloadTask";
    private boolean break_download_flag;
    private String downloadUrl;
    private String localPath;

    public DownloadTask(HttpRequest httpRequest, COSConfig cOSConfig, OkHttpClient okHttpClient) {
        super(httpRequest, cOSConfig, okHttpClient);
        this.break_download_flag = false;
        this.downloadUrl = httpRequest.getDownloadUrl();
        this.localPath = httpRequest.getSavePath();
    }

    private boolean makeDir(String str) {
        File file = new File(str);
        if (file.exists()) {
            return true;
        }
        return file.mkdirs();
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doGetRequest() {
        long j4;
        this.callTask = null;
        this.isCancelled = false;
        try {
            Request.Builder url = new Request.Builder().url(this.downloadUrl);
            for (Map.Entry<String, String> entry : this.httpRequest.getHeaders().entrySet()) {
                url = url.header(entry.getKey(), entry.getValue());
            }
            this.callTask = this.okHttpClient.newCall(url.get().build());
            Response execute = this.callTask.execute();
            long contentLength = execute.body().contentLength();
            execute.body().close();
            String fileName = getFileName(this.downloadUrl);
            makeDir(this.localPath);
            String str = fileName != null ? this.localPath + e.F0 + fileName : this.localPath + e.F0 + String.valueOf(System.currentTimeMillis());
            File file = new File(str);
            if (!file.exists()) {
                try {
                    file.createNewFile();
                    file.setReadable(true);
                    file.setWritable(true);
                } catch (IOException e4) {
                    QLog.w(TAG, e4.getMessage(), e4);
                }
                j4 = 0;
            } else {
                j4 = file.length();
            }
            long j5 = !this.break_download_flag ? 0L : j4;
            QLog.w(TAG, "offset =" + j5 + " ;path =" + str + "; filelen =" + contentLength);
            return downloadSlice(j5, contentLength, str);
        } catch (Exception e5) {
            String str2 = TAG;
            QLog.w(str2, "connection exception" + e5.getMessage(), e5);
            if (this.isCancelled) {
                ITaskStateListener iTaskStateListener = this.taskStateListener;
                if (iTaskStateListener != null) {
                    iTaskStateListener.onCancel();
                }
                GetObjectResult getObjectResult = new GetObjectResult();
                getObjectResult.code = Const.ERROR_CLIENT_EXCEPTION.getCode();
                getObjectResult.msg = " task is canceled";
                getObjectResult.downloadUrl = this.downloadUrl;
                getObjectResult.localPath = this.localPath;
                if (this.httpRequest.getListener() != null) {
                    ((IDownloadTaskListener) this.httpRequest.getListener()).onCancel(this.httpRequest.getRequest(), getObjectResult);
                }
                QLog.w(str2, "task: " + this.httpRequest.getRequest().getRequestId() + " canceled", e5.getCause());
                return getObjectResult;
            } else if (COSRetryHandler.retryRequest(this.currentRetryCount, this.config.getMaxRetryCount(), e5)) {
                ITaskStateListener iTaskStateListener2 = this.taskStateListener;
                if (iTaskStateListener2 != null) {
                    iTaskStateListener2.onRetry();
                }
                this.currentRetryCount++;
                QLog.w(str2, e5.getMessage() + ";retry =" + this.currentRetryCount, e5);
                return doGetRequest();
            } else {
                GetObjectResult getObjectResult2 = new GetObjectResult();
                getObjectResult2.code = Const.ERROR_OTHER_EXCEPTION.getCode();
                getObjectResult2.msg = e5.getMessage();
                getObjectResult2.downloadUrl = this.downloadUrl;
                getObjectResult2.localPath = this.localPath;
                if (this.httpRequest.getListener() != null) {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), getObjectResult2);
                }
                QLog.w(str2, e5.getMessage(), e5);
                return getObjectResult2;
            }
        }
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doPostRequest() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0251 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x025c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0133 A[Catch: all -> 0x024d, TryCatch #6 {all -> 0x024d, blocks: (B:51:0x0115, B:53:0x0133, B:55:0x0137, B:56:0x013a, B:58:0x015b, B:59:0x016c, B:71:0x01aa, B:73:0x01b8, B:75:0x01bc, B:76:0x01bf, B:88:0x01fd, B:90:0x0220, B:91:0x022f), top: B:128:0x0115 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01aa A[Catch: all -> 0x024d, TRY_ENTER, TryCatch #6 {all -> 0x024d, blocks: (B:51:0x0115, B:53:0x0133, B:55:0x0137, B:56:0x013a, B:58:0x015b, B:59:0x016c, B:71:0x01aa, B:73:0x01b8, B:75:0x01bc, B:76:0x01bf, B:88:0x01fd, B:90:0x0220, B:91:0x022f), top: B:128:0x0115 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.tencent.cos.model.COSResult downloadSlice(long r20, long r22, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.cos.task.DownloadTask.downloadSlice(long, long, java.lang.String):com.tencent.cos.model.COSResult");
    }

    protected String getFileName(String str) {
        if (str == null) {
            return null;
        }
        int lastIndexOf = str.lastIndexOf(e.F0);
        int indexOf = str.indexOf("?");
        if (indexOf <= 0) {
            indexOf = str.length();
        }
        return str.substring(lastIndexOf + 1, indexOf);
    }

    @Override // com.tencent.cos.task.Task
    public boolean pause() {
        this.break_download_flag = true;
        return true;
    }
}
