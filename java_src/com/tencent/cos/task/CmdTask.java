package com.tencent.cos.task;

import com.tencent.cos.COSConfig;
import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.Const;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.network.COSRetryHandler;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.network.HttpResponse;
import com.tencent.cos.network.HttpResponseHandler;
import com.tencent.cos.task.listener.ITaskStateListener;
import com.tencent.cos.utils.QLog;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class CmdTask extends Task {
    private static final String TAG = "com.tencent.cos.task.CmdTask";

    public CmdTask(HttpRequest httpRequest, COSConfig cOSConfig, OkHttpClient okHttpClient) {
        super(httpRequest, cOSConfig, okHttpClient);
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doGetRequest() {
        this.isCancelled = false;
        this.callTask = null;
        try {
            Request.Builder url = new Request.Builder().url(getDomainUrl(this.httpRequest));
            for (Map.Entry<String, String> entry : this.httpRequest.getHeaders().entrySet()) {
                url = url.header(entry.getKey(), entry.getValue());
            }
            this.callTask = this.okHttpClient.newCall(url.get().build());
            HttpResponse httpResponse = new HttpResponse(this.callTask.execute());
            httpResponse.setOperateType(this.httpRequest.getOperatorType());
            COSResult parse = HttpResponseHandler.parse(httpResponse);
            if (this.httpRequest.getListener() != null) {
                if (parse.code == 0) {
                    this.httpRequest.getListener().onSuccess(this.httpRequest.getRequest(), parse);
                } else {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), parse);
                }
            }
            ITaskStateListener iTaskStateListener = this.taskStateListener;
            if (iTaskStateListener != null) {
                iTaskStateListener.onSendFinish();
            }
            QLog.w(TAG, "completed");
            return parse;
        } catch (Exception e4) {
            if (this.isCancelled) {
                ITaskStateListener iTaskStateListener2 = this.taskStateListener;
                if (iTaskStateListener2 != null) {
                    iTaskStateListener2.onCancel();
                }
                HttpResponse httpResponse2 = new HttpResponse("{code:" + Const.ERROR_CLIENT_EXCEPTION.getCode() + ",message:canceled}");
                httpResponse2.setOperateType(this.httpRequest.getOperatorType());
                COSResult parse2 = HttpResponseHandler.parse(httpResponse2);
                if (this.httpRequest.getListener() != null) {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), parse2);
                }
                QLog.w(TAG, " task " + this.httpRequest.getRequest().getRequestId() + "  is canceled");
                return parse2;
            } else if (COSRetryHandler.retryRequest(this.currentRetryCount, this.config.getMaxRetryCount(), e4)) {
                ITaskStateListener iTaskStateListener3 = this.taskStateListener;
                if (iTaskStateListener3 != null) {
                    iTaskStateListener3.onRetry();
                }
                this.currentRetryCount++;
                QLog.w(TAG, e4.getMessage() + ";retry =" + this.currentRetryCount, e4);
                return doGetRequest();
            } else {
                ITaskStateListener iTaskStateListener4 = this.taskStateListener;
                if (iTaskStateListener4 != null) {
                    iTaskStateListener4.onFail();
                }
                HttpResponse httpResponse3 = new HttpResponse("{code:" + Const.ERROR_OTHER_EXCEPTION.getCode() + ",message:" + e4.getMessage() + "}");
                httpResponse3.setOperateType(this.httpRequest.getOperatorType());
                COSResult parse3 = HttpResponseHandler.parse(httpResponse3);
                if (this.httpRequest.getListener() != null) {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), parse3);
                }
                QLog.w(TAG, e4.getMessage(), e4);
                return parse3;
            }
        }
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doPostRequest() {
        RequestBody build;
        this.isCancelled = false;
        this.callTask = null;
        try {
            Request.Builder url = new Request.Builder().url(getDomainUrl(this.httpRequest));
            for (Map.Entry<String, String> entry : this.httpRequest.getHeaders().entrySet()) {
                url = url.header(entry.getKey(), entry.getValue());
            }
            String contentType = this.httpRequest.getContentType();
            COSHttpRequestHead.VALUE.getClass();
            if (contentType.equals(HttpHeaders.Values.APPLICATION_JSON)) {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, String> entry2 : this.httpRequest.getBodys().entrySet()) {
                    jSONObject.put(entry2.getKey(), entry2.getValue());
                }
                COSHttpRequestHead.VALUE.getClass();
                build = RequestBody.create(MediaType.parse(HttpHeaders.Values.APPLICATION_JSON), jSONObject.toString());
            } else {
                MultipartBody.Builder type = new MultipartBody.Builder().setType(MediaType.parse(this.httpRequest.getContentType()));
                for (Map.Entry<String, String> entry3 : this.httpRequest.getBodys().entrySet()) {
                    type = type.addFormDataPart(entry3.getKey(), entry3.getValue());
                }
                build = type.build();
            }
            this.callTask = this.okHttpClient.newCall(url.post(build).build());
            HttpResponse httpResponse = new HttpResponse(this.callTask.execute());
            httpResponse.setOperateType(this.httpRequest.getOperatorType());
            COSResult parse = HttpResponseHandler.parse(httpResponse);
            if (this.httpRequest.getListener() != null) {
                if (parse.code == 0) {
                    this.httpRequest.getListener().onSuccess(this.httpRequest.getRequest(), parse);
                } else {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), parse);
                }
            }
            ITaskStateListener iTaskStateListener = this.taskStateListener;
            if (iTaskStateListener != null) {
                iTaskStateListener.onSendFinish();
            }
            QLog.w(TAG, "completed");
            return parse;
        } catch (Exception e4) {
            if (this.isCancelled) {
                HttpResponse httpResponse2 = new HttpResponse("{code:" + Const.ERROR_CLIENT_EXCEPTION.getCode() + ",message:canceled}");
                httpResponse2.setOperateType(this.httpRequest.getOperatorType());
                COSResult parse2 = HttpResponseHandler.parse(httpResponse2);
                if (this.httpRequest.getListener() != null) {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), parse2);
                }
                QLog.w(TAG, e4.getMessage(), e4);
                return parse2;
            } else if (COSRetryHandler.retryRequest(this.currentRetryCount, this.config.getMaxRetryCount(), e4)) {
                ITaskStateListener iTaskStateListener2 = this.taskStateListener;
                if (iTaskStateListener2 != null) {
                    iTaskStateListener2.onRetry();
                }
                this.currentRetryCount++;
                QLog.w(TAG, e4.getMessage() + ";retry =" + this.currentRetryCount, e4);
                return doPostRequest();
            } else {
                ITaskStateListener iTaskStateListener3 = this.taskStateListener;
                if (iTaskStateListener3 != null) {
                    iTaskStateListener3.onFail();
                }
                HttpResponse httpResponse3 = new HttpResponse("{code:" + Const.ERROR_OTHER_EXCEPTION.getCode() + ",message:" + e4.getMessage() + "}");
                httpResponse3.setOperateType(this.httpRequest.getOperatorType());
                COSResult parse3 = HttpResponseHandler.parse(httpResponse3);
                if (this.httpRequest.getListener() != null) {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), parse3);
                }
                QLog.w(TAG, e4.getMessage(), e4);
                return parse3;
            }
        }
    }
}
