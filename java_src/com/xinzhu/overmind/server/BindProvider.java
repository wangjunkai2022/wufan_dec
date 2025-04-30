package com.xinzhu.overmind.server;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class BindProvider extends ContentProvider {
    private boolean a() {
        e.a().b();
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String method, @Nullable String arg, @Nullable Bundle extras) {
        if (method.equals("VM")) {
            Bundle bundle = new Bundle();
            if (extras != null) {
                com.xinzhu.overmind.utils.helpers.b.d(bundle, "_VM_|_server_", g.b(extras.getString("_VM_|_server_name_")));
            } else {
                com.xinzhu.overmind.utils.helpers.b.d(bundle, "_VM_|_server_", g.b(g.f64484k));
            }
            return bundle;
        }
        return super.call(method, arg, extras);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String selection, @Nullable String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues values) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return a();
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] projection, @Nullable String selection, @Nullable String[] selectionArgs, @Nullable String sortOrder) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues values, @Nullable String selection, @Nullable String[] selectionArgs) {
        return 0;
    }
}
