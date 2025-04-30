package com.mob.tools.utils;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.mob.commons.a.o;
import com.mob.commons.r;
import com.mob.commons.u;
import com.mob.tools.MobHandlerThread;
import com.mob.tools.MobLog;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStreamWriter;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class SharePrefrenceHelper implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private Context f53963a;

    /* renamed from: b  reason: collision with root package name */
    private volatile a f53964b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static Handler f53965c;

        /* renamed from: a  reason: collision with root package name */
        private File f53966a;

        /* renamed from: b  reason: collision with root package name */
        private HashMap<String, Object> f53967b = new HashMap<>();

        static {
            String str;
            if (TextUtils.isEmpty("M-")) {
                str = null;
            } else {
                str = u.f53112a + o.a("002,fihi");
            }
            f53965c = MobHandlerThread.newHandler(str, new Handler.Callback() { // from class: com.mob.tools.utils.SharePrefrenceHelper.a.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    try {
                        Bundle data = message.getData();
                        String string = data.getString(o.a("004!igghfdel"));
                        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(data.getString(o.a("004OgieffeZj"))), "utf-8");
                        outputStreamWriter.append((CharSequence) string);
                        outputStreamWriter.flush();
                        outputStreamWriter.close();
                        return false;
                    } catch (Throwable th) {
                        MobLog.getInstance().w(th);
                        return false;
                    }
                }
            });
        }

        public a(Context context, String str) {
            if (context != null) {
                try {
                    File file = new File(new File(context.getFilesDir(), o.a("003(hjfdgd")), str);
                    this.f53966a = file;
                    if (!file.getParentFile().exists()) {
                        this.f53966a.getParentFile().mkdirs();
                    }
                    if (!this.f53966a.exists()) {
                        this.f53966a.createNewFile();
                    }
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                    return;
                }
            }
            c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object b(String str) {
            Object obj;
            synchronized (this.f53967b) {
                obj = this.f53967b.get(str);
            }
            return obj;
        }

        private void c() {
            BufferedReader bufferedReader;
            Throwable th;
            synchronized (this.f53967b) {
                File file = this.f53966a;
                if (file != null && file.exists()) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(this.f53966a), "utf-8"));
                    } catch (Throwable th2) {
                        bufferedReader = null;
                        th = th2;
                    }
                    try {
                        StringBuilder sb = new StringBuilder();
                        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                            if (sb.length() > 0) {
                                sb.append("\n");
                            }
                            sb.append(readLine);
                        }
                        this.f53967b = HashonHelper.fromJson(sb.toString());
                        r.a(bufferedReader);
                    } catch (Throwable th3) {
                        th = th3;
                        MobLog.getInstance().w(th);
                        r.a(bufferedReader);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, Object obj) {
            synchronized (this.f53967b) {
                this.f53967b.put(str, obj);
                if (f53965c != null && this.f53966a != null) {
                    Message message = new Message();
                    Bundle bundle = new Bundle();
                    bundle.putString(o.a("004Bigghfdel"), HashonHelper.fromHashMap(this.f53967b));
                    bundle.putString(o.a("004$gieffe!j"), this.f53966a.getAbsolutePath());
                    message.setData(bundle);
                    message.what = 1;
                    f53965c.sendMessage(message);
                }
            }
        }

        public void b(String str, int i2) {
            a(str, Integer.valueOf(i2));
        }

        public void b(String str, long j4) {
            a(str, Long.valueOf(j4));
        }

        public void b(String str, boolean z3) {
            a(str, z3 ? (byte) 1 : (byte) 0);
        }

        public void b(String str, String str2) {
            a(str, (Object) str2);
        }

        public void b() {
            synchronized (this.f53967b) {
                this.f53967b.clear();
            }
            if (f53965c == null || this.f53966a == null) {
                return;
            }
            Message message = new Message();
            Bundle bundle = new Bundle();
            bundle.putString(o.a("004Higghfdel"), HashonHelper.fromHashMap(this.f53967b));
            bundle.putString(o.a("004)gieffe!j"), this.f53966a.getAbsolutePath());
            message.setData(bundle);
            message.what = 1;
            f53965c.sendMessage(message);
        }

        public void a(String str, byte b4) {
            a(str, Byte.valueOf(b4));
        }

        public int a(String str, int i2) {
            Object b4 = b(str);
            return b4 != null ? ((Number) b4).intValue() : i2;
        }

        public long a(String str, long j4) {
            Object b4 = b(str);
            return b4 != null ? ((Number) b4).longValue() : j4;
        }

        public boolean a(String str, boolean z3) {
            Object b4 = b(str);
            return b4 != null ? ((Number) b4).byteValue() == 1 : z3;
        }

        public String a(String str, String str2) {
            Object b4 = b(str);
            return b4 != null ? (String) b4 : str2;
        }

        public HashMap<String, Object> a() {
            HashMap<String, Object> hashMap;
            synchronized (this.f53967b) {
                hashMap = new HashMap<>();
                hashMap.putAll(this.f53967b);
            }
            return hashMap;
        }

        public void a(HashMap<String, Object> hashMap) {
            synchronized (this.f53967b) {
                this.f53967b.putAll(hashMap);
            }
            if (f53965c == null || this.f53966a == null) {
                return;
            }
            Message message = new Message();
            Bundle bundle = new Bundle();
            bundle.putString(o.a("004<igghfdel"), HashonHelper.fromHashMap(this.f53967b));
            bundle.putString(o.a("004GgieffeHj"), this.f53966a.getAbsolutePath());
            message.setData(bundle);
            message.what = 1;
            f53965c.sendMessage(message);
        }

        public void a(String str) {
            a(str, (Object) null);
        }
    }

    public SharePrefrenceHelper(Context context) {
        if (context != null) {
            this.f53963a = context.getApplicationContext();
        }
    }

    public void clear() {
        if (this.f53964b != null) {
            this.f53964b.b();
        }
    }

    public Object get(String str) {
        ObjectInputStream objectInputStream;
        try {
            String string = getString(str);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            try {
                objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(string, 2)));
                try {
                    Object readObject = objectInputStream.readObject();
                    objectInputStream.close();
                    r.a(objectInputStream);
                    return readObject;
                } catch (Throwable th) {
                    th = th;
                    r.a(objectInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                objectInputStream = null;
            }
        } catch (Throwable th3) {
            MobLog.getInstance().w(th3);
            return null;
        }
    }

    public HashMap<String, Object> getAll() {
        if (this.f53964b != null) {
            return this.f53964b.a();
        }
        return new HashMap<>();
    }

    public boolean getBoolean(String str) {
        if (this.f53964b != null) {
            return this.f53964b.a(str, false);
        }
        return false;
    }

    public int getInt(String str) {
        if (this.f53964b != null) {
            return this.f53964b.a(str, 0);
        }
        return 0;
    }

    public long getLong(String str) {
        return getLong(str, 0L);
    }

    public Object getObj(String str, Object obj) {
        return this.f53964b != null ? this.f53964b.b(str) : obj;
    }

    public String getString(String str) {
        return this.f53964b != null ? this.f53964b.a(str, "") : "";
    }

    public void open(String str) {
        open(str, 0);
    }

    public void put(String str, Object obj) {
        if (obj == null) {
            return;
        }
        ObjectOutputStream objectOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream2.writeObject(obj);
                objectOutputStream2.flush();
                putString(str, Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2));
                r.a(objectOutputStream2);
            } catch (Throwable th) {
                th = th;
                objectOutputStream = objectOutputStream2;
                try {
                    MobLog.getInstance().w(th);
                    r.a(objectOutputStream);
                } catch (Throwable th2) {
                    r.a(objectOutputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void putAll(HashMap<String, Object> hashMap) {
        if (this.f53964b != null) {
            this.f53964b.a(hashMap);
        }
    }

    public void putBoolean(String str, Boolean bool) {
        if (this.f53964b != null) {
            this.f53964b.b(str, bool.booleanValue());
        }
    }

    public void putInt(String str, Integer num) {
        if (this.f53964b != null) {
            this.f53964b.b(str, num.intValue());
        }
    }

    public void putLong(String str, Long l4) {
        if (this.f53964b != null) {
            this.f53964b.b(str, l4.longValue());
        }
    }

    public void putObj(String str, Object obj) {
        if (obj == null && this.f53964b != null) {
            this.f53964b.a(str);
        } else if (this.f53964b != null) {
            this.f53964b.a(str, obj);
        }
    }

    public void putString(String str, String str2) {
        if (this.f53964b != null) {
            this.f53964b.b(str, str2);
        }
    }

    public void remove(String str) {
        if (this.f53964b != null) {
            this.f53964b.a(str);
        }
    }

    public long getLong(String str, long j4) {
        return this.f53964b != null ? this.f53964b.a(str, j4) : j4;
    }

    public void open(String str, int i2) {
        this.f53964b = new a(this.f53963a, str + "_" + i2);
    }

    public boolean getBoolean(String str, boolean z3) {
        return this.f53964b != null ? this.f53964b.a(str, z3) : z3;
    }

    public int getInt(String str, int i2) {
        return this.f53964b != null ? this.f53964b.a(str, i2) : i2;
    }

    public String getString(String str, String str2) {
        return this.f53964b != null ? this.f53964b.a(str, str2) : str2;
    }
}
