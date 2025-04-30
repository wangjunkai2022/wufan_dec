package com.php25.PDownload;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.activity.ForumGroupMemberActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.Dtype;
import com.tencent.stat.DeviceInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.EBean;
/* compiled from: DownloadFileDao.java */
@EBean(scope = EBean.Scope.Singleton)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private SQLiteDatabase f56246a;

    public a(Context context) {
        SQLiteDatabase openOrCreateDatabase = context.openOrCreateDatabase("com_php25_PDownload_metaFile.db", 0, null);
        this.f56246a = openOrCreateDatabase;
        openOrCreateDatabase.execSQL("CREATE TABLE IF NOT EXISTS DownloadFile (id INTEGER PRIMARY KEY AUTOINCREMENT,tag VARCHAR,url VARCHAR,basePath VARCHAR,name VARCHAR,absolutePath VARCHAR,gameZipPath VARCHAR,totalSize INTEGER,completeSize INTEGER,downloading SMALLINT,showName VARCHAR,createTime VARCHAR,dtype VARCHAR,finished SMALLINT,fileType VARCHAR,finishTime VARCHAR,packageName VARCHAR,tips VARCHAR,portraitURL VARCHAR,percentage VARCHAR,isAutoPause SMALLINT,crc_link_type_val VARCHAR,ver VARCHAR,ver_name VARCHAR,gid VARCHAR,starNumber VARCHAR,romType VARCHAR )");
    }

    private DownloadFile b(Cursor cursor) {
        DownloadFile downloadFile = new DownloadFile();
        String string = cursor.getString(cursor.getColumnIndex("tips"));
        downloadFile.Z(Long.valueOf(cursor.getLong(cursor.getColumnIndex("id"))));
        downloadFile.m0(cursor.getString(cursor.getColumnIndex(TagGameListActivity_.f35885q0)));
        downloadFile.q0(cursor.getString(cursor.getColumnIndex("url")));
        downloadFile.M(cursor.getString(cursor.getColumnIndex("basePath")));
        downloadFile.c0(cursor.getString(cursor.getColumnIndex("name")));
        downloadFile.j0(cursor.getString(cursor.getColumnIndex("showName")));
        downloadFile.V(cursor.getString(cursor.getColumnIndex("finishTime")));
        downloadFile.T(cursor.getString(cursor.getColumnIndex("dtype")));
        downloadFile.U(cursor.getString(cursor.getColumnIndex("fileType")));
        downloadFile.K(cursor.getString(cursor.getColumnIndex("absolutePath")));
        downloadFile.X(cursor.getString(cursor.getColumnIndex("gameZipPath")));
        downloadFile.P(cursor.getString(cursor.getColumnIndex("createTime")));
        downloadFile.o0(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("totalSize"))));
        downloadFile.N(cursor.getInt(cursor.getColumnIndex("completeSize")));
        downloadFile.e0(cursor.getString(cursor.getColumnIndex("packageName")));
        downloadFile.n0((List) JsonMapper.getInstance().fromJson(string, JsonMapper.getInstance().createCollectionType(ArrayList.class, TipBean.class)));
        downloadFile.g0(cursor.getString(cursor.getColumnIndex("portraitURL")));
        downloadFile.f0(cursor.getString(cursor.getColumnIndex("percentage")));
        downloadFile.O(cursor.getString(cursor.getColumnIndex("crc_link_type_val")));
        downloadFile.r0(cursor.getString(cursor.getColumnIndex(DeviceInfo.TAG_VERSION)));
        downloadFile.s0(cursor.getString(cursor.getColumnIndex("ver_name")));
        downloadFile.Y(cursor.getString(cursor.getColumnIndex(ForumGroupMemberActivity_.f29856t)));
        downloadFile.l0(cursor.getString(cursor.getColumnIndex("starNumber")));
        downloadFile.i0(cursor.getString(cursor.getColumnIndex("romType")));
        short s3 = cursor.getShort(cursor.getColumnIndex("downloading"));
        short s4 = cursor.getShort(cursor.getColumnIndex("finished"));
        if (s3 == 0) {
            downloadFile.R(false);
        } else if (s3 == 1) {
            downloadFile.R(true);
        }
        if (s4 == 0) {
            downloadFile.W(false);
        } else if (s4 == 1) {
            downloadFile.W(true);
        }
        short s5 = cursor.getShort(cursor.getColumnIndex("isAutoPause"));
        if (s5 == 0) {
            downloadFile.L(false);
        } else if (s5 == 1) {
            downloadFile.L(true);
        }
        return downloadFile;
    }

    public void a() {
        this.f56246a.close();
    }

    public List<DownloadFile> c() {
        ArrayList arrayList = new ArrayList();
        Cursor rawQuery = this.f56246a.rawQuery("select * from DownloadFile", null);
        while (rawQuery.moveToNext()) {
            arrayList.add(b(rawQuery));
        }
        rawQuery.close();
        return arrayList;
    }

    public List<DownloadFile> d(boolean z3) {
        Cursor rawQuery;
        ArrayList arrayList = new ArrayList();
        if (z3) {
            rawQuery = this.f56246a.rawQuery("select * from DownloadFile where  fileType=? and finished =0 ", new String[]{Dtype.chajian.name()});
        } else {
            rawQuery = this.f56246a.rawQuery("select * from DownloadFile where fileType=? and finished =1 ", new String[]{Dtype.chajian.name()});
        }
        while (rawQuery.moveToNext()) {
            arrayList.add(b(rawQuery));
        }
        rawQuery.close();
        return arrayList;
    }

    public void delete(DownloadFile downloadFile) {
        if (downloadFile != null) {
            this.f56246a.execSQL("delete from downloadFile where id=?", new Object[]{downloadFile.m()});
        }
    }

    public List<DownloadFile> e(Dtype dtype) {
        Cursor rawQuery;
        ArrayList arrayList = new ArrayList();
        if (dtype == null) {
            rawQuery = this.f56246a.rawQuery("select * from DownloadFile where fileType=? and finished =1 ", new String[]{Dtype.apk.name()});
        } else {
            rawQuery = this.f56246a.rawQuery("select * from DownloadFile where dtype=? and finished =1 ", new String[]{dtype.name()});
        }
        while (rawQuery.moveToNext()) {
            arrayList.add(b(rawQuery));
        }
        rawQuery.close();
        return arrayList;
    }

    public List<DownloadFile> f() {
        ArrayList arrayList = new ArrayList();
        Cursor rawQuery = this.f56246a.rawQuery("select * from DownloadFile where fileType=?  and finished=0", new String[]{Dtype.apk.name()});
        while (rawQuery.moveToNext()) {
            arrayList.add(b(rawQuery));
        }
        rawQuery.close();
        return arrayList;
    }

    public DownloadFile g(String str) {
        Cursor rawQuery = this.f56246a.rawQuery("select * from DownloadFile where packageName=?", new String[]{str});
        DownloadFile b4 = rawQuery.moveToNext() ? b(rawQuery) : null;
        rawQuery.close();
        return b4;
    }

    public DownloadFile h(String str) {
        Cursor rawQuery = this.f56246a.rawQuery("select * from DownloadFile where tag=?", new String[]{str});
        DownloadFile b4 = rawQuery.moveToNext() ? b(rawQuery) : null;
        rawQuery.close();
        return b4;
    }

    public void update(DownloadFile downloadFile) {
        this.f56246a.execSQL("update DownloadFile set downloading=? ,finished=? ,finishTime=?,totalSize=?,percentage=? ,completeSize=? ,gameZipPath=?,ver_name=? where id=?", new Object[]{Boolean.valueOf(downloadFile.G()), Boolean.valueOf(downloadFile.j()), downloadFile.i(), downloadFile.A(), downloadFile.r(), Long.valueOf(downloadFile.c()), downloadFile.k(), downloadFile.E(), downloadFile.m()});
    }
}
