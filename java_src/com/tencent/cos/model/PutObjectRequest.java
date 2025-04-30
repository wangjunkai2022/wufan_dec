package com.tencent.cos.model;

import android.text.TextUtils;
import com.join.mgps.activity.UploadActivity;
import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.common.COSHttpResponseKey;
import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.task.listener.IUploadTaskListener;
import com.tencent.cos.utils.SHA1Utils;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class PutObjectRequest extends COSRequest {
    private String biz_attr;
    private boolean checkSha;
    private byte[] dataByte;
    private File dataFile;
    private InputStream dataInputStream;
    private long filesize;
    private String insertOnly;
    private String sha;
    private boolean sliceFlag;
    private int slice_size;
    private String srcPath;
    private String uploadparts;

    public PutObjectRequest() {
        this(null, null, null, null, false, null, 1048576, "1", null, null);
    }

    @Override // com.tencent.cos.model.COSRequest
    public void checkParams() throws COSClientException {
        super.checkParams();
        if (TextUtils.isEmpty(this.srcPath)) {
            throw new COSClientException("srcPath，即本地路径为空");
        }
    }

    public void checkSha() {
        this.checkSha = true;
    }

    public String getBiz_attr() {
        return this.biz_attr;
    }

    public byte[] getDataByte() {
        return this.dataByte;
    }

    public File getDataFile() {
        File file = this.dataFile;
        if (file != null) {
            return file;
        }
        if (this.srcPath != null) {
            String str = this.op;
            COSHttpRequstBody.OP.getClass();
            if (str.equals(UploadActivity.f36007o0)) {
                this.dataFile = new File(this.srcPath);
            }
        }
        return this.dataFile;
    }

    public InputStream getDataStream() {
        return this.dataInputStream;
    }

    public long getFilesize() {
        if (this.filesize < 0) {
            this.filesize = new File(this.srcPath).length();
        }
        return this.filesize;
    }

    public String getInsertOnly() {
        return this.insertOnly;
    }

    public int getSlice_size() {
        return this.slice_size;
    }

    public String getSrcPath() {
        return this.srcPath;
    }

    public String getUploadparts() {
        return this.uploadparts;
    }

    public String getsha() {
        if (this.checkSha && this.sha == null) {
            this.sha = SHA1Utils.getFileSha1(this.srcPath);
        }
        return this.sha;
    }

    public boolean isSliceFlag() {
        return this.sliceFlag;
    }

    public void setBiz_attr(String str) {
        this.biz_attr = str;
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setBodys() {
        if (this.bodys == null) {
            this.bodys = new LinkedHashMap();
        }
        Map<String, String> map = this.bodys;
        COSHttpRequstBody.KEY.getClass();
        map.put("op", this.op);
        if (this.sha != null) {
            Map<String, String> map2 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map2.put(COSHttpResponseKey.Data.SHA, this.sha);
        }
        if (this.biz_attr != null) {
            Map<String, String> map3 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map3.put(COSHttpResponseKey.Data.BIZ_ATTR, this.biz_attr);
        }
        if (this.insertOnly != null) {
            Map<String, String> map4 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map4.put("insertOnly", this.insertOnly);
        }
        if (this.sliceFlag) {
            if (this.slice_size < 0) {
                this.slice_size = 1048576;
            }
            Map<String, String> map5 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map5.put(COSHttpResponseKey.Data.SLICE_SIZE, String.valueOf(this.slice_size));
            if (this.filesize < 0) {
                this.filesize = getFilesize();
            }
            Map<String, String> map6 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map6.put(COSHttpResponseKey.Data.FILESIZE, String.valueOf(this.filesize));
            if (this.sha != null) {
                if (this.uploadparts == null) {
                    try {
                        this.uploadparts = SHA1Utils.getSlicePartSha1(this.srcPath, this.slice_size, new StringBuilder());
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                Map<String, String> map7 = this.bodys;
                COSHttpRequstBody.KEY.getClass();
                map7.put("uploadparts", this.uploadparts);
            }
        }
    }

    public void setDataByte(byte[] bArr) {
        this.dataByte = bArr;
    }

    public void setDataFile(File file) {
        this.dataFile = file;
    }

    public void setDataInputStream(InputStream inputStream) {
        this.dataInputStream = inputStream;
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setHeaders() {
        if (this.headers == null) {
            this.headers = new LinkedHashMap();
        }
        Map<String, String> map = this.headers;
        COSHttpRequestHead.KEY.getClass();
        map.put("Authorization", this.sign);
        Map<String, String> map2 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        map2.put("Content-Type", this.httpContentType);
        Map<String, String> map3 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        COSHttpRequestHead.VALUE.getClass();
        map3.put("Connection", "Keep-Alive");
        Map<String, String> map4 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        COSHttpRequestHead.VALUE.getClass();
        map4.put("Accept", "*/*");
    }

    public void setInsertOnly(String str) {
        this.insertOnly = str;
    }

    public void setSha(String str) {
        this.sha = str;
    }

    public void setSliceFlag(boolean z3) {
        if (z3) {
            COSHttpRequstBody.OP.getClass();
            this.op = "upload_slice_init";
        }
        this.sliceFlag = z3;
    }

    public void setSlice_size(int i2) {
        this.slice_size = i2;
    }

    public void setSrcPath(String str) {
        this.srcPath = str;
    }

    public void setUploadparts(String str) {
        this.uploadparts = str;
    }

    public PutObjectRequest(String str, String str2, String str3, String str4, boolean z3, String str5, int i2, String str6, String str7, IUploadTaskListener iUploadTaskListener) {
        super(str, str2, str3, str7, iUploadTaskListener);
        this.sha = null;
        this.biz_attr = null;
        this.insertOnly = "1";
        this.srcPath = null;
        this.checkSha = false;
        this.filesize = -1L;
        this.uploadparts = null;
        this.sliceFlag = false;
        COSHttpRequstBody.OP.getClass();
        this.op = UploadActivity.f36007o0;
        this.httpMethod = "POST";
        COSHttpRequestHead.VALUE.getClass();
        this.httpContentType = HttpHeaders.Values.MULTIPART_FORM_DATA;
        this.srcPath = str4;
        this.biz_attr = str5;
        this.insertOnly = str6;
        this.slice_size = i2;
        this.checkSha = z3;
        if (z3 && str4 != null) {
            this.sha = SHA1Utils.getFileSha1(str4);
        } else {
            this.sha = null;
        }
        if (str4 != null) {
            long length = new File(str4).length();
            this.filesize = length;
            if (length > 20971520) {
                COSHttpRequstBody.OP.getClass();
                this.op = "upload_slice_init";
                this.sliceFlag = true;
                if (this.sha != null) {
                    try {
                        this.uploadparts = SHA1Utils.getSlicePartSha1(str4, i2, new StringBuilder());
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    public void setBodys(Map<String, String> map) {
        this.bodys = map;
    }
}
