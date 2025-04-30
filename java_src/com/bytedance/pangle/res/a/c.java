package com.bytedance.pangle.res.a;

import android.text.TextUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.join.mgps.Util.g0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c {
    public final int a(File file, boolean z3, StringBuilder sb) {
        String byteArrayOutputStream;
        try {
            ZipFile zipFile = new ZipFile(file);
            ZipEntry entry = zipFile.getEntry("assets/ZeusResMapping");
            if (entry == null) {
                zipFile.close();
                return 200;
            }
            if (z3) {
                File file2 = new File(file.getParentFile(), "resMappingBak");
                if (file2.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file2);
                    FileChannel channel = fileInputStream.getChannel();
                    byteArrayOutputStream = Charset.defaultCharset().newDecoder().decode(channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).asReadOnlyBuffer()).toString();
                    channel.close();
                    fileInputStream.close();
                } else {
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "resMappingBakFile is not exists. " + file2.getAbsolutePath());
                    sb.append("resMappingBakFile is not exists. ");
                    sb.append(file2.getAbsolutePath());
                    zipFile.close();
                    return 300;
                }
            } else {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                com.bytedance.pangle.util.g.a(zipFile.getInputStream(entry), byteArrayOutputStream2);
                byteArrayOutputStream = byteArrayOutputStream2.toString();
            }
            if (TextUtils.isEmpty(byteArrayOutputStream)) {
                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "zeusResMappingContent empty, useBakFile:".concat(String.valueOf(z3)));
                sb.append("zeusResMappingContent isEmpty. useBakFile:");
                sb.append(z3);
                zipFile.close();
                return 300;
            }
            JSONObject jSONObject = new JSONObject(byteArrayOutputStream);
            JSONObject jSONObject2 = new JSONObject(byteArrayOutputStream);
            JSONArray jSONArray = (JSONArray) jSONObject.get("fileNames");
            final HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                hashSet.add((String) jSONArray.get(i2));
            }
            final JSONObject jSONObject3 = (JSONObject) jSONObject.get("resMapping");
            final JSONObject jSONObject4 = (JSONObject) jSONObject2.get("resMapping");
            final int[] iArr = {0};
            a(file, hashSet, new h() { // from class: com.bytedance.pangle.res.a.c.1
                @Override // com.bytedance.pangle.res.a.h
                public final int a(int i4) {
                    String str = "0x" + Integer.toHexString(i4);
                    String str2 = (String) jSONObject3.opt(str);
                    if (str2 == null) {
                        return i4;
                    }
                    int identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.split(" ")[1], str2.split(" ")[0], Zeus.getAppApplication().getPackageName());
                    if (identifier == 0) {
                        identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.split(" ")[1].replaceAll("_", g0.f27568a), str2.split(" ")[0], Zeus.getAppApplication().getPackageName());
                    }
                    if (identifier == 0) {
                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "getIdentifier failed. resName is ".concat(str2));
                        return i4;
                    }
                    String str3 = "0x" + Integer.toHexString(identifier);
                    jSONObject4.remove(str);
                    try {
                        jSONObject4.put(str3, str2);
                    } catch (Throwable th) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "update resMappingBak failed.", th);
                    }
                    if (identifier != i4) {
                        int[] iArr2 = iArr;
                        iArr2[0] = iArr2[0] + 1;
                    }
                    return identifier;
                }

                @Override // com.bytedance.pangle.res.a.h
                public final boolean a(String str) {
                    return hashSet.contains(str);
                }
            });
            ZeusLogger.d(ZeusLogger.TAG_INSTALL, "modifyRes count = " + iArr[0]);
            if (com.bytedance.pangle.util.g.a(jSONObject2.toString(), new File(file.getParentFile(), "resMappingBak"), sb)) {
                zipFile.close();
                return 100;
            }
            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "writeText failed." + sb.toString());
            sb.append("writeText failed.");
            zipFile.close();
            return 300;
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "modifyRes failed. catch: " + th.getMessage());
            sb.append("modifyRes failed. catch: ");
            sb.append(th.getMessage());
            return 300;
        }
    }

    private static void a(File file, HashSet<String> hashSet, h hVar) {
        int i2;
        MappedByteBuffer a4 = a(file);
        int capacity = a4.capacity();
        if (capacity >= 22) {
            int i4 = capacity - 22;
            int min = Math.min(i4, 65535);
            for (int i5 = 0; i5 < min; i5++) {
                i2 = i4 - i5;
                if (a4.getInt(i2) == 101010256 && a4.getShort(i2 + 20) == i5) {
                    break;
                }
            }
        }
        i2 = -1;
        if (i2 != -1) {
            int i6 = a4.getInt(i2 + 12);
            int i7 = a4.getInt(i2 + 16);
            int i8 = i6 + i7;
            while (i7 < i8) {
                if (a4.getInt(i7) == 33639248) {
                    int i9 = a4.getShort(i7 + 28);
                    short s3 = a4.getShort(i7 + 30);
                    byte[] bArr = new byte[i9];
                    for (int i10 = 0; i10 < i9; i10++) {
                        bArr[i10] = a4.get(i7 + 46 + i10);
                    }
                    String str = new String(bArr);
                    int i11 = a4.getInt(i7 + 20);
                    int i12 = a4.getInt(i7 + 24);
                    if (hashSet.contains(str)) {
                        if (i11 == i12) {
                            com.bytedance.pangle.util.d<Integer, byte[]> a5 = a(a4, a4.getInt(i7 + 42), str);
                            try {
                                byte[] bArr2 = a5.f10382b;
                                if (!TextUtils.isEmpty(str) && hVar.a(str)) {
                                    if (str.equals("AndroidManifest.xml")) {
                                        k.a(bArr2, hVar);
                                    } else if ((str.endsWith(".xml") && str.startsWith("res/")) || TextUtils.equals(str, "AndroidManifest.xml")) {
                                        k.a(bArr2, hVar);
                                    } else if (str.equals("resources.arsc")) {
                                        new a(bArr2, hVar).a();
                                    }
                                }
                                for (int i13 = 0; i13 < a5.f10382b.length; i13++) {
                                    a4.put(a5.f10381a.intValue() + i13, a5.f10382b[i13]);
                                }
                            } catch (Throwable th) {
                                throw new RuntimeException(th);
                            }
                        } else {
                            throw new Throwable(str + " is compressed.");
                        }
                    }
                    i7 += i9 + 46 + s3;
                } else {
                    throw new RuntimeException("Expected: 0x02014b50, got: " + a4.getInt(i7));
                }
            }
            return;
        }
        throw new Throwable("endOfCentralPosition == -1");
    }

    private static com.bytedance.pangle.util.d<Integer, byte[]> a(MappedByteBuffer mappedByteBuffer, int i2, String str) {
        if (mappedByteBuffer.getInt(i2) == 67324752) {
            int i4 = mappedByteBuffer.getInt(i2 + 18);
            int i5 = mappedByteBuffer.getInt(i2 + 22);
            if (i4 == i5) {
                byte[] bArr = new byte[i5];
                int i6 = i2 + 30 + mappedByteBuffer.getShort(i2 + 26) + mappedByteBuffer.getShort(i2 + 28);
                for (int i7 = 0; i7 < i5; i7++) {
                    bArr[i7] = mappedByteBuffer.get(i6 + i7);
                }
                return new com.bytedance.pangle.util.d<>(Integer.valueOf(i6), bArr);
            }
            throw new RuntimeException(str + " is compressed. compressSize:" + i4 + " size:" + i5);
        }
        throw new RuntimeException("Expected: 0x04034b50, got: " + mappedByteBuffer.getInt(i2) + " FileName:" + str);
    }

    private static MappedByteBuffer a(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73015e0);
        try {
            FileChannel channel = randomAccessFile.getChannel();
            long size = channel.size();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_WRITE, 0L, size);
            byte[] bArr = new byte[4194304];
            long j4 = size / 4194304;
            int i2 = (int) (size % 4194304);
            for (int i4 = 0; i4 < j4; i4++) {
                map.get(bArr);
            }
            if (i2 > 0) {
                map.get(new byte[i2]);
            }
            map.order(ByteOrder.LITTLE_ENDIAN);
            channel.close();
            randomAccessFile.close();
            return map;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
