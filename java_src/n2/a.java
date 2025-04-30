package n2;

import android.os.Parcel;
import com.xinzhu.datatransfer.b;
import com.xinzhu.overmind.server.pm.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
/* compiled from: PackageListIniSolver.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f72838a = 6;

    public static void a(boolean onlyForMainPackage) {
        int length;
        byte[] bArr;
        int read;
        File e4 = b.e();
        Parcel obtain = Parcel.obtain();
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(e4);
                length = (int) e4.length();
                bArr = new byte[length];
                read = fileInputStream.read(bArr);
                fileInputStream.close();
            } catch (Exception e5) {
                if (!(e5 instanceof FileNotFoundException)) {
                    e5.printStackTrace();
                }
            }
            if (read == length) {
                obtain.unmarshall(bArr, 0, length);
                obtain.setDataPosition(0);
                obtain.createCharArray();
                int readInt = obtain.readInt();
                int readInt2 = obtain.readInt();
                if (readInt == 6) {
                    for (int i2 = 0; i2 < readInt2; i2++) {
                        String readString = obtain.readString();
                        int readInt3 = obtain.readInt();
                        obtain.readString();
                        obtain.readString();
                        boolean z3 = obtain.readByte() != 0;
                        obtain.readByte();
                        int readInt4 = obtain.readInt();
                        for (int i4 = 0; i4 < readInt4; i4++) {
                            int readInt5 = obtain.readInt();
                            obtain.readInt();
                            obtain.readString();
                            obtain.readByte();
                            obtain.readByte();
                            obtain.readByte();
                            if (b(onlyForMainPackage, z3)) {
                                h.get().installPackageAsTransfer(com.xinzhu.overmind.a.j(readString).getAbsolutePath(), readInt5, readInt3);
                            }
                        }
                        obtain.readInt();
                        obtain.readLong();
                        obtain.readLong();
                    }
                } else if (readInt == 5) {
                    for (int i5 = 0; i5 < readInt2; i5++) {
                        String readString2 = obtain.readString();
                        int readInt6 = obtain.readInt();
                        obtain.readInt();
                        int readInt7 = obtain.readInt();
                        for (int i6 = 0; i6 < readInt7; i6++) {
                            int readInt8 = obtain.readInt();
                            obtain.readInt();
                            obtain.readString();
                            obtain.readByte();
                            obtain.readByte();
                            obtain.readByte();
                            h.get().installPackageAsTransfer(com.xinzhu.overmind.a.j(readString2).getAbsolutePath(), readInt8, readInt6);
                        }
                        obtain.readInt();
                        obtain.readLong();
                        obtain.readLong();
                    }
                } else if (readInt < 5) {
                    for (int i7 = 0; i7 < readInt2; i7++) {
                        String readString3 = obtain.readString();
                        obtain.readString();
                        obtain.readString();
                        obtain.readByte();
                        int readInt9 = obtain.readInt();
                        int readInt10 = obtain.readInt();
                        for (int i8 = 0; i8 < readInt10; i8++) {
                            int readInt11 = obtain.readInt();
                            obtain.readInt();
                            obtain.readString();
                            obtain.readByte();
                            obtain.readByte();
                            obtain.readByte();
                            h.get().installPackageAsTransfer(com.xinzhu.overmind.a.j(readString3).getAbsolutePath(), readInt11, readInt9);
                        }
                        obtain.readByte();
                        if (readInt == 4) {
                            obtain.readInt();
                        }
                    }
                }
                return;
            }
            throw new IOException("Unable to read Persistence file.");
        } finally {
            obtain.recycle();
        }
    }

    private static boolean b(boolean onlyForMainPackage, boolean is64bitPackage) {
        if (onlyForMainPackage) {
            return !is64bitPackage;
        }
        return true;
    }
}
