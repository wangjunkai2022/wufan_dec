package com.tencent.cos.network;

import com.tencent.cos.model.COSResult;
import com.tencent.cos.model.CreateDirResult;
import com.tencent.cos.model.DeleteObjectResult;
import com.tencent.cos.model.GetObjectMetadataResult;
import com.tencent.cos.model.GetObjectResult;
import com.tencent.cos.model.HeadBucketResult;
import com.tencent.cos.model.ListDirResult;
import com.tencent.cos.model.PutObjectResult;
import com.tencent.cos.model.RemoveEmptyDirResult;
import com.tencent.cos.model.UpdateObjectResult;
/* loaded from: classes4.dex */
public class HttpResponseHandler {
    private static final String TAG = "com.tencent.cos.network.HttpResponseHandler";

    public static COSResult parse(HttpResponse httpResponse) {
        if (httpResponse != null) {
            if (httpResponse.getOperatorType() != 1 && httpResponse.getOperatorType() != 11) {
                if (httpResponse.getOperatorType() == 4) {
                    return parseDeleteObject(httpResponse);
                }
                if (httpResponse.getOperatorType() == 3) {
                    return parseGetObject(httpResponse);
                }
                if (httpResponse.getOperatorType() == 2) {
                    return parseUpdateObject(httpResponse);
                }
                if (httpResponse.getOperatorType() == 5) {
                    return parseGetObjectMetadata(httpResponse);
                }
                if (httpResponse.getOperatorType() == 9) {
                    return parseCreateDir(httpResponse);
                }
                if (httpResponse.getOperatorType() == 8) {
                    return parseListDir(httpResponse);
                }
                if (httpResponse.getOperatorType() == 13) {
                    return parseHeadBucket(httpResponse);
                }
                if (httpResponse.getOperatorType() == 6) {
                    return parseRemoveEmptyDir(httpResponse);
                }
                throw new IllegalArgumentException(TAG + " ：未知的操作类型");
            }
            return parsePutObject(httpResponse);
        }
        throw new IllegalArgumentException("网络返回内容为空");
    }

    protected static COSResult parseCreateDir(HttpResponse httpResponse) {
        CreateDirResult createDirResult = new CreateDirResult();
        createDirResult.getResponse(httpResponse);
        return createDirResult;
    }

    protected static COSResult parseDeleteObject(HttpResponse httpResponse) {
        DeleteObjectResult deleteObjectResult = new DeleteObjectResult();
        deleteObjectResult.getResponse(httpResponse);
        return deleteObjectResult;
    }

    protected static COSResult parseGetObject(HttpResponse httpResponse) {
        GetObjectResult getObjectResult = new GetObjectResult();
        getObjectResult.getResponse(httpResponse);
        return getObjectResult;
    }

    protected static COSResult parseGetObjectMetadata(HttpResponse httpResponse) {
        GetObjectMetadataResult getObjectMetadataResult = new GetObjectMetadataResult();
        getObjectMetadataResult.getResponse(httpResponse);
        return getObjectMetadataResult;
    }

    protected static COSResult parseHeadBucket(HttpResponse httpResponse) {
        HeadBucketResult headBucketResult = new HeadBucketResult();
        headBucketResult.getResponse(httpResponse);
        return headBucketResult;
    }

    protected static COSResult parseListDir(HttpResponse httpResponse) {
        ListDirResult listDirResult = new ListDirResult();
        listDirResult.getResponse(httpResponse);
        return listDirResult;
    }

    protected static COSResult parsePutObject(HttpResponse httpResponse) {
        PutObjectResult putObjectResult = new PutObjectResult();
        putObjectResult.getResponse(httpResponse);
        return putObjectResult;
    }

    protected static COSResult parseRemoveEmptyDir(HttpResponse httpResponse) {
        RemoveEmptyDirResult removeEmptyDirResult = new RemoveEmptyDirResult();
        removeEmptyDirResult.getResponse(httpResponse);
        return removeEmptyDirResult;
    }

    protected static COSResult parseUpdateObject(HttpResponse httpResponse) {
        UpdateObjectResult updateObjectResult = new UpdateObjectResult();
        updateObjectResult.getResponse(httpResponse);
        return updateObjectResult;
    }
}
