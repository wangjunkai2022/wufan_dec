package com.bytedance.pangle.f;

import android.util.ArrayMap;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public final class b {

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final X509Certificate[][] f10216a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f10217b;

        public a(X509Certificate[][] x509CertificateArr, byte[] bArr) {
            this.f10216a = x509CertificateArr;
            this.f10217b = bArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(RandomAccessFile randomAccessFile, m mVar) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer a4 = f.a(mVar.f10238a);
                int i2 = 0;
                while (a4.hasRemaining()) {
                    i2++;
                    try {
                        arrayList.add(a(f.a(a4), arrayMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e4) {
                        throw new SecurityException("Failed to parse/verify signer #" + i2 + " block", e4);
                    }
                }
                if (i2 > 0) {
                    if (!arrayMap.isEmpty()) {
                        f.a(arrayMap, randomAccessFile, mVar);
                        return new a((X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]), arrayMap.containsKey(3) ? f.a((byte[]) arrayMap.get(3), randomAccessFile.length(), mVar) : null);
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("No signers found");
            } catch (IOException e5) {
                throw new SecurityException("Failed to read list of signers", e5);
            }
        } catch (CertificateException e6) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e6);
        }
    }

    private static X509Certificate[] a(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) {
        int a4;
        ByteBuffer a5 = f.a(byteBuffer);
        ByteBuffer a6 = f.a(byteBuffer);
        byte[] b4 = f.b(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArr = null;
        byte[] bArr2 = null;
        int i2 = -1;
        int i4 = 0;
        while (true) {
            boolean z3 = true;
            if (!a6.hasRemaining()) {
                if (i2 == -1) {
                    if (i4 == 0) {
                        throw new SecurityException("No signatures found");
                    }
                    throw new SecurityException("No supported signatures found");
                }
                String c4 = f.c(i2);
                Pair<String, ? extends AlgorithmParameterSpec> d4 = f.d(i2);
                String str = (String) d4.first;
                AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) d4.second;
                try {
                    PublicKey generatePublic = KeyFactory.getInstance(c4).generatePublic(new X509EncodedKeySpec(b4));
                    Signature signature = Signature.getInstance(str);
                    signature.initVerify(generatePublic);
                    if (algorithmParameterSpec != null) {
                        signature.setParameter(algorithmParameterSpec);
                    }
                    signature.update(a5);
                    if (signature.verify(bArr2)) {
                        a5.clear();
                        ByteBuffer a7 = f.a(a5);
                        ArrayList arrayList2 = new ArrayList();
                        int i5 = 0;
                        while (a7.hasRemaining()) {
                            i5++;
                            try {
                                ByteBuffer a8 = f.a(a7);
                                if (a8.remaining() >= 8) {
                                    int i6 = a8.getInt();
                                    arrayList2.add(Integer.valueOf(i6));
                                    if (i6 == i2) {
                                        bArr = f.b(a8);
                                    }
                                } else {
                                    throw new IOException("Record too short");
                                }
                            } catch (IOException | BufferUnderflowException e4) {
                                throw new IOException("Failed to parse digest record #".concat(String.valueOf(i5)), e4);
                            }
                        }
                        if (arrayList.equals(arrayList2)) {
                            byte[] put = map.put(Integer.valueOf(f.a(i2)), bArr);
                            if (put != null && !MessageDigest.isEqual(put, bArr)) {
                                throw new SecurityException(f.b(a4) + " contents digest does not match the digest specified by a preceding signer");
                            }
                            ByteBuffer a9 = f.a(a5);
                            ArrayList arrayList3 = new ArrayList();
                            int i7 = 0;
                            while (a9.hasRemaining()) {
                                i7++;
                                byte[] b5 = f.b(a9);
                                try {
                                    arrayList3.add(new p((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(b5)), b5));
                                } catch (CertificateException e5) {
                                    throw new SecurityException("Failed to decode certificate #".concat(String.valueOf(i7)), e5);
                                }
                            }
                            if (!arrayList3.isEmpty()) {
                                if (Arrays.equals(b4, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                                    a(f.a(a5));
                                    return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
                                }
                                throw new SecurityException("Public key mismatch between certificate and signature record");
                            }
                            throw new SecurityException("No certificates listed");
                        }
                        throw new SecurityException("Signature algorithms don't match between digests and signatures records");
                    }
                    throw new SecurityException(str + " signature did not verify");
                } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e6) {
                    throw new SecurityException("Failed to verify " + str + " signature", e6);
                }
            }
            i4++;
            try {
                ByteBuffer a10 = f.a(a6);
                if (a10.remaining() >= 8) {
                    int i8 = a10.getInt();
                    arrayList.add(Integer.valueOf(i8));
                    if (i8 != 513 && i8 != 514 && i8 != 769 && i8 != 1057 && i8 != 1059 && i8 != 1061) {
                        switch (i8) {
                            case 257:
                            case com.join.mgps.socket.fight.arena.a.f52158i /* 258 */:
                            case 259:
                            case 260:
                                break;
                            default:
                                z3 = false;
                                break;
                        }
                    }
                    if (z3 && (i2 == -1 || f.a(i8, i2) > 0)) {
                        bArr2 = f.b(a10);
                        i2 = i8;
                    }
                } else {
                    throw new SecurityException("Signature record too short");
                }
            } catch (IOException | BufferUnderflowException e7) {
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i4)), e7);
            }
        }
    }

    private static void a(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining()) {
            ByteBuffer a4 = f.a(byteBuffer);
            if (a4.remaining() >= 4) {
                if (a4.getInt() == -1091571699) {
                    if (a4.remaining() >= 4) {
                        if (a4.getInt() == 3) {
                            throw new SecurityException("V2 signature indicates APK is signed using APK Signature Scheme v3, but none was found. Signature stripped?");
                        }
                    } else {
                        throw new IOException("V2 Signature Scheme Stripping Protection Attribute  value too small. Expected 4 bytes, but found " + a4.remaining());
                    }
                }
            } else {
                throw new IOException("Remaining buffer too short to contain additional attribute ID. Remaining: " + a4.remaining());
            }
        }
    }
}
