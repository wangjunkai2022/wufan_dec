package de.robv.android.xposed.services;

import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.util.e;
/* loaded from: classes3.dex */
public abstract class BaseService {
    public static final int F_OK = 0;
    public static final int R_OK = 4;
    public static final int W_OK = 2;
    public static final int X_OK = 1;

    static void ensureAbsolutePath(String filename) {
        if (filename.startsWith(e.F0)) {
            return;
        }
        throw new IllegalArgumentException("Only absolute filenames are allowed: " + filename);
    }

    static void throwCommonIOException(int errno, String errorMsg, String filename, String defaultText) throws IOException {
        if (errno != 1) {
            if (errno == 2) {
                if (errorMsg == null) {
                    errorMsg = "No such file or directory: " + filename;
                }
                throw new FileNotFoundException(errorMsg);
            } else if (errno == 12) {
                throw new OutOfMemoryError(errorMsg);
            } else {
                if (errno != 13) {
                    if (errno != 21) {
                        if (errorMsg == null) {
                            errorMsg = "Error " + errno + defaultText + filename;
                        }
                        throw new IOException(errorMsg);
                    }
                    if (errorMsg == null) {
                        errorMsg = "Is a directory: " + filename;
                    }
                    throw new FileNotFoundException(errorMsg);
                }
            }
        }
        if (errorMsg == null) {
            errorMsg = "Permission denied: " + filename;
        }
        throw new FileNotFoundException(errorMsg);
    }

    public abstract boolean checkFileAccess(String filename, int mode);

    public boolean checkFileExists(String filename) {
        return checkFileAccess(filename, 0);
    }

    public InputStream getFileInputStream(String filename) throws IOException {
        return new ByteArrayInputStream(readFile(filename));
    }

    public long getFileModificationTime(String filename) throws IOException {
        return statFile(filename).mtime;
    }

    public long getFileSize(String filename) throws IOException {
        return statFile(filename).size;
    }

    public boolean hasDirectFileAccess() {
        return false;
    }

    public abstract FileResult readFile(String filename, int offset, int length, long previousSize, long previousTime) throws IOException;

    public abstract FileResult readFile(String filename, long previousSize, long previousTime) throws IOException;

    public abstract byte[] readFile(String filename) throws IOException;

    public abstract FileResult statFile(String filename) throws IOException;

    public FileResult getFileInputStream(String filename, long previousSize, long previousTime) throws IOException {
        FileResult readFile = readFile(filename, previousSize, previousTime);
        return readFile.content == null ? readFile : new FileResult(new ByteArrayInputStream(readFile.content), readFile.size, readFile.mtime);
    }
}
