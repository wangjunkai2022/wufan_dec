package com.tencent.cos.utils;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.join.mgps.Util.g0;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import q.a;
/* loaded from: classes4.dex */
public class RecordLog {
    private static final long BUFFER_SIZE = 32768;
    private static final long LOG_FLUSH_DURATION = 10000;
    private static final int MAX_FILE_COUNT = 30;
    private static final int MAX_FILE_SIZE = 32768;
    private static HandlerThread handlerThread;
    private static RecordLog recordLog;
    private String flag;
    private Handler handler;
    private String logRootDir;
    private static final byte[] object = new byte[0];
    private static final byte[] instance = new byte[0];
    private String logFileDir = null;
    private FileFilter fileFilter = new FileFilter() { // from class: com.tencent.cos.utils.RecordLog.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            StringBuilder sb = new StringBuilder();
            sb.append(g0.f27568a);
            sb.append(RecordLog.this.flag);
            sb.append(".log");
            return name.endsWith(sb.toString()) && RecordLog.this.getIndexFromFile(file) != -1;
        }
    };
    private final int MSG_FLUSH_ALL = 0;
    private final int MSG_FLUSH_CONTENT = 1;
    private final int MSG_DELETE_FILE = 2;
    private List<Record> bufferRecord = Collections.synchronizedList(new ArrayList());
    private volatile long mBufferSize = 0;

    private RecordLog(Context context, String str) {
        this.flag = null;
        this.logRootDir = null;
        this.handler = null;
        this.flag = str;
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory());
        String str2 = File.separator;
        sb.append(str2);
        sb.append(a.f73954a);
        sb.append(str2);
        sb.append("data");
        sb.append(str2);
        sb.append(context.getPackageName());
        sb.append(str2);
        sb.append("logs");
        this.logRootDir = sb.toString();
        HandlerThread handlerThread2 = new HandlerThread("log_handlerThread", 1);
        handlerThread = handlerThread2;
        handlerThread2.start();
        Handler handler = new Handler(handlerThread.getLooper()) { // from class: com.tencent.cos.utils.RecordLog.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 0) {
                    RecordLog.this.flush();
                    sendEmptyMessageDelayed(0, 10000L);
                } else if (i2 != 1) {
                } else {
                    RecordLog.this.flush();
                }
            }
        };
        this.handler = handler;
        Message obtainMessage = handler.obtainMessage();
        obtainMessage.what = 0;
        this.handler.sendMessage(obtainMessage);
    }

    public static RecordLog getInstance(Context context, String str) {
        RecordLog recordLog2;
        synchronized (instance) {
            if (recordLog == null) {
                recordLog = new RecordLog(context, str);
            }
            recordLog2 = recordLog;
        }
        return recordLog2;
    }

    public void appendRecord(String str, String str2, String str3, Throwable th) {
        Record record = new Record(str, str2, str3, th);
        synchronized (this) {
            if (this.mBufferSize > 32768 || this.mBufferSize + record.getLength() > 32768) {
                Message obtainMessage = this.handler.obtainMessage();
                obtainMessage.what = 1;
                this.handler.sendMessage(obtainMessage);
            }
            this.bufferRecord.add(record);
            this.mBufferSize += record.getLength();
        }
    }

    public void flush() {
        synchronized (this) {
            if (this.mBufferSize <= 0) {
                return;
            }
            write(this.bufferRecord);
            this.bufferRecord.clear();
            this.mBufferSize = 0L;
        }
    }

    public int getIndexFromFile(File file) {
        try {
            String name = file.getName();
            return Integer.valueOf(name.substring(0, name.indexOf(46))).intValue();
        } catch (Exception e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public File getLogFile(long j4) {
        String str = this.logRootDir + File.separator + getLongDate(j4);
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
            return new File(str, "1." + this.flag + ".log");
        }
        File[] listFiles = file.listFiles(this.fileFilter);
        if (listFiles.length == 0) {
            return new File(str, "1." + this.flag + ".log");
        }
        Arrays.sort(listFiles, new Comparator<File>() { // from class: com.tencent.cos.utils.RecordLog.3
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return RecordLog.this.getIndexFromFile(file2) - RecordLog.this.getIndexFromFile(file3);
            }
        });
        File file2 = listFiles[listFiles.length - 1];
        if (file2.length() > 32768) {
            file2 = new File(str, "" + (getIndexFromFile(file2) + 1) + g0.f27568a + this.flag + ".log");
        }
        int length = listFiles.length + 1;
        for (int i2 = 0; i2 < length - 30; i2++) {
            listFiles[i2].delete();
        }
        return file2;
    }

    public String getLogFileDir() {
        File file = new File(this.logRootDir + File.separator + getTodayDate());
        if (!file.exists()) {
            file.mkdirs();
        }
        String path = file.getPath();
        this.logFileDir = path;
        return path;
    }

    public String getLogRootDir() {
        return this.logRootDir;
    }

    public String getLongDate(long j4) {
        return new SimpleDateFormat("yyyy-MM-dd").format(Long.valueOf(j4));
    }

    public String getTodayDate() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    public void write(List<Record> list) {
        synchronized (object) {
            if (list == null) {
                return;
            }
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(getLogFile(System.currentTimeMillis()), true);
                    int i2 = 0;
                    while (i2 < list.size()) {
                        try {
                            fileOutputStream2.write(list.get(i2).toString().getBytes());
                            i2++;
                        } catch (FileNotFoundException e4) {
                            e = e4;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            fileOutputStream = fileOutputStream;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    fileOutputStream = fileOutputStream;
                                } catch (IOException e5) {
                                    e = e5;
                                    e.printStackTrace();
                                }
                            }
                        } catch (IOException e6) {
                            e = e6;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            fileOutputStream = fileOutputStream;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    fileOutputStream = fileOutputStream;
                                } catch (IOException e7) {
                                    e = e7;
                                    e.printStackTrace();
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e8) {
                                    e8.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    fileOutputStream2.flush();
                    try {
                        fileOutputStream2.close();
                        fileOutputStream = i2;
                    } catch (IOException e9) {
                        e = e9;
                        e.printStackTrace();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e10) {
                e = e10;
            } catch (IOException e11) {
                e = e11;
            }
        }
    }
}
