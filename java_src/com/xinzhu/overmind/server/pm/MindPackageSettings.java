package com.xinzhu.overmind.server.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.AtomicFile;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class MindPackageSettings implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    public MindPackage f64563a;

    /* renamed from: b  reason: collision with root package name */
    public int f64564b;

    /* renamed from: c  reason: collision with root package name */
    public InstallOption f64565c;

    /* renamed from: d  reason: collision with root package name */
    public HashSet<String> f64566d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f64567e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f64568f;

    /* renamed from: g  reason: collision with root package name */
    public Map<Integer, MindPackageUserState> f64569g;

    /* renamed from: h  reason: collision with root package name */
    static final MindPackageUserState f64562h = new MindPackageUserState();
    public static final Parcelable.Creator<MindPackageSettings> CREATOR = new a();

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<MindPackageSettings> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindPackageSettings createFromParcel(Parcel source) {
            return new MindPackageSettings(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindPackageSettings[] newArray(int size) {
            return new MindPackageSettings[size];
        }
    }

    public MindPackageSettings() {
        this.f64566d = new HashSet<>();
        this.f64567e = true;
        this.f64568f = false;
        this.f64569g = new HashMap();
    }

    private MindPackageUserState h(int userId) {
        MindPackageUserState mindPackageUserState = this.f64569g.get(Integer.valueOf(userId));
        if (mindPackageUserState == null) {
            MindPackageUserState mindPackageUserState2 = new MindPackageUserState();
            this.f64569g.put(Integer.valueOf(userId), mindPackageUserState2);
            return mindPackageUserState2;
        }
        return mindPackageUserState;
    }

    public boolean a() {
        return this.f64566d.isEmpty();
    }

    public boolean b(int userId) {
        return i(userId).f64572c;
    }

    public boolean c(int userId) {
        return i(userId).f64570a;
    }

    public String d() {
        if (!this.f64567e) {
            return this.f64568f ? com.xinzhu.overmind.a.f63949k : com.xinzhu.overmind.a.f63947i;
        } else if (a()) {
            return com.xinzhu.overmind.a.f63947i;
        } else {
            return r() ? com.xinzhu.overmind.a.f63947i : com.xinzhu.overmind.a.f63949k;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean e(int userId) {
        return i(userId).f64571b;
    }

    public List<Integer> f() {
        return new ArrayList(this.f64569g.keySet());
    }

    public List<MindPackageUserState> g() {
        return new ArrayList(this.f64569g.values());
    }

    public MindPackageUserState i(int userId) {
        MindPackageUserState mindPackageUserState = this.f64569g.get(Integer.valueOf(userId));
        if (mindPackageUserState == null) {
            mindPackageUserState = new MindPackageUserState();
        }
        MindPackageUserState mindPackageUserState2 = new MindPackageUserState(mindPackageUserState);
        if (this.f64569g.get(-1) != null) {
            mindPackageUserState2.f64570a = true;
        }
        return mindPackageUserState2;
    }

    public void j(int userId) {
        this.f64569g.remove(Integer.valueOf(userId));
    }

    public boolean k() {
        if (this.f64567e) {
            if (a()) {
                return false;
            }
            return !r();
        }
        return this.f64568f;
    }

    public boolean l() {
        synchronized (this) {
            Parcel obtain = Parcel.obtain();
            AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.J(this.f64563a.f64526m));
            writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            FileOutputStream startWrite = atomicFile.startWrite();
            com.xinzhu.overmind.utils.j.z(obtain, startWrite);
            atomicFile.finishWrite(startWrite);
            obtain.recycle();
            com.xinzhu.overmind.utils.l.a(startWrite);
        }
        return true;
    }

    public void n(boolean hidden, int userId) {
        h(userId).f64572c = hidden;
    }

    public void o(boolean inst, int userId) {
        h(userId).f64570a = inst;
    }

    public void p(boolean runWithPlugin) {
        if (Overmind.get().isServerProcess()) {
            this.f64567e = false;
            this.f64568f = runWithPlugin;
            return;
        }
        throw new RuntimeException("calling setRunWithPlugin not in server process!");
    }

    public void q(boolean stop, int userId) {
        h(userId).f64571b = stop;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean r() {
        /*
            r3 = this;
            java.util.HashSet<java.lang.String> r0 = r3.f64566d
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L24
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r2 = "armeabi"
            boolean r2 = r2.equals(r1)
            if (r2 != 0) goto L22
            java.lang.String r2 = "armeabi-v7a"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L6
        L22:
            r0 = 1
            return r0
        L24:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.server.pm.MindPackageSettings.r():boolean");
    }

    public boolean s() {
        Iterator<String> it2 = this.f64566d.iterator();
        while (it2.hasNext()) {
            if ("arm64-v8a".equals(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public boolean t() {
        return s();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.f64563a, flags);
        dest.writeInt(this.f64564b);
        dest.writeParcelable(this.f64565c, flags);
        dest.writeSerializable(this.f64566d);
        dest.writeByte(this.f64567e ? (byte) 1 : (byte) 0);
        dest.writeByte(this.f64568f ? (byte) 1 : (byte) 0);
        dest.writeInt(this.f64569g.size());
        for (Map.Entry<Integer, MindPackageUserState> entry : this.f64569g.entrySet()) {
            dest.writeValue(entry.getKey());
            dest.writeParcelable(entry.getValue(), flags);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MindPackageSettings(Parcel in2) {
        this.f64566d = new HashSet<>();
        this.f64567e = true;
        this.f64568f = false;
        this.f64569g = new HashMap();
        this.f64563a = (MindPackage) in2.readParcelable(MindPackage.class.getClassLoader());
        this.f64564b = in2.readInt();
        this.f64565c = (InstallOption) in2.readParcelable(InstallOption.class.getClassLoader());
        this.f64566d = (HashSet) in2.readSerializable();
        this.f64567e = in2.readByte() != 0;
        this.f64568f = in2.readByte() != 0;
        int readInt = in2.readInt();
        this.f64569g = new HashMap(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f64569g.put((Integer) in2.readValue(Integer.class.getClassLoader()), (MindPackageUserState) in2.readParcelable(MindPackageUserState.class.getClassLoader()));
        }
    }
}
