package com.tencent.cos.task;

import com.tencent.cos.COSConfig;
import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.common.COSHttpResponseKey;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.model.PutObjectRequest;
import com.tencent.cos.model.PutObjectResult;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.task.listener.IUploadTaskListener;
import com.tencent.cos.task.slice.FileSlicePart;
import com.tencent.cos.task.slice.SlicePart;
import com.tencent.cos.utils.QLog;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okio.BufferedSink;
import okio.Okio;
import okio.Source;
/* loaded from: classes4.dex */
public class SliceUploadTask extends Task {
    private static final String TAG = "com.tencent.cos.task.SliceUploadTask";

    public SliceUploadTask(HttpRequest httpRequest, COSConfig cOSConfig, OkHttpClient okHttpClient) {
        super(httpRequest, cOSConfig, okHttpClient);
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doGetRequest() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a4, code lost:
        com.tencent.cos.utils.QLog.w(com.tencent.cos.task.SliceUploadTask.TAG, "开始上传data分片");
        r14 = r0.session;
        r15 = r10.getFilesize();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b1, code lost:
        r6 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b8, code lost:
        if (r7 >= r0.sliceParts.size()) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c6, code lost:
        if (r0.sliceParts.get(r7).getOverFlag() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c9, code lost:
        r1 = r0.sliceParts.get(r7).getOffset();
        r10 = r0.sliceParts.get(r7).getSliceSize();
        r12 = r0.sha;
        r5 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e6, code lost:
        if (r5 >= r15) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e8, code lost:
        r17 = r5;
        r9 = r7;
        r2 = uploadSliceDataRequset_4(r19.httpRequest, com.tencent.cos.utils.FileUtils.getFileContentByte(r11, r5, r10), r14, r5, r12);
        r19.httpRequest = r2;
        r1 = (com.tencent.cos.model.PutObjectResult) sliceUpload(r2, r17, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0108, code lost:
        if (r1.code == 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0110, code lost:
        if (r19.httpRequest.getListener() == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0112, code lost:
        r19.httpRequest.getListener().onFailed(r19.httpRequest.getRequest(), r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0121, code lost:
        r0 = r19.taskStateListener;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0123, code lost:
        if (r0 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0125, code lost:
        r0.onFail();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0128, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0129, code lost:
        r5 = r17 + r10;
        r0.updateSlicePart(r9, true);
        r0.saveFileSlicePart(r13);
        r7 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0139, code lost:
        r7 = com.tencent.cos.task.SliceUploadTask.TAG;
        com.tencent.cos.utils.QLog.w(r7, "上传finish分片");
        r2 = uploadSliceFinishRequset_4(r19.httpRequest, r14, r15, r6);
        r19.httpRequest = r2;
        r1 = (com.tencent.cos.model.PutObjectResult) sliceUpload(r2, 0, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x015a, code lost:
        if (r1.code == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0162, code lost:
        if (r19.httpRequest.getListener() == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0164, code lost:
        r19.httpRequest.getListener().onFailed(r19.httpRequest.getRequest(), r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0173, code lost:
        r0 = r19.taskStateListener;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0175, code lost:
        if (r0 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0177, code lost:
        r0.onFail();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x017a, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x017b, code lost:
        com.tencent.cos.utils.QLog.w(r7, "上传list分片");
        r2 = uploadSliceListRequset_4(r19.httpRequest);
        r19.httpRequest = r2;
        r1 = (com.tencent.cos.model.PutObjectResult) sliceUpload(r2, 0, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0196, code lost:
        if (r1.code != 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x019e, code lost:
        if (r19.httpRequest.getListener() == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01a0, code lost:
        r19.httpRequest.getListener().onSuccess(r19.httpRequest.getRequest(), r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01b6, code lost:
        if (r19.httpRequest.getListener() == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01b8, code lost:
        r19.httpRequest.getListener().onFailed(r19.httpRequest.getRequest(), r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01c7, code lost:
        r2 = r19.taskStateListener;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01c9, code lost:
        if (r2 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01cb, code lost:
        r2.onSendFinish();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01ce, code lost:
        r0.deleteFile(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01d1, code lost:
        return r1;
     */
    @Override // com.tencent.cos.task.Task
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.cos.model.COSResult doPostRequest() {
        /*
            Method dump skipped, instructions count: 757
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.cos.task.SliceUploadTask.doPostRequest():com.tencent.cos.model.COSResult");
    }

    protected void prepareFileSlice(PutObjectRequest putObjectRequest, PutObjectResult putObjectResult, FileSlicePart fileSlicePart) {
        fileSlicePart.appid = putObjectRequest.getAppid();
        fileSlicePart.bucket = putObjectRequest.getBucket();
        fileSlicePart.cosPath = putObjectRequest.getCosPath();
        fileSlicePart.srcPath = putObjectRequest.getSrcPath();
        fileSlicePart.biz_attr = putObjectRequest.getBiz_attr();
        fileSlicePart.insertOnly = putObjectRequest.getInsertOnly();
        fileSlicePart.sha = putObjectRequest.getsha();
        fileSlicePart.sign = putObjectRequest.getSign();
        fileSlicePart.requestId = putObjectRequest.getRequestId();
        fileSlicePart.sliceSize = putObjectResult.slice_size;
        fileSlicePart.session = putObjectResult.session;
        fileSlicePart.slice_init_flag = true;
        long filesize = putObjectRequest.getFilesize();
        ArrayList<SlicePart> arrayList = new ArrayList<>();
        int i2 = fileSlicePart.sliceSize;
        int i4 = (int) ((filesize + (i2 - 1)) / i2);
        for (int i5 = 0; i5 < i4; i5++) {
            SlicePart slicePart = new SlicePart();
            slicePart.setOffset(fileSlicePart.sliceSize * i5);
            slicePart.setSliceSize(fileSlicePart.sliceSize);
            slicePart.setOverFlag(false);
            arrayList.add(i5, slicePart);
        }
        fileSlicePart.sliceParts = arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0241  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.tencent.cos.model.COSResult sliceUpload(com.tencent.cos.network.HttpRequest r17, long r18, long r20) {
        /*
            Method dump skipped, instructions count: 715
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.cos.task.SliceUploadTask.sliceUpload(com.tencent.cos.network.HttpRequest, long, long):com.tencent.cos.model.COSResult");
    }

    protected HttpRequest uploadSliceDataRequset_4(HttpRequest httpRequest, byte[] bArr, String str, long j4, String str2) {
        PutObjectRequest putObjectRequest = (PutObjectRequest) httpRequest.getRequest();
        putObjectRequest.setSliceFlag(true);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        COSHttpRequstBody.KEY.getClass();
        COSHttpRequstBody.OP.getClass();
        linkedHashMap.put("op", "upload_slice_data");
        COSHttpRequstBody.KEY.getClass();
        linkedHashMap.put("session", str);
        COSHttpRequstBody.KEY.getClass();
        linkedHashMap.put("offset", String.valueOf(j4));
        if (str2 != null) {
            COSHttpRequstBody.KEY.getClass();
            linkedHashMap.put(COSHttpResponseKey.Data.SHA, str2);
        }
        putObjectRequest.setBodys(linkedHashMap);
        putObjectRequest.setDataByte(bArr);
        putObjectRequest.setDataFile(null);
        putObjectRequest.setDataInputStream(null);
        return new HttpRequest(putObjectRequest);
    }

    protected HttpRequest uploadSliceFinishRequset_4(HttpRequest httpRequest, String str, long j4, String str2) {
        PutObjectRequest putObjectRequest = (PutObjectRequest) httpRequest.getRequest();
        putObjectRequest.setSliceFlag(true);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        COSHttpRequstBody.KEY.getClass();
        COSHttpRequstBody.OP.getClass();
        linkedHashMap.put("op", "upload_slice_finish");
        COSHttpRequstBody.KEY.getClass();
        linkedHashMap.put("session", str);
        COSHttpRequstBody.KEY.getClass();
        linkedHashMap.put(COSHttpResponseKey.Data.FILESIZE, String.valueOf(j4));
        if (str2 != null) {
            COSHttpRequstBody.KEY.getClass();
            linkedHashMap.put(COSHttpResponseKey.Data.SHA, str2);
        }
        putObjectRequest.setBodys(linkedHashMap);
        putObjectRequest.setDataByte(null);
        putObjectRequest.setDataFile(null);
        putObjectRequest.setDataInputStream(null);
        return new HttpRequest(putObjectRequest);
    }

    protected HttpRequest uploadSliceListRequset_4(HttpRequest httpRequest) {
        PutObjectRequest putObjectRequest = (PutObjectRequest) httpRequest.getRequest();
        putObjectRequest.setSliceFlag(true);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        COSHttpRequstBody.KEY.getClass();
        COSHttpRequstBody.OP.getClass();
        linkedHashMap.put("op", "upload_slice_list");
        putObjectRequest.setBodys(linkedHashMap);
        putObjectRequest.setDataByte(null);
        putObjectRequest.setDataFile(null);
        putObjectRequest.setDataInputStream(null);
        return new HttpRequest(putObjectRequest);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public class SimpleUploadRequestBody extends RequestBody {
        private final int SEGMENT_SIZE;
        private String contentType;
        private byte[] dataByte;
        private File dataFile;
        private InputStream dataStream;
        private long fileLength;
        private long offset;
        private long totalLength;

        public SimpleUploadRequestBody(File file, String str, long j4, long j5) {
            this.SEGMENT_SIZE = 2048;
            this.dataFile = null;
            this.dataStream = null;
            this.dataByte = null;
            this.contentType = HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE;
            this.dataFile = file;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = file.length();
            this.offset = j4;
            this.fileLength = j5;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.totalLength;
        }

        @Override // okhttp3.RequestBody
        public MediaType contentType() {
            return MediaType.parse(this.contentType);
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            Source source;
            AutoCloseable autoCloseable = null;
            try {
                try {
                    InputStream inputStream = this.dataStream;
                    if (inputStream != null) {
                        source = Okio.source(inputStream);
                    } else if (this.dataByte != null) {
                        source = Okio.source(new ByteArrayInputStream(this.dataByte));
                    } else {
                        File file = this.dataFile;
                        if (file != null) {
                            source = Okio.source(file);
                        } else {
                            throw new IllegalArgumentException("数据来源为null");
                        }
                    }
                    long j4 = 0;
                    while (true) {
                        long j5 = this.totalLength;
                        if (j4 >= j5) {
                            break;
                        }
                        long read = source.read(bufferedSink.buffer(), Math.min(j5 - j4, 2048L));
                        if (read == -1) {
                            break;
                        }
                        j4 += read;
                        bufferedSink.flush();
                        if (SliceUploadTask.this.httpRequest.getListener() != null) {
                            ((IUploadTaskListener) SliceUploadTask.this.httpRequest.getListener()).onProgress(SliceUploadTask.this.httpRequest.getRequest(), this.offset + j4, this.fileLength);
                        }
                    }
                    if (source != null) {
                        source.close();
                    }
                } catch (Exception e4) {
                    if (!SliceUploadTask.this.callTask.isCanceled() || !(e4 instanceof CancellationException)) {
                        QLog.w(SliceUploadTask.TAG, e4.getMessage(), e4);
                    } else {
                        String str = SliceUploadTask.TAG;
                        QLog.w(str, "task: " + SliceUploadTask.this.httpRequest.getRequest().getRequestId() + " is cancelled");
                    }
                    throw e4;
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    autoCloseable.close();
                }
                throw th;
            }
        }

        public SimpleUploadRequestBody(byte[] bArr, String str, long j4, long j5) {
            this.SEGMENT_SIZE = 2048;
            this.dataFile = null;
            this.dataStream = null;
            this.dataByte = null;
            this.contentType = HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE;
            this.dataByte = bArr;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = bArr.length;
            this.offset = j4;
            this.fileLength = j5;
        }

        public SimpleUploadRequestBody(InputStream inputStream, String str, long j4, long j5, long j6) {
            this.SEGMENT_SIZE = 2048;
            this.dataFile = null;
            this.dataStream = null;
            this.dataByte = null;
            this.contentType = HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE;
            this.dataStream = inputStream;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = j4;
            this.offset = j5;
            this.fileLength = j6;
        }
    }
}
