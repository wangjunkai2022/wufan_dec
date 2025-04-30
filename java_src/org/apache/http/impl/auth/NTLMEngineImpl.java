package org.apache.http.impl.auth;

import android.util.Base64;
import com.alipay.security.mobile.module.commonutils.crypto.a;
import com.join.mgps.Util.g0;
import com.join.mgps.data.c;
import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.EncodingUtils;
/* JADX INFO: Access modifiers changed from: package-private */
@NotThreadSafe
/* loaded from: classes5.dex */
public final class NTLMEngineImpl implements NTLMEngine {
    static final String DEFAULT_CHARSET = "ASCII";
    protected static final int FLAG_DOMAIN_PRESENT = 4096;
    protected static final int FLAG_REQUEST_128BIT_KEY_EXCH = 536870912;
    protected static final int FLAG_REQUEST_56BIT_ENCRYPTION = Integer.MIN_VALUE;
    protected static final int FLAG_REQUEST_ALWAYS_SIGN = 32768;
    protected static final int FLAG_REQUEST_EXPLICIT_KEY_EXCH = 1073741824;
    protected static final int FLAG_REQUEST_LAN_MANAGER_KEY = 128;
    protected static final int FLAG_REQUEST_NTLM2_SESSION = 524288;
    protected static final int FLAG_REQUEST_NTLMv1 = 512;
    protected static final int FLAG_REQUEST_SEAL = 32;
    protected static final int FLAG_REQUEST_SIGN = 16;
    protected static final int FLAG_REQUEST_TARGET = 4;
    protected static final int FLAG_REQUEST_UNICODE_ENCODING = 1;
    protected static final int FLAG_REQUEST_VERSION = 33554432;
    protected static final int FLAG_TARGETINFO_PRESENT = 8388608;
    protected static final int FLAG_WORKSTATION_PRESENT = 8192;
    private static final SecureRandom RND_GEN;
    private static final byte[] SIGNATURE;
    private String credentialCharset = DEFAULT_CHARSET;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class HMACMD5 {
        protected byte[] ipad;
        protected MessageDigest md5;
        protected byte[] opad;

        HMACMD5(byte[] bArr) throws NTLMEngineException {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                this.md5 = messageDigest;
                this.ipad = new byte[64];
                this.opad = new byte[64];
                int length = bArr.length;
                if (length > 64) {
                    messageDigest.update(bArr);
                    bArr = this.md5.digest();
                    length = bArr.length;
                }
                int i2 = 0;
                while (i2 < length) {
                    this.ipad[i2] = (byte) (54 ^ bArr[i2]);
                    this.opad[i2] = (byte) (92 ^ bArr[i2]);
                    i2++;
                }
                while (i2 < 64) {
                    this.ipad[i2] = 54;
                    this.opad[i2] = 92;
                    i2++;
                }
                this.md5.reset();
                this.md5.update(this.ipad);
            } catch (Exception e4) {
                throw new NTLMEngineException("Error getting md5 message digest implementation: " + e4.getMessage(), e4);
            }
        }

        byte[] getOutput() {
            byte[] digest = this.md5.digest();
            this.md5.update(this.opad);
            return this.md5.digest(digest);
        }

        void update(byte[] bArr) {
            this.md5.update(bArr);
        }

