package com.android.multidex;

import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import m.a;
/* loaded from: classes2.dex */
class Path {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final String definition;
    List<ClassPathElement> elements = new ArrayList();
    private final ByteArrayOutputStream baos = new ByteArrayOutputStream(40960);
    private final byte[] readBuffer = new byte[20480];

    /* JADX INFO: Access modifiers changed from: package-private */
    public Path(String str) throws IOException {
        this.definition = str;
        for (String str2 : str.split(Pattern.quote(File.pathSeparator))) {
            try {
                addElement(getClassPathElement(new File(str2)));
            } catch (IOException e4) {
                throw new IOException("Wrong classpath: " + e4.getMessage(), e4);
            }
        }
    }

    private void addElement(ClassPathElement classPathElement) {
        this.elements.add(classPathElement);
    }

    static ClassPathElement getClassPathElement(File file) throws ZipException, IOException {
        if (file.isDirectory()) {
            return new FolderPathElement(file);
        }
        if (file.isFile()) {
            return new ArchivePathElement(new ZipFile(file));
        }
        if (file.exists()) {
            throw new IOException(a.f72569g + file.getPath() + "\" is not a directory neither a zip file");
        }
        throw new FileNotFoundException("File \"" + file.getPath() + "\" not found");
    }

    private static byte[] readStream(InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream, byte[] bArr) throws IOException {
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read < 0) {
                    inputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                inputStream.close();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x003e: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:18:0x003e */
    public synchronized DirectClassFile getClass(String str) throws FileNotFoundException {
        DirectClassFile directClassFile;
        DirectClassFile directClassFile2;
        Throwable th;
        directClassFile = null;
        Iterator<ClassPathElement> it2 = this.elements.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            try {
                try {
                    InputStream open = it2.next().open(str);
                    try {
                        byte[] readStream = readStream(open, this.baos, this.readBuffer);
                        this.baos.reset();
                        DirectClassFile directClassFile3 = new DirectClassFile(readStream, str, false);
                        try {
                            directClassFile3.setAttributeFactory(StdAttributeFactory.THE_ONE);
                            open.close();
                            directClassFile = directClassFile3;
                            break;
                        } catch (Throwable th2) {
                            th = th2;
                            open.close();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException unused) {
                }
            } catch (IOException unused2) {
                directClassFile = directClassFile2;
            }
        }
        if (directClassFile == null) {
            throw new FileNotFoundException("File \"" + str + "\" not found");
        }
        return directClassFile;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Iterable<ClassPathElement> getElements() {
        return this.elements;
    }

    public String toString() {
        return this.definition;
    }
}
