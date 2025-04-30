package com.tencent.cos.utils;

import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.common.COSHttpResponseKey;
import java.io.FileInputStream;
import java.security.MessageDigest;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class SHA1Utils {
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0041: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:28:0x0041 */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getFileSha1(java.lang.String r5) {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            java.lang.String r5 = "SHA-1"
            java.security.MessageDigest r5 = java.security.MessageDigest.getInstance(r5)     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L40
            r2 = 65536(0x10000, float:9.18355E-41)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L40
        L10:
            int r3 = r1.read(r2)     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L40
            if (r3 <= 0) goto L1b
            r4 = 0
            r5.update(r2, r4, r3)     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L40
            goto L10
        L1b:
            byte[] r5 = r5.digest()     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L40
            java.lang.String r5 = com.tencent.cos.utils.StringUtils.toHexString(r5)     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L40
            r1.close()     // Catch: java.lang.Exception -> L27
            goto L2b
        L27:
            r0 = move-exception
            r0.printStackTrace()
        L2b:
            return r5
        L2c:
            r5 = move-exception
            goto L32
        L2e:
            r5 = move-exception
            goto L42
        L30:
            r5 = move-exception
            r1 = r0
        L32:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L40
            if (r1 == 0) goto L3f
            r1.close()     // Catch: java.lang.Exception -> L3b
            goto L3f
        L3b:
            r5 = move-exception
            r5.printStackTrace()
        L3f:
            return r0
        L40:
            r5 = move-exception
            r0 = r1
        L42:
            if (r0 == 0) goto L4c
            r0.close()     // Catch: java.lang.Exception -> L48
            goto L4c
        L48:
            r0 = move-exception
            r0.printStackTrace()
        L4c:
            goto L4e
        L4d:
            throw r5
        L4e:
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.cos.utils.SHA1Utils.getFileSha1(java.lang.String):java.lang.String");
    }

    public static String getSlicePartSha1(String str, int i2, StringBuilder sb) throws Exception {
        int i4;
        int i5 = i2 <= 1048576 ? i2 : 1048576;
        JSONArray jSONArray = new JSONArray();
        FileInputStream fileInputStream = null;
        try {
            try {
                CommonSha1Utils commonSha1Utils = new CommonSha1Utils();
                commonSha1Utils.init();
                fileInputStream = FileUtils.getFileInputStream(str);
                long fileLength = FileUtils.getFileLength(str);
                int intValue = Long.valueOf(((i5 - 1) + fileLength) / i5).intValue();
                int i6 = 0;
                while (true) {
                    i4 = intValue - 1;
                    int i7 = 1024;
                    if (i6 >= i4) {
                        break;
                    }
                    long j4 = i6 * i5;
                    int i8 = 0;
                    while (i8 < i5) {
                        int i9 = i5 - i8;
                        if (i9 > i7) {
                            i9 = 1024;
                        }
                        byte[] bArr = new byte[i9];
                        fileInputStream.read(bArr, 0, i9);
                        commonSha1Utils.update(bArr);
                        i8 += i9;
                        intValue = intValue;
                        i7 = 1024;
                    }
                    int i10 = intValue;
                    JSONObject jSONObject = new JSONObject();
                    COSHttpRequstBody.KEY.uploadParts.getClass();
                    jSONObject.put("offset", j4);
                    COSHttpRequstBody.KEY.uploadParts.getClass();
                    jSONObject.put(COSHttpResponseKey.Data.DATALEN, i8);
                    COSHttpRequstBody.KEY.uploadParts.getClass();
                    jSONObject.put("datasha", commonSha1Utils.dumpTempState());
                    jSONArray.put(i6, jSONObject);
                    i6++;
                    intValue = i10;
                }
                long j5 = i5 * i4;
                int intValue2 = Long.valueOf(fileLength - j5).intValue();
                int i11 = 0;
                while (i11 < intValue2) {
                    int i12 = intValue2 - i11;
                    if (i12 > 1024) {
                        i12 = 1024;
                    }
                    byte[] bArr2 = new byte[i12];
                    fileInputStream.read(bArr2, 0, i12);
                    commonSha1Utils.update(bArr2);
                    i11 += i12;
                }
                commonSha1Utils.finish();
                sb.append(commonSha1Utils.digout());
                JSONObject jSONObject2 = new JSONObject();
                COSHttpRequstBody.KEY.uploadParts.getClass();
                jSONObject2.put("offset", j5);
                COSHttpRequstBody.KEY.uploadParts.getClass();
                jSONObject2.put(COSHttpResponseKey.Data.DATALEN, i11);
                COSHttpRequstBody.KEY.uploadParts.getClass();
                jSONObject2.put("datasha", commonSha1Utils.digout());
                jSONArray.put(i4, jSONObject2);
                FileUtils.closeFileStream(fileInputStream);
                return jSONArray.toString();
            } catch (Exception e4) {
                e4.printStackTrace();
                throw e4;
            }
        } catch (Throwable th) {
            FileUtils.closeFileStream(fileInputStream);
            throw th;
        }
    }

    public static String getFileSha1(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                messageDigest.update(bArr, 0, bArr.length);
                return StringUtils.toHexString(messageDigest.digest());
            } catch (Exception e4) {
                e4.printStackTrace();
            } catch (OutOfMemoryError e5) {
                e5.printStackTrace();
            }
        }
        return null;
    }
}