        void update(byte[] bArr, int i2, int i4) {
            this.md5.update(bArr, i2, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class MD4 {
        protected int A = 1732584193;
        protected int B = -271733879;
        protected int C = -1732584194;
        protected int D = 271733878;
        protected long count = 0;
        protected byte[] dataBuffer = new byte[64];

        MD4() {
        }

        byte[] getOutput() {
            int i2 = (int) (this.count & 63);
            int i4 = i2 < 56 ? 56 - i2 : 120 - i2;
            byte[] bArr = new byte[i4 + 8];
            bArr[0] = Byte.MIN_VALUE;
            for (int i5 = 0; i5 < 8; i5++) {
                bArr[i4 + i5] = (byte) ((this.count * 8) >>> (i5 * 8));
            }
            update(bArr);
            byte[] bArr2 = new byte[16];
            NTLMEngineImpl.writeULong(bArr2, this.A, 0);
            NTLMEngineImpl.writeULong(bArr2, this.B, 4);
            NTLMEngineImpl.writeULong(bArr2, this.C, 8);
            NTLMEngineImpl.writeULong(bArr2, this.D, 12);
            return bArr2;
        }

        protected void processBuffer() {
            int[] iArr = new int[16];
            for (int i2 = 0; i2 < 16; i2++) {
                byte[] bArr = this.dataBuffer;
                int i4 = i2 * 4;
                iArr[i2] = (bArr[i4] & 255) + ((bArr[i4 + 1] & 255) << 8) + ((bArr[i4 + 2] & 255) << 16) + ((bArr[i4 + 3] & 255) << 24);
            }
            int i5 = this.A;
            int i6 = this.B;
            int i7 = this.C;
            int i8 = this.D;
            round1(iArr);
            round2(iArr);
            round3(iArr);
            this.A += i5;
            this.B += i6;
            this.C += i7;
            this.D += i8;
        }

        protected void round1(int[] iArr) {
            int rotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(this.B, this.C, this.D) + iArr[0], 3);
            this.A = rotintlft;
            int rotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(rotintlft, this.B, this.C) + iArr[1], 7);
            this.D = rotintlft2;
            int rotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(rotintlft2, this.A, this.B) + iArr[2], 11);
            this.C = rotintlft3;
            int rotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(rotintlft3, this.D, this.A) + iArr[3], 19);
            this.B = rotintlft4;
            int rotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(rotintlft4, this.C, this.D) + iArr[4], 3);
            this.A = rotintlft5;
            int rotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(rotintlft5, this.B, this.C) + iArr[5], 7);
            this.D = rotintlft6;
            int rotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(rotintlft6, this.A, this.B) + iArr[6], 11);
            this.C = rotintlft7;
            int rotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(rotintlft7, this.D, this.A) + iArr[7], 19);
            this.B = rotintlft8;
            int rotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(rotintlft8, this.C, this.D) + iArr[8], 3);
            this.A = rotintlft9;
            int rotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(rotintlft9, this.B, this.C) + iArr[9], 7);
            this.D = rotintlft10;
            int rotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(rotintlft10, this.A, this.B) + iArr[10], 11);
            this.C = rotintlft11;
            int rotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(rotintlft11, this.D, this.A) + iArr[11], 19);
            this.B = rotintlft12;
            int rotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(rotintlft12, this.C, this.D) + iArr[12], 3);
            this.A = rotintlft13;
            int rotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(rotintlft13, this.B, this.C) + iArr[13], 7);
            this.D = rotintlft14;
            int rotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(rotintlft14, this.A, this.B) + iArr[14], 11);
            this.C = rotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(rotintlft15, this.D, this.A) + iArr[15], 19);
        }

        protected void round2(int[] iArr) {
            int rotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(this.B, this.C, this.D) + iArr[0] + 1518500249, 3);
            this.A = rotintlft;
            int rotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(rotintlft, this.B, this.C) + iArr[4] + 1518500249, 5);
            this.D = rotintlft2;
            int rotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(rotintlft2, this.A, this.B) + iArr[8] + 1518500249, 9);
            this.C = rotintlft3;
            int rotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(rotintlft3, this.D, this.A) + iArr[12] + 1518500249, 13);
            this.B = rotintlft4;
            int rotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(rotintlft4, this.C, this.D) + iArr[1] + 1518500249, 3);
            this.A = rotintlft5;
            int rotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(rotintlft5, this.B, this.C) + iArr[5] + 1518500249, 5);
            this.D = rotintlft6;
            int rotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(rotintlft6, this.A, this.B) + iArr[9] + 1518500249, 9);
            this.C = rotintlft7;
            int rotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(rotintlft7, this.D, this.A) + iArr[13] + 1518500249, 13);
            this.B = rotintlft8;
            int rotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(rotintlft8, this.C, this.D) + iArr[2] + 1518500249, 3);
            this.A = rotintlft9;
            int rotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(rotintlft9, this.B, this.C) + iArr[6] + 1518500249, 5);
            this.D = rotintlft10;
            int rotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(rotintlft10, this.A, this.B) + iArr[10] + 1518500249, 9);
            this.C = rotintlft11;
            int rotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(rotintlft11, this.D, this.A) + iArr[14] + 1518500249, 13);
            this.B = rotintlft12;
            int rotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(rotintlft12, this.C, this.D) + iArr[3] + 1518500249, 3);
            this.A = rotintlft13;
            int rotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(rotintlft13, this.B, this.C) + iArr[7] + 1518500249, 5);
            this.D = rotintlft14;
            int rotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(rotintlft14, this.A, this.B) + iArr[11] + 1518500249, 9);
            this.C = rotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(rotintlft15, this.D, this.A) + iArr[15] + 1518500249, 13);
        }

        protected void round3(int[] iArr) {
            int rotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(this.B, this.C, this.D) + iArr[0] + 1859775393, 3);
            this.A = rotintlft;
            int rotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(rotintlft, this.B, this.C) + iArr[8] + 1859775393, 9);
            this.D = rotintlft2;
            int rotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(rotintlft2, this.A, this.B) + iArr[4] + 1859775393, 11);
            this.C = rotintlft3;
            int rotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(rotintlft3, this.D, this.A) + iArr[12] + 1859775393, 15);
            this.B = rotintlft4;
            int rotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(rotintlft4, this.C, this.D) + iArr[2] + 1859775393, 3);
            this.A = rotintlft5;
            int rotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(rotintlft5, this.B, this.C) + iArr[10] + 1859775393, 9);
            this.D = rotintlft6;
            int rotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(rotintlft6, this.A, this.B) + iArr[6] + 1859775393, 11);
            this.C = rotintlft7;
            int rotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(rotintlft7, this.D, this.A) + iArr[14] + 1859775393, 15);
            this.B = rotintlft8;
            int rotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(rotintlft8, this.C, this.D) + iArr[1] + 1859775393, 3);
            this.A = rotintlft9;
            int rotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(rotintlft9, this.B, this.C) + iArr[9] + 1859775393, 9);
            this.D = rotintlft10;
            int rotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(rotintlft10, this.A, this.B) + iArr[5] + 1859775393, 11);
            this.C = rotintlft11;
            int rotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(rotintlft11, this.D, this.A) + iArr[13] + 1859775393, 15);
            this.B = rotintlft12;
            int rotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(rotintlft12, this.C, this.D) + iArr[3] + 1859775393, 3);
            this.A = rotintlft13;
            int rotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(rotintlft13, this.B, this.C) + iArr[11] + 1859775393, 9);
            this.D = rotintlft14;
            int rotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(rotintlft14, this.A, this.B) + iArr[7] + 1859775393, 11);
            this.C = rotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(rotintlft15, this.D, this.A) + iArr[15] + 1859775393, 15);
        }

        void update(byte[] bArr) {
            byte[] bArr2;
            int i2 = (int) (this.count & 63);
            int i4 = 0;
            while (true) {
                int length = (bArr.length - i4) + i2;
                bArr2 = this.dataBuffer;
                if (length < bArr2.length) {
                    break;
                }
                int length2 = bArr2.length - i2;
                System.arraycopy(bArr, i4, bArr2, i2, length2);
                this.count += length2;
                i4 += length2;
                processBuffer();
                i2 = 0;
            }
            if (i4 < bArr.length) {
                int length3 = bArr.length - i4;
                System.arraycopy(bArr, i4, bArr2, i2, length3);
                this.count += length3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class Type1Message extends NTLMMessage {
        protected byte[] domainBytes;
        protected byte[] hostBytes;

        Type1Message(String str, String str2) throws NTLMEngineException {
            try {
                String convertHost = NTLMEngineImpl.convertHost(str2);
                String convertDomain = NTLMEngineImpl.convertDomain(str);
                this.hostBytes = convertHost != null ? convertHost.getBytes(NTLMEngineImpl.DEFAULT_CHARSET) : null;
                this.domainBytes = convertDomain != null ? convertDomain.toUpperCase(Locale.ENGLISH).getBytes(NTLMEngineImpl.DEFAULT_CHARSET) : null;
            } catch (UnsupportedEncodingException e4) {
                throw new NTLMEngineException("Unicode unsupported: " + e4.getMessage(), e4);
            }
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.NTLMMessage
        String getResponse() {
            prepareResponse(40, 1);
            addULong(-1576500735);
            addUShort(0);
            addUShort(0);
            addULong(40);
            addUShort(0);
            addUShort(0);
            addULong(40);
            addUShort(261);
            addULong(2600);
            addUShort(3840);
            return super.getResponse();
        }
    }

    /* loaded from: classes5.dex */
    static class Type2Message extends NTLMMessage {
        protected byte[] challenge;
        protected int flags;
        protected String target;
        protected byte[] targetInfo;

        Type2Message(String str) throws NTLMEngineException {
            super(str, 2);
            byte[] bArr = new byte[8];
            this.challenge = bArr;
            readBytes(bArr, 24);
            int readULong = readULong(20);
            this.flags = readULong;
            if ((readULong & 1) != 0) {
                this.target = null;
                if (getMessageLength() >= 20) {
                    byte[] readSecurityBuffer = readSecurityBuffer(12);
                    if (readSecurityBuffer.length != 0) {
                        try {
                            this.target = new String(readSecurityBuffer, "UnicodeLittleUnmarked");
                        } catch (UnsupportedEncodingException e4) {
                            throw new NTLMEngineException(e4.getMessage(), e4);
                        }
                    }
                }
                this.targetInfo = null;
                if (getMessageLength() >= 48) {
                    byte[] readSecurityBuffer2 = readSecurityBuffer(40);
                    if (readSecurityBuffer2.length != 0) {
                        this.targetInfo = readSecurityBuffer2;
                        return;
                    }
                    return;
                }
                return;
            }
            throw new NTLMEngineException("NTLM type 2 message has flags that make no sense: " + Integer.toString(this.flags));
        }

        byte[] getChallenge() {
            return this.challenge;
        }

        int getFlags() {
            return this.flags;
        }

        String getTarget() {
            return this.target;
        }

        byte[] getTargetInfo() {
            return this.targetInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class Type3Message extends NTLMMessage {
        protected byte[] domainBytes;
        protected byte[] hostBytes;
        protected byte[] lmResp;
        protected byte[] ntResp;
        protected byte[] sessionKey;
        protected int type2Flags;
        protected byte[] userBytes;

        Type3Message(String str, String str2, String str3, String str4, byte[] bArr, int i2, String str5, byte[] bArr2) throws NTLMEngineException {
            byte[] lMUserSessionKey;
            byte[] bytes;
            this.type2Flags = i2;
            String convertHost = NTLMEngineImpl.convertHost(str2);
            String convertDomain = NTLMEngineImpl.convertDomain(str);
            CipherGen cipherGen = new CipherGen(convertDomain, str3, str4, bArr, str5, bArr2);
            try {
                if ((8388608 & i2) != 0 && bArr2 != null && str5 != null) {
                    this.ntResp = cipherGen.getNTLMv2Response();
                    this.lmResp = cipherGen.getLMv2Response();
                    if ((i2 & 128) != 0) {
                        lMUserSessionKey = cipherGen.getLanManagerSessionKey();
                    } else {
                        lMUserSessionKey = cipherGen.getNTLMv2UserSessionKey();
                    }
                } else if ((524288 & i2) != 0) {
                    this.ntResp = cipherGen.getNTLM2SessionResponse();
                    this.lmResp = cipherGen.getLM2SessionResponse();
                    if ((i2 & 128) != 0) {
                        lMUserSessionKey = cipherGen.getLanManagerSessionKey();
                    } else {
                        lMUserSessionKey = cipherGen.getNTLM2SessionResponseUserSessionKey();
                    }
                } else {
                    this.ntResp = cipherGen.getNTLMResponse();
                    this.lmResp = cipherGen.getLMResponse();
                    if ((i2 & 128) != 0) {
                        lMUserSessionKey = cipherGen.getLanManagerSessionKey();
                    } else {
                        lMUserSessionKey = cipherGen.getNTLMUserSessionKey();
                    }
                }
            } catch (NTLMEngineException unused) {
                this.ntResp = new byte[0];
                this.lmResp = cipherGen.getLMResponse();
                if ((i2 & 128) != 0) {
                    lMUserSessionKey = cipherGen.getLanManagerSessionKey();
                } else {
                    lMUserSessionKey = cipherGen.getLMUserSessionKey();
                }
            }
            if ((i2 & 16) == 0) {
                this.sessionKey = null;
            } else if ((i2 & 1073741824) != 0) {
                this.sessionKey = NTLMEngineImpl.RC4(cipherGen.getSecondaryKey(), lMUserSessionKey);
            } else {
                this.sessionKey = lMUserSessionKey;
            }
            if (convertHost != null) {
                try {
                    bytes = convertHost.getBytes("UnicodeLittleUnmarked");
                } catch (UnsupportedEncodingException e4) {
                    throw new NTLMEngineException("Unicode not supported: " + e4.getMessage(), e4);
                }
            } else {
                bytes = null;
            }
            this.hostBytes = bytes;
            this.domainBytes = convertDomain != null ? convertDomain.toUpperCase(Locale.ENGLISH).getBytes("UnicodeLittleUnmarked") : null;
            this.userBytes = str3.getBytes("UnicodeLittleUnmarked");
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.NTLMMessage
        String getResponse() {
            int length = this.ntResp.length;
            int length2 = this.lmResp.length;
            byte[] bArr = this.domainBytes;
            int length3 = bArr != null ? bArr.length : 0;
            byte[] bArr2 = this.hostBytes;
            int length4 = bArr2 != null ? bArr2.length : 0;
            int length5 = this.userBytes.length;
            byte[] bArr3 = this.sessionKey;
            int length6 = bArr3 != null ? bArr3.length : 0;
            int i2 = length2 + 72;
            int i4 = i2 + length;
            int i5 = i4 + length3;
            int i6 = i5 + length5;
            int i7 = i6 + length4;
            prepareResponse(i7 + length6, 3);
            addUShort(length2);
            addUShort(length2);
            addULong(72);
            addUShort(length);
            addUShort(length);
            addULong(i2);
            addUShort(length3);
            addUShort(length3);
            addULong(i4);
            addUShort(length5);
            addUShort(length5);
            addULong(i5);
            addUShort(length4);
            addUShort(length4);
            addULong(i6);
            addUShort(length6);
            addUShort(length6);
            addULong(i7);
            int i8 = this.type2Flags;
            addULong((i8 & 4) | (i8 & 128) | (i8 & 512) | (524288 & i8) | NTLMEngineImpl.FLAG_REQUEST_VERSION | (32768 & i8) | (i8 & 32) | (i8 & 16) | (NTLMEngineImpl.FLAG_REQUEST_128BIT_KEY_EXCH & i8) | (Integer.MIN_VALUE & i8) | (1073741824 & i8) | (8388608 & i8) | (i8 & 1));
            addUShort(261);
            addULong(2600);
            addUShort(3840);
            addBytes(this.lmResp);
            addBytes(this.ntResp);
            addBytes(this.domainBytes);
            addBytes(this.userBytes);
            addBytes(this.hostBytes);
            byte[] bArr4 = this.sessionKey;
            if (bArr4 != null) {
                addBytes(bArr4);
            }
            return super.getResponse();
        }
    }

    static {
        SecureRandom secureRandom;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (Exception unused) {
            secureRandom = null;
        }
        RND_GEN = secureRandom;
        byte[] bytes = EncodingUtils.getBytes("NTLMSSP", DEFAULT_CHARSET);
        byte[] bArr = new byte[bytes.length + 1];
        SIGNATURE = bArr;
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        bArr[bytes.length] = 0;
    }

    static int F(int i2, int i4, int i5) {
        return ((i2 ^ (-1)) & i5) | (i4 & i2);
    }

    static int G(int i2, int i4, int i5) {
        return (i2 & i5) | (i2 & i4) | (i4 & i5);
    }

    static int H(int i2, int i4, int i5) {
        return (i2 ^ i4) ^ i5;
    }

    static byte[] RC4(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            Cipher cipher = Cipher.getInstance("RC4");
            cipher.init(1, new SecretKeySpec(bArr2, "RC4"));
            return cipher.doFinal(bArr);
        } catch (Exception e4) {
            throw new NTLMEngineException(e4.getMessage(), e4);
        }
    }

    static /* synthetic */ byte[] access$000() throws NTLMEngineException {
        return makeRandomChallenge();
    }

    static /* synthetic */ byte[] access$100() throws NTLMEngineException {
        return makeSecondaryKey();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertDomain(String str) {
        return stripDotSuffix(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertHost(String str) {
        return stripDotSuffix(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] createBlob(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr3.length + 8 + 8 + 4 + bArr2.length + 4];
        System.arraycopy(new byte[]{1, 1, 0, 0}, 0, bArr4, 0, 4);
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, 4, 4);
        System.arraycopy(bArr3, 0, bArr4, 8, bArr3.length);
        int length = bArr3.length + 8;
        System.arraycopy(bArr, 0, bArr4, length, 8);
        int i2 = length + 8;
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, i2, 4);
        int i4 = i2 + 4;
        System.arraycopy(bArr2, 0, bArr4, i4, bArr2.length);
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, i4 + bArr2.length, 4);
        return bArr4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Key createDESKey(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[7];
        System.arraycopy(bArr, i2, bArr2, 0, 7);
        byte[] bArr3 = {bArr2[0], (byte) ((bArr2[0] << 7) | ((bArr2[1] & 255) >>> 1)), (byte) ((bArr2[1] << 6) | ((bArr2[2] & 255) >>> 2)), (byte) ((bArr2[2] << 5) | ((bArr2[3] & 255) >>> 3)), (byte) ((bArr2[3] << 4) | ((bArr2[4] & 255) >>> 4)), (byte) ((bArr2[4] << 3) | ((bArr2[5] & 255) >>> 5)), (byte) ((bArr2[5] << 2) | ((bArr2[6] & 255) >>> 6)), (byte) (bArr2[6] << 1)};
        oddParity(bArr3);
        return new SecretKeySpec(bArr3, "DES");
    }

    static byte[] hmacMD5(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        HMACMD5 hmacmd5 = new HMACMD5(bArr2);
        hmacmd5.update(bArr);
        return hmacmd5.getOutput();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmHash(String str) throws NTLMEngineException {
        try {
            byte[] bytes = str.toUpperCase(Locale.ENGLISH).getBytes(a.f9882b);
            byte[] bArr = new byte[14];
            System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 14));
            Key createDESKey = createDESKey(bArr, 0);
            Key createDESKey2 = createDESKey(bArr, 7);
            byte[] bytes2 = "KGS!@#$%".getBytes(a.f9882b);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, createDESKey);
            byte[] doFinal = cipher.doFinal(bytes2);
            cipher.init(1, createDESKey2);
            byte[] doFinal2 = cipher.doFinal(bytes2);
            byte[] bArr2 = new byte[16];
            System.arraycopy(doFinal, 0, bArr2, 0, 8);
            System.arraycopy(doFinal2, 0, bArr2, 8, 8);
            return bArr2;
        } catch (Exception e4) {
            throw new NTLMEngineException(e4.getMessage(), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmResponse(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            byte[] bArr3 = new byte[21];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            Key createDESKey = createDESKey(bArr3, 0);
            Key createDESKey2 = createDESKey(bArr3, 7);
            Key createDESKey3 = createDESKey(bArr3, 14);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, createDESKey);
            byte[] doFinal = cipher.doFinal(bArr2);
            cipher.init(1, createDESKey2);
            byte[] doFinal2 = cipher.doFinal(bArr2);
            cipher.init(1, createDESKey3);
            byte[] doFinal3 = cipher.doFinal(bArr2);
            byte[] bArr4 = new byte[24];
            System.arraycopy(doFinal, 0, bArr4, 0, 8);
            System.arraycopy(doFinal2, 0, bArr4, 8, 8);
            System.arraycopy(doFinal3, 0, bArr4, 16, 8);
            return bArr4;
        } catch (Exception e4) {
            throw new NTLMEngineException(e4.getMessage(), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmv2Hash(String str, String str2, byte[] bArr) throws NTLMEngineException {
        try {
            HMACMD5 hmacmd5 = new HMACMD5(bArr);
            Locale locale = Locale.ENGLISH;
            hmacmd5.update(str2.toUpperCase(locale).getBytes("UnicodeLittleUnmarked"));
            if (str != null) {
                hmacmd5.update(str.toUpperCase(locale).getBytes("UnicodeLittleUnmarked"));
            }
            return hmacmd5.getOutput();
        } catch (UnsupportedEncodingException e4) {
            throw new NTLMEngineException("Unicode not supported! " + e4.getMessage(), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmv2Response(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        HMACMD5 hmacmd5 = new HMACMD5(bArr);
        hmacmd5.update(bArr2);
        hmacmd5.update(bArr3);
        byte[] output = hmacmd5.getOutput();
        byte[] bArr4 = new byte[output.length + bArr3.length];
        System.arraycopy(output, 0, bArr4, 0, output.length);
        System.arraycopy(bArr3, 0, bArr4, output.length, bArr3.length);
        return bArr4;
    }

    private static byte[] makeRandomChallenge() throws NTLMEngineException {
        SecureRandom secureRandom = RND_GEN;
        if (secureRandom != null) {
            byte[] bArr = new byte[8];
            synchronized (secureRandom) {
                secureRandom.nextBytes(bArr);
            }
            return bArr;
        }
        throw new NTLMEngineException("Random generator not available");
    }

    private static byte[] makeSecondaryKey() throws NTLMEngineException {
        SecureRandom secureRandom = RND_GEN;
        if (secureRandom != null) {
            byte[] bArr = new byte[16];
            synchronized (secureRandom) {
                secureRandom.nextBytes(bArr);
            }
            return bArr;
        }
        throw new NTLMEngineException("Random generator not available");
    }

    static byte[] ntlm2SessionResponse(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr2);
            messageDigest.update(bArr3);
            byte[] digest = messageDigest.digest();
            byte[] bArr4 = new byte[8];
            System.arraycopy(digest, 0, bArr4, 0, 8);
            return lmResponse(bArr, bArr4);
        } catch (Exception e4) {
            if (e4 instanceof NTLMEngineException) {
                throw e4;
            }
            throw new NTLMEngineException(e4.getMessage(), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] ntlmHash(String str) throws NTLMEngineException {
        try {
            byte[] bytes = str.getBytes("UnicodeLittleUnmarked");
            MD4 md4 = new MD4();
            md4.update(bytes);
            return md4.getOutput();
        } catch (UnsupportedEncodingException e4) {
            throw new NTLMEngineException("Unicode not supported: " + e4.getMessage(), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] ntlmv2Hash(String str, String str2, byte[] bArr) throws NTLMEngineException {
        try {
            HMACMD5 hmacmd5 = new HMACMD5(bArr);
            hmacmd5.update(str2.toUpperCase(Locale.ENGLISH).getBytes("UnicodeLittleUnmarked"));
            if (str != null) {
                hmacmd5.update(str.getBytes("UnicodeLittleUnmarked"));
            }
            return hmacmd5.getOutput();
        } catch (UnsupportedEncodingException e4) {
            throw new NTLMEngineException("Unicode not supported! " + e4.getMessage(), e4);
        }
    }

    private static void oddParity(byte[] bArr) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b4 = bArr[i2];
            if ((((b4 >>> 1) ^ ((((((b4 >>> 7) ^ (b4 >>> 6)) ^ (b4 >>> 5)) ^ (b4 >>> 4)) ^ (b4 >>> 3)) ^ (b4 >>> 2))) & 1) == 0) {
                bArr[i2] = (byte) (bArr[i2] | 1);
            } else {
                bArr[i2] = (byte) (bArr[i2] & (-2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] readSecurityBuffer(byte[] bArr, int i2) throws NTLMEngineException {
        int readUShort = readUShort(bArr, i2);
        int readULong = readULong(bArr, i2 + 4);
        if (bArr.length >= readULong + readUShort) {
            byte[] bArr2 = new byte[readUShort];
            System.arraycopy(bArr, readULong, bArr2, 0, readUShort);
            return bArr2;
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for data item");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readULong(byte[] bArr, int i2) throws NTLMEngineException {
        if (bArr.length >= i2 + 4) {
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for DWORD");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readUShort(byte[] bArr, int i2) throws NTLMEngineException {
        if (bArr.length >= i2 + 2) {
            return ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for WORD");
    }

    static int rotintlft(int i2, int i4) {
        return (i2 >>> (32 - i4)) | (i2 << i4);
    }

    private static String stripDotSuffix(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(g0.f27568a);
        return indexOf != -1 ? str.substring(0, indexOf) : str;
    }

    static void writeULong(byte[] bArr, int i2, int i4) {
        bArr[i4] = (byte) (i2 & 255);
        bArr[i4 + 1] = (byte) ((i2 >> 8) & 255);
        bArr[i4 + 2] = (byte) ((i2 >> 16) & 255);
        bArr[i4 + 3] = (byte) ((i2 >> 24) & 255);
    }

    public String generateType1Msg(String str, String str2) throws NTLMEngineException {
        return getType1Message(str2, str);
    }

    public String generateType3Msg(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        Type2Message type2Message = new Type2Message(str5);
        return getType3Message(str, str2, str4, str3, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
    }

    String getCredentialCharset() {
        return this.credentialCharset;
    }

    final String getResponseFor(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        if (str != null && !str.trim().equals("")) {
            Type2Message type2Message = new Type2Message(str);
            return getType3Message(str2, str3, str4, str5, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
        }
        return getType1Message(str4, str5);
    }

    String getType1Message(String str, String str2) throws NTLMEngineException {
        return new Type1Message(str2, str).getResponse();
    }

    String getType3Message(String str, String str2, String str3, String str4, byte[] bArr, int i2, String str5, byte[] bArr2) throws NTLMEngineException {
        return new Type3Message(str4, str3, str, str2, bArr, i2, str5, bArr2).getResponse();
    }

    void setCredentialCharset(String str) {
        this.credentialCharset = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class NTLMMessage {
        private int currentOutputPosition;
        private byte[] messageContents;

        NTLMMessage() {
            this.messageContents = null;
            this.currentOutputPosition = 0;
        }

        protected void addByte(byte b4) {
            byte[] bArr = this.messageContents;
            int i2 = this.currentOutputPosition;
            bArr[i2] = b4;
            this.currentOutputPosition = i2 + 1;
        }

        protected void addBytes(byte[] bArr) {
            if (bArr == null) {
                return;
            }
            for (byte b4 : bArr) {
                byte[] bArr2 = this.messageContents;
                int i2 = this.currentOutputPosition;
                bArr2[i2] = b4;
                this.currentOutputPosition = i2 + 1;
            }
        }

        protected void addULong(int i2) {
            addByte((byte) (i2 & 255));
            addByte((byte) ((i2 >> 8) & 255));
            addByte((byte) ((i2 >> 16) & 255));
            addByte((byte) ((i2 >> 24) & 255));
        }

        protected void addUShort(int i2) {
            addByte((byte) (i2 & 255));
            addByte((byte) ((i2 >> 8) & 255));
        }

        protected int getMessageLength() {
            return this.currentOutputPosition;
        }

        protected int getPreambleLength() {
            return NTLMEngineImpl.SIGNATURE.length + 4;
        }

        String getResponse() {
            byte[] bArr = this.messageContents;
            int length = bArr.length;
            int i2 = this.currentOutputPosition;
            if (length > i2) {
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                bArr = bArr2;
            }
            return EncodingUtils.getAsciiString(Base64.encode(bArr, 2));
        }

        protected void prepareResponse(int i2, int i4) {
            this.messageContents = new byte[i2];
            this.currentOutputPosition = 0;
            addBytes(NTLMEngineImpl.SIGNATURE);
            addULong(i4);
        }

        protected byte readByte(int i2) throws NTLMEngineException {
            byte[] bArr = this.messageContents;
            if (bArr.length >= i2 + 1) {
                return bArr[i2];
            }
            throw new NTLMEngineException("NTLM: Message too short");
        }

        protected void readBytes(byte[] bArr, int i2) throws NTLMEngineException {
            byte[] bArr2 = this.messageContents;
            if (bArr2.length >= bArr.length + i2) {
                System.arraycopy(bArr2, i2, bArr, 0, bArr.length);
                return;
            }
            throw new NTLMEngineException("NTLM: Message too short");
        }

        protected byte[] readSecurityBuffer(int i2) throws NTLMEngineException {
            return NTLMEngineImpl.readSecurityBuffer(this.messageContents, i2);
        }

        protected int readULong(int i2) throws NTLMEngineException {
            return NTLMEngineImpl.readULong(this.messageContents, i2);
        }

        protected int readUShort(int i2) throws NTLMEngineException {
            return NTLMEngineImpl.readUShort(this.messageContents, i2);
        }

        NTLMMessage(String str, int i2) throws NTLMEngineException {
            this.messageContents = null;
            this.currentOutputPosition = 0;
            byte[] decode = Base64.decode(EncodingUtils.getBytes(str, NTLMEngineImpl.DEFAULT_CHARSET), 2);
            this.messageContents = decode;
            if (decode.length >= NTLMEngineImpl.SIGNATURE.length) {
                for (int i4 = 0; i4 < NTLMEngineImpl.SIGNATURE.length; i4++) {
                    if (this.messageContents[i4] != NTLMEngineImpl.SIGNATURE[i4]) {
                        throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
                    }
                }
                int readULong = readULong(NTLMEngineImpl.SIGNATURE.length);
                if (readULong == i2) {
                    this.currentOutputPosition = this.messageContents.length;
                    return;
                }
                throw new NTLMEngineException("NTLM type " + Integer.toString(i2) + " message expected - instead got type " + Integer.toString(readULong));
            }
            throw new NTLMEngineException("NTLM message decoding error - packet too short");
        }
    }

    /* loaded from: classes5.dex */
    protected static class CipherGen {
        protected final byte[] challenge;
        protected byte[] clientChallenge;
        protected byte[] clientChallenge2;
        protected final String domain;
        protected byte[] lanManagerSessionKey;
        protected byte[] lm2SessionResponse;
        protected byte[] lmHash;
        protected byte[] lmResponse;
        protected byte[] lmUserSessionKey;
        protected byte[] lmv2Hash;
        protected byte[] lmv2Response;
        protected byte[] ntlm2SessionResponse;
        protected byte[] ntlm2SessionResponseUserSessionKey;
        protected byte[] ntlmHash;
        protected byte[] ntlmResponse;
        protected byte[] ntlmUserSessionKey;
        protected byte[] ntlmv2Blob;
        protected byte[] ntlmv2Hash;
        protected byte[] ntlmv2Response;
        protected byte[] ntlmv2UserSessionKey;
        protected final String password;
        protected byte[] secondaryKey;
        protected final String target;
        protected final byte[] targetInformation;
        protected byte[] timestamp;
        protected final String user;

        public CipherGen(String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
            this.lmHash = null;
            this.lmResponse = null;
            this.ntlmHash = null;
            this.ntlmResponse = null;
            this.ntlmv2Hash = null;
            this.lmv2Hash = null;
            this.lmv2Response = null;
            this.ntlmv2Blob = null;
            this.ntlmv2Response = null;
            this.ntlm2SessionResponse = null;
            this.lm2SessionResponse = null;
            this.lmUserSessionKey = null;
            this.ntlmUserSessionKey = null;
            this.ntlmv2UserSessionKey = null;
            this.ntlm2SessionResponseUserSessionKey = null;
            this.lanManagerSessionKey = null;
            this.domain = str;
            this.target = str4;
            this.user = str2;
            this.password = str3;
            this.challenge = bArr;
            this.targetInformation = bArr2;
            this.clientChallenge = bArr3;
            this.clientChallenge2 = bArr4;
            this.secondaryKey = bArr5;
            this.timestamp = bArr6;
        }

        public byte[] getClientChallenge() throws NTLMEngineException {
            if (this.clientChallenge == null) {
                this.clientChallenge = NTLMEngineImpl.access$000();
            }
            return this.clientChallenge;
        }

        public byte[] getClientChallenge2() throws NTLMEngineException {
            if (this.clientChallenge2 == null) {
                this.clientChallenge2 = NTLMEngineImpl.access$000();
            }
            return this.clientChallenge2;
        }

        public byte[] getLM2SessionResponse() throws NTLMEngineException {
            if (this.lm2SessionResponse == null) {
                byte[] clientChallenge = getClientChallenge();
                byte[] bArr = new byte[24];
                this.lm2SessionResponse = bArr;
                System.arraycopy(clientChallenge, 0, bArr, 0, clientChallenge.length);
                byte[] bArr2 = this.lm2SessionResponse;
                Arrays.fill(bArr2, clientChallenge.length, bArr2.length, (byte) 0);
            }
            return this.lm2SessionResponse;
        }

        public byte[] getLMHash() throws NTLMEngineException {
            if (this.lmHash == null) {
                this.lmHash = NTLMEngineImpl.lmHash(this.password);
            }
            return this.lmHash;
        }

        public byte[] getLMResponse() throws NTLMEngineException {
            if (this.lmResponse == null) {
                this.lmResponse = NTLMEngineImpl.lmResponse(getLMHash(), this.challenge);
            }
            return this.lmResponse;
        }

        public byte[] getLMUserSessionKey() throws NTLMEngineException {
            if (this.lmUserSessionKey == null) {
                this.lmUserSessionKey = new byte[16];
                System.arraycopy(getLMHash(), 0, this.lmUserSessionKey, 0, 8);
                Arrays.fill(this.lmUserSessionKey, 8, 16, (byte) 0);
            }
            return this.lmUserSessionKey;
        }

        public byte[] getLMv2Hash() throws NTLMEngineException {
            if (this.lmv2Hash == null) {
                this.lmv2Hash = NTLMEngineImpl.lmv2Hash(this.domain, this.user, getNTLMHash());
            }
            return this.lmv2Hash;
        }

        public byte[] getLMv2Response() throws NTLMEngineException {
            if (this.lmv2Response == null) {
                this.lmv2Response = NTLMEngineImpl.lmv2Response(getLMv2Hash(), this.challenge, getClientChallenge());
            }
            return this.lmv2Response;
        }

        public byte[] getLanManagerSessionKey() throws NTLMEngineException {
            if (this.lanManagerSessionKey == null) {
                try {
                    byte[] bArr = new byte[14];
                    System.arraycopy(getLMHash(), 0, bArr, 0, 8);
                    Arrays.fill(bArr, 8, 14, (byte) -67);
                    Key createDESKey = NTLMEngineImpl.createDESKey(bArr, 0);
                    Key createDESKey2 = NTLMEngineImpl.createDESKey(bArr, 7);
                    byte[] bArr2 = new byte[8];
                    System.arraycopy(getLMResponse(), 0, bArr2, 0, 8);
                    Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
                    cipher.init(1, createDESKey);
                    byte[] doFinal = cipher.doFinal(bArr2);
                    Cipher cipher2 = Cipher.getInstance("DES/ECB/NoPadding");
                    cipher2.init(1, createDESKey2);
                    byte[] doFinal2 = cipher2.doFinal(bArr2);
                    byte[] bArr3 = new byte[16];
                    this.lanManagerSessionKey = bArr3;
                    System.arraycopy(doFinal, 0, bArr3, 0, doFinal.length);
                    System.arraycopy(doFinal2, 0, this.lanManagerSessionKey, doFinal.length, doFinal2.length);
                } catch (Exception e4) {
                    throw new NTLMEngineException(e4.getMessage(), e4);
                }
            }
            return this.lanManagerSessionKey;
        }

        public byte[] getNTLM2SessionResponse() throws NTLMEngineException {
            if (this.ntlm2SessionResponse == null) {
                this.ntlm2SessionResponse = NTLMEngineImpl.ntlm2SessionResponse(getNTLMHash(), this.challenge, getClientChallenge());
            }
            return this.ntlm2SessionResponse;
        }

        public byte[] getNTLM2SessionResponseUserSessionKey() throws NTLMEngineException {
            if (this.ntlm2SessionResponseUserSessionKey == null) {
                byte[] lM2SessionResponse = getLM2SessionResponse();
                byte[] bArr = this.challenge;
                byte[] bArr2 = new byte[bArr.length + lM2SessionResponse.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                System.arraycopy(lM2SessionResponse, 0, bArr2, this.challenge.length, lM2SessionResponse.length);
                this.ntlm2SessionResponseUserSessionKey = NTLMEngineImpl.hmacMD5(bArr2, getNTLMUserSessionKey());
            }
            return this.ntlm2SessionResponseUserSessionKey;
        }

        public byte[] getNTLMHash() throws NTLMEngineException {
            if (this.ntlmHash == null) {
                this.ntlmHash = NTLMEngineImpl.ntlmHash(this.password);
            }
            return this.ntlmHash;
        }

        public byte[] getNTLMResponse() throws NTLMEngineException {
            if (this.ntlmResponse == null) {
                this.ntlmResponse = NTLMEngineImpl.lmResponse(getNTLMHash(), this.challenge);
            }
            return this.ntlmResponse;
        }

        public byte[] getNTLMUserSessionKey() throws NTLMEngineException {
            if (this.ntlmUserSessionKey == null) {
                MD4 md4 = new MD4();
                md4.update(getNTLMHash());
                this.ntlmUserSessionKey = md4.getOutput();
            }
            return this.ntlmUserSessionKey;
        }

        public byte[] getNTLMv2Blob() throws NTLMEngineException {
            if (this.ntlmv2Blob == null) {
                this.ntlmv2Blob = NTLMEngineImpl.createBlob(getClientChallenge2(), this.targetInformation, getTimestamp());
            }
            return this.ntlmv2Blob;
        }

        public byte[] getNTLMv2Hash() throws NTLMEngineException {
            if (this.ntlmv2Hash == null) {
                this.ntlmv2Hash = NTLMEngineImpl.ntlmv2Hash(this.domain, this.user, getNTLMHash());
            }
            return this.ntlmv2Hash;
        }

        public byte[] getNTLMv2Response() throws NTLMEngineException {
            if (this.ntlmv2Response == null) {
                this.ntlmv2Response = NTLMEngineImpl.lmv2Response(getNTLMv2Hash(), this.challenge, getNTLMv2Blob());
            }
            return this.ntlmv2Response;
        }

        public byte[] getNTLMv2UserSessionKey() throws NTLMEngineException {
            if (this.ntlmv2UserSessionKey == null) {
                byte[] nTLMv2Hash = getNTLMv2Hash();
                byte[] bArr = new byte[16];
                System.arraycopy(getNTLMv2Response(), 0, bArr, 0, 16);
                this.ntlmv2UserSessionKey = NTLMEngineImpl.hmacMD5(bArr, nTLMv2Hash);
            }
            return this.ntlmv2UserSessionKey;
        }

        public byte[] getSecondaryKey() throws NTLMEngineException {
            if (this.secondaryKey == null) {
                this.secondaryKey = NTLMEngineImpl.access$100();
            }
            return this.secondaryKey;
        }

        public byte[] getTimestamp() {
            if (this.timestamp == null) {
                long currentTimeMillis = (System.currentTimeMillis() + 11644473600000L) * c.f47286a;
                this.timestamp = new byte[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    this.timestamp[i2] = (byte) currentTimeMillis;
                    currentTimeMillis >>>= 8;
                }
            }
            return this.timestamp;
        }

        public CipherGen(String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2) {
            this(str, str2, str3, bArr, str4, bArr2, null, null, null, null);
        }
    }
}
