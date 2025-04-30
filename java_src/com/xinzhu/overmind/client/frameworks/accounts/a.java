package com.xinzhu.overmind.client.frameworks.accounts;

import android.accounts.Account;
import android.accounts.AuthenticatorDescription;
import android.accounts.IAccountManagerResponse;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.accounts.e;
import com.xinzhu.overmind.server.g;
import java.util.Map;
/* compiled from: MindAccountManager.java */
/* loaded from: classes.dex */
public class a extends e.b {
    private static a sAccountManager = new a();
    private e mService;

    public static a get() {
        return sAccountManager;
    }

    private e getService() {
        e eVar = this.mService;
        if (eVar != null && eVar.asBinder().isBinderAlive()) {
            return this.mService;
        }
        this.mService = e.b.asInterface(Overmind.get().getService(g.f64485l));
        return getService();
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean accountAuthenticated(Account account) {
        try {
            return getService().accountAuthenticated(account);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addAccount(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options) {
        try {
            getService().addAccount(response, accountType, authTokenType, requiredFeatures, expectActivityLaunch, options);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addAccountAsUser(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options, int userId) {
        try {
            getService().addAccountAsUser(response, accountType, authTokenType, requiredFeatures, expectActivityLaunch, options, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addAccountExplicitly(Account account, String password, Bundle extras) {
        try {
            return getService().addAccountExplicitly(account, password, extras);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addAccountExplicitlyWithVisibility(Account account, String password, Bundle extras, Map visibility) {
        try {
            return getService().addAccountExplicitlyWithVisibility(account, password, extras, visibility);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addSharedAccountAsUser(Account account, int userId) {
        try {
            return getService().addSharedAccountAsUser(account, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addSharedAccountsFromParentUser(int parentUserId, int userId, String opPackageName) {
        try {
            getService().addSharedAccountsFromParentUser(parentUserId, userId, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void clearPassword(Account account) {
        try {
            getService().clearPassword(account);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void confirmCredentialsAsUser(IAccountManagerResponse response, Account account, Bundle options, boolean expectActivityLaunch, int userId) {
        try {
            getService().confirmCredentialsAsUser(response, account, options, expectActivityLaunch, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void copyAccountToUser(IAccountManagerResponse response, Account account, int userFrom, int userTo) {
        try {
            getService().copyAccountToUser(response, account, userFrom, userTo);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public IntentSender createRequestAccountAccessIntentSenderAsUser(Account account, String packageName, UserHandle userHandle) {
        try {
            return getService().createRequestAccountAccessIntentSenderAsUser(account, packageName, userHandle);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void editProperties(IAccountManagerResponse response, String accountType, boolean expectActivityLaunch) {
        try {
            getService().editProperties(response, accountType, expectActivityLaunch);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void finishSessionAsUser(IAccountManagerResponse response, Bundle sessionBundle, boolean expectActivityLaunch, Bundle appInfo, int userId) {
        try {
            getService().finishSessionAsUser(response, sessionBundle, expectActivityLaunch, appInfo, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAccountByTypeAndFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) {
        try {
            getService().getAccountByTypeAndFeatures(response, accountType, features, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public int getAccountVisibility(Account a4, String packageName) {
        try {
            return getService().getAccountVisibility(a4, packageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Map getAccountsAndVisibilityForPackage(String packageName, String accountType) {
        try {
            return getService().getAccountsAndVisibilityForPackage(packageName, accountType);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsAsUser(String accountType, int userId, String opPackageName) {
        try {
            return getService().getAccountsAsUser(accountType, userId, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAccountsByFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) {
        try {
            getService().getAccountsByFeatures(response, accountType, features, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsByTypeForPackage(String type, String packageName, String opPackageName) {
        try {
            return getService().getAccountsByTypeForPackage(type, packageName, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsForPackage(String packageName, int uid, String opPackageName) {
        try {
            return getService().getAccountsForPackage(packageName, uid, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAuthToken(IAccountManagerResponse response, Account account, String authTokenType, boolean notifyOnAuthFailure, boolean expectActivityLaunch, Bundle options, int uid) {
        try {
            getService().getAuthToken(response, account, authTokenType, notifyOnAuthFailure, expectActivityLaunch, options, uid);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAuthTokenLabel(IAccountManagerResponse response, String accountType, String authTokenType) {
        try {
            getService().getAuthTokenLabel(response, accountType, authTokenType);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public AuthenticatorDescription[] getAuthenticatorTypes(int userId) {
        try {
            return getService().getAuthenticatorTypes(userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Map getPackagesAndVisibilityForAccount(Account account) {
        try {
            return getService().getPackagesAndVisibilityForAccount(account);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getPassword(Account account) {
        try {
            return getService().getPassword(account);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getPreviousName(Account account) {
        try {
            return getService().getPreviousName(account);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getSharedAccountsAsUser(int userId) {
        try {
            return getService().getSharedAccountsAsUser(userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getUserData(Account account, String key) {
        try {
            return getService().getUserData(account, key);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean hasAccountAccess(Account account, String packageName, UserHandle userHandle) {
        try {
            return getService().hasAccountAccess(account, packageName, userHandle);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void hasFeatures(IAccountManagerResponse response, Account account, String[] features, String opPackageName) {
        try {
            getService().hasFeatures(response, account, features, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void invalidateAuthToken(String accountType, String authToken) {
        try {
            getService().invalidateAuthToken(accountType, authToken);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void isCredentialsUpdateSuggested(IAccountManagerResponse response, Account account, String statusToken) {
        try {
            getService().isCredentialsUpdateSuggested(response, account, statusToken);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void onAccountAccessed(String token) {
        try {
            getService().onAccountAccessed(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String peekAuthToken(Account account, String authTokenType) {
        try {
            return getService().peekAuthToken(account, authTokenType);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void registerAccountListener(String[] accountTypes, String opPackageName) {
        try {
            getService().registerAccountListener(accountTypes, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void removeAccountAsUser(IAccountManagerResponse response, Account account, boolean expectActivityLaunch, int userId) {
        try {
            getService().removeAccountAsUser(response, account, expectActivityLaunch, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean removeAccountExplicitly(Account account) {
        try {
            return getService().removeAccountExplicitly(account);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean removeSharedAccountAsUser(Account account, int userId) {
        try {
            return getService().removeSharedAccountAsUser(account, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void renameAccount(IAccountManagerResponse response, Account accountToRename, String newName) {
        try {
            getService().renameAccount(response, accountToRename, newName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean renameSharedAccountAsUser(Account accountToRename, String newName, int userId) {
        try {
            return getService().renameSharedAccountAsUser(accountToRename, newName, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean setAccountVisibility(Account a4, String packageName, int newVisibility) {
        try {
            return getService().setAccountVisibility(a4, packageName, newVisibility);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setAuthToken(Account account, String authTokenType, String authToken) {
        try {
            getService().setAuthToken(account, authTokenType, authToken);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setPassword(Account account, String password) {
        try {
            getService().setPassword(account, password);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setUserData(Account account, String key, String value) {
        try {
            getService().setUserData(account, key, value);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean someUserHasAccount(Account account) {
        try {
            return getService().someUserHasAccount(account);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void startAddAccountSession(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle options) {
        try {
            getService().startAddAccountSession(response, accountType, authTokenType, requiredFeatures, expectActivityLaunch, options);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void startUpdateCredentialsSession(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle options) {
        try {
            getService().startUpdateCredentialsSession(response, account, authTokenType, expectActivityLaunch, options);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void unregisterAccountListener(String[] accountTypes, String opPackageName) {
        try {
            getService().unregisterAccountListener(accountTypes, opPackageName);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void updateAppPermission(Account account, String authTokenType, int uid, boolean value) {
        try {
            getService().updateAppPermission(account, authTokenType, uid, value);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void updateCredentials(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle options) {
        try {
            getService().updateCredentials(response, account, authTokenType, expectActivityLaunch, options);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }
}
