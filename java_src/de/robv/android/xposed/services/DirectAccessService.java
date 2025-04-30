package de.robv.android.xposed.services;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3.dex */
public final class DirectAccessService extends BaseService {
    @Override // de.robv.android.xposed.services.BaseService
    public boolean checkFileAccess(String filename, int mode) {
        File file = new File(filename);
        if (mode != 0 || file.exists()) {
            if ((mode & 4) == 0 || file.canRead()) {
                if ((mode & 2) == 0 || file.canWrite()) {
                    return (mode & 1) == 0 || file.canExecute();
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // de.robv.android.xposed.services.BaseService
    public boolean checkFileExists(String filename) {
        return new File(filename).exists();
    }

    @Override // de.robv.android.xposed.services.BaseService
    public InputStream getFileInputStream(String filename) throws IOException {
        return new BufferedInputStream(new FileInputStream(filename), 16384);
    }

    @Override // de.robv.android.xposed.services.BaseService
    public boolean hasDirectFileAccess() {
        return true;
    }

    @Override // de.robv.android.xposed.services.BaseService
    public byte[] readFile(String filename) throws IOException {
        File file = new File(filename);
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        fileInputStream.read(bArr);
        fileInputStream.close();
        return bArr;
    }

    @Override // de.robv.android.xposed.services.BaseService
    public FileResult statFile(String filename) throws IOException {
        File file = new File(filename);
        return new FileResult(file.length(), file.lastModified());
    }

    @Override // de.robv.android.xposed.services.BaseService
    public FileResult getFileInputStream(String filename, long previousSize, long previousTime) throws IOException {
        File file = new File(filename);
        long length = file.length();
        long lastModified = file.lastModified();
        if (previousSize == length && previousTime == lastModified) {
            return new FileResult(length, lastModified);
        }
        return new FileResult(new BufferedInputStream(new FileInputStream(filename), 16384), length, lastModified);
    }

    @Override // de.robv.android.xposed.services.BaseService
    public FileResult readFile(String filename, long previousSize, long previousTime) throws IOException {
        File file = new File(filename);
        long length = file.length();
        long lastModified = file.lastModified();
        if (previousSize == length && previousTime == lastModified) {
            return new FileResult(length, lastModified);
        }
        return new FileResult(readFile(filename), length, lastModified);
    }

    @Override // de.robv.android.xposed.services.BaseService
    public FileResult readFile(String filename, int offset, int length, long previousSize, long previousTime) throws IOException {
        File file = new File(filename);
        long length2 = file.length();
        long lastModified = file.lastModified();
        if (previousSize == length2 && previousTime == lastModified) {
            return new FileResult(length2, lastModified);
        }
        if (offset > 0 || length > 0) {
            if (offset > 0 && offset >= length2) {
                throw new IllegalArgumentException("Offset " + offset + " is out of range for " + filename);
            }
            if (offset < 0) {
                offset = 0;
            }
            if (length > 0 && offset + length > length2) {
                throw new IllegalArgumentException("Length " + length + " is out of range for " + filename);
            }
            if (length <= 0) {
                length = (int) (length2 - offset);
            }
            byte[] bArr = new byte[length];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.skip(offset);
            fileInputStream.read(bArr);
            fileInputStream.close();
            return new FileResult(bArr, length2, lastModified);
        }
        return new FileResult(readFile(filename), length2, lastModified);
    }
}
