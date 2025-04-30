package com.mob.commons.eventrecoder;

import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.commons.k;
import com.mob.commons.l;
import com.mob.tools.MobLog;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.FileLocker;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.LinkedList;
/* loaded from: classes4.dex */
public final class EventRecorder implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static File f53012a;

    /* renamed from: b  reason: collision with root package name */
    private static FileOutputStream f53013b;

    public static final synchronized void addBegin(String str, String str2) {
        synchronized (EventRecorder.class) {
            a(str + " " + str2 + " 0\n");
        }
    }

    public static final synchronized void addEnd(String str, String str2) {
        synchronized (EventRecorder.class) {
            a(str + " " + str2 + " 1\n");
        }
    }

    public static final synchronized String checkRecord(final String str) {
        synchronized (EventRecorder.class) {
            final LinkedList linkedList = new LinkedList();
            a(new k() { // from class: com.mob.commons.eventrecoder.EventRecorder.3
                @Override // com.mob.commons.k
                public boolean a(FileLocker fileLocker) {
                    int indexOf;
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(EventRecorder.f53012a), "utf-8"));
                        for (String readLine = bufferedReader.readLine(); !TextUtils.isEmpty(readLine); readLine = bufferedReader.readLine()) {
                            String[] split = readLine.split(" ");
                            if (str.equals(split[0])) {
                                if ("0".equals(split[2])) {
                                    linkedList.add(split[1]);
                                } else if ("1".equals(split[2]) && (indexOf = linkedList.indexOf(split[1])) != -1) {
                                    linkedList.remove(indexOf);
                                }
                            }
                        }
                        bufferedReader.close();
                    } catch (Throwable th) {
                        MobLog.getInstance().d(th);
                    }
                    return false;
                }
            });
            if (linkedList.size() > 0) {
                return (String) linkedList.get(0);
            }
            return null;
        }
    }

    public static final synchronized void clear() {
        synchronized (EventRecorder.class) {
            a(new k() { // from class: com.mob.commons.eventrecoder.EventRecorder.4
                @Override // com.mob.commons.k
                public boolean a(FileLocker fileLocker) {
                    try {
                        EventRecorder.f53013b.close();
                        EventRecorder.f53012a.delete();
                        File unused = EventRecorder.f53012a = new File(MobSDK.getContext().getFilesDir(), ".mrecord");
                        EventRecorder.f53012a.createNewFile();
                        FileOutputStream unused2 = EventRecorder.f53013b = new FileOutputStream(EventRecorder.f53012a, true);
                        return false;
                    } catch (Throwable th) {
                        MobLog.getInstance().w(th);
                        return false;
                    }
                }
            });
        }
    }

    public static final synchronized void prepare() {
        synchronized (EventRecorder.class) {
            a(new k() { // from class: com.mob.commons.eventrecoder.EventRecorder.1
                @Override // com.mob.commons.k
                public boolean a(FileLocker fileLocker) {
                    try {
                        File unused = EventRecorder.f53012a = new File(MobSDK.getContext().getFilesDir(), ".mrecord");
                        if (!EventRecorder.f53012a.exists()) {
                            EventRecorder.f53012a.createNewFile();
                        }
                        FileOutputStream unused2 = EventRecorder.f53013b = new FileOutputStream(EventRecorder.f53012a, true);
                        return false;
                    } catch (Throwable th) {
                        MobLog.getInstance().w(th);
                        return false;
                    }
                }
            });
        }
    }

    private static final void a(k kVar) {
        l.a(new File(MobSDK.getContext().getFilesDir(), l.f53045a), kVar);
    }

    private static final void a(final String str) {
        a(new k() { // from class: com.mob.commons.eventrecoder.EventRecorder.2
            @Override // com.mob.commons.k
            public boolean a(FileLocker fileLocker) {
                try {
                    EventRecorder.f53013b.write(str.getBytes("utf-8"));
                    EventRecorder.f53013b.flush();
                    return false;
                } catch (Throwable th) {
                    MobLog.getInstance().w(th);
                    return false;
                }
            }
        });
    }
}
