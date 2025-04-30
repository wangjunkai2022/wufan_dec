package com.tencent.cos.network;

import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.model.COSRequest;
import com.tencent.cos.model.CreateDirRequest;
import com.tencent.cos.model.DeleteObjectRequest;
import com.tencent.cos.model.GetObjectMetadataRequest;
import com.tencent.cos.model.GetObjectRequest;
import com.tencent.cos.model.HeadBucketRequest;
import com.tencent.cos.model.ListDirRequest;
import com.tencent.cos.model.PutObjectRequest;
import com.tencent.cos.model.RemoveEmptyDirRequest;
import com.tencent.cos.model.UpdateObjectRequest;
import com.tencent.cos.task.listener.ITaskListener;
import java.io.File;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes4.dex */
public class HttpRequestHandler {
    private COSRequest cosRequest;
    private byte operatorType = -1;

    public HttpRequestHandler(COSRequest cOSRequest) {
        this.cosRequest = cOSRequest;
        setOperatorType(cOSRequest);
    }

    public String getAppid() {
        return this.cosRequest.getAppid();
    }

    public Map<String, String> getBodys() {
        return this.cosRequest.getBodys();
    }

    public String getBucket() {
        return this.cosRequest.getBucket();
    }

    public String getContentType() {
        return this.cosRequest.getContentType();
    }

    public String getCosPath() {
        return this.cosRequest.getCosPath();
    }

    public byte[] getDataByte() {
        COSRequest cOSRequest = this.cosRequest;
        if (cOSRequest instanceof PutObjectRequest) {
            return ((PutObjectRequest) cOSRequest).getDataByte();
        }
        return null;
    }

    public File getDataFile() {
        COSRequest cOSRequest = this.cosRequest;
        if (cOSRequest instanceof PutObjectRequest) {
            return ((PutObjectRequest) cOSRequest).getDataFile();
        }
        return null;
    }

    public InputStream getDataStream() {
        COSRequest cOSRequest = this.cosRequest;
        if (cOSRequest instanceof PutObjectRequest) {
            return ((PutObjectRequest) cOSRequest).getDataStream();
        }
        return null;
    }

    public String getDownloadUrl() {
        return this.cosRequest.getDownloadUrl();
    }

    public String getFileContent() {
        if (this.cosRequest instanceof PutObjectRequest) {
            COSHttpRequstBody.KEY.getClass();
            return "filecontent";
        }
        return null;
    }

    public Map<String, String> getHeaders() {
        return this.cosRequest.getHeaders();
    }

    public String getHttpMethod() {
        return this.cosRequest.getHttpMethod();
    }

    public long getLength() {
        COSRequest cOSRequest = this.cosRequest;
        if (cOSRequest instanceof PutObjectRequest) {
            return ((PutObjectRequest) cOSRequest).getFilesize();
        }
        return 0L;
    }

    public ITaskListener getListener() {
        return this.cosRequest.getListener();
    }

    public byte getOperatorType() {
        return this.operatorType;
    }

    public String getPathForUrl() throws COSClientException {
        return this.cosRequest.getPathForUrl();
    }

    public String getQueryForUrl() throws COSClientException {
        return this.cosRequest.getQueryForUrl();
    }

    public String getSavePath() {
        return this.cosRequest.getDownloadPath();
    }

    public String getSign() {
        return this.cosRequest.getSign();
    }

    public String getSrcPath() {
        COSRequest cOSRequest = this.cosRequest;
        if (cOSRequest instanceof PutObjectRequest) {
            return ((PutObjectRequest) cOSRequest).getSrcPath();
        }
        return null;
    }

    public boolean isSliceUpload() {
        COSRequest cOSRequest = this.cosRequest;
        if (cOSRequest instanceof PutObjectRequest) {
            return ((PutObjectRequest) cOSRequest).isSliceFlag();
        }
        return false;
    }

    public boolean isUploadFlag() {
        return this.cosRequest instanceof PutObjectRequest;
    }

    public void setOperatorType(COSRequest cOSRequest) {
        if (cOSRequest instanceof CreateDirRequest) {
            this.operatorType = (byte) 9;
        } else if (cOSRequest instanceof DeleteObjectRequest) {
            this.operatorType = (byte) 4;
        } else if (cOSRequest instanceof GetObjectMetadataRequest) {
            this.operatorType = (byte) 5;
        } else if (cOSRequest instanceof GetObjectRequest) {
            this.operatorType = (byte) 3;
        } else if (cOSRequest instanceof HeadBucketRequest) {
            this.operatorType = (byte) 13;
        } else if (cOSRequest instanceof ListDirRequest) {
            this.operatorType = (byte) 8;
        } else if (cOSRequest instanceof PutObjectRequest) {
            if (((PutObjectRequest) cOSRequest).isSliceFlag()) {
                this.operatorType = (byte) 11;
            } else {
                this.operatorType = (byte) 1;
            }
        } else if (cOSRequest instanceof RemoveEmptyDirRequest) {
            this.operatorType = (byte) 6;
        } else if (cOSRequest instanceof UpdateObjectRequest) {
            this.operatorType = (byte) 2;
        }
    }
}
