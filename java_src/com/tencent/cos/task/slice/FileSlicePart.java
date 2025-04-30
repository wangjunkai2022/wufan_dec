package com.tencent.cos.task.slice;

import android.os.Environment;
import android.text.TextUtils;
import com.tencent.cos.COSClient;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.ArrayList;
import q.a;
/* loaded from: classes4.dex */
public class FileSlicePart implements Serializable {
    private static final long serialVersionUID = -8625186156974023016L;
    public String appid;
    public String biz_attr;
    public String bucket;
    public String cosPath;
    public String insertOnly;
    public int requestId;
    public String session;
    public String sha;
    public String sign;
    public ArrayList<SlicePart> sliceParts;
    public int sliceSize;
    public boolean slice_init_flag;
    public String srcPath;

    public synchronized void deleteFile(String str) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            file.delete();
        }
    }

    public String getDirPath() {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory());
        String str = File.separator;
        sb.append(str);
        sb.append(a.f73954a);
        sb.append(str);
        sb.append("data");
        sb.append(str);
        sb.append(COSClient.getContext().getPackageName());
        sb.append(str);
        sb.append("caches");
        String sb2 = sb.toString();
        File file = new File(sb2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return sb2;
    }

    protected synchronized void init(FileSlicePart fileSlicePart) {
        this.appid = fileSlicePart.appid;
        this.bucket = fileSlicePart.bucket;
        this.cosPath = fileSlicePart.cosPath;
        this.srcPath = fileSlicePart.srcPath;
        this.biz_attr = fileSlicePart.biz_attr;
        this.insertOnly = fileSlicePart.insertOnly;
        this.sliceSize = fileSlicePart.sliceSize;
        this.sha = fileSlicePart.sha;
        this.sliceParts = fileSlicePart.sliceParts;
        this.sign = fileSlicePart.sign;
        this.session = fileSlicePart.session;
        this.slice_init_flag = fileSlicePart.slice_init_flag;
        this.requestId = fileSlicePart.requestId;
    }

    public synchronized boolean isValid(String str) {
        if (TextUtils.isEmpty(str) && this.srcPath.equals(str)) {
            File file = new File(str);
            File file2 = new File(this.srcPath);
            if (file.canRead() && file.length() == file2.length()) {
                return file.lastModified() == file2.lastModified();
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v19, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v21, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public synchronized void loadFileSlicePart(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        ClassNotFoundException e4;
        IOException e5;
        StreamCorruptedException e6;
        FileNotFoundException e7;
        try {
            try {
                fileInputStream = new FileInputStream((String) str);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e8) {
            fileInputStream = null;
            e7 = e8;
            str = 0;
        } catch (StreamCorruptedException e9) {
            fileInputStream = null;
            e6 = e9;
            str = 0;
        } catch (IOException e10) {
            fileInputStream = null;
            e5 = e10;
            str = 0;
        } catch (ClassNotFoundException e11) {
            fileInputStream = null;
            e4 = e11;
            str = 0;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            str = 0;
        }
        try {
            str = new ObjectInputStream(fileInputStream);
        } catch (FileNotFoundException e12) {
            e7 = e12;
            str = 0;
        } catch (StreamCorruptedException e13) {
            e6 = e13;
            str = 0;
        } catch (IOException e14) {
            e5 = e14;
            str = 0;
        } catch (ClassNotFoundException e15) {
            e4 = e15;
            str = 0;
        } catch (Throwable th4) {
            th = th4;
            str = 0;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e16) {
                    e16.printStackTrace();
                }
            }
            if (str != 0) {
                try {
                    str.close();
                } catch (IOException e17) {
                    e17.printStackTrace();
                }
            }
            throw th;
        }
        try {
            init((FileSlicePart) str.readObject());
            try {
                fileInputStream.close();
            } catch (IOException e18) {
                e18.printStackTrace();
            }
            try {
                str.close();
            } catch (IOException e19) {
                e = e19;
                e.printStackTrace();
            }
        } catch (FileNotFoundException e20) {
            e7 = e20;
            e7.printStackTrace();
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e21) {
                    e21.printStackTrace();
                }
            }
            if (str != 0) {
                try {
                    str.close();
                } catch (IOException e22) {
                    e = e22;
                    e.printStackTrace();
                }
            }
        } catch (StreamCorruptedException e23) {
            e6 = e23;
            e6.printStackTrace();
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e24) {
                    e24.printStackTrace();
                }
            }
            if (str != 0) {
                try {
                    str.close();
                } catch (IOException e25) {
                    e = e25;
                    e.printStackTrace();
                }
            }
        } catch (IOException e26) {
            e5 = e26;
            e5.printStackTrace();
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e27) {
                    e27.printStackTrace();
                }
            }
            if (str != 0) {
                try {
                    str.close();
                } catch (IOException e28) {
                    e = e28;
                    e.printStackTrace();
                }
            }
        } catch (ClassNotFoundException e29) {
            e4 = e29;
            e4.printStackTrace();
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e30) {
                    e30.printStackTrace();
                }
            }
            if (str != 0) {
                try {
                    str.close();
                } catch (IOException e31) {
                    e = e31;
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.ObjectOutputStream] */
    public synchronized void saveFileSlicePart(String str) {
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e4;
        FileNotFoundException e5;
        try {
            try {
                fileOutputStream = new FileOutputStream((String) str);
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                str = new ObjectOutputStream(fileOutputStream);
                try {
                    str.writeObject(this);
                    str.flush();
                    try {
                        fileOutputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                    try {
                        str.close();
                    } catch (IOException e7) {
                        e = e7;
                        e.printStackTrace();
                    }
                } catch (FileNotFoundException e8) {
                    e5 = e8;
                    e5.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e9) {
                            e9.printStackTrace();
                        }
                    }
                    if (str != 0) {
                        try {
                            str.close();
                        } catch (IOException e10) {
                            e = e10;
                            e.printStackTrace();
                        }
                    }
                } catch (IOException e11) {
                    e4 = e11;
                    e4.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    if (str != 0) {
                        try {
                            str.close();
                        } catch (IOException e13) {
                            e = e13;
                            e.printStackTrace();
                        }
                    }
                }
            } catch (FileNotFoundException e14) {
                e5 = e14;
                str = 0;
            } catch (IOException e15) {
                e4 = e15;
                str = 0;
            } catch (Throwable th3) {
                th = th3;
                str = 0;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e16) {
                        e16.printStackTrace();
                    }
                }
                if (str != 0) {
                    try {
                        str.close();
                    } catch (IOException e17) {
                        e17.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e18) {
            fileOutputStream = null;
            e5 = e18;
            str = 0;
        } catch (IOException e19) {
            fileOutputStream = null;
            e4 = e19;
            str = 0;
        } catch (Throwable th4) {
            fileOutputStream = null;
            th = th4;
            str = 0;
        }
    }

    public synchronized void updateAfterSliceInit(String str, int i2, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.session = str;
        this.sliceSize = i2;
        this.sha = str2;
        this.slice_init_flag = true;
        saveFileSlicePart(str3);
    }

    public synchronized void updateSlicePart(int i2, boolean z3) {
        this.sliceParts.get(i2).setOverFlag(z3);
    }
}
