package com.tencent.cos.task;

import android.text.TextUtils;
import com.tencent.cos.COSConfig;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.task.listener.ITaskStateListener;
import com.tencent.cos.utils.QLog;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import net.lingala.zip4j.util.e;
import okhttp3.Call;
import okhttp3.OkHttpClient;
/* loaded from: classes4.dex */
public abstract class Task<T extends COSResult> implements Callable<T> {
    private static String TAG = "com.tencent.cos.task.Task";
    protected volatile Call callTask;
    protected COSConfig config;
    protected int currentRetryCount;
    protected Future<T> future;
    protected HttpRequest httpRequest;
    protected volatile boolean isCancelled = false;
    protected OkHttpClient okHttpClient;
    protected TaskState taskState;
    protected ITaskStateListener taskStateListener;

    public Task(HttpRequest httpRequest, COSConfig cOSConfig, OkHttpClient okHttpClient) {
        this.currentRetryCount = 0;
        this.httpRequest = httpRequest;
        this.config = cOSConfig;
        this.okHttpClient = okHttpClient;
        this.currentRetryCount = 0;
    }

    public synchronized boolean cancel() {
        if (this.callTask != null && !this.callTask.isCanceled()) {
            this.callTask.cancel();
        }
        this.isCancelled = true;
        return true;
    }

    public abstract COSResult doGetRequest();

    public abstract COSResult doPostRequest();

    public String getDomainUrl(HttpRequest httpRequest) throws Exception {
        StringBuilder sb = new StringBuilder();
        sb.append(this.config.getHttpProtocol());
        sb.append(this.config.getCosDomain());
        sb.append(this.config.getServerFlag());
        try {
            sb.append(e.F0 + httpRequest.getPathForUrl());
            if (!TextUtils.isEmpty(httpRequest.getQueryForUrl())) {
                sb.append("?" + httpRequest.getQueryForUrl());
            }
            String str = TAG;
            QLog.i(str, "url =" + sb.toString());
            return sb.toString();
        } catch (Exception e4) {
            QLog.w(TAG, e4.getMessage(), e4);
            throw e4;
        }
    }

    public synchronized Future<T> getFuture() {
        return this.future;
    }

    public HttpRequest getHttpRequest() {
        return this.httpRequest;
    }

    public TaskState getTaskState() {
        return this.taskState;
    }

    public ITaskStateListener getTaskStateListener() {
        return this.taskStateListener;
    }

    public synchronized boolean pause() {
        if (this.callTask == null) {
            return false;
        }
        try {
            this.callTask.cancel();
            this.isCancelled = true;
            String str = TAG;
            QLog.w(str, "task :" + this.httpRequest.getRequest().getRequestId() + " pause");
            ITaskStateListener iTaskStateListener = this.taskStateListener;
            if (iTaskStateListener != null) {
                iTaskStateListener.onPause();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return true;
    }

    public synchronized boolean resume() {
        return true;
    }

    public synchronized void setFuture(Future<T> future) {
        this.future = future;
    }

    public void setTaskState(TaskState taskState) {
        this.taskState = taskState;
    }

    public void setTaskStateListener(ITaskStateListener iTaskStateListener) {
        this.taskStateListener = iTaskStateListener;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        ITaskStateListener iTaskStateListener = this.taskStateListener;
        if (iTaskStateListener != null) {
            iTaskStateListener.onSendBegin();
            String str = TAG;
            QLog.w(str, " task " + this.httpRequest.getRequest().getRequestId() + " start");
        }
        if (this.httpRequest.getHttpMethod().equalsIgnoreCase("GET")) {
            return (T) doGetRequest();
        }
        if (this.httpRequest.getHttpMethod().equalsIgnoreCase("POST")) {
            return (T) doPostRequest();
        }
        return null;
    }
}
