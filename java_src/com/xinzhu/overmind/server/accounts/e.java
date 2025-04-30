package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.accounts.AuthenticatorDescription;
import android.accounts.IAccountManagerResponse;
import android.content.IntentSender;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.UserHandle;
import java.util.Map;
/* compiled from: IMindAccountManager.java */
/* loaded from: classes.dex */
public interface e extends IInterface {

    /* compiled from: IMindAccountManager.java */
    /* loaded from: classes3.dex */
    public static class a implements e {
        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean accountAuthenticated(Account account) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void addAccount(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void addAccountAsUser(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean addAccountExplicitly(Account account, String password, Bundle extras) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean addAccountExplicitlyWithVisibility(Account account, String password, Bundle extras, Map visibility) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean addSharedAccountAsUser(Account account, int userId) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void addSharedAccountsFromParentUser(int parentUserId, int userId, String opPackageName) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void clearPassword(Account account) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void confirmCredentialsAsUser(IAccountManagerResponse response, Account account, Bundle options, boolean expectActivityLaunch, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void copyAccountToUser(IAccountManagerResponse response, Account account, int userFrom, int userTo) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public IntentSender createRequestAccountAccessIntentSenderAsUser(Account account, String packageName, UserHandle userHandle) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void editProperties(IAccountManagerResponse response, String accountType, boolean expectActivityLaunch) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void finishSessionAsUser(IAccountManagerResponse response, Bundle sessionBundle, boolean expectActivityLaunch, Bundle appInfo, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void getAccountByTypeAndFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public int getAccountVisibility(Account a4, String packageName) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public Map getAccountsAndVisibilityForPackage(String packageName, String accountType) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public Account[] getAccountsAsUser(String accountType, int userId, String opPackageName) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void getAccountsByFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public Account[] getAccountsByTypeForPackage(String type, String packageName, String opPackageName) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public Account[] getAccountsForPackage(String packageName, int uid, String opPackageName) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void getAuthToken(IAccountManagerResponse response, Account account, String authTokenType, boolean notifyOnAuthFailure, boolean expectActivityLaunch, Bundle options, int uid) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void getAuthTokenLabel(IAccountManagerResponse response, String accountType, String authTokenType) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public AuthenticatorDescription[] getAuthenticatorTypes(int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public Map getPackagesAndVisibilityForAccount(Account account) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public String getPassword(Account account) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public String getPreviousName(Account account) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public Account[] getSharedAccountsAsUser(int userId) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public String getUserData(Account account, String key) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean hasAccountAccess(Account account, String packageName, UserHandle userHandle) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void hasFeatures(IAccountManagerResponse response, Account account, String[] features, String opPackageName) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void invalidateAuthToken(String accountType, String authToken) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void isCredentialsUpdateSuggested(IAccountManagerResponse response, Account account, String statusToken) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void onAccountAccessed(String token) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public String peekAuthToken(Account account, String authTokenType) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void registerAccountListener(String[] accountTypes, String opPackageName) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void removeAccountAsUser(IAccountManagerResponse response, Account account, boolean expectActivityLaunch, int userId) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean removeAccountExplicitly(Account account) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean removeSharedAccountAsUser(Account account, int userId) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void renameAccount(IAccountManagerResponse response, Account accountToRename, String newName) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean renameSharedAccountAsUser(Account accountToRename, String newName, int userId) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean setAccountVisibility(Account a4, String packageName, int newVisibility) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void setAuthToken(Account account, String authTokenType, String authToken) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void setPassword(Account account, String password) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void setUserData(Account account, String key, String value) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public boolean someUserHasAccount(Account account) throws RemoteException {
            return false;
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void startAddAccountSession(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void startUpdateCredentialsSession(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle options) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void unregisterAccountListener(String[] accountTypes, String opPackageName) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void updateAppPermission(Account account, String authTokenType, int uid, boolean value) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.accounts.e
        public void updateCredentials(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle options) throws RemoteException {
        }
    }

    /* compiled from: IMindAccountManager.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements e {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.accounts.IMindAccountManager";
        static final int TRANSACTION_accountAuthenticated = 27;
        static final int TRANSACTION_addAccount = 22;
        static final int TRANSACTION_addAccountAsUser = 23;
        static final int TRANSACTION_addAccountExplicitly = 10;
        static final int TRANSACTION_addAccountExplicitlyWithVisibility = 42;
        static final int TRANSACTION_addSharedAccountAsUser = 30;
        static final int TRANSACTION_addSharedAccountsFromParentUser = 29;
        static final int TRANSACTION_clearPassword = 18;
        static final int TRANSACTION_confirmCredentialsAsUser = 26;
        static final int TRANSACTION_copyAccountToUser = 13;
        static final int TRANSACTION_createRequestAccountAccessIntentSenderAsUser = 49;
        static final int TRANSACTION_editProperties = 25;
        static final int TRANSACTION_finishSessionAsUser = 38;
        static final int TRANSACTION_getAccountByTypeAndFeatures = 8;
        static final int TRANSACTION_getAccountVisibility = 44;
        static final int TRANSACTION_getAccountsAndVisibilityForPackage = 45;
        static final int TRANSACTION_getAccountsAsUser = 6;
        static final int TRANSACTION_getAccountsByFeatures = 9;
        static final int TRANSACTION_getAccountsByTypeForPackage = 5;
        static final int TRANSACTION_getAccountsForPackage = 4;
        static final int TRANSACTION_getAuthToken = 21;
        static final int TRANSACTION_getAuthTokenLabel = 28;
        static final int TRANSACTION_getAuthenticatorTypes = 3;
        static final int TRANSACTION_getPackagesAndVisibilityForAccount = 41;
        static final int TRANSACTION_getPassword = 1;
        static final int TRANSACTION_getPreviousName = 35;
        static final int TRANSACTION_getSharedAccountsAsUser = 31;
        static final int TRANSACTION_getUserData = 2;
        static final int TRANSACTION_hasAccountAccess = 48;
        static final int TRANSACTION_hasFeatures = 7;
        static final int TRANSACTION_invalidateAuthToken = 14;
        static final int TRANSACTION_isCredentialsUpdateSuggested = 40;
        static final int TRANSACTION_onAccountAccessed = 50;
        static final int TRANSACTION_peekAuthToken = 15;
        static final int TRANSACTION_registerAccountListener = 46;
        static final int TRANSACTION_removeAccountAsUser = 11;
        static final int TRANSACTION_removeAccountExplicitly = 12;
        static final int TRANSACTION_removeSharedAccountAsUser = 32;
        static final int TRANSACTION_renameAccount = 34;
        static final int TRANSACTION_renameSharedAccountAsUser = 33;
        static final int TRANSACTION_setAccountVisibility = 43;
        static final int TRANSACTION_setAuthToken = 16;
        static final int TRANSACTION_setPassword = 17;
        static final int TRANSACTION_setUserData = 19;
        static final int TRANSACTION_someUserHasAccount = 39;
        static final int TRANSACTION_startAddAccountSession = 36;
        static final int TRANSACTION_startUpdateCredentialsSession = 37;
        static final int TRANSACTION_unregisterAccountListener = 47;
        static final int TRANSACTION_updateAppPermission = 20;
        static final int TRANSACTION_updateCredentials = 24;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMindAccountManager.java */
        /* loaded from: classes.dex */
        public static class a implements e {

            /* renamed from: b  reason: collision with root package name */
            public static e f64396b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f64397a;

            a(IBinder remote) {
                this.f64397a = remote;
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean accountAuthenticated(Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(27, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().accountAuthenticated(account);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void addAccount(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeString(authTokenType);
                    obtain.writeStringArray(requiredFeatures);
                    obtain.writeInt(expectActivityLaunch ? 1 : 0);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    try {
                        if (!this.f64397a.transact(22, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                            b.getDefaultImpl().addAccount(response, accountType, authTokenType, requiredFeatures, expectActivityLaunch, options);
                            obtain2.recycle();
                            obtain.recycle();
                            return;
                        }
                        obtain2.readException();
                        obtain2.recycle();
                        obtain.recycle();
                    } catch (Throwable th) {
                        th = th;
                        obtain2.recycle();
                        obtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void addAccountAsUser(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeString(authTokenType);
                    obtain.writeStringArray(requiredFeatures);
                    obtain.writeInt(expectActivityLaunch ? 1 : 0);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    try {
                        if (!this.f64397a.transact(23, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                            b.getDefaultImpl().addAccountAsUser(response, accountType, authTokenType, requiredFeatures, expectActivityLaunch, options, userId);
                            obtain2.recycle();
                            obtain.recycle();
                            return;
                        }
                        obtain2.readException();
                        obtain2.recycle();
                        obtain.recycle();
                    } catch (Throwable th) {
                        th = th;
                        obtain2.recycle();
                        obtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean addAccountExplicitly(Account account, String password, Bundle extras) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(password);
                    if (extras != null) {
                        obtain.writeInt(1);
                        extras.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(10, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().addAccountExplicitly(account, password, extras);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean addAccountExplicitlyWithVisibility(Account account, String password, Bundle extras, Map visibility) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(password);
                    if (extras != null) {
                        obtain.writeInt(1);
                        extras.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeMap(visibility);
                    if (!this.f64397a.transact(42, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().addAccountExplicitlyWithVisibility(account, password, extras, visibility);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean addSharedAccountAsUser(Account account, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64397a.transact(30, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().addSharedAccountAsUser(account, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void addSharedAccountsFromParentUser(int parentUserId, int userId, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(parentUserId);
                    obtain.writeInt(userId);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(29, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().addSharedAccountsFromParentUser(parentUserId, userId, opPackageName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64397a;
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void clearPassword(Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(18, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().clearPassword(account);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void confirmCredentialsAsUser(IAccountManagerResponse response, Account account, Bundle options, boolean expectActivityLaunch, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    int i2 = 1;
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!expectActivityLaunch) {
                        i2 = 0;
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(userId);
                    if (!this.f64397a.transact(26, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().confirmCredentialsAsUser(response, account, options, expectActivityLaunch, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void copyAccountToUser(IAccountManagerResponse response, Account account, int userFrom, int userTo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userFrom);
                    obtain.writeInt(userTo);
                    if (!this.f64397a.transact(13, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().copyAccountToUser(response, account, userFrom, userTo);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public IntentSender createRequestAccountAccessIntentSenderAsUser(Account account, String packageName, UserHandle userHandle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(packageName);
                    if (userHandle != null) {
                        obtain.writeInt(1);
                        userHandle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(49, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().createRequestAccountAccessIntentSenderAsUser(account, packageName, userHandle);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (IntentSender) IntentSender.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void editProperties(IAccountManagerResponse response, String accountType, boolean expectActivityLaunch) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeInt(expectActivityLaunch ? 1 : 0);
                    if (!this.f64397a.transact(25, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().editProperties(response, accountType, expectActivityLaunch);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void finishSessionAsUser(IAccountManagerResponse response, Bundle sessionBundle, boolean expectActivityLaunch, Bundle appInfo, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (sessionBundle != null) {
                        obtain.writeInt(1);
                        sessionBundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(expectActivityLaunch ? 1 : 0);
                    if (appInfo != null) {
                        obtain.writeInt(1);
                        appInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64397a.transact(38, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().finishSessionAsUser(response, sessionBundle, expectActivityLaunch, appInfo, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void getAccountByTypeAndFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeStringArray(features);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(8, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().getAccountByTypeAndFeatures(response, accountType, features, opPackageName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public int getAccountVisibility(Account a4, String packageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (a4 != null) {
                        obtain.writeInt(1);
                        a4.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(packageName);
                    if (!this.f64397a.transact(44, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getAccountVisibility(a4, packageName);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public Map getAccountsAndVisibilityForPackage(String packageName, String accountType) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeString(accountType);
                    if (!this.f64397a.transact(45, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getAccountsAndVisibilityForPackage(packageName, accountType);
                    }
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public Account[] getAccountsAsUser(String accountType, int userId, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(accountType);
                    obtain.writeInt(userId);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(6, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getAccountsAsUser(accountType, userId, opPackageName);
                    }
                    obtain2.readException();
                    return (Account[]) obtain2.createTypedArray(Account.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void getAccountsByFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeStringArray(features);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(9, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().getAccountsByFeatures(response, accountType, features, opPackageName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public Account[] getAccountsByTypeForPackage(String type, String packageName, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(type);
                    obtain.writeString(packageName);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(5, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getAccountsByTypeForPackage(type, packageName, opPackageName);
                    }
                    obtain2.readException();
                    return (Account[]) obtain2.createTypedArray(Account.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public Account[] getAccountsForPackage(String packageName, int uid, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(uid);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(4, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getAccountsForPackage(packageName, uid, opPackageName);
                    }
                    obtain2.readException();
                    return (Account[]) obtain2.createTypedArray(Account.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void getAuthToken(IAccountManagerResponse response, Account account, String authTokenType, boolean notifyOnAuthFailure, boolean expectActivityLaunch, Bundle options, int uid) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    obtain.writeInt(notifyOnAuthFailure ? 1 : 0);
                    obtain.writeInt(expectActivityLaunch ? 1 : 0);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(uid);
                    try {
                        if (!this.f64397a.transact(21, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                            b.getDefaultImpl().getAuthToken(response, account, authTokenType, notifyOnAuthFailure, expectActivityLaunch, options, uid);
                            obtain2.recycle();
                            obtain.recycle();
                            return;
                        }
                        obtain2.readException();
                        obtain2.recycle();
                        obtain.recycle();
                    } catch (Throwable th) {
                        th = th;
                        obtain2.recycle();
                        obtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void getAuthTokenLabel(IAccountManagerResponse response, String accountType, String authTokenType) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeString(authTokenType);
                    if (!this.f64397a.transact(28, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().getAuthTokenLabel(response, accountType, authTokenType);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public AuthenticatorDescription[] getAuthenticatorTypes(int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    if (!this.f64397a.transact(3, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getAuthenticatorTypes(userId);
                    }
                    obtain2.readException();
                    return (AuthenticatorDescription[]) obtain2.createTypedArray(AuthenticatorDescription.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public Map getPackagesAndVisibilityForAccount(Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(41, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getPackagesAndVisibilityForAccount(account);
                    }
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public String getPassword(Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(1, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getPassword(account);
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public String getPreviousName(Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(35, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getPreviousName(account);
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public Account[] getSharedAccountsAsUser(int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeInt(userId);
                    if (!this.f64397a.transact(31, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getSharedAccountsAsUser(userId);
                    }
                    obtain2.readException();
                    return (Account[]) obtain2.createTypedArray(Account.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public String getUserData(Account account, String key) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(key);
                    if (!this.f64397a.transact(2, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getUserData(account, key);
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean hasAccountAccess(Account account, String packageName, UserHandle userHandle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(packageName);
                    if (userHandle != null) {
                        obtain.writeInt(1);
                        userHandle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(48, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().hasAccountAccess(account, packageName, userHandle);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void hasFeatures(IAccountManagerResponse response, Account account, String[] features, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStringArray(features);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(7, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().hasFeatures(response, account, features, opPackageName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void invalidateAuthToken(String accountType, String authToken) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(accountType);
                    obtain.writeString(authToken);
                    if (!this.f64397a.transact(14, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().invalidateAuthToken(accountType, authToken);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void isCredentialsUpdateSuggested(IAccountManagerResponse response, Account account, String statusToken) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(statusToken);
                    if (!this.f64397a.transact(40, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().isCredentialsUpdateSuggested(response, account, statusToken);
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

            @Override // com.xinzhu.overmind.server.accounts.e
            public void onAccountAccessed(String token) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(token);
                    if (!this.f64397a.transact(50, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().onAccountAccessed(token);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public String peekAuthToken(Account account, String authTokenType) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    if (!this.f64397a.transact(15, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().peekAuthToken(account, authTokenType);
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void registerAccountListener(String[] accountTypes, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStringArray(accountTypes);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(46, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().registerAccountListener(accountTypes, opPackageName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void removeAccountAsUser(IAccountManagerResponse response, Account account, boolean expectActivityLaunch, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    int i2 = 1;
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!expectActivityLaunch) {
                        i2 = 0;
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(userId);
                    if (!this.f64397a.transact(11, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().removeAccountAsUser(response, account, expectActivityLaunch, userId);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean removeAccountExplicitly(Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(12, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().removeAccountExplicitly(account);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean removeSharedAccountAsUser(Account account, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(userId);
                    if (!this.f64397a.transact(32, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().removeSharedAccountAsUser(account, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void renameAccount(IAccountManagerResponse response, Account accountToRename, String newName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (accountToRename != null) {
                        obtain.writeInt(1);
                        accountToRename.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(newName);
                    if (!this.f64397a.transact(34, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().renameAccount(response, accountToRename, newName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean renameSharedAccountAsUser(Account accountToRename, String newName, int userId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (accountToRename != null) {
                        obtain.writeInt(1);
                        accountToRename.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(newName);
                    obtain.writeInt(userId);
                    if (!this.f64397a.transact(33, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().renameSharedAccountAsUser(accountToRename, newName, userId);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean setAccountVisibility(Account a4, String packageName, int newVisibility) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (a4 != null) {
                        obtain.writeInt(1);
                        a4.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(packageName);
                    obtain.writeInt(newVisibility);
                    if (!this.f64397a.transact(43, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().setAccountVisibility(a4, packageName, newVisibility);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void setAuthToken(Account account, String authTokenType, String authToken) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    obtain.writeString(authToken);
                    if (!this.f64397a.transact(16, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().setAuthToken(account, authTokenType, authToken);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void setPassword(Account account, String password) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(password);
                    if (!this.f64397a.transact(17, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().setPassword(account, password);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void setUserData(Account account, String key, String value) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(key);
                    obtain.writeString(value);
                    if (!this.f64397a.transact(19, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().setUserData(account, key, value);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public boolean someUserHasAccount(Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(39, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().someUserHasAccount(account);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void startAddAccountSession(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    obtain.writeString(accountType);
                    obtain.writeString(authTokenType);
                    obtain.writeStringArray(requiredFeatures);
                    obtain.writeInt(expectActivityLaunch ? 1 : 0);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    try {
                        if (!this.f64397a.transact(36, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                            b.getDefaultImpl().startAddAccountSession(response, accountType, authTokenType, requiredFeatures, expectActivityLaunch, options);
                            obtain2.recycle();
                            obtain.recycle();
                            return;
                        }
                        obtain2.readException();
                        obtain2.recycle();
                        obtain.recycle();
                    } catch (Throwable th) {
                        th = th;
                        obtain2.recycle();
                        obtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void startUpdateCredentialsSession(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    obtain.writeInt(expectActivityLaunch ? 1 : 0);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(37, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().startUpdateCredentialsSession(response, account, authTokenType, expectActivityLaunch, options);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void unregisterAccountListener(String[] accountTypes, String opPackageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStringArray(accountTypes);
                    obtain.writeString(opPackageName);
                    if (!this.f64397a.transact(47, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().unregisterAccountListener(accountTypes, opPackageName);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void updateAppPermission(Account account, String authTokenType, int uid, boolean value) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    int i2 = 1;
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    obtain.writeInt(uid);
                    if (!value) {
                        i2 = 0;
                    }
                    obtain.writeInt(i2);
                    if (!this.f64397a.transact(20, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().updateAppPermission(account, authTokenType, uid, value);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.accounts.e
            public void updateCredentials(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle options) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(authTokenType);
                    obtain.writeInt(expectActivityLaunch ? 1 : 0);
                    if (options != null) {
                        obtain.writeInt(1);
                        options.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f64397a.transact(24, obtain, obtain2, 0) && b.getDefaultImpl() != null) {
                        b.getDefaultImpl().updateCredentials(response, account, authTokenType, expectActivityLaunch, options);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static e asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof e)) {
                return (e) queryLocalInterface;
            }
            return new a(obj);
        }

        public static e getDefaultImpl() {
            return a.f64396b;
        }

        public static boolean setDefaultImpl(e impl) {
            if (a.f64396b == null) {
                if (impl != null) {
                    a.f64396b = impl;
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
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code != 1598968902) {
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        String password = getPassword(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeString(password);
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        String userData = getUserData(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString());
                        reply.writeNoException();
                        reply.writeString(userData);
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        AuthenticatorDescription[] authenticatorTypes = getAuthenticatorTypes(data.readInt());
                        reply.writeNoException();
                        reply.writeTypedArray(authenticatorTypes, 1);
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        Account[] accountsForPackage = getAccountsForPackage(data.readString(), data.readInt(), data.readString());
                        reply.writeNoException();
                        reply.writeTypedArray(accountsForPackage, 1);
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        Account[] accountsByTypeForPackage = getAccountsByTypeForPackage(data.readString(), data.readString(), data.readString());
                        reply.writeNoException();
                        reply.writeTypedArray(accountsByTypeForPackage, 1);
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        Account[] accountsAsUser = getAccountsAsUser(data.readString(), data.readInt(), data.readString());
                        reply.writeNoException();
                        reply.writeTypedArray(accountsAsUser, 1);
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        hasFeatures(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.createStringArray(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        getAccountByTypeAndFeatures(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.createStringArray(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        getAccountsByFeatures(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.createStringArray(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        boolean addAccountExplicitly = addAccountExplicitly(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeInt(addAccountExplicitly ? 1 : 0);
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        removeAccountAsUser(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readInt() != 0, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        boolean removeAccountExplicitly = removeAccountExplicitly(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeInt(removeAccountExplicitly ? 1 : 0);
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        copyAccountToUser(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readInt(), data.readInt());
                        reply.writeNoException();
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        invalidateAuthToken(data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 15:
                        data.enforceInterface(DESCRIPTOR);
                        String peekAuthToken = peekAuthToken(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString());
                        reply.writeNoException();
                        reply.writeString(peekAuthToken);
                        return true;
                    case 16:
                        data.enforceInterface(DESCRIPTOR);
                        setAuthToken(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 17:
                        data.enforceInterface(DESCRIPTOR);
                        setPassword(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString());
                        reply.writeNoException();
                        return true;
                    case 18:
                        data.enforceInterface(DESCRIPTOR);
                        clearPassword(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 19:
                        data.enforceInterface(DESCRIPTOR);
                        setUserData(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 20:
                        data.enforceInterface(DESCRIPTOR);
                        updateAppPermission(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt(), data.readInt() != 0);
                        reply.writeNoException();
                        return true;
                    case 21:
                        data.enforceInterface(DESCRIPTOR);
                        getAuthToken(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0, data.readInt() != 0, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 22:
                        data.enforceInterface(DESCRIPTOR);
                        addAccount(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readString(), data.createStringArray(), data.readInt() != 0, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 23:
                        data.enforceInterface(DESCRIPTOR);
                        addAccountAsUser(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readString(), data.createStringArray(), data.readInt() != 0, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 24:
                        data.enforceInterface(DESCRIPTOR);
                        updateCredentials(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 25:
                        data.enforceInterface(DESCRIPTOR);
                        editProperties(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readInt() != 0);
                        reply.writeNoException();
                        return true;
                    case 26:
                        data.enforceInterface(DESCRIPTOR);
                        confirmCredentialsAsUser(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null, data.readInt() != 0, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 27:
                        data.enforceInterface(DESCRIPTOR);
                        boolean accountAuthenticated = accountAuthenticated(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeInt(accountAuthenticated ? 1 : 0);
                        return true;
                    case 28:
                        data.enforceInterface(DESCRIPTOR);
                        getAuthTokenLabel(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 29:
                        data.enforceInterface(DESCRIPTOR);
                        addSharedAccountsFromParentUser(data.readInt(), data.readInt(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 30:
                        data.enforceInterface(DESCRIPTOR);
                        boolean addSharedAccountAsUser = addSharedAccountAsUser(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        reply.writeInt(addSharedAccountAsUser ? 1 : 0);
                        return true;
                    case 31:
                        data.enforceInterface(DESCRIPTOR);
                        Account[] sharedAccountsAsUser = getSharedAccountsAsUser(data.readInt());
                        reply.writeNoException();
                        reply.writeTypedArray(sharedAccountsAsUser, 1);
                        return true;
                    case 32:
                        data.enforceInterface(DESCRIPTOR);
                        boolean removeSharedAccountAsUser = removeSharedAccountAsUser(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        reply.writeInt(removeSharedAccountAsUser ? 1 : 0);
                        return true;
                    case 33:
                        data.enforceInterface(DESCRIPTOR);
                        boolean renameSharedAccountAsUser = renameSharedAccountAsUser(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt());
                        reply.writeNoException();
                        reply.writeInt(renameSharedAccountAsUser ? 1 : 0);
                        return true;
                    case 34:
                        data.enforceInterface(DESCRIPTOR);
                        renameAccount(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString());
                        reply.writeNoException();
                        return true;
                    case 35:
                        data.enforceInterface(DESCRIPTOR);
                        String previousName = getPreviousName(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeString(previousName);
                        return true;
                    case 36:
                        data.enforceInterface(DESCRIPTOR);
                        startAddAccountSession(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readString(), data.readString(), data.createStringArray(), data.readInt() != 0, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 37:
                        data.enforceInterface(DESCRIPTOR);
                        startUpdateCredentialsSession(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        return true;
                    case 38:
                        data.enforceInterface(DESCRIPTOR);
                        finishSessionAsUser(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null, data.readInt() != 0, data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 39:
                        data.enforceInterface(DESCRIPTOR);
                        boolean someUserHasAccount = someUserHasAccount(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeInt(someUserHasAccount ? 1 : 0);
                        return true;
                    case 40:
                        data.enforceInterface(DESCRIPTOR);
                        isCredentialsUpdateSuggested(IAccountManagerResponse.Stub.asInterface(data.readStrongBinder()), data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString());
                        reply.writeNoException();
                        return true;
                    case 41:
                        data.enforceInterface(DESCRIPTOR);
                        Map packagesAndVisibilityForAccount = getPackagesAndVisibilityForAccount(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeMap(packagesAndVisibilityForAccount);
                        return true;
                    case 42:
                        data.enforceInterface(DESCRIPTOR);
                        boolean addAccountExplicitlyWithVisibility = addAccountExplicitlyWithVisibility(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null, data.readHashMap(getClass().getClassLoader()));
                        reply.writeNoException();
                        reply.writeInt(addAccountExplicitlyWithVisibility ? 1 : 0);
                        return true;
                    case 43:
                        data.enforceInterface(DESCRIPTOR);
                        boolean accountVisibility = setAccountVisibility(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt());
                        reply.writeNoException();
                        reply.writeInt(accountVisibility ? 1 : 0);
                        return true;
                    case 44:
                        data.enforceInterface(DESCRIPTOR);
                        int accountVisibility2 = getAccountVisibility(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString());
                        reply.writeNoException();
                        reply.writeInt(accountVisibility2);
                        return true;
                    case 45:
                        data.enforceInterface(DESCRIPTOR);
                        Map accountsAndVisibilityForPackage = getAccountsAndVisibilityForPackage(data.readString(), data.readString());
                        reply.writeNoException();
                        reply.writeMap(accountsAndVisibilityForPackage);
                        return true;
                    case 46:
                        data.enforceInterface(DESCRIPTOR);
                        registerAccountListener(data.createStringArray(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 47:
                        data.enforceInterface(DESCRIPTOR);
                        unregisterAccountListener(data.createStringArray(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 48:
                        data.enforceInterface(DESCRIPTOR);
                        boolean hasAccountAccess = hasAccountAccess(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0 ? (UserHandle) UserHandle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        reply.writeInt(hasAccountAccess ? 1 : 0);
                        return true;
                    case 49:
                        data.enforceInterface(DESCRIPTOR);
                        IntentSender createRequestAccountAccessIntentSenderAsUser = createRequestAccountAccessIntentSenderAsUser(data.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(data) : null, data.readString(), data.readInt() != 0 ? (UserHandle) UserHandle.CREATOR.createFromParcel(data) : null);
                        reply.writeNoException();
                        if (createRequestAccountAccessIntentSenderAsUser != null) {
                            reply.writeInt(1);
                            createRequestAccountAccessIntentSenderAsUser.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 50:
                        data.enforceInterface(DESCRIPTOR);
                        onAccountAccessed(data.readString());
                        reply.writeNoException();
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(DESCRIPTOR);
            return true;
        }
    }

    boolean accountAuthenticated(Account account) throws RemoteException;

    void addAccount(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options) throws RemoteException;

    void addAccountAsUser(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options, int userId) throws RemoteException;

    boolean addAccountExplicitly(Account account, String password, Bundle extras) throws RemoteException;

    boolean addAccountExplicitlyWithVisibility(Account account, String password, Bundle extras, Map visibility) throws RemoteException;

    boolean addSharedAccountAsUser(Account account, int userId) throws RemoteException;

    void addSharedAccountsFromParentUser(int parentUserId, int userId, String opPackageName) throws RemoteException;

    void clearPassword(Account account) throws RemoteException;

    void confirmCredentialsAsUser(IAccountManagerResponse response, Account account, Bundle options, boolean expectActivityLaunch, int userId) throws RemoteException;

    void copyAccountToUser(IAccountManagerResponse response, Account account, int userFrom, int userTo) throws RemoteException;

    IntentSender createRequestAccountAccessIntentSenderAsUser(Account account, String packageName, UserHandle userHandle) throws RemoteException;

    void editProperties(IAccountManagerResponse response, String accountType, boolean expectActivityLaunch) throws RemoteException;

    void finishSessionAsUser(IAccountManagerResponse response, Bundle sessionBundle, boolean expectActivityLaunch, Bundle appInfo, int userId) throws RemoteException;

    void getAccountByTypeAndFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) throws RemoteException;

    int getAccountVisibility(Account a4, String packageName) throws RemoteException;

    Map getAccountsAndVisibilityForPackage(String packageName, String accountType) throws RemoteException;

    Account[] getAccountsAsUser(String accountType, int userId, String opPackageName) throws RemoteException;

    void getAccountsByFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) throws RemoteException;

    Account[] getAccountsByTypeForPackage(String type, String packageName, String opPackageName) throws RemoteException;

    Account[] getAccountsForPackage(String packageName, int uid, String opPackageName) throws RemoteException;

    void getAuthToken(IAccountManagerResponse response, Account account, String authTokenType, boolean notifyOnAuthFailure, boolean expectActivityLaunch, Bundle options, int uid) throws RemoteException;

    void getAuthTokenLabel(IAccountManagerResponse response, String accountType, String authTokenType) throws RemoteException;

    AuthenticatorDescription[] getAuthenticatorTypes(int userId) throws RemoteException;

    Map getPackagesAndVisibilityForAccount(Account account) throws RemoteException;

    String getPassword(Account account) throws RemoteException;

    String getPreviousName(Account account) throws RemoteException;

    Account[] getSharedAccountsAsUser(int userId) throws RemoteException;

    String getUserData(Account account, String key) throws RemoteException;

    boolean hasAccountAccess(Account account, String packageName, UserHandle userHandle) throws RemoteException;

    void hasFeatures(IAccountManagerResponse response, Account account, String[] features, String opPackageName) throws RemoteException;

    void invalidateAuthToken(String accountType, String authToken) throws RemoteException;

    void isCredentialsUpdateSuggested(IAccountManagerResponse response, Account account, String statusToken) throws RemoteException;

    void onAccountAccessed(String token) throws RemoteException;

    String peekAuthToken(Account account, String authTokenType) throws RemoteException;

    void registerAccountListener(String[] accountTypes, String opPackageName) throws RemoteException;

    void removeAccountAsUser(IAccountManagerResponse response, Account account, boolean expectActivityLaunch, int userId) throws RemoteException;

    boolean removeAccountExplicitly(Account account) throws RemoteException;

    boolean removeSharedAccountAsUser(Account account, int userId) throws RemoteException;

    void renameAccount(IAccountManagerResponse response, Account accountToRename, String newName) throws RemoteException;

    boolean renameSharedAccountAsUser(Account accountToRename, String newName, int userId) throws RemoteException;

    boolean setAccountVisibility(Account a4, String packageName, int newVisibility) throws RemoteException;

    void setAuthToken(Account account, String authTokenType, String authToken) throws RemoteException;

    void setPassword(Account account, String password) throws RemoteException;

    void setUserData(Account account, String key, String value) throws RemoteException;

    boolean someUserHasAccount(Account account) throws RemoteException;

    void startAddAccountSession(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options) throws RemoteException;

    void startUpdateCredentialsSession(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle options) throws RemoteException;

    void unregisterAccountListener(String[] accountTypes, String opPackageName) throws RemoteException;

    void updateAppPermission(Account account, String authTokenType, int uid, boolean value) throws RemoteException;

    void updateCredentials(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle options) throws RemoteException;
}
