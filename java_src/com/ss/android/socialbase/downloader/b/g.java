package com.ss.android.socialbase.downloader.b;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.ss.android.socialbase.downloader.i.i;
/* compiled from: TableStatements.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteDatabase f57839a;

    /* renamed from: b  reason: collision with root package name */
    private final String f57840b;

    /* renamed from: c  reason: collision with root package name */
    private final String[] f57841c;

    /* renamed from: d  reason: collision with root package name */
    private final String[] f57842d;

    /* renamed from: e  reason: collision with root package name */
    private SQLiteStatement f57843e;

    /* renamed from: f  reason: collision with root package name */
    private SQLiteStatement f57844f;

    /* renamed from: g  reason: collision with root package name */
    private SQLiteStatement f57845g;

    /* renamed from: h  reason: collision with root package name */
    private SQLiteStatement f57846h;

    public g(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String[] strArr2) {
        this.f57839a = sQLiteDatabase;
        this.f57840b = str;
        this.f57841c = strArr;
        this.f57842d = strArr2;
    }

    public SQLiteStatement a() {
        if (this.f57843e == null) {
            SQLiteStatement compileStatement = this.f57839a.compileStatement(i.a("INSERT INTO ", this.f57840b, this.f57841c));
            synchronized (this) {
                if (this.f57843e == null) {
                    this.f57843e = compileStatement;
                }
            }
            if (this.f57843e != compileStatement) {
                compileStatement.close();
            }
        }
        return this.f57843e;
    }

    public SQLiteStatement b() {
        if (this.f57845g == null) {
            SQLiteStatement compileStatement = this.f57839a.compileStatement(i.a(this.f57840b, this.f57842d));
            synchronized (this) {
                if (this.f57845g == null) {
                    this.f57845g = compileStatement;
                }
            }
            if (this.f57845g != compileStatement) {
                compileStatement.close();
            }
        }
        return this.f57845g;
    }

    public SQLiteStatement c() {
        if (this.f57844f == null) {
            SQLiteStatement compileStatement = this.f57839a.compileStatement(i.a(this.f57840b, this.f57841c, this.f57842d));
            synchronized (this) {
                if (this.f57844f == null) {
                    this.f57844f = compileStatement;
                }
            }
            if (this.f57844f != compileStatement) {
                compileStatement.close();
            }
        }
        return this.f57844f;
    }

    public SQLiteStatement d() {
        if (this.f57846h == null) {
            SQLiteStatement compileStatement = this.f57839a.compileStatement(i.b(this.f57840b, this.f57841c, this.f57842d));
            synchronized (this) {
                if (this.f57846h == null) {
                    this.f57846h = compileStatement;
                }
            }
            if (this.f57846h != compileStatement) {
                compileStatement.close();
            }
        }
        return this.f57846h;
    }
}
