package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
import java.util.WeakHashMap;
import m.framework.network.NetworkHelper;
import m.framework.network.ResponseCallback;
import m.framework.utils.Data;
import m.framework.utils.Utils;
/* loaded from: classes5.dex */
public class BitmapProcessor {
    private static final int CAPACITY = 5;
    private static final int MAX_REQ_TIME = 200;
    private static final int MAX_SIZE = 40;
    private static final int OVERFLOW_SIZE = 50;
    private static BitmapProcessor instance;
    private File cacheDir;
    private boolean work;
    private Vector<ImageReq> reqList = new Vector<>();
    private Vector<ImageReq> netReqTPS = new Vector<>();
    private WorkerThread[] workerList = new WorkerThread[5];
    private WeakHashMap<String, Bitmap> cacheMap = new WeakHashMap<>();

    /* loaded from: classes5.dex */
    public static class ImageReq {
        private BitmapCallback callback;
        private Bitmap image;
        private long reqTime = System.currentTimeMillis();
        private String url;
        private WorkerThread worker;

        /* JADX INFO: Access modifiers changed from: private */
        public void throwComplete(Bitmap bitmap) {
            this.image = bitmap;
            BitmapCallback bitmapCallback = this.callback;
            if (bitmapCallback != null) {
                bitmapCallback.onImageGot(this.url, bitmap);
            }
        }

        public String toString() {
            return "url=" + this.url + "time=" + this.reqTime + "worker=" + this.worker.getName() + " (" + this.worker.getId() + "";
        }
    }

    /* loaded from: classes5.dex */
    private static class ManagerThread extends Timer {
        private BitmapProcessor processor;

