package com.tencent.cos.network;

import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.model.COSRequest;
import com.tencent.cos.task.listener.ITaskListener;
import java.io.File;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes4.dex */
public class HttpRequest {
    private COSRequest cosRequest;
    private HttpRequestHandler requestHandler;

    public HttpRequest(COSRequest cOSRequest) {
        this.cosRequest = cOSRequest;
        this.requestHandler = new HttpRequestHandler(cOSRequest);
    }

    public String getAppid() {
        return this.requestHandler.getAppid();
    }

    public Map<String, String> getBodys() {
        return this.requestHandler.getBodys();
    }

    public String getBucket() {
        return this.requestHandler.getBucket();
    }

    public String getContentType() {
        return this.requestHandler.getContentType();
    }

    public String getCosPath() {
        return this.requestHandler.getCosPath();
    }

    public byte[] getDataByte() {
        return this.requestHandler.getDataByte();
    }

    public File getDataFile() {
        return this.requestHandler.getDataFile();
    }

    public InputStream getDataStream() {
        return this.requestHandler.getDataStream();
    }

    public String getDownloadUrl() {
        return this.requestHandler.getDownloadUrl();
    }

    public String getFileContent() {
        return this.requestHandler.getFileContent();
    }

    public Map<String, String> getHeaders() {
        return this.requestHandler.getHeaders();
    }

    public String getHttpMethod() {
        return this.requestHandler.getHttpMethod();
    }

    public long getLength() {
        return this.requestHandler.getLength();
    }

    public ITaskListener getListener() {
        return this.requestHandler.getListener();
    }

    public byte getOperatorType() {
        return this.requestHandler.getOperatorType();
    }

    public String getPathForUrl() throws COSClientException {
        return this.requestHandler.getPathForUrl();
    }

    public String getQueryForUrl() throws COSClientException {
        return this.requestHandler.getQueryForUrl();
    }

    public COSRequest getRequest() {
        return this.cosRequest;
    }

    public HttpRequestHandler getRequestHandler() {
        return this.requestHandler;
    }

    public String getSavePath() {
        return this.requestHandler.getSavePath();
    }

    public String getSign() {
        return this.requestHandler.getSign();
    }

    public String getSrcPath() {
        return this.requestHandler.getSrcPath();
    }

    public boolean isSliceUpload() {
        return this.requestHandler.isSliceUpload();
    }

    public boolean isUploadFlag() {
        return this.requestHandler.isUploadFlag();
    }

    public HttpRequest(HttpRequestHandler httpRequestHandler) {
        this.requestHandler = httpRequestHandler;
    }
}
