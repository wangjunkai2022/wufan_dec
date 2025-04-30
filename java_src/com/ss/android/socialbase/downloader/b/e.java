package com.ss.android.socialbase.downloader.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.android.dex.DexFormat;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.ss.android.socialbase.downloader.b.c;
import com.ss.android.socialbase.downloader.downloader.t;
import com.ss.android.socialbase.downloader.f.i;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;
/* compiled from: SqlDownloadCache.java */
/* loaded from: classes4.dex */
public class e extends c.a implements t {

    /* renamed from: b  reason: collision with root package name */
    private static volatile SQLiteDatabase f57781b;

    /* renamed from: a  reason: collision with root package name */
    b f57782a;

    /* renamed from: c  reason: collision with root package name */
    private g f57783c;

    /* renamed from: d  reason: collision with root package name */
    private g f57784d;

    /* renamed from: e  reason: collision with root package name */
    private g f57785e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f57786f;

    public e() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (f57781b == null) {
            synchronized (e.class) {
                if (f57781b == null) {
                    f57781b = a.a().getWritableDatabase();
                    this.f57783c = new g(f57781b, "downloader", com.ss.android.socialbase.downloader.constants.c.f57861a, com.ss.android.socialbase.downloader.constants.c.f57862b);
                    this.f57784d = new g(f57781b, "downloadChunk", com.ss.android.socialbase.downloader.constants.c.f57863c, com.ss.android.socialbase.downloader.constants.c.f57864d);
                    this.f57785e = new g(f57781b, "segments", com.ss.android.socialbase.downloader.constants.c.f57865e, com.ss.android.socialbase.downloader.constants.c.f57866f);
                }
            }
        }
    }

    private void i() {
        f57781b.beginTransaction();
    }

    private void j() {
        try {
            if (f57781b == null || !f57781b.inTransaction()) {
                return;
            }
            f57781b.endTransaction();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k() {
        i();
        f57781b.delete("downloader", null, null);
        f57781b.delete("downloadChunk", null, null);
        f57781b.setTransactionSuccessful();
        j();
    }

    private void update(final int i2, final ContentValues contentValues) {
        h();
        if (f57781b == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.3
            @Override // java.lang.Runnable
            public void run() {
                e.this.a(i2, contentValues);
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public List<DownloadInfo> b() {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public List<DownloadInfo> b(String str) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void b(DownloadInfo downloadInfo) {
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public List<DownloadInfo> c(String str) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public List<DownloadInfo> d(String str) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public boolean e() {
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public boolean e(int i2) {
        g gVar;
        h();
        if (f57781b != null && (gVar = this.f57783c) != null) {
            try {
                a(i2, gVar.b());
                return true;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public boolean f(final int i2) {
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.11
            @Override // java.lang.Runnable
            public void run() {
                e.this.e(i2);
                e.this.d(i2);
                e.this.m(i2);
            }
        });
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo g(int i2) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public Map<Long, i> l(int i2) {
        Cursor cursor;
        h();
        if (f57781b != null) {
            try {
                cursor = f57781b.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "segments", "_id"), new String[]{Integer.toString(i2)});
                try {
                    if (cursor.moveToNext()) {
                        int columnIndex = cursor.getColumnIndex(PapayPayDetialActivity_.f34856k);
                        String string = columnIndex >= 0 ? cursor.getString(columnIndex) : null;
                        HashMap hashMap = new HashMap();
                        JSONArray jSONArray = new JSONArray(string);
                        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                            i iVar = new i(jSONArray.getJSONObject(i4));
                            hashMap.put(Long.valueOf(iVar.c()), iVar);
                        }
                        com.ss.android.socialbase.downloader.i.f.a(cursor);
                        return hashMap;
                    }
                    com.ss.android.socialbase.downloader.i.f.a(cursor);
                } catch (Throwable th) {
                    th = th;
                    try {
                        th.printStackTrace();
                        com.ss.android.socialbase.downloader.i.f.a(cursor);
                        return null;
                    } catch (Throwable th2) {
                        com.ss.android.socialbase.downloader.i.f.a(cursor);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void m(int i2) {
        h();
        if (f57781b == null) {
            return;
        }
        try {
            a(i2, this.f57785e.b());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public e(boolean z3) {
        this.f57782a = null;
        if (z3) {
            this.f57786f = false;
            a();
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo b(int i2) {
        Cursor cursor;
        h();
        if (f57781b != null) {
            try {
                cursor = f57781b.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloader", "_id"), new String[]{Integer.toString(i2)});
                try {
                    if (cursor.moveToNext()) {
                        DownloadInfo downloadInfo = new DownloadInfo(cursor);
                        com.ss.android.socialbase.downloader.i.f.a(cursor);
                        return downloadInfo;
                    }
                    com.ss.android.socialbase.downloader.i.f.a(cursor);
                } catch (Throwable th) {
                    th = th;
                    try {
                        th.printStackTrace();
                        com.ss.android.socialbase.downloader.i.f.a(cursor);
                        return null;
                    } catch (Throwable th2) {
                        com.ss.android.socialbase.downloader.i.f.a(cursor);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public List<com.ss.android.socialbase.downloader.model.b> c(int i2) {
        ArrayList arrayList = new ArrayList();
        h();
        if (f57781b != null) {
            Cursor cursor = null;
            try {
                cursor = f57781b.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloadChunk", "_id"), new String[]{Integer.toString(i2)});
                while (cursor.moveToNext()) {
                    arrayList.add(new com.ss.android.socialbase.downloader.model.b(cursor));
                }
                com.ss.android.socialbase.downloader.i.f.a(cursor);
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    com.ss.android.socialbase.downloader.i.f.a(cursor);
                } catch (Throwable th2) {
                    com.ss.android.socialbase.downloader.i.f.a(cursor);
                    throw th2;
                }
            }
        }
        return arrayList;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void d(final int i2) {
        h();
        if (f57781b == null || this.f57784d == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.a(i2, e.this.f57784d.b());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo i(int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 1);
        update(i2, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo j(int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-7));
        update(i2, contentValues);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        try {
            if (!a(downloadInfo.getId())) {
                c(downloadInfo);
            } else {
                g gVar = this.f57783c;
                if (gVar == null) {
                    return;
                }
                b(downloadInfo, gVar.c());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo e(int i2, long j4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-4));
        contentValues.put("curBytes", Long.valueOf(j4));
        update(i2, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    /* renamed from: k */
    public ArrayList<i> n(int i2) {
        Map<Long, i> l4 = l(i2);
        if (l4 == null || l4.isEmpty()) {
            return null;
        }
        return new ArrayList<>(l4.values());
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo h(int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 5);
        contentValues.put("isFirstDownload", (Integer) 0);
        update(i2, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void b(com.ss.android.socialbase.downloader.model.b bVar) {
        a(bVar);
    }

    private void b(DownloadInfo downloadInfo, SQLiteStatement sQLiteStatement) {
        if (downloadInfo == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                downloadInfo.bindValue(sQLiteStatement);
                sQLiteStatement.bindLong(downloadInfo.getBindValueCount() + 1, downloadInfo.getId());
                sQLiteStatement.execute();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void a() {
        a(new SparseArray<>(), new SparseArray<>(), (d) null);
    }

    private void c(final DownloadInfo downloadInfo) {
        h();
        if (f57781b == null || this.f57783c == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e eVar = e.this;
                    eVar.a(downloadInfo, eVar.f57783c.a());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.downloader.t
    public void a(final SparseArray<DownloadInfo> sparseArray, final SparseArray<List<com.ss.android.socialbase.downloader.model.b>> sparseArray2, final d dVar) {
        try {
            Runnable runnable = new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.1
                /* JADX WARN: Code restructure failed: missing block: B:120:0x0271, code lost:
                    if (r0 == null) goto L88;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:125:0x027b, code lost:
                    if (r0 == null) goto L88;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:127:0x027f, code lost:
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:161:0x0336, code lost:
                    if (r0 == null) goto L181;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:166:0x033f, code lost:
                    if (r0 == null) goto L181;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:167:0x0341, code lost:
                    r0.a();
                    r18.f57790d.f57786f = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:168:0x0349, code lost:
                    r18.f57790d.a(r2, r3);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:169:0x0352, code lost:
                    throw r0;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:78:0x019b, code lost:
                    if (r0 != null) goto L90;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:83:0x01a4, code lost:
                    if (r0 == null) goto L88;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:84:0x01a6, code lost:
                    r0.a();
                    r18.f57790d.f57786f = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:85:0x01ae, code lost:
                    r18.f57790d.a(r2, r3);
                 */
                /* JADX WARN: Removed duplicated region for block: B:193:0x00da A[SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:195:0x00ca A[SYNTHETIC] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 879
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.b.e.AnonymousClass1.run():void");
                }
            };
            ExecutorService r3 = com.ss.android.socialbase.downloader.downloader.c.r();
            if (r3 != null) {
                r3.execute(runnable);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo d(int i2, long j4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-2));
        contentValues.put("curBytes", Long.valueOf(j4));
        update(i2, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void c() {
        h();
        if (f57781b == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.2
            @Override // java.lang.Runnable
            public void run() {
                e.this.k();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<DownloadInfo> list) {
        if (list == null) {
            return;
        }
        try {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null && downloadInfo.isSavePathRedirected()) {
                    com.ss.android.socialbase.downloader.i.f.b(downloadInfo);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public boolean d() {
        return this.f57786f;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo b(int i2, long j4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-1));
        contentValues.put("curBytes", Long.valueOf(j4));
        if (j4 > 0) {
            contentValues.put("isFirstDownload", (Integer) 0);
        }
        update(i2, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo c(int i2, long j4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-3));
        contentValues.put("curBytes", Long.valueOf(j4));
        contentValues.put("isFirstDownload", (Integer) 0);
        contentValues.put("isFirstSuccess", (Integer) 0);
        update(i2, contentValues);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<DownloadInfo> list, List<Integer> list2, SparseArray<DownloadInfo> sparseArray, SparseArray<DownloadInfo> sparseArray2, SparseArray<List<com.ss.android.socialbase.downloader.model.b>> sparseArray3) {
        int size = sparseArray.size();
        if (size < 0 || f57781b == null) {
            return;
        }
        synchronized (f57781b) {
            try {
                i();
                if (!list.isEmpty()) {
                    if (com.ss.android.socialbase.downloader.g.a.c().a("clear_invalid_task_error")) {
                        String[] strArr = new String[list.size()];
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            strArr[i2] = String.valueOf(list.get(i2));
                        }
                        String str = "CAST(_id AS TEXT) IN (" + new String(new char[list.size() - 1]).replace(DexFormat.MAGIC_SUFFIX, "?,") + "?)";
                        f57781b.delete("downloader", str, strArr);
                        f57781b.delete("downloadChunk", str, strArr);
                    } else {
                        String join = TextUtils.join(", ", list2);
                        f57781b.delete("downloader", "_id IN (?)", new String[]{join});
                        f57781b.delete("downloadChunk", "_id IN (?)", new String[]{join});
                    }
                }
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = sparseArray.keyAt(i4);
                    DownloadInfo downloadInfo = sparseArray.get(keyAt);
                    f57781b.delete("downloader", "_id = ?", new String[]{String.valueOf(keyAt)});
                    f57781b.insert("downloader", null, downloadInfo.toContentValues());
                    if (downloadInfo.getChunkCount() > 1) {
                        List<com.ss.android.socialbase.downloader.model.b> c4 = c(keyAt);
                        if (c4.size() > 0) {
                            f57781b.delete("downloadChunk", "_id = ?", new String[]{String.valueOf(keyAt)});
                            for (com.ss.android.socialbase.downloader.model.b bVar : c4) {
                                bVar.b(downloadInfo.getId());
                                f57781b.insert("downloadChunk", null, bVar.a());
                            }
                        }
                    }
                }
                if (sparseArray2 != null && sparseArray3 != null) {
                    int size2 = sparseArray2.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        int id = sparseArray2.valueAt(i5).getId();
                        List<com.ss.android.socialbase.downloader.model.b> a4 = com.ss.android.socialbase.downloader.i.f.a(c(id));
                        if (a4 != null && a4.size() > 0) {
                            sparseArray3.put(id, a4);
                        }
                    }
                }
                f57781b.setTransactionSuccessful();
                j();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void b(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        try {
            d(i2);
            if (list != null) {
                for (com.ss.android.socialbase.downloader.model.b bVar : list) {
                    if (bVar != null) {
                        a(bVar);
                        if (bVar.f()) {
                            for (com.ss.android.socialbase.downloader.model.b bVar2 : bVar.g()) {
                                a(bVar2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public boolean a(int i2) {
        try {
            return b(i2) != null;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public List<DownloadInfo> a(String str) {
        h();
        ArrayList arrayList = new ArrayList();
        if (f57781b != null) {
            Cursor cursor = null;
            try {
                cursor = f57781b.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloader", "url"), new String[]{str});
                if (cursor.moveToNext()) {
                    arrayList.add(new DownloadInfo(cursor));
                }
                com.ss.android.socialbase.downloader.i.f.a(cursor);
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    com.ss.android.socialbase.downloader.i.f.a(cursor);
                } catch (Throwable th2) {
                    com.ss.android.socialbase.downloader.i.f.a(cursor);
                    throw th2;
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                sQLiteStatement.bindLong(1, i2);
                sQLiteStatement.execute();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void a(final com.ss.android.socialbase.downloader.model.b bVar) {
        h();
        if (f57781b == null || this.f57784d == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.a(bVar, e.this.f57784d.a());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(DownloadInfo downloadInfo, SQLiteStatement sQLiteStatement) {
        if (downloadInfo == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                downloadInfo.bindValue(sQLiteStatement);
                sQLiteStatement.executeInsert();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.ss.android.socialbase.downloader.model.b bVar, SQLiteStatement sQLiteStatement) {
        if (bVar == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                bVar.a(sQLiteStatement);
                sQLiteStatement.executeInsert();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void a(final int i2, final int i4, final long j4) {
        h();
        if (i2 == 0 || i4 < 0 || j4 < 0 || f57781b == null || this.f57784d == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.a(i2, i4, j4, e.this.f57784d.c());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void a(final int i2, final int i4, final int i5, final long j4) {
        h();
        if (i2 == 0 || i4 < 0 || i5 < 0 || j4 < 0 || f57781b == null || this.f57784d == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.a(i2, i4, i5, j4, e.this.f57784d.c());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void a(final int i2, final int i4, final int i5, final int i6) {
        h();
        if (i2 == 0 || i5 < 0 || i6 == i4 || i6 < 0 || f57781b == null || this.f57784d == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.a(i2, i4, i5, i6, e.this.f57784d.c());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i4, int i5, int i6, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("chunkIndex", Integer.valueOf(i6));
                f57781b.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?", new String[]{Integer.toString(i2), Integer.toString(i4), Integer.toString(i5)});
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i4, long j4, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("curOffset", Long.valueOf(j4));
                f57781b.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ?", new String[]{Integer.toString(i2), Integer.toString(i4)});
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i4, int i5, long j4, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("curOffset", Long.valueOf(j4));
                f57781b.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?", new String[]{Integer.toString(i2), Integer.toString(i4), Integer.toString(i5)});
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo a(int i2, int i4) {
        h();
        if (f57781b == null) {
            return null;
        }
        int i5 = 10;
        while (f57781b.isDbLockedByCurrentThread() && i5 - 1 >= 0) {
            try {
                Thread.sleep(5L);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("chunkCount", Integer.valueOf(i4));
        f57781b.update("downloader", contentValues, "_id = ? ", new String[]{Integer.toString(i2)});
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public boolean a(final DownloadInfo downloadInfo) {
        h();
        if (downloadInfo == null || f57781b == null) {
            return false;
        }
        com.ss.android.socialbase.downloader.downloader.c.b(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.e.10
            @Override // java.lang.Runnable
            public void run() {
                e.this.d(downloadInfo);
            }
        });
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo a(int i2, long j4, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 3);
        contentValues.put("totalBytes", Long.valueOf(j4));
        contentValues.put("eTag", str);
        if (!TextUtils.isEmpty(str2)) {
            contentValues.put("name", str2);
        }
        update(i2, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public DownloadInfo a(int i2, long j4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 4);
        contentValues.put("curBytes", Long.valueOf(j4));
        update(i2, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean a(int i2, Map<Long, i> map) {
        long currentTimeMillis = System.currentTimeMillis();
        h();
        if (f57781b == null) {
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (Long l4 : map.keySet()) {
                jSONArray.put(map.get(Long.valueOf(l4.longValue())).k());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("json=");
        sb.append(jSONArray);
        SQLiteStatement d4 = this.f57785e.d();
        synchronized (d4) {
            d4.clearBindings();
            d4.bindLong(1, i2);
            d4.bindString(2, jSONArray.toString());
            d4.execute();
        }
        com.ss.android.socialbase.downloader.c.a.b("SqlDownloadCache", "updateSegments cost=" + com.ss.android.socialbase.downloader.i.f.c(currentTimeMillis));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, ContentValues contentValues) {
        int i4 = 10;
        while (f57781b.isDbLockedByCurrentThread() && i4 - 1 >= 0) {
            try {
                Thread.sleep(5L);
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        f57781b.update("downloader", contentValues, "_id = ? ", new String[]{String.valueOf(i2)});
    }

    @Override // com.ss.android.socialbase.downloader.b.c
    public void a(b bVar) {
        this.f57782a = bVar;
    }

    public void a(SparseArray<DownloadInfo> sparseArray, SparseArray<List<com.ss.android.socialbase.downloader.model.b>> sparseArray2) {
        try {
            HashMap a4 = com.ss.android.socialbase.downloader.i.f.a(sparseArray);
            HashMap a5 = com.ss.android.socialbase.downloader.i.f.a(sparseArray2);
            b bVar = this.f57782a;
            if (bVar != null) {
                bVar.a(a4, a5);
            }
        } catch (Throwable unused) {
        }
    }
}