        public ManagerThread(BitmapProcessor bitmapProcessor) {
            this.processor = bitmapProcessor;
            schedule(new TimerTask() { // from class: m.framework.ui.widget.asyncview.BitmapProcessor.ManagerThread.1
                private int counter;

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (ManagerThread.this.processor.work) {
                        int i2 = this.counter - 1;
                        this.counter = i2;
                        if (i2 <= 0) {
                            this.counter = 100;
                            ManagerThread.this.scan();
                        }
                    }
                }
            }, 0L, 200L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scan() {
            if (this.processor.work) {
                long currentTimeMillis = System.currentTimeMillis();
                int i2 = 0;
                while (i2 < this.processor.workerList.length) {
                    if (this.processor.workerList[i2] == null) {
                        this.processor.workerList[i2] = new WorkerThread(this.processor);
                        WorkerThread workerThread = this.processor.workerList[i2];
                        workerThread.setName("worker " + i2);
                        this.processor.workerList[i2].localType = i2 == 0;
                        this.processor.workerList[i2].start();
                    } else if (currentTimeMillis - this.processor.workerList[i2].lastReport > 20000) {
                        this.processor.workerList[i2].interrupt();
                        boolean z3 = this.processor.workerList[i2].localType;
                        this.processor.workerList[i2] = new WorkerThread(this.processor);
                        WorkerThread workerThread2 = this.processor.workerList[i2];
                        workerThread2.setName("worker " + i2);
                        this.processor.workerList[i2].localType = z3;
                        this.processor.workerList[i2].start();
                    }
                    i2++;
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    private static class PatchInputStream extends FilterInputStream {

        /* renamed from: in  reason: collision with root package name */
        InputStream f72581in;

        protected PatchInputStream(InputStream inputStream) {
            super(inputStream);
            this.f72581in = inputStream;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j4) throws IOException {
            long j5 = 0;
            while (j5 < j4) {
                long skip = this.f72581in.skip(j4 - j5);
                if (skip == 0) {
                    break;
                }
                j5 += skip;
            }
            return j5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class WorkerThread extends Thread {
        private ImageReq curReq;
        private long lastReport = System.currentTimeMillis();
        private boolean localType;
        private BitmapProcessor processor;

        public WorkerThread(BitmapProcessor bitmapProcessor) {
            this.processor = bitmapProcessor;
        }

        private void doLocalTask() throws Throwable {
            int size = this.processor.reqList.size();
            ImageReq imageReq = size > 0 ? (ImageReq) this.processor.reqList.remove(size - 1) : null;
            if (imageReq != null) {
                Bitmap bitmap = (Bitmap) this.processor.cacheMap.get(imageReq.url);
                if (bitmap != null) {
                    this.curReq = imageReq;
                    imageReq.worker = this;
                    imageReq.throwComplete(bitmap);
                } else if (!new File(this.processor.cacheDir, Data.MD5(imageReq.url)).exists()) {
                    if (this.processor.netReqTPS.size() > 40) {
                        while (this.processor.reqList.size() > 0) {
                            this.processor.reqList.remove(0);
                        }
                        this.processor.netReqTPS.remove(0);
                    }
                    this.processor.netReqTPS.add(imageReq);
                } else {
                    doTask(imageReq);
                    this.lastReport = System.currentTimeMillis();
                    return;
                }
                this.lastReport = System.currentTimeMillis();
                return;
            }
            this.lastReport = System.currentTimeMillis();
            Thread.sleep(30L);
        }

        private void doNetworkTask() throws Throwable {
            int size;
            ImageReq imageReq = this.processor.netReqTPS.size() > 0 ? (ImageReq) this.processor.netReqTPS.remove(0) : null;
            if (imageReq == null && (size = this.processor.reqList.size()) > 0) {
                imageReq = (ImageReq) this.processor.reqList.remove(size - 1);
            }
            if (imageReq != null) {
                Bitmap bitmap = (Bitmap) this.processor.cacheMap.get(imageReq.url);
                if (bitmap != null) {
                    this.curReq = imageReq;
                    imageReq.worker = this;
                    imageReq.throwComplete(bitmap);
                } else {
                    doTask(imageReq);
                }
                this.lastReport = System.currentTimeMillis();
                return;
            }
            this.lastReport = System.currentTimeMillis();
            Thread.sleep(30L);
        }

        private void doTask(final ImageReq imageReq) throws Throwable {
            Bitmap bitmap;
            this.curReq = imageReq;
            imageReq.worker = this;
            final File file = new File(this.processor.cacheDir, Data.MD5(imageReq.url));
            if (!file.exists()) {
                new NetworkHelper().download(imageReq.url, new ResponseCallback() { // from class: m.framework.ui.widget.asyncview.BitmapProcessor.WorkerThread.1
                    @Override // m.framework.network.ResponseCallback
                    public void onResponse(InputStream inputStream) {
                        Bitmap bitmap2 = Utils.getBitmap(new PatchInputStream(inputStream));
                        if (bitmap2 == null || bitmap2.isRecycled()) {
                            WorkerThread.this.curReq = null;
                            return;
                        }
                        WorkerThread.this.saveFile(bitmap2, file);
                        WorkerThread.this.processor.cacheMap.put(imageReq.url, bitmap2);
                        imageReq.throwComplete(bitmap2);
                        WorkerThread.this.curReq = null;
                    }
                });
                bitmap = null;
            } else {
                bitmap = Utils.getBitmap(file.getAbsolutePath());
                if (bitmap != null) {
                    this.processor.cacheMap.put(imageReq.url, bitmap);
                    imageReq.throwComplete(bitmap);
                }
                this.curReq = null;
            }
            if (bitmap != null) {
                this.processor.cacheMap.put(imageReq.url, bitmap);
                imageReq.throwComplete(bitmap);
            }
            this.curReq = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void saveFile(Bitmap bitmap, File file) {
            try {
                if (file.exists()) {
                    file.delete();
                }
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                file.createNewFile();
                Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
                String fileMime = Utils.getFileMime(file.getAbsolutePath());
                if (fileMime != null && (fileMime.endsWith("png") || fileMime.endsWith("gif"))) {
                    compressFormat = Bitmap.CompressFormat.PNG;
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                bitmap.compress(compressFormat, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Throwable unused) {
                if (file.exists()) {
                    file.delete();
                }
            }
        }

        @Override // java.lang.Thread
        public void interrupt() {
            try {
                super.interrupt();
            } catch (Throwable unused) {
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.processor.work) {
                try {
                    if (this.localType) {
                        doLocalTask();
                    } else {
                        doNetworkTask();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    private BitmapProcessor(String str) {
        File file = new File(str);
        this.cacheDir = file;
        if (!file.exists()) {
            this.cacheDir.mkdirs();
        }
        new ManagerThread(this);
    }

    public static Bitmap getBitmapFromCache(String str) {
        BitmapProcessor bitmapProcessor = instance;
        if (bitmapProcessor != null) {
            return bitmapProcessor.cacheMap.get(str);
        }
        throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
    }

    public static synchronized void prepare(String str) {
        synchronized (BitmapProcessor.class) {
            if (instance == null) {
                instance = new BitmapProcessor(str);
            }
        }
    }

    public static void process(String str, BitmapCallback bitmapCallback) {
        if (instance == null) {
            throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
        }
        if (str == null) {
            return;
        }
        ImageReq imageReq = new ImageReq();
        imageReq.url = str;
        imageReq.callback = bitmapCallback;
        instance.reqList.add(imageReq);
        if (instance.reqList.size() > 50) {
            while (instance.reqList.size() > 40) {
                instance.reqList.remove(0);
            }
        }
        start();
    }

    public static void start() {
        BitmapProcessor bitmapProcessor = instance;
        if (bitmapProcessor != null) {
            bitmapProcessor.work = true;
            return;
        }
        throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
    }

    public static void stop() {
        BitmapProcessor bitmapProcessor = instance;
        if (bitmapProcessor == null) {
            return;
        }
        int i2 = 0;
        bitmapProcessor.work = false;
        bitmapProcessor.reqList.clear();
        while (true) {
            WorkerThread[] workerThreadArr = instance.workerList;
            if (i2 >= workerThreadArr.length) {
                instance = null;
                return;
            }
            if (workerThreadArr[i2] != null) {
                workerThreadArr[i2].interrupt();
            }
            i2++;
        }
    }
}
