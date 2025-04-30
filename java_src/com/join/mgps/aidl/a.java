package com.join.mgps.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: AIDLService.java */
/* loaded from: classes3.dex */
public interface a extends IInterface {

    /* compiled from: AIDLService.java */
    /* renamed from: com.join.mgps.aidl.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0186a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.join.mgps.aidl.a
        public void emuConfigChanged() throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void emuConfigPost(String str, int i2, String str2) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void emuLogCat(String str, String str2, String str3, String str4, String str5) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameOut(String str, int i2, String str2) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart(String str) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart15(String str, String str2) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart160(String str, String str2, int i2) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStartBattle(String str) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStartBattle15(String str, String str2) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameWorldData(String str) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void netBattleMatchEfficiency(String str, String str2, String str3) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public String oauth4StandaloneGame(String str) throws RemoteException {
            return null;
        }

        @Override // com.join.mgps.aidl.a
        public void playTime(String str, String str2, long j4) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void plugEfficiency(String str, String str2, String str3) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public boolean unLockSP(String str) throws RemoteException {
            return false;
        }
    }

    /* compiled from: AIDLService.java */
    /* loaded from: classes3.dex */
    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "com.join.mgps.aidl.AIDLService";
        static final int TRANSACTION_emuConfigChanged = 9;
        static final int TRANSACTION_emuConfigPost = 10;
        static final int TRANSACTION_emuLogCat = 11;
        static final int TRANSACTION_gameOut = 3;
        static final int TRANSACTION_gameStart = 6;
        static final int TRANSACTION_gameStart15 = 1;
        static final int TRANSACTION_gameStart160 = 12;
        static final int TRANSACTION_gameStartBattle = 7;
        static final int TRANSACTION_gameStartBattle15 = 2;
        static final int TRANSACTION_gameWorldData = 5;
        static final int TRANSACTION_netBattleMatchEfficiency = 4;
        static final int TRANSACTION_oauth4StandaloneGame = 15;
        static final int TRANSACTION_playTime = 14;
        static final int TRANSACTION_plugEfficiency = 13;
        static final int TRANSACTION_unLockSP = 8;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: AIDLService.java */
        /* renamed from: com.join.mgps.aidl.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0187a implements a {

            /* renamed from: b  reason: collision with root package name */
            public static a f44722b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f44723a;

            C0187a(IBinder iBinder) {
                this.f44723a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f44723a;
            }

            @Override // com.join.mgps.aidl.a
            public void emuConfigChanged() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f44723a.transact(9, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().emuConfigChanged();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void emuConfigPost(String str, int i2, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeString(str2);
                    if (!this.f44723a.transact(10, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().emuConfigPost(str, i2, str2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void emuLogCat(String str, String str2, String str3, String str4, String str5) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    obtain.writeString(str5);
                    if (!this.f44723a.transact(11, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().emuLogCat(str, str2, str3, str4, str5);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameOut(String str, int i2, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeString(str2);
                    if (!this.f44723a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().gameOut(str, i2, str2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStart(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.f44723a.transact(6, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().gameStart(str);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStart15(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!this.f44723a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().gameStart15(str, str2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStart160(String str, String str2, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i2);
                    if (!this.f44723a.transact(12, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().gameStart160(str, str2, i2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStartBattle(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.f44723a.transact(7, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().gameStartBattle(str);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStartBattle15(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!this.f44723a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().gameStartBattle15(str, str2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameWorldData(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.f44723a.transact(5, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().gameWorldData(str);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String m() {
                return b.DESCRIPTOR;
            }

            @Override // com.join.mgps.aidl.a
            public void netBattleMatchEfficiency(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (!this.f44723a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().netBattleMatchEfficiency(str, str2, str3);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public String oauth4StandaloneGame(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.f44723a.transact(15, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().oauth4StandaloneGame(str);
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void playTime(String str, String str2, long j4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeLong(j4);
                    if (!this.f44723a.transact(14, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().playTime(str, str2, j4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void plugEfficiency(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (!this.f44723a.transact(13, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().plugEfficiency(str, str2, str3);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public boolean unLockSP(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    if (!this.f44723a.transact(8, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().unLockSP(str);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0187a(iBinder);
        }

        public static a getDefaultImpl() {
            return C0187a.f44722b;
        }

        public static boolean setDefaultImpl(a aVar) {
            if (C0187a.f44722b == null) {
                if (aVar != null) {
                    C0187a.f44722b = aVar;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i4) throws RemoteException {
            if (i2 != 1598968902) {
                switch (i2) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        gameStart15(parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        gameStartBattle15(parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        gameOut(parcel.readString(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        netBattleMatchEfficiency(parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        gameWorldData(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        gameStart(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        gameStartBattle(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean unLockSP = unLockSP(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(unLockSP ? 1 : 0);
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        emuConfigChanged();
                        parcel2.writeNoException();
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        emuConfigPost(parcel.readString(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        emuLogCat(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        gameStart160(parcel.readString(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        plugEfficiency(parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        playTime(parcel.readString(), parcel.readString(), parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        parcel.enforceInterface(DESCRIPTOR);
                        String oauth4StandaloneGame = oauth4StandaloneGame(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeString(oauth4StandaloneGame);
                        return true;
                    default:
                        return super.onTransact(i2, parcel, parcel2, i4);
                }
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void emuConfigChanged() throws RemoteException;

    void emuConfigPost(String str, int i2, String str2) throws RemoteException;

    void emuLogCat(String str, String str2, String str3, String str4, String str5) throws RemoteException;

    void gameOut(String str, int i2, String str2) throws RemoteException;

    void gameStart(String str) throws RemoteException;

    void gameStart15(String str, String str2) throws RemoteException;

    void gameStart160(String str, String str2, int i2) throws RemoteException;

    void gameStartBattle(String str) throws RemoteException;

    void gameStartBattle15(String str, String str2) throws RemoteException;

    void gameWorldData(String str) throws RemoteException;

    void netBattleMatchEfficiency(String str, String str2, String str3) throws RemoteException;

    String oauth4StandaloneGame(String str) throws RemoteException;

    void playTime(String str, String str2, long j4) throws RemoteException;

    void plugEfficiency(String str, String str2, String str3) throws RemoteException;

    boolean unLockSP(String str) throws RemoteException;
}
