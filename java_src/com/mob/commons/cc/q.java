package com.mob.commons.cc;

import android.text.TextUtils;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.utils.Data;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public class q implements t<q> {
    public String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i2])));
        }
        return stringBuffer.toString();
    }

    public byte[] c(String str, String str2, byte[] bArr, byte[] bArr2) throws Throwable {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, com.mob.commons.j.a("003Pchebcf"));
        Cipher cipher = Data.getCipher(str, str2);
        cipher.init(2, secretKeySpec);
        return cipher.doFinal(bArr2);
    }

    public String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, 0, bArr.length);
            String a4 = a(byteArrayInputStream);
            byteArrayInputStream.close();
            return a4;
        } catch (Throwable unused) {
            return null;
        }
    }

    public byte[] b(String str, String str2, byte[] bArr, byte[] bArr2) throws Throwable {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, com.mob.commons.j.a("003>chebcf"));
        Cipher cipher = Data.getCipher(str, str2);
        cipher.init(2, secretKeySpec);
        cipher.getOutputSize(bArr2.length);
        byte[] bArr4 = new byte[cipher.getOutputSize(bArr2.length)];
        cipher.doFinal(bArr4, cipher.update(bArr2, 0, bArr2.length, bArr4, 0));
        return bArr4;
    }

    public String a(InputStream inputStream) {
        byte[] bArr = null;
        if (inputStream == null) {
            return null;
        }
        try {
            byte[] bArr2 = new byte[1024];
            MessageDigest messageDigest = MessageDigest.getInstance(com.mob.commons.j.a("003Legdgfc"));
            int read = inputStream.read(bArr2);
            while (read != -1) {
                messageDigest.update(bArr2, 0, read);
                read = inputStream.read(bArr2);
            }
            bArr = messageDigest.digest();
        } catch (Throwable unused) {
        }
        return b(bArr);
    }

    public ArrayList<HashMap<String, String>> a(ArrayList<HashMap<String, String>> arrayList, ArrayList<HashMap<String, String>> arrayList2, String str) {
        ArrayList<HashMap<String, String>> arrayList3 = new ArrayList<>();
        Iterator<HashMap<String, String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            HashMap<String, String> next = it2.next();
            String str2 = next.get(str);
            if (!TextUtils.isEmpty(str2)) {
                boolean z3 = false;
                Iterator<HashMap<String, String>> it3 = arrayList2.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    } else if (str2.equals(it3.next().get(str))) {
                        z3 = true;
                        break;
                    }
                }
                if (!z3) {
                    arrayList3.add(next);
                }
            }
        }
        return arrayList3;
    }

    public byte[] a(String str, String str2, byte[] bArr, byte[] bArr2) throws Throwable {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, com.mob.commons.j.a("003:chebcf"));
        Cipher cipher = Data.getCipher(str, str2);
        cipher.init(1, secretKeySpec);
        byte[] bArr4 = new byte[cipher.getOutputSize(bArr2.length)];
        cipher.doFinal(bArr4, cipher.update(bArr2, 0, bArr2.length, bArr4, 0));
        return bArr4;
    }

    public byte[] a(int i2, byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) throws Throwable {
        int i4 = i2 / 8;
        int i5 = i4 - 11;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
            int i6 = 0;
            while (bArr.length > i6) {
                try {
                    int min = Math.min(bArr.length - i6, i5);
                    byte[] a4 = a(bArr, i6, min, bigInteger, bigInteger2, i4);
                    dataOutputStream2.writeInt(a4.length);
                    dataOutputStream2.write(a4);
                    i6 += min;
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    com.mob.commons.r.a(dataOutputStream);
                    throw th;
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            com.mob.commons.r.a(dataOutputStream2);
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private byte[] a(byte[] bArr, int i2, int i4, BigInteger bigInteger, BigInteger bigInteger2, int i5) throws Throwable {
        if (bArr.length != i4 || i2 != 0) {
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i2, bArr2, 0, i4);
            bArr = bArr2;
        }
        BigInteger bigInteger3 = new BigInteger(a(bArr, i5));
        if (bigInteger3.compareTo(bigInteger2) <= 0) {
            return bigInteger3.modPow(bigInteger, bigInteger2).toByteArray();
        }
        throw new Throwable("the message must be smaller than the modulue");
    }

    private byte[] a(byte[] bArr, int i2) throws Throwable {
        if (bArr.length <= i2 - 1) {
            byte[] bArr2 = new byte[i2];
            bArr2[0] = 1;
            int length = bArr.length;
            bArr2[1] = (byte) (length >> 24);
            bArr2[2] = (byte) (length >> 16);
            bArr2[3] = (byte) (length >> 8);
            bArr2[4] = (byte) length;
            System.arraycopy(bArr, 0, bArr2, i2 - length, length);
            return bArr2;
        }
        throw new Throwable("Message too large");
    }

    @Override // com.mob.commons.cc.t
    public boolean a(q qVar, Class<q> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if ("bm5".equals(str) && objArr.length == 1) {
            objArr2[0] = qVar.a((byte[]) objArr[0]);
            return true;
        } else if ("sm5".equals(str)) {
            objArr2[0] = qVar.a((InputStream) objArr[0]);
            return true;
        } else if ("thx".equals(str)) {
            objArr2[0] = qVar.b((byte[]) objArr[0]);
            return true;
        } else if ("fnil".equals(str) && objArr.length == 3) {
            objArr2[0] = qVar.a((ArrayList) objArr[0], (ArrayList) objArr[1], (String) objArr[2]);
            return true;
        } else if ("aesen".equals(str) && objArr.length == 4) {
            try {
                objArr2[0] = a((String) objArr[0], (String) objArr[1], (byte[]) objArr[2], (byte[]) objArr[3]);
            } catch (Throwable th) {
                objArr2[0] = null;
                thArr[0] = th;
            }
            return true;
        } else if (com.mob.commons.j.a("005%bdJg;de>fg").equals(str) && objArr.length == 4) {
            try {
                objArr2[0] = b((String) objArr[0], (String) objArr[1], (byte[]) objArr[2], (byte[]) objArr[3]);
            } catch (Throwable th2) {
                objArr2[0] = null;
                thArr[0] = th2;
            }
            return true;
        } else if (com.mob.commons.j.a("006(bdUg'deMf5db+c").equals(str) && objArr.length == 4) {
            try {
                objArr2[0] = c((String) objArr[0], (String) objArr[1], (byte[]) objArr[2], (byte[]) objArr[3]);
            } catch (Throwable th3) {
                objArr2[0] = null;
                thArr[0] = th3;
            }
            return true;
        } else if ("enc".equals(str) && objArr.length == 4) {
            try {
                objArr2[0] = a(((Integer) objArr[0]).intValue(), (byte[]) objArr[1], (BigInteger) objArr[2], (BigInteger) objArr[3]);
            } catch (Throwable th4) {
                objArr2[0] = null;
                thArr[0] = th4;
            }
            return true;
        } else if (com.xinzhu.overmind.utils.helpers.d.f64708a.equals(str)) {
            if (objArr.length == 1 && (objArr[0] instanceof String)) {
                NLog mobLog = MobLog.getInstance();
                mobLog.d("%s", "[sasa] " + objArr[0]);
            } else if (objArr.length == 1 && (objArr[0] instanceof Throwable)) {
                MobLog.getInstance().d((Throwable) objArr[0], "%s", "[sasa]");
            }
            return true;
        } else {
            return false;
        }
    }
}
