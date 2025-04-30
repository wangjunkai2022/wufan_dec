package com.papa91.common;

import java.io.File;
/* loaded from: classes4.dex */
public class FileWrapper implements Comparable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public File mfile;

    public FileWrapper(File file) {
        this.mfile = file;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        File file = ((FileWrapper) obj).getFile();
        if (this.mfile.getName().compareTo(file.getName()) > 0) {
            if (this.mfile.isDirectory() && file.isFile()) {
                return -1;
            }
            if (this.mfile.isFile()) {
                file.isDirectory();
            }
            return 1;
        } else if (this.mfile.getName().compareTo(file.getName()) < 0) {
            return (!(this.mfile.isDirectory() && file.isFile()) && this.mfile.isFile() && file.isDirectory()) ? 1 : -1;
        } else if (this.mfile.isDirectory() && file.isFile()) {
            return -1;
        } else {
            return (this.mfile.isFile() && file.isDirectory()) ? 1 : 0;
        }
    }

    public File getFile() {
        return this.mfile;
    }
}
