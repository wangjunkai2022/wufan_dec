package com.ss.android.socialbase.downloader.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: DownloadChunk.java */
/* loaded from: classes4.dex */
public class b implements Parcelable {

    /* renamed from: b  reason: collision with root package name */
    private int f58462b;

    /* renamed from: c  reason: collision with root package name */
    private long f58463c;

    /* renamed from: d  reason: collision with root package name */
    private AtomicLong f58464d;

    /* renamed from: e  reason: collision with root package name */
    private long f58465e;

    /* renamed from: f  reason: collision with root package name */
    private long f58466f;

    /* renamed from: g  reason: collision with root package name */
    private int f58467g;

    /* renamed from: h  reason: collision with root package name */
    private AtomicInteger f58468h;

    /* renamed from: i  reason: collision with root package name */
    private long f58469i;

    /* renamed from: j  reason: collision with root package name */
    private List<b> f58470j;

    /* renamed from: k  reason: collision with root package name */
    private b f58471k;

    /* renamed from: l  reason: collision with root package name */
    private int f58472l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f58473m;

    /* renamed from: n  reason: collision with root package name */
    private AtomicBoolean f58474n;

    /* renamed from: o  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.h.b f58475o;

    /* renamed from: a  reason: collision with root package name */
    private static final String f58461a = b.class.getSimpleName();
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.ss.android.socialbase.downloader.model.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b[] newArray(int i2) {
            return new b[i2];
        }
    };

    /* compiled from: DownloadChunk.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f58476a;

        /* renamed from: b  reason: collision with root package name */
        private long f58477b;

        /* renamed from: c  reason: collision with root package name */
        private long f58478c;

        /* renamed from: d  reason: collision with root package name */
        private long f58479d;

        /* renamed from: e  reason: collision with root package name */
        private long f58480e;

        /* renamed from: f  reason: collision with root package name */
        private int f58481f;

        /* renamed from: g  reason: collision with root package name */
        private long f58482g;

        /* renamed from: h  reason: collision with root package name */
        private b f58483h;

        public a(int i2) {
            this.f58476a = i2;
        }

        public a a(long j4) {
            this.f58477b = j4;
            return this;
        }

        public a b(long j4) {
            this.f58478c = j4;
            return this;
        }

        public a c(long j4) {
            this.f58479d = j4;
            return this;
        }

        public a d(long j4) {
            this.f58480e = j4;
            return this;
        }

        public a e(long j4) {
            this.f58482g = j4;
            return this;
        }

        public a a(int i2) {
            this.f58481f = i2;
            return this;
        }

        public a a(b bVar) {
            this.f58483h = bVar;
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    public ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(this.f58462b));
        contentValues.put("chunkIndex", Integer.valueOf(this.f58467g));
        contentValues.put("startOffset", Long.valueOf(this.f58463c));
        contentValues.put("curOffset", Long.valueOf(n()));
        contentValues.put("endOffset", Long.valueOf(this.f58465e));
        contentValues.put("chunkContentLen", Long.valueOf(this.f58466f));
        contentValues.put("hostChunkIndex", Integer.valueOf(b()));
        return contentValues;
    }

    public int b() {
        AtomicInteger atomicInteger = this.f58468h;
        if (atomicInteger == null) {
            return -1;
        }
        return atomicInteger.get();
    }

    public boolean c() {
        AtomicBoolean atomicBoolean = this.f58474n;
        if (atomicBoolean == null) {
            return false;
        }
        return atomicBoolean.get();
    }

    public boolean d() {
        return b() == -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public b e() {
        b bVar = !d() ? this.f58471k : this;
        if (bVar == null || !bVar.f()) {
            return null;
        }
        return bVar.g().get(0);
    }

    public boolean f() {
        List<b> list = this.f58470j;
        return list != null && list.size() > 0;
    }

    public List<b> g() {
        return this.f58470j;
    }

    public boolean h() {
        b bVar = this.f58471k;
        if (bVar == null) {
            return true;
        }
        if (bVar.f()) {
            for (int i2 = 0; i2 < this.f58471k.g().size(); i2++) {
                b bVar2 = this.f58471k.g().get(i2);
                if (bVar2 != null) {
                    int indexOf = this.f58471k.g().indexOf(this);
                    if (indexOf > i2 && !bVar2.i()) {
                        return false;
                    }
                    if (indexOf == i2) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public boolean i() {
        long j4 = this.f58463c;
        if (d()) {
            long j5 = this.f58469i;
            if (j5 > this.f58463c) {
                j4 = j5;
            }
        }
        return n() - j4 >= this.f58466f;
    }

    public long j() {
        b bVar = this.f58471k;
        if (bVar != null && bVar.g() != null) {
            int indexOf = this.f58471k.g().indexOf(this);
            boolean z3 = false;
            for (int i2 = 0; i2 < this.f58471k.g().size(); i2++) {
                b bVar2 = this.f58471k.g().get(i2);
                if (bVar2 != null) {
                    if (z3) {
                        return bVar2.n();
                    }
                    if (indexOf == i2) {
                        z3 = true;
                    }
                }
            }
        }
        return -1L;
    }

    public int k() {
        return this.f58462b;
    }

    public long l() {
        return this.f58463c;
    }

    public long m() {
        AtomicLong atomicLong = this.f58464d;
        if (atomicLong != null) {
            return atomicLong.get();
        }
        return 0L;
    }

    public long n() {
        if (d() && f()) {
            long j4 = 0;
            for (int i2 = 0; i2 < this.f58470j.size(); i2++) {
                b bVar = this.f58470j.get(i2);
                if (bVar != null) {
                    if (!bVar.i()) {
                        return bVar.m();
                    }
                    if (j4 < bVar.m()) {
                        j4 = bVar.m();
                    }
                }
            }
            return j4;
        }
        return m();
    }

    public long o() {
        long n4 = n() - this.f58463c;
        if (f()) {
            n4 = 0;
            for (int i2 = 0; i2 < this.f58470j.size(); i2++) {
                b bVar = this.f58470j.get(i2);
                if (bVar != null) {
                    n4 += bVar.n() - bVar.l();
                }
            }
        }
        return n4;
    }

    public long p() {
        return this.f58465e;
    }

    public long q() {
        return this.f58466f;
    }

    public void r() {
        this.f58469i = n();
    }

    public int s() {
        return this.f58467g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f58462b);
        parcel.writeLong(this.f58463c);
        AtomicLong atomicLong = this.f58464d;
        parcel.writeLong(atomicLong != null ? atomicLong.get() : 0L);
        parcel.writeLong(this.f58465e);
        parcel.writeLong(this.f58466f);
        parcel.writeInt(this.f58467g);
        AtomicInteger atomicInteger = this.f58468h;
        parcel.writeInt(atomicInteger != null ? atomicInteger.get() : -1);
    }

    private b(a aVar) {
        if (aVar == null) {
            return;
        }
        this.f58462b = aVar.f58476a;
        this.f58463c = aVar.f58477b;
        this.f58464d = new AtomicLong(aVar.f58478c);
        this.f58465e = aVar.f58479d;
        this.f58466f = aVar.f58480e;
        this.f58467g = aVar.f58481f;
        this.f58469i = aVar.f58482g;
        this.f58468h = new AtomicInteger(-1);
        a(aVar.f58483h);
        this.f58474n = new AtomicBoolean(false);
    }

    public void b(boolean z3) {
        this.f58473m = z3;
    }

    public void c(int i2) {
        this.f58467g = i2;
    }

    public void b(int i2) {
        this.f58462b = i2;
    }

    public long c(boolean z3) {
        long n4 = n();
        long j4 = this.f58466f;
        long j5 = this.f58469i;
        long j6 = j4 - (n4 - j5);
        if (!z3 && n4 == j5) {
            j6 = j4 - (n4 - this.f58463c);
        }
        com.ss.android.socialbase.downloader.c.a.b("DownloadChunk", "contentLength:" + this.f58466f + " curOffset:" + n() + " oldOffset:" + this.f58469i + " retainLen:" + j6);
        if (j6 < 0) {
            return 0L;
        }
        return j6;
    }

    public void b(long j4) {
        AtomicLong atomicLong = this.f58464d;
        if (atomicLong != null) {
            atomicLong.set(j4);
        } else {
            this.f58464d = new AtomicLong(j4);
        }
    }

    public void a(SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        this.f58472l = 0;
        sQLiteStatement.clearBindings();
        int i2 = this.f58472l + 1;
        this.f58472l = i2;
        sQLiteStatement.bindLong(i2, this.f58462b);
        int i4 = this.f58472l + 1;
        this.f58472l = i4;
        sQLiteStatement.bindLong(i4, this.f58467g);
        int i5 = this.f58472l + 1;
        this.f58472l = i5;
        sQLiteStatement.bindLong(i5, this.f58463c);
        int i6 = this.f58472l + 1;
        this.f58472l = i6;
        sQLiteStatement.bindLong(i6, n());
        int i7 = this.f58472l + 1;
        this.f58472l = i7;
        sQLiteStatement.bindLong(i7, this.f58465e);
        int i8 = this.f58472l + 1;
        this.f58472l = i8;
        sQLiteStatement.bindLong(i8, this.f58466f);
        int i9 = this.f58472l + 1;
        this.f58472l = i9;
        sQLiteStatement.bindLong(i9, b());
    }

    public b(Cursor cursor) {
        if (cursor == null) {
            return;
        }
        this.f58462b = cursor.getInt(cursor.getColumnIndex("_id"));
        this.f58467g = cursor.getInt(cursor.getColumnIndex("chunkIndex"));
        this.f58463c = cursor.getLong(cursor.getColumnIndex("startOffset"));
        int columnIndex = cursor.getColumnIndex("curOffset");
        if (columnIndex != -1) {
            this.f58464d = new AtomicLong(cursor.getLong(columnIndex));
        } else {
            this.f58464d = new AtomicLong(0L);
        }
        this.f58465e = cursor.getLong(cursor.getColumnIndex("endOffset"));
        int columnIndex2 = cursor.getColumnIndex("hostChunkIndex");
        if (columnIndex2 != -1) {
            this.f58468h = new AtomicInteger(cursor.getInt(columnIndex2));
        } else {
            this.f58468h = new AtomicInteger(-1);
        }
        int columnIndex3 = cursor.getColumnIndex("chunkContentLen");
        if (columnIndex3 != -1) {
            this.f58466f = cursor.getLong(columnIndex3);
        }
        this.f58474n = new AtomicBoolean(false);
    }

    public void a(int i2) {
        AtomicInteger atomicInteger = this.f58468h;
        if (atomicInteger == null) {
            this.f58468h = new AtomicInteger(i2);
        } else {
            atomicInteger.set(i2);
        }
    }

    public void a(com.ss.android.socialbase.downloader.h.b bVar) {
        this.f58475o = bVar;
        r();
    }

    public void a(boolean z3) {
        AtomicBoolean atomicBoolean = this.f58474n;
        if (atomicBoolean == null) {
            this.f58474n = new AtomicBoolean(z3);
        } else {
            atomicBoolean.set(z3);
        }
        this.f58475o = null;
    }

    protected b(Parcel parcel) {
        this.f58462b = parcel.readInt();
        this.f58463c = parcel.readLong();
        this.f58464d = new AtomicLong(parcel.readLong());
        this.f58465e = parcel.readLong();
        this.f58466f = parcel.readLong();
        this.f58467g = parcel.readInt();
        this.f58468h = new AtomicInteger(parcel.readInt());
    }

    public void a(b bVar) {
        this.f58471k = bVar;
        if (bVar != null) {
            a(bVar.s());
        }
    }

    public void a(List<b> list) {
        this.f58470j = list;
    }

    public void a(long j4) {
        this.f58466f = j4;
    }

    public List<b> a(int i2, long j4) {
        b bVar;
        long p3;
        long j5;
        long j6;
        long j7;
        long j8;
        b bVar2 = this;
        int i4 = i2;
        if (!d() || f()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        long m4 = m();
        long c4 = bVar2.c(true);
        long j9 = c4 / i4;
        com.ss.android.socialbase.downloader.c.a.b(f58461a, "retainLen:" + c4 + " divideChunkForReuse chunkSize:" + j9 + " current host downloadChunk index:" + bVar2.f58467g);
        int i5 = 0;
        while (i5 < i4) {
            if (i5 == 0) {
                j6 = l();
                j5 = (m4 + j9) - 1;
            } else {
                int i6 = i4 - 1;
                if (i5 == i6) {
                    long p4 = p();
                    j7 = p4 > m4 ? (p4 - m4) + 1 : c4 - (i6 * j9);
                    j8 = p4;
                    j6 = m4;
                    long j10 = c4;
                    long j11 = j8;
                    b a4 = new a(bVar2.f58462b).a((-i5) - 1).a(j6).b(m4).e(m4).c(j11).d(j7).a(bVar2).a();
                    com.ss.android.socialbase.downloader.c.a.b(f58461a, "divide sub chunk : " + i5 + " startOffset:" + j6 + " curOffset:" + m4 + " endOffset:" + j11 + " contentLen:" + j7);
                    arrayList.add(a4);
                    m4 += j9;
                    i5++;
                    bVar2 = this;
                    i4 = i2;
                    c4 = j10;
                } else {
                    j5 = (m4 + j9) - 1;
                    j6 = m4;
                }
            }
            j7 = j9;
            j8 = j5;
            long j102 = c4;
            long j112 = j8;
            b a42 = new a(bVar2.f58462b).a((-i5) - 1).a(j6).b(m4).e(m4).c(j112).d(j7).a(bVar2).a();
            com.ss.android.socialbase.downloader.c.a.b(f58461a, "divide sub chunk : " + i5 + " startOffset:" + j6 + " curOffset:" + m4 + " endOffset:" + j112 + " contentLen:" + j7);
            arrayList.add(a42);
            m4 += j9;
            i5++;
            bVar2 = this;
            i4 = i2;
            c4 = j102;
        }
        long j12 = 0;
        for (int size = arrayList.size() - 1; size > 0; size--) {
            b bVar3 = arrayList.get(size);
            if (bVar3 != null) {
                j12 += bVar3.q();
            }
        }
        com.ss.android.socialbase.downloader.c.a.b(f58461a, "reuseChunkContentLen:" + j12);
        b bVar4 = arrayList.get(0);
        if (bVar4 != null) {
            if (p() == 0) {
                p3 = j4 - l();
            } else {
                p3 = (p() - l()) + 1;
            }
            bVar4.a(p3 - j12);
            bVar = this;
            bVar4.c(bVar.f58467g);
            com.ss.android.socialbase.downloader.h.b bVar5 = bVar.f58475o;
            if (bVar5 != null) {
                bVar5.a(bVar4.p(), q() - j12);
            }
        } else {
            bVar = this;
        }
        bVar.a(arrayList);
        return arrayList;
    }
}
