package com.tencent.cos.task.storage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.cos.task.Task;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class StorageHelper {
    private SharedPreferences mSharedPreferences;
    private final byte[] object = new byte[0];
    private final byte[] object2 = new byte[0];

    public StorageHelper(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mSharedPreferences = context.getSharedPreferences(str, 0);
    }

    public List<Task> loadUploadTasks() {
        synchronized (this.object2) {
            ArrayList arrayList = new ArrayList();
            SharedPreferences sharedPreferences = this.mSharedPreferences;
            if (sharedPreferences == null) {
                return arrayList;
            }
            String string = sharedPreferences.getString("upload_tasks", null);
            if (string != null) {
                byte[] decode = Base64.decode(string, 0);
                Parcel obtain = Parcel.obtain();
                obtain.unmarshall(decode, 0, decode.length);
                obtain.setDataPosition(0);
                obtain.readList(arrayList, Task.class.getClassLoader());
                obtain.recycle();
            }
            return arrayList;
        }
    }

    public void saveUploadTasks(List<Task> list) {
        synchronized (this.object) {
            if (this.mSharedPreferences == null) {
                return;
            }
            if (list == null) {
                return;
            }
            Parcel obtain = Parcel.obtain();
            obtain.writeList(list);
            this.mSharedPreferences.edit().putString("upload_tasks", new String(Base64.encode(obtain.marshall(), 0))).commit();
            obtain.recycle();
        }
    }
}
