package com.tencent.cos.task.download;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes4.dex */
public class Range {
    protected String downloadUrl;
    protected String fileName;
    protected long length;
    protected String localPath;
    protected long range;

    public Range(String str, String str2, String str3, int i2) {
        this.downloadUrl = str;
        this.localPath = str2;
        this.fileName = str3;
        this.length = i2;
        if (isEquals()) {
            return;
        }
        this.range = 0L;
        saveRangePart(str3);
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getLength() {
        return this.length;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public long getRange() {
        return this.range;
    }

    public synchronized boolean isEquals() {
        FileInputStream fileInputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        File file = new File(this.fileName);
        if (file.exists()) {
            ObjectInputStream objectInputStream2 = null;
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    objectInputStream = new ObjectInputStream(fileInputStream);
                    try {
                        RangePart rangePart = (RangePart) objectInputStream.readObject();
                        if (!rangePart.getDownloadUrl().equals(this.downloadUrl)) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                            try {
                                fileInputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                            return false;
                        } else if (!rangePart.getLocalPath().equals(this.localPath)) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e6) {
                                e6.printStackTrace();
                            }
                            try {
                                fileInputStream.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                            return false;
                        } else if (!rangePart.getFileName().equals(this.fileName)) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e8) {
                                e8.printStackTrace();
                            }
                            try {
                                fileInputStream.close();
                            } catch (IOException e9) {
                                e9.printStackTrace();
                            }
                            return false;
                        } else if (rangePart.getLength() != this.length) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                            try {
                                fileInputStream.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                            return false;
                        } else {
                            long range = rangePart.getRange();
                            this.range = range;
                            if (range > this.length) {
                                try {
                                    objectInputStream.close();
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                                try {
                                    fileInputStream.close();
                                } catch (IOException e13) {
                                    e13.printStackTrace();
                                }
                                return false;
                            }
                            try {
                                objectInputStream.close();
                            } catch (IOException e14) {
                                e14.printStackTrace();
                            }
                            try {
                                fileInputStream.close();
                            } catch (IOException e15) {
                                e15.printStackTrace();
                            }
                            return true;
                        }
                    } catch (IOException unused) {
                        objectInputStream2 = objectInputStream;
                        if (objectInputStream2 != null) {
                            try {
                                objectInputStream2.close();
                            } catch (IOException e16) {
                                e16.printStackTrace();
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e17) {
                                e17.printStackTrace();
                            }
                        }
                        return false;
                    } catch (ClassNotFoundException unused2) {
                        objectInputStream2 = objectInputStream;
                        if (objectInputStream2 != null) {
                            try {
                                objectInputStream2.close();
                            } catch (IOException e18) {
                                e18.printStackTrace();
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e19) {
                                e19.printStackTrace();
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e20) {
                                e20.printStackTrace();
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e21) {
                                e21.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused3) {
                } catch (ClassNotFoundException unused4) {
                } catch (Throwable th3) {
                    th = th3;
                    objectInputStream = null;
                }
            } catch (IOException unused5) {
                fileInputStream = null;
            } catch (ClassNotFoundException unused6) {
                fileInputStream = null;
            } catch (Throwable th4) {
                fileInputStream = null;
                th = th4;
                objectInputStream = null;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.FileOutputStream] */
    public synchronized void saveRangePart(String str) {
        String substring;
        Throwable th;
        IOException e4;
        FileNotFoundException e5;
        File file = new File(str);
        if (!file.exists() && (substring = str.substring(0, str.lastIndexOf(File.separator))) != null && file.mkdirs()) {
            ?? file2 = new File(str);
            try {
                try {
                    substring = new FileOutputStream((File) file2);
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    file2 = new ObjectOutputStream(substring);
                } catch (FileNotFoundException e6) {
                    file2 = 0;
                    e5 = e6;
                } catch (IOException e7) {
                    file2 = 0;
                    e4 = e7;
                } catch (Throwable th3) {
                    file2 = 0;
                    th = th3;
                    if (file2 != 0) {
                        try {
                            file2.close();
                        } catch (IOException e8) {
                            e8.printStackTrace();
                        }
                    }
                    if (substring != 0) {
                        try {
                            substring.close();
                        } catch (IOException e9) {
                            e9.printStackTrace();
                        }
                    }
                    throw th;
                }
                try {
                    file2.writeObject(this);
                    file2.flush();
                    try {
                        file2.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    try {
                        substring.close();
                    } catch (IOException e11) {
                        e = e11;
                        e.printStackTrace();
                    }
                } catch (FileNotFoundException e12) {
                    e5 = e12;
                    e5.printStackTrace();
                    if (file2 != 0) {
                        try {
                            file2.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                    if (substring != 0) {
                        try {
                            substring.close();
                        } catch (IOException e14) {
                            e = e14;
                            e.printStackTrace();
                        }
                    }
                } catch (IOException e15) {
                    e4 = e15;
                    e4.printStackTrace();
                    if (file2 != 0) {
                        try {
                            file2.close();
                        } catch (IOException e16) {
                            e16.printStackTrace();
                        }
                    }
                    if (substring != 0) {
                        try {
                            substring.close();
                        } catch (IOException e17) {
                            e = e17;
                            e.printStackTrace();
                        }
                    }
                }
            } catch (FileNotFoundException e18) {
                substring = 0;
                e5 = e18;
                file2 = 0;
            } catch (IOException e19) {
                substring = 0;
                e4 = e19;
                file2 = 0;
            } catch (Throwable th4) {
                substring = 0;
                th = th4;
                file2 = 0;
            }
        }
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setLength(long j4) {
        this.length = j4;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public void setRange(long j4) {
        this.range = j4;
    }
}
