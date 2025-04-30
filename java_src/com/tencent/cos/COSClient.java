package com.tencent.cos;

import android.content.Context;
import com.tencent.cos.model.CreateDirRequest;
import com.tencent.cos.model.CreateDirResult;
import com.tencent.cos.model.DeleteObjectRequest;
import com.tencent.cos.model.DeleteObjectResult;
import com.tencent.cos.model.GetObjectMetadataRequest;
import com.tencent.cos.model.GetObjectMetadataResult;
import com.tencent.cos.model.GetObjectRequest;
import com.tencent.cos.model.GetObjectResult;
import com.tencent.cos.model.HeadBucketRequest;
import com.tencent.cos.model.HeadBucketResult;
import com.tencent.cos.model.ListDirRequest;
import com.tencent.cos.model.ListDirResult;
import com.tencent.cos.model.PutObjectRequest;
import com.tencent.cos.model.PutObjectResult;
import com.tencent.cos.model.RemoveEmptyDirRequest;
import com.tencent.cos.model.RemoveEmptyDirResult;
import com.tencent.cos.model.UpdateObjectRequest;
import com.tencent.cos.model.UpdateObjectResult;
import com.tencent.cos.task.Task;
import com.tencent.cos.task.TaskManager;
import java.util.List;
/* loaded from: classes4.dex */
public class COSClient implements COS {
    private static Context context = null;
    private static boolean enableLog = true;
    private String appid;
    private COSConfig config;
    private TaskManager taskManager;

    public COSClient(Context context2, String str, COSConfig cOSConfig, String str2) {
        context = context2;
        this.appid = str;
        this.config = cOSConfig;
        this.taskManager = new TaskManager(context, this.config, str2);
    }

    public static Context getContext() {
        return context;
    }

    public static boolean isEnableLog() {
        return enableLog;
    }

    @Override // com.tencent.cos.COS
    public boolean cancelTask(int i2) {
        return this.taskManager.cancelTask(i2);
    }

    @Override // com.tencent.cos.COS
    public CreateDirResult createDir(CreateDirRequest createDirRequest) {
        createDirRequest.setAppid(this.appid);
        return (CreateDirResult) this.taskManager.sendCmdRequest(createDirRequest);
    }

    @Override // com.tencent.cos.COS
    public DeleteObjectResult deleteObject(DeleteObjectRequest deleteObjectRequest) {
        deleteObjectRequest.setAppid(this.appid);
        return (DeleteObjectResult) this.taskManager.sendCmdRequest(deleteObjectRequest);
    }

    public void enableLog(boolean z3) {
        enableLog = z3;
    }

    public COSConfig getConfig() {
        return this.config;
    }

    @Override // com.tencent.cos.COS
    public GetObjectResult getObject(GetObjectRequest getObjectRequest) {
        getObjectRequest.setAppid(this.appid);
        return (GetObjectResult) this.taskManager.sendDownloadRequest(getObjectRequest);
    }

    @Override // com.tencent.cos.COS
    public GetObjectMetadataResult getObjectMetadata(GetObjectMetadataRequest getObjectMetadataRequest) {
        getObjectMetadataRequest.setAppid(this.appid);
        return (GetObjectMetadataResult) this.taskManager.sendCmdRequest(getObjectMetadataRequest);
    }

    @Override // com.tencent.cos.COS
    public HeadBucketResult headBucket(HeadBucketRequest headBucketRequest) {
        headBucketRequest.setAppid(this.appid);
        return (HeadBucketResult) this.taskManager.sendCmdRequest(headBucketRequest);
    }

    @Override // com.tencent.cos.COS
    public ListDirResult listDir(ListDirRequest listDirRequest) {
        listDirRequest.setAppid(this.appid);
        return (ListDirResult) this.taskManager.sendCmdRequest(listDirRequest);
    }

    @Override // com.tencent.cos.COS
    public List<Task> listTasks() {
        return this.taskManager.getListTask();
    }

    @Override // com.tencent.cos.COS
    public boolean pauseTask(int i2) {
        return this.taskManager.pauseTask(i2);
    }

    @Override // com.tencent.cos.COS
    public PutObjectResult putObject(PutObjectRequest putObjectRequest) {
        putObjectRequest.setAppid(this.appid);
        if (putObjectRequest.isSliceFlag()) {
            return (PutObjectResult) this.taskManager.sendUploadSliceRequest(putObjectRequest);
        }
        return (PutObjectResult) this.taskManager.sendUploadRequest(putObjectRequest);
    }

    @Override // com.tencent.cos.COS
    public RemoveEmptyDirResult removeEmptyDir(RemoveEmptyDirRequest removeEmptyDirRequest) {
        removeEmptyDirRequest.setAppid(this.appid);
        return (RemoveEmptyDirResult) this.taskManager.sendCmdRequest(removeEmptyDirRequest);
    }

    @Override // com.tencent.cos.COS
    public boolean resumeTask(int i2) {
        return this.taskManager.resumeTask(i2);
    }

    public void setConfig(COSConfig cOSConfig) {
        this.config = cOSConfig;
    }

    @Override // com.tencent.cos.COS
    public UpdateObjectResult updateObject(UpdateObjectRequest updateObjectRequest) {
        updateObjectRequest.setAppid(this.appid);
        return (UpdateObjectResult) this.taskManager.sendCmdRequest(updateObjectRequest);
    }
}
