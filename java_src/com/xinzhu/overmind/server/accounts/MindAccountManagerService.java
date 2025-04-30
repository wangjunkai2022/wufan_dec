package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AuthenticatorDescription;
import android.accounts.IAccountAuthenticator;
import android.accounts.IAccountAuthenticatorResponse;
import android.accounts.IAccountManagerResponse;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.AtomicFile;
import android.util.Pair;
import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.accounts.ChooseAccountActivity;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import com.xinzhu.overmind.os.BinderHelper;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import com.xinzhu.overmind.server.accounts.b;
import com.xinzhu.overmind.server.accounts.e;
import com.xinzhu.overmind.server.pm.l;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.server.user.MindUserInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class MindAccountManagerService extends e.b implements com.xinzhu.overmind.server.c {
    private static final String ACCOUNTS_FILE_AUTH_TOKEN = "authtoken.db";
    private static final String ACCOUNTS_FILE_DATA = "accounts.db";
    private static final String ACCOUNTS_FILE_PREVIOUS_NAME = "previous.db";
    private static final String ACCOUNTS_FILE_UID_GRANT = "grant.db";
    private static final String ACCOUNTS_FILE_USER_DATA = "userdata.db";
    private static final String ACCOUNTS_FILE_VISIBILITY = "visibility.db";
    public static final String ACCOUNT_ACCESS_TOKEN_TYPE = "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE";
    public static final String ACTION_ACCOUNT_REMOVED = "android.accounts.action.ACCOUNT_REMOVED";
    public static final String ACTION_VISIBLE_ACCOUNTS_CHANGED = "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED";
    public static final int ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE = 101;
    public static final int ERROR_CODE_USER_RESTRICTED = 100;
    public static final String KEY_ACCOUNT_ACCESS_ID = "accountAccessId";
    public static final String KEY_ACCOUNT_SESSION_BUNDLE = "accountSessionBundle";
    public static final String KEY_CUSTOM_TOKEN_EXPIRY = "android.accounts.expiry";
    public static final String KEY_LAST_AUTHENTICATED_TIME = "lastAuthenticatedTime";
    public static final String KEY_NOTIFY_ON_FAILURE = "notifyOnAuthFailure";
    private static final int MESSAGE_COPY_SHARED_ACCOUNT = 4;
    private static final int MESSAGE_TIMED_OUT = 3;
    public static final String PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE = "android:accounts:key_legacy_not_visible";
    public static final String PACKAGE_NAME_KEY_LEGACY_VISIBLE = "android:accounts:key_legacy_visible";
    private static final int SIGNATURE_CHECK_MATCH = 1;
    private static final int SIGNATURE_CHECK_MISMATCH = 0;
    private static final int SIGNATURE_CHECK_UID_MATCH = 2;
    private static final String TAG = "MAccountManagerService";
    public static final int VISIBILITY_NOT_VISIBLE = 3;
    public static final int VISIBILITY_UNDEFINED = 0;
    public static final int VISIBILITY_USER_MANAGED_NOT_VISIBLE = 4;
    public static final int VISIBILITY_USER_MANAGED_VISIBLE = 2;
    public static final int VISIBILITY_VISIBLE = 1;
    private final com.xinzhu.overmind.server.accounts.d mAuthenticatorCache;
    final t mHandler;
    private final com.xinzhu.overmind.server.pm.j mPackageMonitor;
    private final com.xinzhu.overmind.server.user.b mUserListener;
    private static final MindAccountManagerService sService = new MindAccountManagerService();
    private static final Account[] EMPTY_ACCOUNT_ARRAY = new Account[0];
    private static final byte[] ACCOUNTS_FILE_DATA_MAGIC = {65, 67, 67, 84};
    private static final byte[] ACCOUNTS_FILE_USER_DATA_MAGIC = {65, 67, 67, 85};
    private static final byte[] ACCOUNTS_FILE_AUTH_TOKEN_MAGIC = {65, 67, 67, 86};
    private static final byte[] ACCOUNTS_FILE_VISIBILITY_MAGIC = {65, 67, 67, 87};
    private static final byte[] ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC = {65, 67, 67, 88};
    private static final byte[] ACCOUNTS_FILE_UID_GRANT_MAGIC = {65, 67, 67, 89};
    private static final Intent ACCOUNTS_CHANGED_INTENT = new Intent("android.accounts.LOGIN_ACCOUNTS_CHANGED");
    private com.xinzhu.overmind.client.frameworks.h mUserManager = null;
    private Context mContext = Overmind.getContext();
    private final LinkedHashMap<String, x> mSessions = new LinkedHashMap<>();
    private final CopyOnWriteArrayList<v> mAppPermissionChangeListeners = new CopyOnWriteArrayList<>();
    private final SparseArray<a0> mUsers = new SparseArray<>();

    /* loaded from: classes3.dex */
    class a extends x {
        final /* synthetic */ String val$accountType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, final String val$accountType) {
            super(MindAccountManagerService.this, accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired);
            this.val$accountType = val$accountType;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.editProperties(this, this.mAccountType);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", editProperties, accountType " + this.val$accountType;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f64350a;

        /* renamed from: b  reason: collision with root package name */
        final Object f64351b = new Object();

        /* renamed from: c  reason: collision with root package name */
        private final Map<Account, MindAccount> f64352c = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        private final HashMap<Pair<Pair<Account, String>, Integer>, u> f64353d = new HashMap<>();

        /* renamed from: e  reason: collision with root package name */
        private final HashMap<Account, u> f64354e = new HashMap<>();

        /* renamed from: f  reason: collision with root package name */
        final HashMap<String, Account[]> f64355f = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        private final Map<Account, Map<String, String>> f64356g = new HashMap();

        /* renamed from: h  reason: collision with root package name */
        private final Map<Account, Map<String, String>> f64357h = new HashMap();

        /* renamed from: i  reason: collision with root package name */
        private final com.xinzhu.overmind.server.accounts.i f64358i = new com.xinzhu.overmind.server.accounts.i();

        /* renamed from: j  reason: collision with root package name */
        private final Map<Account, Map<String, Integer>> f64359j = new HashMap();

        /* renamed from: k  reason: collision with root package name */
        private final Map<String, Map<String, Integer>> f64360k = new HashMap();

        /* renamed from: l  reason: collision with root package name */
        private final Map<Account, AtomicReference<String>> f64361l = new HashMap();

        /* renamed from: m  reason: collision with root package name */
        private final List<UidGrant> f64362m = new LinkedList();

        a0(int userId) {
            this.f64350a = userId;
        }

        void l(Account account, String authTokenType, int uid) {
            synchronized (this.f64351b) {
                ListIterator<UidGrant> listIterator = this.f64362m.listIterator();
                while (listIterator.hasNext()) {
                    UidGrant next = listIterator.next();
                    if (next.f64347a == uid && next.f64348b.equals(authTokenType) && next.f64349c.equals(account)) {
                        listIterator.remove();
                    }
                }
            }
        }

        void m(int uid) {
            synchronized (this.f64351b) {
                ListIterator<UidGrant> listIterator = this.f64362m.listIterator();
                while (listIterator.hasNext()) {
                    if (listIterator.next().f64347a == uid) {
                        listIterator.remove();
                    }
                }
            }
        }

        List<Integer> n() {
            LinkedList linkedList = new LinkedList();
            synchronized (this.f64351b) {
                for (UidGrant uidGrant : this.f64362m) {
                    linkedList.add(Integer.valueOf(uidGrant.f64347a));
                }
            }
            return linkedList;
        }

        long o(int uid, String authTokenType, Account account) {
            long j4;
            synchronized (this.f64351b) {
                j4 = 0;
                for (UidGrant uidGrant : this.f64362m) {
                    if (uidGrant.f64347a == uid && uidGrant.f64348b.equals(authTokenType) && uidGrant.f64349c.equals(account)) {
                        j4++;
                    }
                }
            }
            return j4;
        }

        long p(int uid, Account account) {
            long j4;
            synchronized (this.f64351b) {
                j4 = 0;
                for (UidGrant uidGrant : this.f64362m) {
                    if (uidGrant.f64347a == uid && uidGrant.f64349c.equals(account)) {
                        j4++;
                    }
                }
            }
            return j4;
        }

        void q(Account account, String authTokenType, int uid) {
            synchronized (this.f64351b) {
                this.f64362m.add(new UidGrant(uid, authTokenType, account));
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ Bundle val$options;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticatedTime, final Account val$account, final Bundle val$options) {
            super(accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired, updateLastAuthenticatedTime);
            this.val$account = val$account;
            this.val$options = val$options;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.confirmCredentials(this, this.val$account, this.val$options);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", confirmCredentials, " + this.val$account;
        }
    }

    /* loaded from: classes3.dex */
    class c extends x {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ String val$authTokenType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, final String val$accountType, final String val$authTokenType) {
            super(MindAccountManagerService.this, accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired);
            this.val$accountType = val$accountType;
            this.val$authTokenType = val$authTokenType;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            if (result != null) {
                String string = result.getString("authTokenLabelKey");
                Bundle bundle = new Bundle();
                bundle.putString("authTokenLabelKey", string);
                super.onResult(bundle);
                return;
            }
            super.onResult(result);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.getAuthTokenLabel(this, this.val$authTokenType);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", getAuthTokenLabel, " + this.val$accountType + ", authTokenType " + this.val$authTokenType;
        }
    }

    /* loaded from: classes3.dex */
    class d extends y {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$options;
        final /* synthetic */ String[] val$requiredFeatures;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticationTime, boolean isPasswordForwardingAllowed, final String val$authTokenType, final String[] val$requiredFeatures, final Bundle val$options, final String val$accountType) {
            super(accounts, response, accountType, expectActivityLaunch, accountName, authDetailsRequired, updateLastAuthenticationTime, isPasswordForwardingAllowed);
            this.val$authTokenType = val$authTokenType;
            this.val$requiredFeatures = val$requiredFeatures;
            this.val$options = val$options;
            this.val$accountType = val$accountType;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.startAddAccountSession(this, this.mAccountType, this.val$authTokenType, this.val$requiredFeatures, this.val$options);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            String join = TextUtils.join(",", this.val$requiredFeatures);
            StringBuilder sb = new StringBuilder();
            sb.append(super.toDebugString(now));
            sb.append(", startAddAccountSession, accountType ");
            sb.append(this.val$accountType);
            sb.append(", requiredFeatures ");
            if (this.val$requiredFeatures == null) {
                join = null;
            }
            sb.append(join);
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    class e extends y {
        final /* synthetic */ Account val$account;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$loginOptions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticationTime, boolean isPasswordForwardingAllowed, final Account val$account, final String val$authTokenType, final Bundle val$loginOptions) {
            super(accounts, response, accountType, expectActivityLaunch, accountName, authDetailsRequired, updateLastAuthenticationTime, isPasswordForwardingAllowed);
            this.val$account = val$account;
            this.val$authTokenType = val$authTokenType;
            this.val$loginOptions = val$loginOptions;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.startUpdateCredentialsSession(this, this.val$account, this.val$authTokenType, this.val$loginOptions);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            Bundle bundle = this.val$loginOptions;
            if (bundle != null) {
                bundle.keySet();
            }
            return super.toDebugString(now) + ", startUpdateCredentialsSession, " + this.val$account + ", authTokenType " + this.val$authTokenType + ", loginOptions " + this.val$loginOptions;
        }
    }

    /* loaded from: classes3.dex */
    class f extends x {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ Bundle val$decryptedBundle;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticatedTime, final Bundle val$decryptedBundle, final String val$accountType) {
            super(accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired, updateLastAuthenticatedTime);
            this.val$decryptedBundle = val$decryptedBundle;
            this.val$accountType = val$accountType;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.finishSession(this, this.mAccountType, this.val$decryptedBundle);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", finishSession, accountType " + this.val$accountType;
        }
    }

    /* loaded from: classes3.dex */
    class g extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ String val$statusToken;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, final Account val$account, final String val$statusToken) {
            super(MindAccountManagerService.this, accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired);
            this.val$account = val$account;
            this.val$statusToken = val$statusToken;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose == null) {
                return;
            }
            if (result == null) {
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, 5, "null bundle");
                return;
            }
            if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
            }
            if (result.getInt("errorCode", -1) > 0) {
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, result.getInt("errorCode"), result.getString("errorMessage"));
            } else if (!result.containsKey("booleanResult")) {
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, 5, "no result in response");
            } else {
                Bundle bundle = new Bundle();
                bundle.putBoolean("booleanResult", result.getBoolean("booleanResult", false));
                MindAccountManagerService.this.sendResponse(responseAndClose, bundle);
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.isCredentialsUpdateSuggested(this, this.val$account, this.val$statusToken);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", isCredentialsUpdateSuggested, " + this.val$account;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends IAccountAuthenticatorResponse.Stub {
        final /* synthetic */ Account val$account;
        final /* synthetic */ RemoteCallback val$callback;
        final /* synthetic */ String val$packageName;
        final /* synthetic */ int val$uid;

        h(final Account val$account, final int val$uid, final String val$packageName, final RemoteCallback val$callback) {
            this.val$account = val$account;
            this.val$uid = val$uid;
            this.val$packageName = val$packageName;
            this.val$callback = val$callback;
        }

        private void handleAuthenticatorResponse(boolean accessGranted) {
            MindAccountManagerService mindAccountManagerService = MindAccountManagerService.this;
            mindAccountManagerService.cancelNotification(mindAccountManagerService.getCredentialPermissionNotificationId(this.val$account, MindAccountManagerService.ACCOUNT_ACCESS_TOKEN_TYPE, this.val$uid), this.val$packageName, MindUserHandle.j(this.val$uid));
            if (this.val$callback != null) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("booleanResult", accessGranted);
                this.val$callback.sendResult(bundle);
            }
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onError(int errorCode, String errorMessage) {
            handleAuthenticatorResponse(false);
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onRequestContinued() {
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle value) {
            handleAuthenticatorResponse(true);
        }
    }

    /* loaded from: classes3.dex */
    class i implements com.xinzhu.overmind.server.user.b {
        i() {
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void a(int userId) {
            MindAccountManagerService.this.purgeUserData(userId);
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void b(int userId) {
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void c(int userId) {
        }
    }

    /* loaded from: classes3.dex */
    class j implements com.xinzhu.overmind.server.pm.j {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f64365a;

            a(final String val$packageName) {
                this.f64365a = val$packageName;
            }

            @Override // java.lang.Runnable
            public void run() {
                MindAccountManagerService.this.purgeOldGrantsAll();
                MindAccountManagerService.this.removeVisibilityValuesForPackage(this.f64365a);
            }
        }

        j() {
        }

        @Override // com.xinzhu.overmind.server.pm.j
        public void a(String packageName, int userId) {
            MindAccountManagerService.this.mHandler.post(new a(packageName));
        }

        @Override // com.xinzhu.overmind.server.pm.j
        public void b(String packageName, int userId) {
        }

        @Override // com.xinzhu.overmind.server.pm.j
        public void c(String packageName, int userId) {
        }
    }

    /* loaded from: classes3.dex */
    class k extends IAccountManagerResponse.Stub {
        final /* synthetic */ String val$opPackageName;
        final /* synthetic */ IAccountManagerResponse val$response;

        k(final IAccountManagerResponse val$response, final String val$opPackageName) {
            this.val$response = val$response;
            this.val$opPackageName = val$opPackageName;
        }

        @Override // android.accounts.IAccountManagerResponse
        public void onError(int errorCode, String errorMessage) {
        }

        @Override // android.accounts.IAccountManagerResponse
        public void onResult(Bundle value) {
            Parcelable[] parcelableArray = value.getParcelableArray("accounts");
            Account[] accountArr = new Account[parcelableArray.length];
            for (int i2 = 0; i2 < parcelableArray.length; i2++) {
                accountArr[i2] = (Account) parcelableArray[i2];
            }
            MindAccountManagerService.this.handleGetAccountsResult(this.val$response, accountArr, this.val$opPackageName);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ Bundle val$accountCredentials;
        final /* synthetic */ int val$parentUserId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, final Account val$account, final int val$parentUserId, final Bundle val$accountCredentials) {
            super(MindAccountManagerService.this, accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired);
            this.val$account = val$account;
            this.val$parentUserId = val$parentUserId;
            this.val$accountCredentials = val$accountCredentials;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onError(int errorCode, String errorMessage) {
            super.onError(errorCode, errorMessage);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            super.onResult(result);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            for (Account account : MindAccountManagerService.this.getAccounts(this.val$parentUserId, q.a.f73954a)) {
                if (account.equals(this.val$account)) {
                    this.mAuthenticator.addAccountFromCredentials(this, this.val$account, this.val$accountCredentials);
                    return;
                }
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", getAccountCredentialsForClone, " + this.val$account.type;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ IAccountManagerResponse val$response;
        final /* synthetic */ a0 val$toAccounts;
        final /* synthetic */ int val$userFrom;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, final Account val$account, final IAccountManagerResponse val$response, final a0 val$toAccounts, final int val$userFrom) {
            super(MindAccountManagerService.this, accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired);
            this.val$account = val$account;
            this.val$response = val$response;
            this.val$toAccounts = val$toAccounts;
            this.val$userFrom = val$userFrom;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            if (result != null && result.getBoolean("booleanResult", false)) {
                MindAccountManagerService.this.completeCloningAccount(this.val$response, result, this.val$account, this.val$toAccounts, this.val$userFrom);
            } else {
                super.onResult(result);
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.getAccountCredentialsForCloning(this, this.val$account);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", getAccountCredentialsForClone, " + this.val$account.type;
        }
    }

    /* loaded from: classes3.dex */
    class n extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ a0 val$accounts;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ String val$callerPkg;
        final /* synthetic */ byte[] val$callerPkgSigDigest;
        final /* synthetic */ int val$callerUid;
        final /* synthetic */ boolean val$customTokens;
        final /* synthetic */ Bundle val$loginOptions;
        final /* synthetic */ boolean val$notifyOnAuthFailure;
        final /* synthetic */ boolean val$permissionGranted;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, final Bundle val$loginOptions, final Account val$account, final String val$authTokenType, final boolean val$notifyOnAuthFailure, final boolean val$permissionGranted, final int val$callerUid, final boolean val$customTokens, final String val$callerPkg, final byte[] val$callerPkgSigDigest, final a0 val$accounts) {
            super(MindAccountManagerService.this, accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired);
            this.val$loginOptions = val$loginOptions;
            this.val$account = val$account;
            this.val$authTokenType = val$authTokenType;
            this.val$notifyOnAuthFailure = val$notifyOnAuthFailure;
            this.val$permissionGranted = val$permissionGranted;
            this.val$callerUid = val$callerUid;
            this.val$customTokens = val$customTokens;
            this.val$callerPkg = val$callerPkg;
            this.val$callerPkgSigDigest = val$callerPkgSigDigest;
            this.val$accounts = val$accounts;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            if (result != null) {
                if (result.containsKey("authTokenLabelKey")) {
                    Intent newGrantCredentialsPermissionIntent = MindAccountManagerService.this.newGrantCredentialsPermissionIntent(this.val$account, null, this.val$callerUid, (AccountAuthenticatorResponse) com.xinzhu.haunted.android.accounts.b.b(this).f62382a, this.val$authTokenType, true);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("intent", newGrantCredentialsPermissionIntent);
                    onResult(bundle);
                    return;
                }
                String string = result.getString("authtoken");
                if (string != null) {
                    String string2 = result.getString("authAccount");
                    String string3 = result.getString("accountType");
                    if (!TextUtils.isEmpty(string3) && !TextUtils.isEmpty(string2)) {
                        Account account = new Account(string2, string3);
                        if (!this.val$customTokens) {
                            MindAccountManagerService.this.saveAuthTokenToDatabase(this.mAccounts, account, this.val$authTokenType, string);
                        }
                        long j4 = result.getLong(MindAccountManagerService.KEY_CUSTOM_TOKEN_EXPIRY, 0L);
                        if (this.val$customTokens && j4 > System.currentTimeMillis()) {
                            MindAccountManagerService.this.saveCachedToken(this.mAccounts, this.val$account, this.val$callerPkg, this.val$callerPkgSigDigest, this.val$authTokenType, string, j4);
                        }
                    } else {
                        onError(5, "the type and name should not be empty");
                        return;
                    }
                }
                Intent intent = (Intent) result.getParcelable("intent");
                if (intent != null && this.val$notifyOnAuthFailure && !this.val$customTokens) {
                    if (checkKeyIntent(BinderHelper.b().f64329b, intent)) {
                        MindAccountManagerService.this.doNotification(this.mAccounts, this.val$account, result.getString("authFailedMessage"), intent, q.a.f73954a, this.val$accounts.f64350a);
                    } else {
                        onError(5, "invalid intent in bundle returned");
                        return;
                    }
                }
            }
            super.onResult(result);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            if (!this.val$permissionGranted) {
                this.mAuthenticator.getAuthTokenLabel(this, this.val$authTokenType);
            } else {
                this.mAuthenticator.getAuthToken(this, this.val$account, this.val$authTokenType, this.val$loginOptions);
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            Bundle bundle = this.val$loginOptions;
            if (bundle != null) {
                bundle.keySet();
            }
            return super.toDebugString(now) + ", getAuthToken, " + this.val$account + ", authTokenType " + this.val$authTokenType + ", loginOptions " + this.val$loginOptions + ", notifyOnAuthFailure " + this.val$notifyOnAuthFailure;
        }
    }

    /* loaded from: classes3.dex */
    class o extends x {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$options;
        final /* synthetic */ String[] val$requiredFeatures;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticatedTime, final String val$authTokenType, final String[] val$requiredFeatures, final Bundle val$options, final String val$accountType) {
            super(accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired, updateLastAuthenticatedTime);
            this.val$authTokenType = val$authTokenType;
            this.val$requiredFeatures = val$requiredFeatures;
            this.val$options = val$options;
            this.val$accountType = val$accountType;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.addAccount(this, this.mAccountType, this.val$authTokenType, this.val$requiredFeatures, this.val$options);
            com.xinzhu.overmind.b.c(MindAccountManagerService.TAG, "session addaccount finish");
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", addAccount, accountType " + this.val$accountType + ", requiredFeatures " + Arrays.toString(this.val$requiredFeatures);
        }
    }

    /* loaded from: classes3.dex */
    class p extends x {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$options;
        final /* synthetic */ String[] val$requiredFeatures;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticatedTime, final String val$authTokenType, final String[] val$requiredFeatures, final Bundle val$options, final String val$accountType) {
            super(accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired, updateLastAuthenticatedTime);
            this.val$authTokenType = val$authTokenType;
            this.val$requiredFeatures = val$requiredFeatures;
            this.val$options = val$options;
            this.val$accountType = val$accountType;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.addAccount(this, this.mAccountType, this.val$authTokenType, this.val$requiredFeatures, this.val$options);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toDebugString(now));
            sb.append(", addAccount, accountType ");
            sb.append(this.val$accountType);
            sb.append(", requiredFeatures ");
            String[] strArr = this.val$requiredFeatures;
            sb.append(strArr != null ? TextUtils.join(",", strArr) : null);
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    class q extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$loginOptions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticatedTime, final Account val$account, final String val$authTokenType, final Bundle val$loginOptions) {
            super(accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired, updateLastAuthenticatedTime);
            this.val$account = val$account;
            this.val$authTokenType = val$authTokenType;
            this.val$loginOptions = val$loginOptions;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.updateCredentials(this, this.val$account, this.val$authTokenType, this.val$loginOptions);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            Bundle bundle = this.val$loginOptions;
            if (bundle != null) {
                bundle.keySet();
            }
            return super.toDebugString(now) + ", updateCredentials, " + this.val$account + ", authTokenType " + this.val$authTokenType + ", loginOptions " + this.val$loginOptions;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class r {

        /* renamed from: a  reason: collision with root package name */
        public Account f64367a;

        /* renamed from: b  reason: collision with root package name */
        public int f64368b;

        public r(Account account, int userId) {
            this.f64367a = account;
            this.f64368b = userId;
        }

        public boolean equals(Object o3) {
            if (this == o3) {
                return true;
            }
            if (o3 instanceof r) {
                r rVar = (r) o3;
                return this.f64367a.equals(rVar.f64367a) && this.f64368b == rVar.f64368b;
            }
            return false;
        }

        public int hashCode() {
            return this.f64367a.hashCode() + this.f64368b;
        }

        public String toString() {
            return this.f64367a.toString() + " u" + this.f64368b;
        }
    }

    /* loaded from: classes3.dex */
    private class s extends x {
        private volatile Account[] mAccountsOfType;
        private volatile ArrayList<Account> mAccountsWithFeatures;
        private final int mCallingUid;
        private volatile int mCurrentAccount;
        private final String[] mFeatures;
        private final boolean mIncludeManagedNotVisible;
        private final String mPackageName;

        public s(a0 accounts, IAccountManagerResponse response, String type, String[] features, int callingUid, String packageName, boolean includeManagedNotVisible) {
            super(MindAccountManagerService.this, accounts, response, type, false, true, null, false);
            this.mAccountsOfType = null;
            this.mAccountsWithFeatures = null;
            this.mCurrentAccount = 0;
            this.mCallingUid = callingUid;
            this.mFeatures = features;
            this.mPackageName = packageName;
            this.mIncludeManagedNotVisible = includeManagedNotVisible;
        }

        public void checkAccount() {
            if (this.mCurrentAccount >= this.mAccountsOfType.length) {
                sendResult();
                return;
            }
            IAccountAuthenticator iAccountAuthenticator = this.mAuthenticator;
            if (iAccountAuthenticator == null) {
                if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, "checkAccount: aborting session since we are no longer connected to the authenticator, " + toDebugString());
                    return;
                }
                return;
            }
            try {
                iAccountAuthenticator.hasFeatures(this, this.mAccountsOfType[this.mCurrentAccount], this.mFeatures);
            } catch (RemoteException unused) {
                onError(1, "remote exception");
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            this.mNumResults++;
            if (result == null) {
                onError(5, "null bundle");
                return;
            }
            if (result.getBoolean("booleanResult", false)) {
                this.mAccountsWithFeatures.add(this.mAccountsOfType[this.mCurrentAccount]);
            }
            this.mCurrentAccount++;
            checkAccount();
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAccountsOfType = MindAccountManagerService.this.getAccountsFromCache(this.mAccounts, this.mAccountType, this.mCallingUid, this.mPackageName, this.mIncludeManagedNotVisible);
            this.mAccountsWithFeatures = new ArrayList<>(this.mAccountsOfType.length);
            this.mCurrentAccount = 0;
            checkAccount();
        }

        public void sendResult() {
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    int size = this.mAccountsWithFeatures.size();
                    Account[] accountArr = new Account[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        accountArr[i2] = this.mAccountsWithFeatures.get(i2);
                    }
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                    }
                    Bundle bundle = new Bundle();
                    bundle.putParcelableArray("accounts", accountArr);
                    responseAndClose.onResult(bundle);
                } catch (RemoteException e4) {
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.j(MindAccountManagerService.TAG, "failure while notifying response", e4);
                    }
                }
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toDebugString(now));
            sb.append(", getAccountsByTypeAndFeatures, ");
            String[] strArr = this.mFeatures;
            sb.append(strArr != null ? TextUtils.join(",", strArr) : null);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t extends Handler {
        t(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i2 = msg.what;
            if (i2 == 3) {
                ((x) msg.obj).onTimedOut();
            } else if (i2 == 4) {
                MindAccountManagerService.this.copyAccountToUser(null, (Account) msg.obj, msg.arg1, msg.arg2);
            } else {
                throw new IllegalStateException("unhandled message: " + msg.what);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class u {

        /* renamed from: a  reason: collision with root package name */
        final String f64370a;

        /* renamed from: b  reason: collision with root package name */
        private final int f64371b;

        u(String tag, int type) {
            this.f64370a = tag;
            this.f64371b = type;
        }
    }

    /* loaded from: classes3.dex */
    public interface v {
        void a(Account account, int uid);
    }

    /* loaded from: classes3.dex */
    private class w extends x {
        final Account mAccount;

        public w(a0 accounts, IAccountManagerResponse response, Account account, boolean expectActivityLaunch) {
            super(MindAccountManagerService.this, accounts, response, account.type, expectActivityLaunch, true, account.name, false);
            this.mAccount = account;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            if (result != null && result.containsKey("booleanResult") && !result.containsKey("intent")) {
                if (result.getBoolean("booleanResult")) {
                    MindAccountManagerService.this.removeAccountInternal(this.mAccounts, this.mAccount, Binder.getCallingUid());
                }
                IAccountManagerResponse responseAndClose = getResponseAndClose();
                if (responseAndClose != null) {
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                    }
                    try {
                        responseAndClose.onResult(result);
                    } catch (RemoteException e4) {
                        com.xinzhu.overmind.utils.u.d(MindAccountManagerService.TAG, "Error calling onResult()", e4);
                    }
                }
            }
            super.onResult(result);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.getAccountRemovalAllowed(this, this.mAccount);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            return super.toDebugString(now) + ", removeAccount, account " + this.mAccount;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public abstract class x extends IAccountAuthenticatorResponse.Stub implements IBinder.DeathRecipient, ServiceConnection {
        final String mAccountName;
        final String mAccountType;
        protected final a0 mAccounts;
        final boolean mAuthDetailsRequired;
        IAccountAuthenticator mAuthenticator;
        final long mCreationTime;
        final boolean mExpectActivityLaunch;
        private int mNumErrors;
        private int mNumRequestContinued;
        public int mNumResults;
        IAccountManagerResponse mResponse;
        private final boolean mStripAuthTokenFromResult;
        final boolean mUpdateLastAuthenticatedTime;

        public x(final MindAccountManagerService this$0, a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired) {
            this(accounts, response, accountType, expectActivityLaunch, stripAuthTokenFromResult, accountName, authDetailsRequired, false);
        }

        private boolean bindToAuthenticator(String authenticatorType) {
            l.d<AuthenticatorDescription> d4 = MindAccountManagerService.this.mAuthenticatorCache.d(AuthenticatorDescription.newKey(authenticatorType), this.mAccounts.f64350a);
            if (d4 == null) {
                if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, "there is no authenticator for " + authenticatorType + ", bailing out");
                }
                return false;
            }
            Intent intent = new Intent();
            intent.setAction("android.accounts.AccountAuthenticator");
            intent.setComponent(d4.f64639c);
            if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, "performing bindService to " + d4.f64639c);
            }
            try {
                MindAccountManagerService.this.mContext.bindService(com.xinzhu.overmind.server.am.f.get().bindService(intent, this, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), this.mAccounts.f64350a), this, 1);
                return true;
            } catch (RemoteException unused) {
                if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, "bindService to " + d4.f64639c + " failed");
                }
                return false;
            }
        }

        private void close() {
            synchronized (MindAccountManagerService.this.mSessions) {
                if (MindAccountManagerService.this.mSessions.remove(toString()) == null) {
                    return;
                }
                IAccountManagerResponse iAccountManagerResponse = this.mResponse;
                if (iAccountManagerResponse != null) {
                    iAccountManagerResponse.asBinder().unlinkToDeath(this, 0);
                    this.mResponse = null;
                }
                cancelTimeout();
                unbind();
            }
        }

        private void unbind() {
            if (this.mAuthenticator != null) {
                this.mAuthenticator = null;
                try {
                    com.xinzhu.overmind.server.am.f.get().unbindService(this, MindUserHandle.k(1000));
                    MindAccountManagerService.this.mContext.unbindService(this);
                } catch (RemoteException unused) {
                }
            }
        }

        void bind() {
            if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, "initiating bind to authenticator type " + this.mAccountType);
            }
            if (bindToAuthenticator(this.mAccountType)) {
                return;
            }
            com.xinzhu.overmind.utils.m.a(MindAccountManagerService.TAG, "bind attempt failed for " + toDebugString());
            onError(1, "bind failure");
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.mResponse = null;
            close();
        }

        public void cancelTimeout() {
            MindAccountManagerService.this.mHandler.removeMessages(3, this);
        }

        protected boolean checkKeyIntent(int authUid, Intent intent) {
            if (intent.getClipData() == null) {
                intent.setClipData(ClipData.newPlainText(null, null));
            }
            intent.setFlags(intent.getFlags() & (-196));
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                com.xinzhu.overmind.server.pm.h hVar = com.xinzhu.overmind.server.pm.h.get();
                ResolveInfo resolveActivity = hVar.resolveActivity(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), this.mAccounts.f64350a);
                if (resolveActivity == null) {
                    return false;
                }
                ActivityInfo activityInfo = resolveActivity.activityInfo;
                if (hVar.hasSignatureCapability(activityInfo.applicationInfo.uid, authUid, 16)) {
                    return true;
                }
                com.xinzhu.overmind.utils.m.c(MindAccountManagerService.TAG, String.format("KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s).", activityInfo.name, activityInfo.packageName, this.mAccountType));
                return false;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        IAccountManagerResponse getResponseAndClose() {
            IAccountManagerResponse iAccountManagerResponse = this.mResponse;
            if (iAccountManagerResponse == null) {
                return null;
            }
            close();
            return iAccountManagerResponse;
        }

        public void onError(int errorCode, String errorMessage) {
            this.mNumErrors++;
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onError() on response " + responseAndClose);
                }
                try {
                    responseAndClose.onError(errorCode, errorMessage);
                } catch (RemoteException e4) {
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.j(MindAccountManagerService.TAG, "Session.onError: caught RemoteException while responding", e4);
                    }
                }
            } else if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, "Session.onError: already closed");
            }
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onRequestContinued() {
            this.mNumRequestContinued++;
        }

        public void onResult(Bundle result) {
            Intent intent;
            IAccountManagerResponse responseAndClose;
            MindAccount mindAccount;
            boolean z3 = true;
            this.mNumResults++;
            if (result != null) {
                boolean z4 = result.getBoolean("booleanResult", false);
                boolean z5 = result.containsKey("authAccount") && result.containsKey("accountType");
                if (!this.mUpdateLastAuthenticatedTime || (!z4 && !z5)) {
                    z3 = false;
                }
                if (z3 || this.mAuthDetailsRequired) {
                    boolean isAccountPresentForCaller = MindAccountManagerService.this.isAccountPresentForCaller(this.mAccountName, this.mAccountType);
                    if (z3 && isAccountPresentForCaller) {
                        MindAccountManagerService.this.updateLastAuthenticatedTime(new Account(this.mAccountName, this.mAccountType));
                    }
                    if (this.mAuthDetailsRequired) {
                        long j4 = -1;
                        if (isAccountPresentForCaller && (mindAccount = (MindAccount) this.mAccounts.f64352c.get(new Account(this.mAccountName, this.mAccountType))) != null) {
                            j4 = mindAccount.f64346c;
                        }
                        result.putLong(MindAccountManagerService.KEY_LAST_AUTHENTICATED_TIME, j4);
                    }
                }
            }
            if (result != null) {
                intent = (Intent) result.getParcelable("intent");
                if (intent != null) {
                    if (!checkKeyIntent(BinderHelper.b().f64329b, intent)) {
                        onError(5, "invalid intent in bundle returned");
                        return;
                    }
                    PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(TypedValues.AttributesType.S_TARGET);
                }
            } else {
                intent = null;
            }
            if (result != null && !TextUtils.isEmpty(result.getString("authtoken"))) {
                String string = result.getString("authAccount");
                String string2 = result.getString("accountType");
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                    Account account = new Account(string, string2);
                    MindAccountManagerService mindAccountManagerService = MindAccountManagerService.this;
                    mindAccountManagerService.cancelNotification(mindAccountManagerService.getSigninRequiredNotificationId(this.mAccounts, account), new MindUserHandle(this.mAccounts.f64350a));
                }
            }
            if (this.mExpectActivityLaunch && result != null && result.containsKey("intent")) {
                responseAndClose = this.mResponse;
            } else {
                responseAndClose = getResponseAndClose();
            }
            if (responseAndClose != null) {
                try {
                    if (result == null) {
                        if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                            com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onError() on response " + responseAndClose);
                        }
                        responseAndClose.onError(5, "null bundle returned");
                        return;
                    }
                    if (this.mStripAuthTokenFromResult) {
                        result.remove("authtoken");
                    }
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                    }
                    if (result.getInt("errorCode", -1) > 0 && intent == null) {
                        responseAndClose.onError(result.getInt("errorCode"), result.getString("errorMessage"));
                    } else {
                        responseAndClose.onResult(result);
                    }
                } catch (RemoteException e4) {
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.j(MindAccountManagerService.TAG, "failure while notifying response", e4);
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            this.mAuthenticator = IAccountAuthenticator.Stub.asInterface(service);
            try {
                run();
            } catch (RemoteException unused) {
                onError(1, "remote exception");
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            this.mAuthenticator = null;
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    responseAndClose.onError(1, NetworkUtil.NETWORK_CLASS_DISCONNECTED);
                } catch (RemoteException e4) {
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.j(MindAccountManagerService.TAG, "Session.onServiceDisconnected: caught RemoteException while responding", e4);
                    }
                }
            }
        }

        public void onTimedOut() {
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    responseAndClose.onError(1, "timeout");
                } catch (RemoteException e4) {
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.j(MindAccountManagerService.TAG, "Session.onTimedOut: caught RemoteException while responding", e4);
                    }
                }
            }
        }

        public abstract void run() throws RemoteException;

        protected String toDebugString() {
            return toDebugString(SystemClock.elapsedRealtime());
        }

        public x(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, boolean stripAuthTokenFromResult, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticatedTime) {
            this.mNumResults = 0;
            this.mNumRequestContinued = 0;
            this.mNumErrors = 0;
            this.mAuthenticator = null;
            if (accountType != null) {
                this.mAccounts = accounts;
                this.mStripAuthTokenFromResult = stripAuthTokenFromResult;
                this.mResponse = response;
                this.mAccountType = accountType;
                this.mExpectActivityLaunch = expectActivityLaunch;
                this.mCreationTime = SystemClock.elapsedRealtime();
                this.mAccountName = accountName;
                this.mAuthDetailsRequired = authDetailsRequired;
                this.mUpdateLastAuthenticatedTime = updateLastAuthenticatedTime;
                synchronized (MindAccountManagerService.this.mSessions) {
                    MindAccountManagerService.this.mSessions.put(toString(), this);
                }
                if (response != null) {
                    try {
                        response.asBinder().linkToDeath(this, 0);
                        return;
                    } catch (RemoteException unused) {
                        this.mResponse = null;
                        binderDied();
                        return;
                    }
                }
                return;
            }
            throw new IllegalArgumentException("accountType is null");
        }

        protected String toDebugString(long now) {
            StringBuilder sb = new StringBuilder();
            sb.append("Session: expectLaunch ");
            sb.append(this.mExpectActivityLaunch);
            sb.append(", connected ");
            sb.append(this.mAuthenticator != null);
            sb.append(", stats (");
            sb.append(this.mNumResults);
            sb.append(net.lingala.zip4j.util.e.F0);
            sb.append(this.mNumRequestContinued);
            sb.append(net.lingala.zip4j.util.e.F0);
            sb.append(this.mNumErrors);
            sb.append("), lifetime ");
            double d4 = now - this.mCreationTime;
            Double.isNaN(d4);
            sb.append(d4 / 1000.0d);
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    private abstract class y extends x {
        private final boolean mIsPasswordForwardingAllowed;

        public y(a0 accounts, IAccountManagerResponse response, String accountType, boolean expectActivityLaunch, String accountName, boolean authDetailsRequired, boolean updateLastAuthenticationTime, boolean isPasswordForwardingAllowed) {
            super(accounts, response, accountType, expectActivityLaunch, true, accountName, authDetailsRequired, updateLastAuthenticationTime);
            this.mIsPasswordForwardingAllowed = isPasswordForwardingAllowed;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            Intent intent;
            IAccountManagerResponse responseAndClose;
            this.mNumResults++;
            if (result != null) {
                intent = (Intent) result.getParcelable("intent");
                if (intent != null && !checkKeyIntent(BinderHelper.b().f64329b, intent)) {
                    onError(5, "invalid intent in bundle returned");
                    return;
                }
            } else {
                intent = null;
            }
            if (this.mExpectActivityLaunch && result != null && result.containsKey("intent")) {
                responseAndClose = this.mResponse;
            } else {
                responseAndClose = getResponseAndClose();
            }
            if (responseAndClose == null) {
                return;
            }
            if (result == null) {
                if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onError() on response " + responseAndClose);
                }
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, 5, "null bundle returned");
            } else if (result.getInt("errorCode", -1) > 0 && intent == null) {
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, result.getInt("errorCode"), result.getString("errorMessage"));
            } else {
                if (!this.mIsPasswordForwardingAllowed) {
                    result.remove(GameRoomActivity_.f36433y2);
                }
                result.remove("authtoken");
                if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                }
                Bundle bundle = result.getBundle(MindAccountManagerService.KEY_ACCOUNT_SESSION_BUNDLE);
                if (bundle != null) {
                    String string = bundle.getString("accountType");
                    if (TextUtils.isEmpty(string) || !this.mAccountType.equalsIgnoreCase(string)) {
                        com.xinzhu.overmind.utils.m.k(MindAccountManagerService.TAG, "Account type in session bundle doesn't match request.");
                    }
                    bundle.putString("accountType", this.mAccountType);
                    try {
                        result.putBundle(MindAccountManagerService.KEY_ACCOUNT_SESSION_BUNDLE, com.xinzhu.overmind.server.accounts.c.e().d(bundle));
                    } catch (GeneralSecurityException e4) {
                        if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 3)) {
                            com.xinzhu.overmind.utils.m.j(MindAccountManagerService.TAG, "Failed to encrypt session bundle!", e4);
                        }
                        MindAccountManagerService.this.sendErrorResponse(responseAndClose, 5, "failed to encrypt session bundle");
                        return;
                    }
                }
                MindAccountManagerService.this.sendResponse(responseAndClose, result);
            }
        }
    }

    /* loaded from: classes3.dex */
    private class z extends x {
        private final Account mAccount;
        private final String[] mFeatures;

        public z(a0 accounts, IAccountManagerResponse response, Account account, String[] features) {
            super(MindAccountManagerService.this, accounts, response, account.type, false, true, account.name, false);
            this.mFeatures = features;
            this.mAccount = account;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle result) {
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    if (result == null) {
                        responseAndClose.onError(5, "null bundle");
                        return;
                    }
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                    }
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("booleanResult", result.getBoolean("booleanResult", false));
                    responseAndClose.onResult(bundle);
                } catch (RemoteException e4) {
                    if (com.xinzhu.overmind.utils.m.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.m.j(MindAccountManagerService.TAG, "failure while notifying response", e4);
                    }
                }
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            try {
                this.mAuthenticator.hasFeatures(this, this.mAccount, this.mFeatures);
            } catch (RemoteException unused) {
                onError(1, "remote exception");
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long now) {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toDebugString(now));
            sb.append(", hasFeatures, ");
            sb.append(this.mAccount);
            sb.append(", ");
            String[] strArr = this.mFeatures;
            sb.append(strArr != null ? TextUtils.join(",", strArr) : null);
            return sb.toString();
        }
    }

    public MindAccountManagerService() {
        i iVar = new i();
        this.mUserListener = iVar;
        j jVar = new j();
        this.mPackageMonitor = jVar;
        this.mAuthenticatorCache = new com.xinzhu.overmind.server.accounts.a(Overmind.getContext());
        com.xinzhu.overmind.server.h hVar = new com.xinzhu.overmind.server.h(TAG, -2, true);
        hVar.start();
        this.mHandler = new t(hVar.getLooper());
        com.xinzhu.overmind.server.user.c.get().registerListener(iVar);
        com.xinzhu.overmind.server.pm.h.get().addPackageMonitor(jVar);
    }

    private boolean accountExistsCache(a0 accounts, Account account) {
        Account[] accountArr;
        synchronized (accounts.f64352c) {
            if (accounts.f64355f.containsKey(account.type) && (accountArr = accounts.f64355f.get(account.type)) != null) {
                for (Account account2 : accountArr) {
                    if (account2.name.equals(account.name)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private boolean accountTypeManagesContacts(String accountType, int userId) {
        if (accountType == null) {
            return false;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Collection<l.d<AuthenticatorDescription>> e4 = this.mAuthenticatorCache.e(userId);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            for (l.d<AuthenticatorDescription> dVar : e4) {
                if (accountType.equals(dVar.f64637a.type)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    private boolean addAccountInternal(a0 accounts, Account account, String password, Bundle extras, int callingUid, Map<String, Integer> packageToVisibility) {
        if (account == null) {
            return false;
        }
        synchronized (accounts.f64351b) {
            MindAccount mindAccount = new MindAccount(account);
            if (accounts.f64352c.containsKey(account)) {
                com.xinzhu.overmind.utils.m.k(TAG, "insertAccountIntoDatabase: " + account + ", skipping since the account already exists");
                return false;
            }
            mindAccount.f64345b = password;
            accounts.f64352c.put(account, mindAccount);
            saveAccountDataLocked(accounts);
            if (extras != null) {
                HashMap hashMap = new HashMap();
                for (String str : extras.keySet()) {
                    hashMap.put(str, extras.getString(str));
                }
                accounts.f64356g.put(account, hashMap);
                saveAccountUserDataLocked(accounts);
            }
            if (packageToVisibility != null) {
                for (Map.Entry<String, Integer> entry : packageToVisibility.entrySet()) {
                    setAccountVisibility(account, entry.getKey(), entry.getValue().intValue(), false, accounts);
                }
            }
            insertAccountIntoCacheLocked(accounts, account);
            sendNotificationAccountUpdated(account, accounts);
            sendAccountsChangedBroadcast(accounts.f64350a);
            return true;
        }
    }

    private byte[] calculatePackageSignatureDigest(String callerPkg) {
        MessageDigest messageDigest;
        int i2;
        PackageInfo packageInfo;
        try {
            messageDigest = MessageDigest.getInstance("SHA-256");
            packageInfo = com.xinzhu.overmind.server.pm.h.get().getPackageInfo(callerPkg, 64, 0);
        } catch (NoSuchAlgorithmException e4) {
            com.xinzhu.overmind.utils.m.o(TAG, "SHA-256 should be available", e4);
            messageDigest = null;
        }
        if (packageInfo == null) {
            com.xinzhu.overmind.utils.m.k(TAG, "Could not find packageinfo for: " + callerPkg);
            return null;
        }
        for (Signature signature : packageInfo.signatures) {
            messageDigest.update(signature.toByteArray());
        }
        if (messageDigest == null) {
            return null;
        }
        return messageDigest.digest();
    }

    private boolean canUserModifyAccounts(int userId, int callingUid) {
        return MindUserHandle.k(callingUid) == userId;
    }

    private boolean canUserModifyAccountsForType(int userId, String accountType, int callingUid) {
        return MindUserHandle.k(callingUid) == userId;
    }

    private void cancelAccountAccessRequestNotificationIfNeeded(int uid, boolean checkAccess) {
        for (Account account : getAccountsAsUser(null, MindUserHandle.k(uid), q.a.f73954a)) {
            cancelAccountAccessRequestNotificationIfNeeded(account, uid, checkAccess);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelNotification(u id, MindUserHandle user) {
        cancelNotification(id, Overmind.getContext().getPackageName(), user);
    }

    private int checkPackageSignature(String accountType, int callingUid, int userId) {
        if (accountType == null) {
            return 0;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Collection<l.d<AuthenticatorDescription>> e4 = this.mAuthenticatorCache.e(userId);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            for (l.d<AuthenticatorDescription> dVar : e4) {
                if (accountType.equals(dVar.f64637a.type)) {
                    if (dVar.f64640d == callingUid) {
                        return 2;
                    }
                    if (com.xinzhu.overmind.server.pm.h.get().hasSignatureCapability(dVar.f64640d, callingUid, 16)) {
                        return 1;
                    }
                }
            }
            return 0;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    private void checkReadAccountsPermitted(int callingUid, String accountType, int userId, String opPackageName) {
        if (isAccountVisibleToCaller(accountType, callingUid, userId, opPackageName)) {
            return;
        }
        String format = String.format("caller uid %s cannot access %s accounts", Integer.valueOf(callingUid), accountType);
        com.xinzhu.overmind.utils.m.k(TAG, "  " + format);
        throw new SecurityException(format);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeCloningAccount(IAccountManagerResponse response, final Bundle accountCredentials, final Account account, final a0 targetUser, final int parentUserId) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new l(targetUser, response, account.type, false, false, account.name, false, account, parentUserId, accountCredentials).bind();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doNotification(a0 accounts, Account account, CharSequence message, Intent intent, String packageName, final int userId) {
    }

    private Account[] filterAccounts(a0 accounts, Account[] unfiltered, int callingUid, String callingPackage, boolean includeManagedNotVisible) {
        String packageNameForUid = callingPackage == null ? getPackageNameForUid(callingUid) : callingPackage;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Account account : unfiltered) {
            int intValue = resolveAccountVisibility(account, packageNameForUid, accounts).intValue();
            if (intValue == 1 || intValue == 2 || (includeManagedNotVisible && intValue == 4)) {
                linkedHashMap.put(account, Integer.valueOf(intValue));
            }
        }
        Map<Account, Integer> filterSharedAccounts = filterSharedAccounts(accounts, linkedHashMap, callingUid, callingPackage);
        return (Account[]) filterSharedAccounts.keySet().toArray(new Account[filterSharedAccounts.size()]);
    }

    private Map<Account, Integer> filterSharedAccounts(a0 userAccounts, Map<Account, Integer> unfiltered, int callingUid, String callingPackage) {
        return unfiltered;
    }

    public static MindAccountManagerService get() {
        return sService;
    }

    private List<String> getAccountRemovedReceivers(Account account, a0 accounts) {
        Intent intent = new Intent(ACTION_ACCOUNT_REMOVED);
        List<ResolveInfo> queryBroadcastReceivers = com.xinzhu.overmind.server.pm.h.get().queryBroadcastReceivers(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), accounts.f64350a);
        ArrayList arrayList = new ArrayList();
        if (queryBroadcastReceivers == null) {
            return arrayList;
        }
        for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
            String str = resolveInfo.activityInfo.applicationInfo.packageName;
            int intValue = resolveAccountVisibility(account, str, accounts).intValue();
            if (intValue == 1 || intValue == 2) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private int getAccountVisibilityFromCache(Account account, String packageName, a0 accounts) {
        int intValue;
        synchronized (accounts.f64351b) {
            Integer num = getPackagesAndVisibilityForAccountLocked(account, accounts).get(packageName);
            intValue = num != null ? num.intValue() : 0;
        }
        return intValue;
    }

    private Map<Account, Integer> getAccountsAndVisibilityForPackage(String packageName, List<String> accountTypes, Integer callingUid, a0 accounts) {
        if (!packageExistsForUser(packageName, accounts.f64350a)) {
            com.xinzhu.overmind.utils.m.a(TAG, "Package not found " + packageName);
            return new LinkedHashMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : accountTypes) {
            synchronized (accounts.f64351b) {
                Account[] accountArr = accounts.f64355f.get(str);
                if (accountArr != null) {
                    for (Account account : accountArr) {
                        linkedHashMap.put(account, resolveAccountVisibility(account, packageName, accounts));
                    }
                }
            }
        }
        return filterSharedAccounts(accounts, linkedHashMap, callingUid.intValue(), packageName);
    }

    private Account[] getAccountsAsUserForPackage(String type, int userId, String callingPackage, int packageUid, String opPackageName, boolean includeUserManagedNotVisible) {
        String str;
        int i2;
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i4 = b4.f64329b;
        if (userId != b4.f64330c && i4 != 1000) {
            throw new SecurityException("User " + b4.f64330c + " trying to get account for " + userId);
        }
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "getAccounts: accountType " + type + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid());
        }
        List<String> typesManagedByCaller = getTypesManagedByCaller(i4, MindUserHandle.k(i4));
        if (packageUid == -1 || (!MindUserHandle.p(i4, 1000) && (type == null || !typesManagedByCaller.contains(type)))) {
            str = opPackageName;
            i2 = i4;
        } else {
            str = callingPackage;
            i2 = packageUid;
        }
        List<String> typesVisibleToCaller = getTypesVisibleToCaller(i2, userId, str);
        if (!typesVisibleToCaller.isEmpty() && (type == null || typesVisibleToCaller.contains(type))) {
            if (typesVisibleToCaller.contains(type)) {
                typesVisibleToCaller = new ArrayList<>();
                typesVisibleToCaller.add(type);
            }
            List<String> list = typesVisibleToCaller;
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return getAccountsInternal(getUserAccounts(userId), i2, str, list, includeUserManagedNotVisible);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return EMPTY_ACCOUNT_ARRAY;
    }

    private Account[] getAccountsInternal(a0 userAccounts, int callingUid, String callingPackage, List<String> visibleAccountTypes, boolean includeUserManagedNotVisible) {
        ArrayList arrayList = new ArrayList();
        for (String str : visibleAccountTypes) {
            Account[] accountsFromCache = getAccountsFromCache(userAccounts, str, callingUid, callingPackage, includeUserManagedNotVisible);
            if (accountsFromCache != null) {
                arrayList.addAll(Arrays.asList(accountsFromCache));
            }
        }
        Account[] accountArr = new Account[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            accountArr[i2] = (Account) arrayList.get(i2);
        }
        return accountArr;
    }

    private AuthenticatorDescription[] getAuthenticatorTypesInternal(int userId) {
        this.mAuthenticatorCache.b(userId);
        Collection<l.d<AuthenticatorDescription>> e4 = this.mAuthenticatorCache.e(userId);
        AuthenticatorDescription[] authenticatorDescriptionArr = new AuthenticatorDescription[e4.size()];
        int i2 = 0;
        for (l.d<AuthenticatorDescription> dVar : e4) {
            authenticatorDescriptionArr[i2] = dVar.f64637a;
            i2++;
        }
        return authenticatorDescriptionArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u getCredentialPermissionNotificationId(Account account, String authTokenType, int uid) {
        u uVar;
        a0 userAccounts = getUserAccounts(MindUserHandle.k(uid));
        synchronized (userAccounts.f64353d) {
            Pair pair = new Pair(new Pair(account, authTokenType), Integer.valueOf(uid));
            uVar = (u) userAccounts.f64353d.get(pair);
            if (uVar == null) {
                uVar = new u("MAccountManagerService:38:" + account.hashCode() + ":" + authTokenType.hashCode(), 38);
                userAccounts.f64353d.put(pair, uVar);
            }
        }
        return uVar;
    }

    private String getPackageNameForUid(int uid) {
        int i2;
        String[] packagesForUid = com.xinzhu.overmind.server.pm.h.get().getPackagesForUid(uid);
        if (com.xinzhu.overmind.utils.d.o(packagesForUid)) {
            return null;
        }
        String str = packagesForUid[0];
        if (packagesForUid.length == 1) {
            return str;
        }
        int i4 = Integer.MAX_VALUE;
        for (String str2 : packagesForUid) {
            ApplicationInfo applicationInfo = com.xinzhu.overmind.server.pm.h.get().getApplicationInfo(str2, 0, MindUserHandle.k(uid));
            if (applicationInfo != null && (i2 = applicationInfo.targetSdkVersion) < i4) {
                str = str2;
                i4 = i2;
            }
        }
        return str;
    }

    private Map<String, Integer> getPackagesAndVisibilityForAccountLocked(Account account, a0 accounts) {
        Map<String, Integer> map = (Map) accounts.f64359j.get(account);
        if (map == null) {
            com.xinzhu.overmind.utils.m.a(TAG, "Visibility was not initialized");
            HashMap hashMap = new HashMap();
            accounts.f64359j.put(account, hashMap);
            return hashMap;
        }
        return map;
    }

    private Map<String, Integer> getRequestingPackages(Account account, a0 accounts) {
        HashSet<String> hashSet = new HashSet();
        synchronized (accounts.f64360k) {
            String[] strArr = {account.type, null};
            for (int i2 = 0; i2 < 2; i2++) {
                Map map = (Map) accounts.f64360k.get(strArr[i2]);
                if (map != null) {
                    hashSet.addAll(map.keySet());
                }
            }
        }
        HashMap hashMap = new HashMap();
        for (String str : hashSet) {
            hashMap.put(str, resolveAccountVisibility(account, str, accounts));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u getSigninRequiredNotificationId(a0 accounts, Account account) {
        u uVar;
        synchronized (accounts.f64354e) {
            uVar = (u) accounts.f64354e.get(account);
            if (uVar == null) {
                u uVar2 = new u("MAccountManagerService:37:" + account.hashCode(), 37);
                accounts.f64354e.put(account, uVar2);
                uVar = uVar2;
            }
        }
        return uVar;
    }

    private List<String> getTypesForCaller(int callingUid, int userId, boolean isOtherwisePermitted) {
        ArrayList arrayList = new ArrayList();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Collection<l.d<AuthenticatorDescription>> e4 = this.mAuthenticatorCache.e(userId);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            for (l.d<AuthenticatorDescription> dVar : e4) {
                if (isOtherwisePermitted || com.xinzhu.overmind.server.pm.h.get().hasSignatureCapability(dVar.f64640d, callingUid, 16)) {
                    arrayList.add(dVar.f64637a.type);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    private List<String> getTypesManagedByCaller(int callingUid, int userId) {
        return getTypesForCaller(callingUid, userId, false);
    }

    private List<String> getTypesVisibleToCaller(int callingUid, int userId, String opPackageName) {
        return getTypesForCaller(callingUid, userId, true);
    }

    private a0 getUserAccountsForCaller() {
        return getUserAccounts(BinderHelper.b().f64330c);
    }

    private com.xinzhu.overmind.client.frameworks.h getUserManager() {
        if (this.mUserManager == null) {
            this.mUserManager = com.xinzhu.overmind.client.frameworks.h.d();
        }
        return this.mUserManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleGetAccountsResult(IAccountManagerResponse response, Account[] accounts, String callingPackage) {
        if (needToStartChooseAccountActivity(accounts, callingPackage)) {
            startChooseAccountActivityWithAccounts(response, accounts, callingPackage);
        } else if (accounts.length == 1) {
            Bundle bundle = new Bundle();
            bundle.putString("authAccount", accounts[0].name);
            bundle.putString("accountType", accounts[0].type);
            onResult(response, bundle);
        } else {
            onResult(response, new Bundle());
        }
    }

    private boolean hasAccountAccess(Account account, String packageName, int uid) {
        int intValue;
        if (packageName == null && (packageName = getPackageNameForUid(uid)) == null) {
            return false;
        }
        return permissionIsGranted(account, null, uid, MindUserHandle.k(uid)) || (intValue = resolveAccountVisibility(account, packageName, getUserAccounts(MindUserHandle.k(uid))).intValue()) == 1 || intValue == 2;
    }

    private boolean hasExplicitlyGrantedPermission(Account account, String authTokenType, int callerUid) {
        long p3;
        boolean z3 = true;
        if (MindUserHandle.a(callerUid) == 1000) {
            return true;
        }
        a0 userAccounts = getUserAccounts(MindUserHandle.k(callerUid));
        synchronized (userAccounts.f64351b) {
            if (authTokenType != null) {
                p3 = userAccounts.o(callerUid, authTokenType, account);
            } else {
                p3 = userAccounts.p(callerUid, account);
            }
            if (p3 <= 0) {
                z3 = false;
            }
        }
        return z3;
    }

    private Account insertAccountIntoCacheLocked(a0 accounts, Account account) {
        String uuid;
        Account[] accountArr = accounts.f64355f.get(account.type);
        int length = accountArr != null ? accountArr.length : 0;
        Account[] accountArr2 = new Account[length + 1];
        if (accountArr != null) {
            System.arraycopy(accountArr, 0, accountArr2, 0, length);
        }
        if (new com.xinzhu.haunted.android.accounts.a(account).h() != null) {
            uuid = new com.xinzhu.haunted.android.accounts.a(account).h();
        } else {
            uuid = UUID.randomUUID().toString();
        }
        accountArr2[length] = (Account) com.xinzhu.haunted.android.accounts.a.f(account, uuid).f62377a;
        accounts.f64355f.put(account.type, accountArr2);
        return accountArr2[length];
    }

    private List<Pair<Account, String>> invalidateAuthTokenLocked(a0 accounts, String accountType, String authToken) {
        Map map;
        ArrayList arrayList = new ArrayList();
        synchronized (accounts.f64351b) {
            for (MindAccount mindAccount : accounts.f64352c.values()) {
                if (mindAccount.f64344a.type.equals(accountType) && (map = (Map) accounts.f64357h.get(mindAccount.f64344a)) != null) {
                    Iterator it2 = map.entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry = (Map.Entry) it2.next();
                        if (((String) entry.getValue()).equals(authToken)) {
                            arrayList.add(Pair.create(new Account(mindAccount.f64344a.name, accountType), (String) entry.getKey()));
                            it2.remove();
                        }
                    }
                }
            }
            saveAccountAuthTokenLocked(accounts);
        }
        return arrayList;
    }

    private boolean isAccountManagedByCaller(String accountType, int callingUid, int userId) {
        if (accountType == null) {
            return false;
        }
        return getTypesManagedByCaller(callingUid, userId).contains(accountType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAccountPresentForCaller(String accountName, String accountType) {
        Account[] accountArr;
        a0 userAccountsForCaller = getUserAccountsForCaller();
        synchronized (userAccountsForCaller.f64351b) {
            if (userAccountsForCaller.f64355f.containsKey(accountType) && (accountArr = userAccountsForCaller.f64355f.get(accountType)) != null) {
                for (Account account : accountArr) {
                    if (account.name.equals(accountName)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private boolean isAccountVisibleToCaller(String accountType, int callingUid, int userId, String opPackageName) {
        if (accountType == null) {
            return false;
        }
        return getTypesVisibleToCaller(callingUid, userId, opPackageName).contains(accountType);
    }

    private boolean isCrossUser(int callingUid, int userId) {
        return (userId == MindUserHandle.k(callingUid) || callingUid == 1000) ? false : true;
    }

    private boolean isPreOApplication(String packageName) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ApplicationInfo applicationInfo = com.xinzhu.overmind.server.pm.h.get().getApplicationInfo(packageName, 0, MindUserHandle.k(1000));
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return applicationInfo == null || applicationInfo.targetSdkVersion < 26;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    private boolean isSpecialPackageKey(String packageName) {
        return PACKAGE_NAME_KEY_LEGACY_VISIBLE.equals(packageName) || PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE.equals(packageName);
    }

    private boolean isSystemUid(int callingUid) {
        return callingUid == 1000;
    }

    private boolean isVisible(int visibility) {
        return visibility == 1 || visibility == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAccountInternal$0(Account account, int i2) {
        cancelAccountAccessRequestNotificationIfNeeded(account, i2, false);
    }

    private void loadAllAccounts() {
        FileInputStream fileInputStream;
        byte[] bArr;
        if (com.xinzhu.overmind.server.accounts.b.b()) {
            loadCompatAccounts();
            com.xinzhu.overmind.server.accounts.b.a();
            return;
        }
        for (MindUserInfo mindUserInfo : com.xinzhu.overmind.server.user.c.get().getUsers()) {
            File file = new File(com.xinzhu.overmind.a.b(mindUserInfo.f64670a), ACCOUNTS_FILE_DATA);
            Parcel obtain = Parcel.obtain();
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (FileNotFoundException unused) {
            } catch (IOException e4) {
                e = e4;
            }
            try {
                bArr = new byte[4];
                fileInputStream.read(bArr);
            } catch (FileNotFoundException unused2) {
                fileInputStream2 = fileInputStream;
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileInputStream2);
            } catch (IOException e5) {
                e = e5;
                fileInputStream2 = fileInputStream;
                com.xinzhu.overmind.utils.m.c(TAG, "Error reading accounts for user " + mindUserInfo.f64670a);
                e.printStackTrace();
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileInputStream2);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileInputStream2);
                throw th;
            }
            if (Arrays.equals(bArr, ACCOUNTS_FILE_DATA_MAGIC)) {
                a0 a0Var = new a0(mindUserInfo.f64670a);
                byte[] w3 = com.xinzhu.overmind.utils.j.w(fileInputStream);
                obtain.unmarshall(w3, 0, w3.length);
                obtain.setDataPosition(0);
                ArrayList createTypedArrayList = obtain.createTypedArrayList(MindAccount.CREATOR);
                if (createTypedArrayList != null) {
                    Iterator it2 = createTypedArrayList.iterator();
                    while (it2.hasNext()) {
                        MindAccount mindAccount = (MindAccount) it2.next();
                        insertAccountIntoCacheLocked(a0Var, mindAccount.f64344a);
                        a0Var.f64352c.put(mindAccount.f64344a, mindAccount);
                    }
                    Map<Account, Map<String, String>> loadUserData = loadUserData(a0Var);
                    if (loadUserData != null) {
                        a0Var.f64356g.putAll(loadUserData);
                    }
                    Map<Account, Map<String, String>> loadAuthToken = loadAuthToken(a0Var);
                    if (loadAuthToken != null) {
                        a0Var.f64357h.putAll(loadAuthToken);
                    }
                    Map<Account, Map<String, Integer>> loadVisibilities = loadVisibilities(a0Var);
                    if (loadVisibilities != null) {
                        a0Var.f64359j.putAll(loadVisibilities);
                    }
                    Map<Account, AtomicReference<String>> loadPreviousName = loadPreviousName(a0Var);
                    if (loadPreviousName != null) {
                        a0Var.f64361l.putAll(loadPreviousName);
                    }
                    List<UidGrant> loadUidGrants = loadUidGrants(a0Var);
                    if (loadUidGrants != null) {
                        a0Var.f64362m.addAll(loadUidGrants);
                    }
                    this.mUsers.put(mindUserInfo.f64670a, a0Var);
                    obtain.recycle();
                    com.xinzhu.overmind.utils.l.a(fileInputStream);
                } else {
                    throw new IOException();
                }
            } else {
                throw new IOException();
            }
        }
    }

    private Map<Account, Map<String, String>> loadAuthToken(a0 userAccounts) {
        return loadMap(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_AUTH_TOKEN), ACCOUNTS_FILE_AUTH_TOKEN_MAGIC);
    }

    private void loadCompatAccounts() {
        com.xinzhu.overmind.client.frameworks.h userManager = getUserManager();
        for (b.a aVar : com.xinzhu.overmind.server.accounts.b.c()) {
            if (userManager.c(aVar.f64375a)) {
                MindAccount mindAccount = new MindAccount(aVar.f64376b);
                mindAccount.f64345b = aVar.f64378d;
                mindAccount.f64346c = aVar.f64379e;
                a0 a0Var = this.mUsers.get(aVar.f64375a);
                if (a0Var == null) {
                    a0Var = new a0(aVar.f64375a);
                    this.mUsers.put(aVar.f64375a, a0Var);
                }
                insertAccountIntoCacheLocked(a0Var, mindAccount.f64344a);
                a0Var.f64352c.put(mindAccount.f64344a, mindAccount);
                HashMap hashMap = new HashMap();
                for (Pair<String, String> pair : aVar.f64381g) {
                    hashMap.put((String) pair.first, (String) pair.second);
                }
                a0Var.f64356g.put(mindAccount.f64344a, hashMap);
                HashMap hashMap2 = new HashMap();
                for (Pair<String, String> pair2 : aVar.f64380f) {
                    hashMap2.put((String) pair2.first, (String) pair2.second);
                }
                a0Var.f64357h.put(mindAccount.f64344a, hashMap2);
                a0Var.f64361l.put(mindAccount.f64344a, new AtomicReference(aVar.f64377c));
            }
        }
        for (b.C0429b c0429b : com.xinzhu.overmind.server.accounts.b.d()) {
            a0 a0Var2 = this.mUsers.get(c0429b.f64382a);
            if (a0Var2 != null && a0Var2.f64352c.get(c0429b.f64383b) != null) {
                HashMap hashMap3 = new HashMap();
                for (Pair<String, Integer> pair3 : c0429b.f64384c) {
                    hashMap3.put((String) pair3.first, (Integer) pair3.second);
                }
                a0Var2.f64359j.put(c0429b.f64383b, hashMap3);
            }
        }
    }

    private <V> List<V> loadList(File file, byte[] magic) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[magic.length];
                fileInputStream.read(bArr);
                if (Arrays.equals(bArr, magic)) {
                    byte[] w3 = com.xinzhu.overmind.utils.j.w(fileInputStream);
                    obtain.unmarshall(w3, 0, w3.length);
                    obtain.setDataPosition(0);
                    return obtain.readArrayList(MindAccountManagerService.class.getClassLoader());
                }
                return null;
            } catch (FileNotFoundException unused) {
                return null;
            } catch (IOException e4) {
                com.xinzhu.overmind.utils.m.c(TAG, "Error reading data file " + file);
                e4.printStackTrace();
                return null;
            }
        } finally {
            obtain.recycle();
        }
    }

    private <K, V> Map<K, V> loadMap(File file, byte[] magic) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[magic.length];
                fileInputStream.read(bArr);
                if (Arrays.equals(bArr, magic)) {
                    byte[] w3 = com.xinzhu.overmind.utils.j.w(fileInputStream);
                    obtain.unmarshall(w3, 0, w3.length);
                    obtain.setDataPosition(0);
                    return obtain.readHashMap(MindAccountManagerService.class.getClassLoader());
                }
                return null;
            } catch (FileNotFoundException unused) {
                return null;
            } catch (IOException e4) {
                com.xinzhu.overmind.utils.m.c(TAG, "Error reading data file " + file);
                e4.printStackTrace();
                return null;
            }
        } finally {
            obtain.recycle();
        }
    }

    private Map<Account, AtomicReference<String>> loadPreviousName(a0 userAccounts) {
        return loadMap(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_PREVIOUS_NAME), ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC);
    }

    private List<UidGrant> loadUidGrants(a0 userAccounts) {
        return loadList(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_UID_GRANT), ACCOUNTS_FILE_UID_GRANT_MAGIC);
    }

    private Map<Account, Map<String, String>> loadUserData(a0 userAccounts) {
        return loadMap(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_USER_DATA), ACCOUNTS_FILE_USER_DATA_MAGIC);
    }

    private Map<Account, Map<String, Integer>> loadVisibilities(a0 userAccounts) {
        return loadMap(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_VISIBILITY), ACCOUNTS_FILE_VISIBILITY_MAGIC);
    }

    private boolean needToStartChooseAccountActivity(Account[] accounts, String callingPackage) {
        if (accounts.length < 1) {
            return false;
        }
        return accounts.length > 1 || resolveAccountVisibility(accounts[0], callingPackage, getUserAccounts(BinderHelper.b().f64330c)).intValue() == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent newGrantCredentialsPermissionIntent(Account account, String packageName, int uid, AccountAuthenticatorResponse response, String authTokenType, boolean startInNewTask) {
        Intent intent = new Intent(Overmind.getContext(), GrantCredentialsPermissionActivity.class);
        if (startInNewTask) {
            intent.setFlags(268435456);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getCredentialPermissionNotificationId(account, authTokenType, uid).f64370a);
        if (packageName == null) {
            packageName = "";
        }
        sb.append(packageName);
        intent.addCategory(sb.toString());
        intent.putExtra(GrantCredentialsPermissionActivity.f64042f, account);
        intent.putExtra("authTokenType", authTokenType);
        intent.putExtra(GrantCredentialsPermissionActivity.f64044h, response);
        intent.putExtra("uid", uid);
        return intent;
    }

    private Intent newRequestAccountAccessIntent(Account account, String packageName, int uid, RemoteCallback callback) {
        return newGrantCredentialsPermissionIntent(account, packageName, uid, (AccountAuthenticatorResponse) com.xinzhu.haunted.android.accounts.b.b(new h(account, uid, packageName, callback)).f62382a, ACCOUNT_ACCESS_TOKEN_TYPE, false);
    }

    private void notifyPackage(String packageName, a0 accounts) {
        Intent intent = new Intent(ACTION_VISIBLE_ACCOUNTS_CHANGED);
        intent.setPackage(packageName);
        intent.setFlags(1073741824);
        try {
            this.mContext.sendBroadcast(com.xinzhu.overmind.client.hook.env.a.k(com.xinzhu.overmind.server.am.f.get().sendBroadcast(intent, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), accounts.f64350a)));
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    private void onResult(IAccountManagerResponse response, Bundle result) {
        if (result == null) {
            com.xinzhu.overmind.utils.m.d(TAG, "the result is unexpectedly null", new Exception());
        }
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, getClass().getSimpleName() + " calling onResult() on response " + response);
        }
        try {
            response.onResult(result);
        } catch (RemoteException e4) {
            if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
                com.xinzhu.overmind.utils.m.j(TAG, "failure while notifying response", e4);
            }
        }
    }

    private boolean packageExistsForUser(String packageName, int userId) {
        return com.xinzhu.overmind.server.pm.h.get().getPackageUid(packageName, 0, userId) != -1;
    }

    private boolean permissionIsGranted(Account account, String authTokenType, int callerUid, int userId) {
        if (MindUserHandle.a(callerUid) == 1000) {
            if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
                com.xinzhu.overmind.utils.m.i(TAG, "Access to " + account + " granted calling uid is system");
            }
            return true;
        } else if (account != null && isAccountManagedByCaller(account.type, callerUid, userId)) {
            if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
                com.xinzhu.overmind.utils.m.i(TAG, "Access to " + account + " granted calling uid " + callerUid + " manages the account");
            }
            return true;
        } else if (account != null && hasExplicitlyGrantedPermission(account, authTokenType, callerUid)) {
            if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
                com.xinzhu.overmind.utils.m.i(TAG, "Access to " + account + " granted calling uid " + callerUid + " user granted access");
            }
            return true;
        } else if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "Access to " + account + " not granted for uid " + callerUid);
            return false;
        } else {
            return false;
        }
    }

    private void purgeOldGrants(a0 accounts) {
        synchronized (accounts.f64351b) {
            for (Integer num : accounts.n()) {
                int intValue = num.intValue();
                if (!(com.xinzhu.overmind.server.pm.h.get().getPackagesForUid(intValue) != null)) {
                    com.xinzhu.overmind.utils.m.a(TAG, "deleting grants for UID " + intValue + " because its package is no longer installed");
                    accounts.m(intValue);
                    saveUidGrantsLocked(accounts);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void purgeOldGrantsAll() {
        synchronized (this.mUsers) {
            for (int i2 = 0; i2 < this.mUsers.size(); i2++) {
                purgeOldGrants(this.mUsers.valueAt(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void purgeUserData(int userId) {
        synchronized (this.mUsers) {
            this.mUsers.remove(userId);
        }
    }

    private String readPasswordInternal(a0 userAccounts, Account account) {
        synchronized (userAccounts.f64351b) {
            for (MindAccount mindAccount : userAccounts.f64352c.values()) {
                if (account.name.equals(mindAccount.f64344a.name) && account.type.equals(mindAccount.f64344a.type)) {
                    return mindAccount.a();
                }
            }
            return null;
        }
    }

    private String readPreviousNameInternal(a0 accounts, Account account) {
        if (account == null) {
            return null;
        }
        synchronized (accounts.f64351b) {
            AtomicReference atomicReference = (AtomicReference) accounts.f64361l.get(account);
            if (atomicReference == null) {
                String str = account.name;
                accounts.f64361l.put(account, new AtomicReference(str));
                saveAccountPreviousNameLocked(accounts);
                return str;
            }
            return (String) atomicReference.get();
        }
    }

    private void registerAccountListener(String[] accountTypes, String opPackageName, a0 accounts) {
        synchronized (accounts.f64360k) {
            if (accountTypes == null) {
                accountTypes = new String[]{null};
            }
            for (String str : accountTypes) {
                Map map = (Map) accounts.f64360k.get(str);
                if (map == null) {
                    map = new HashMap();
                    accounts.f64360k.put(str, map);
                }
                Integer num = (Integer) map.get(opPackageName);
                int i2 = 1;
                if (num != null) {
                    i2 = 1 + num.intValue();
                }
                map.put(opPackageName, Integer.valueOf(i2));
            }
        }
    }

    private void removeAccountFromCacheLocked(a0 accounts, Account account) {
        Account[] accountArr = accounts.f64355f.get(account.type);
        if (accountArr != null) {
            ArrayList arrayList = new ArrayList();
            for (Account account2 : accountArr) {
                if (!account2.equals(account)) {
                    arrayList.add(account2);
                }
            }
            if (arrayList.isEmpty()) {
                accounts.f64355f.remove(account.type);
            } else {
                accounts.f64355f.put(account.type, (Account[]) arrayList.toArray(new Account[arrayList.size()]));
            }
        }
        accounts.f64356g.remove(account);
        saveAccountUserDataLocked(accounts);
        accounts.f64357h.remove(account);
        saveAccountAuthTokenLocked(accounts);
        accounts.f64361l.remove(account);
        saveAccountPreviousNameLocked(accounts);
        accounts.f64359j.remove(account);
        saveAccountVisibilitiesLocked(accounts);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeAccountInternal(a0 accounts, final Account account, int callingUid) {
        synchronized (accounts.f64351b) {
            Map<String, Integer> requestingPackages = getRequestingPackages(account, accounts);
            List<String> accountRemovedReceivers = getAccountRemovedReceivers(account, accounts);
            accounts.f64352c.remove(account);
            saveAccountDataLocked(accounts);
            removeAccountFromCacheLocked(accounts, account);
            for (Map.Entry<String, Integer> entry : requestingPackages.entrySet()) {
                if (entry.getValue().intValue() == 1 || entry.getValue().intValue() == 2) {
                    notifyPackage(entry.getKey(), accounts);
                }
            }
            sendAccountsChangedBroadcast(accounts.f64350a);
            for (String str : accountRemovedReceivers) {
                sendAccountRemovedBroadcast(account, str, accounts.f64350a);
            }
        }
        synchronized (accounts.f64353d) {
            for (Pair pair : accounts.f64353d.keySet()) {
                if (account.equals(((Pair) pair.first).first) && ACCOUNT_ACCESS_TOKEN_TYPE.equals(((Pair) pair.first).second)) {
                    final int intValue = ((Integer) pair.second).intValue();
                    this.mHandler.post(new Runnable() { // from class: com.xinzhu.overmind.server.accounts.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            MindAccountManagerService.this.lambda$removeAccountInternal$0(account, intValue);
                        }
                    });
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeVisibilityValuesForPackage(String packageName) {
        if (isSpecialPackageKey(packageName)) {
            return;
        }
        synchronized (this.mUsers) {
            int size = this.mUsers.size();
            for (int i2 = 0; i2 < size; i2++) {
                a0 valueAt = this.mUsers.valueAt(i2);
                if (-1 == com.xinzhu.overmind.server.pm.h.get().getPackageUid(packageName, 0, valueAt.f64350a)) {
                    synchronized (valueAt.f64351b) {
                        for (Account account : valueAt.f64359j.keySet()) {
                            getPackagesAndVisibilityForAccountLocked(account, valueAt).remove(packageName);
                        }
                        saveAccountVisibilitiesLocked(valueAt);
                    }
                }
            }
        }
    }

    private Account renameAccountInternal(a0 accounts, Account accountToRename, String newName) {
        cancelNotification(getSigninRequiredNotificationId(accounts, accountToRename), new MindUserHandle(accounts.f64350a));
        synchronized (accounts.f64353d) {
            for (Pair pair : accounts.f64353d.keySet()) {
                if (accountToRename.equals(((Pair) pair.first).first)) {
                    cancelNotification((u) accounts.f64353d.get(pair), new MindUserHandle(accounts.f64350a));
                }
            }
        }
        synchronized (accounts.f64351b) {
            List<String> accountRemovedReceivers = getAccountRemovedReceivers(accountToRename, accounts);
            Account account = new Account(newName, accountToRename.type);
            MindAccount mindAccount = new MindAccount(account);
            if (((MindAccount) accounts.f64352c.get(account)) == null) {
                MindAccount mindAccount2 = (MindAccount) accounts.f64352c.get(accountToRename);
                if (mindAccount2 != null) {
                    mindAccount.f64345b = mindAccount2.f64345b;
                }
                accounts.f64352c.remove(accountToRename);
                accounts.f64352c.put(account, mindAccount);
                saveAccountDataLocked(accounts);
                Account insertAccountIntoCacheLocked = insertAccountIntoCacheLocked(accounts, account);
                removeAccountFromCacheLocked(accounts, accountToRename);
                accounts.f64356g.put(insertAccountIntoCacheLocked, (Map) accounts.f64356g.get(accountToRename));
                saveAccountUserDataLocked(accounts);
                accounts.f64357h.put(insertAccountIntoCacheLocked, (Map) accounts.f64357h.get(accountToRename));
                saveAccountAuthTokenLocked(accounts);
                accounts.f64359j.put(insertAccountIntoCacheLocked, (Map) accounts.f64359j.get(accountToRename));
                saveAccountVisibilitiesLocked(accounts);
                accounts.f64361l.put(insertAccountIntoCacheLocked, new AtomicReference(accountToRename.name));
                saveAccountPreviousNameLocked(accounts);
                sendNotificationAccountUpdated(insertAccountIntoCacheLocked, accounts);
                sendAccountsChangedBroadcast(accounts.f64350a);
                for (String str : accountRemovedReceivers) {
                    sendAccountRemovedBroadcast(accountToRename, str, accounts.f64350a);
                }
                return insertAccountIntoCacheLocked;
            }
            com.xinzhu.overmind.utils.m.c(TAG, "renameAccount failed - account with new name already exists");
            return null;
        }
    }

    private Integer resolveAccountVisibility(Account account, String packageName, a0 accounts) {
        Objects.requireNonNull(packageName, "packageName cannot be null");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            int packageUid = com.xinzhu.overmind.server.pm.h.get().getPackageUid(packageName, 0, accounts.f64350a);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            if (!MindUserHandle.p(packageUid, 1000)) {
                int checkPackageSignature = checkPackageSignature(account.type, packageUid, accounts.f64350a);
                int i2 = 2;
                if (checkPackageSignature == 2) {
                    return 1;
                }
                int accountVisibilityFromCache = getAccountVisibilityFromCache(account, packageName, accounts);
                if (accountVisibilityFromCache != 0) {
                    return Integer.valueOf(accountVisibilityFromCache);
                }
                boolean isPreOApplication = isPreOApplication(packageName);
                if (checkPackageSignature == 0 && !isPreOApplication && !accountTypeManagesContacts(account.type, accounts.f64350a)) {
                    i2 = getAccountVisibilityFromCache(account, PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE, accounts);
                    if (i2 == 0) {
                        i2 = 4;
                    }
                } else {
                    int accountVisibilityFromCache2 = getAccountVisibilityFromCache(account, PACKAGE_NAME_KEY_LEGACY_VISIBLE, accounts);
                    if (accountVisibilityFromCache2 != 0) {
                        i2 = accountVisibilityFromCache2;
                    }
                }
                return Integer.valueOf(i2);
            }
            return 1;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    private void revokeAppPermission(final Account account, String authTokenType, final int uid) {
        if (account != null && authTokenType != null) {
            a0 userAccounts = getUserAccounts(MindUserHandle.k(uid));
            synchronized (userAccounts.f64351b) {
                userAccounts.l(account, authTokenType, uid);
                cancelNotification(getCredentialPermissionNotificationId(account, authTokenType, uid), MindUserHandle.t(userAccounts.f64350a));
            }
            Iterator<v> it2 = this.mAppPermissionChangeListeners.iterator();
            while (it2.hasNext()) {
                final v next = it2.next();
                this.mHandler.post(new Runnable() { // from class: com.xinzhu.overmind.server.accounts.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        MindAccountManagerService.v.this.a(account, uid);
                    }
                });
            }
            return;
        }
        com.xinzhu.overmind.utils.m.d(TAG, "revokeAppPermission: called with invalid arguments", new Exception());
    }

    private void saveAccountAuthTokenLocked(a0 userAccounts) {
        saveMap(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_AUTH_TOKEN), ACCOUNTS_FILE_AUTH_TOKEN_MAGIC, userAccounts.f64357h);
    }

    private void saveAccountDataLocked(a0 userAccounts) {
        Parcel obtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_DATA));
        FileOutputStream fileOutputStream = null;
        try {
            obtain.writeTypedList(new ArrayList(userAccounts.f64352c.values()));
            obtain.setDataPosition(0);
            fileOutputStream = atomicFile.startWrite();
            fileOutputStream.write(ACCOUNTS_FILE_DATA_MAGIC);
            com.xinzhu.overmind.utils.j.z(obtain, fileOutputStream);
            atomicFile.finishWrite(fileOutputStream);
            obtain.recycle();
            com.xinzhu.overmind.utils.l.a(fileOutputStream);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                atomicFile.failWrite(fileOutputStream);
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileOutputStream);
            } catch (Throwable th2) {
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileOutputStream);
                throw th2;
            }
        }
    }

    private void saveAccountPreviousNameLocked(a0 userAccounts) {
        saveMap(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_PREVIOUS_NAME), ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC, userAccounts.f64361l);
    }

    private void saveAccountUserDataLocked(a0 userAccounts) {
        saveMap(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_USER_DATA), ACCOUNTS_FILE_USER_DATA_MAGIC, userAccounts.f64356g);
    }

    private void saveAccountVisibilitiesLocked(a0 userAccounts) {
        saveMap(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_VISIBILITY), ACCOUNTS_FILE_VISIBILITY_MAGIC, userAccounts.f64359j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveAuthTokenToDatabase(a0 accounts, Account account, String type, String authToken) {
        if (account == null || type == null) {
            return false;
        }
        cancelNotification(getSigninRequiredNotificationId(accounts, account), new MindUserHandle(accounts.f64350a));
        synchronized (accounts.f64351b) {
            writeAuthTokenIntoCacheLocked(accounts, account, type, authToken);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCachedToken(a0 accounts, Account account, String callerPkg, byte[] callerSigDigest, String tokenType, String token, long expiryMillis) {
        if (account == null || tokenType == null || callerPkg == null || callerSigDigest == null) {
            return;
        }
        cancelNotification(getSigninRequiredNotificationId(accounts, account), MindUserHandle.t(accounts.f64350a));
        synchronized (accounts.f64351b) {
            accounts.f64358i.b(account, token, tokenType, callerPkg, callerSigDigest, expiryMillis);
        }
    }

    private void saveList(File file, byte[] magic, List list) {
        Parcel obtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(file);
        FileOutputStream fileOutputStream = null;
        try {
            obtain.writeList(list);
            obtain.setDataPosition(0);
            fileOutputStream = atomicFile.startWrite();
            fileOutputStream.write(magic);
            com.xinzhu.overmind.utils.j.z(obtain, fileOutputStream);
            atomicFile.finishWrite(fileOutputStream);
            obtain.recycle();
            com.xinzhu.overmind.utils.l.a(fileOutputStream);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                atomicFile.failWrite(fileOutputStream);
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileOutputStream);
            } catch (Throwable th2) {
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileOutputStream);
                throw th2;
            }
        }
    }

    private void saveMap(File file, byte[] magic, Map map) {
        Parcel obtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(file);
        FileOutputStream fileOutputStream = null;
        try {
            obtain.writeMap(map);
            obtain.setDataPosition(0);
            fileOutputStream = atomicFile.startWrite();
            fileOutputStream.write(magic);
            com.xinzhu.overmind.utils.j.z(obtain, fileOutputStream);
            atomicFile.finishWrite(fileOutputStream);
            obtain.recycle();
            com.xinzhu.overmind.utils.l.a(fileOutputStream);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                atomicFile.failWrite(fileOutputStream);
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileOutputStream);
            } catch (Throwable th2) {
                obtain.recycle();
                com.xinzhu.overmind.utils.l.a(fileOutputStream);
                throw th2;
            }
        }
    }

    private void saveUidGrantsLocked(a0 userAccounts) {
        saveList(new File(com.xinzhu.overmind.a.b(userAccounts.f64350a), ACCOUNTS_FILE_UID_GRANT), ACCOUNTS_FILE_UID_GRANT_MAGIC, userAccounts.f64362m);
    }

    private void sendAccountRemovedBroadcast(Account account, String packageName, int userId) {
        Intent intent = new Intent(ACTION_ACCOUNT_REMOVED);
        intent.setPackage(packageName);
        intent.putExtra("authAccount", account.name);
        intent.putExtra("accountType", account.type);
        try {
            this.mContext.sendBroadcast(com.xinzhu.overmind.client.hook.env.a.k(com.xinzhu.overmind.server.am.f.get().sendBroadcast(intent, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), userId)));
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    private void sendAccountsChangedBroadcast(int userId) {
        StringBuilder sb = new StringBuilder();
        sb.append("the accounts changed, sending broadcast of ");
        Intent intent = ACCOUNTS_CHANGED_INTENT;
        sb.append(intent.getAction());
        com.xinzhu.overmind.utils.m.e(TAG, sb.toString());
        try {
            this.mContext.sendBroadcast(com.xinzhu.overmind.client.hook.env.a.k(com.xinzhu.overmind.server.am.f.get().sendBroadcast(intent, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), userId)));
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendErrorResponse(IAccountManagerResponse response, int errorCode, String errorMessage) {
        try {
            response.onError(errorCode, errorMessage);
        } catch (RemoteException e4) {
            if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
                com.xinzhu.overmind.utils.m.j(TAG, "failure while notifying response", e4);
            }
        }
    }

    private void sendNotificationAccountUpdated(Account account, a0 accounts) {
        for (Map.Entry<String, Integer> entry : getRequestingPackages(account, accounts).entrySet()) {
            if (entry.getValue().intValue() != 3 && entry.getValue().intValue() != 4) {
                notifyPackage(entry.getKey(), accounts);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendResponse(IAccountManagerResponse response, Bundle result) {
        try {
            response.onResult(result);
        } catch (RemoteException e4) {
            if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
                com.xinzhu.overmind.utils.m.j(TAG, "failure while notifying response", e4);
            }
        }
    }

    private boolean setAccountVisibility(Account account, String packageName, int newVisibility, boolean notify, a0 accounts) {
        Map<String, Integer> emptyMap;
        List<String> emptyList;
        synchronized (accounts.f64351b) {
            if (notify) {
                if (!isSpecialPackageKey(packageName)) {
                    if (!packageExistsForUser(packageName, accounts.f64350a)) {
                        return false;
                    }
                    emptyMap = new HashMap<>();
                    emptyMap.put(packageName, resolveAccountVisibility(account, packageName, accounts));
                    emptyList = new ArrayList<>();
                    if (shouldNotifyPackageOnAccountRemoval(account, packageName, accounts)) {
                        emptyList.add(packageName);
                    }
                } else {
                    emptyMap = getRequestingPackages(account, accounts);
                    emptyList = getAccountRemovedReceivers(account, accounts);
                }
            } else if (!isSpecialPackageKey(packageName) && !packageExistsForUser(packageName, accounts.f64350a)) {
                return false;
            } else {
                emptyMap = Collections.emptyMap();
                emptyList = Collections.emptyList();
            }
            if (updateAccountVisibilityLocked(account, packageName, newVisibility, accounts)) {
                if (notify) {
                    for (Map.Entry<String, Integer> entry : emptyMap.entrySet()) {
                        if (isVisible(entry.getValue().intValue()) != isVisible(resolveAccountVisibility(account, packageName, accounts).intValue())) {
                            notifyPackage(entry.getKey(), accounts);
                        }
                    }
                    for (String str : emptyList) {
                        sendAccountRemovedBroadcast(account, str, accounts.f64350a);
                    }
                    sendAccountsChangedBroadcast(accounts.f64350a);
                }
                return true;
            }
            return false;
        }
    }

    private void setPasswordInternal(a0 accounts, Account account, String password, int callingUid) {
        if (account == null) {
            return;
        }
        synchronized (accounts.f64351b) {
            MindAccount mindAccount = (MindAccount) accounts.f64352c.get(account);
            if (mindAccount != null) {
                mindAccount.f64345b = password;
                accounts.f64357h.remove(account);
                accounts.f64358i.c(account);
                saveAccountDataLocked(accounts);
                saveAccountAuthTokenLocked(accounts);
                sendNotificationAccountUpdated(account, accounts);
                sendAccountsChangedBroadcast(accounts.f64350a);
            }
        }
    }

    private void setUserdataInternal(a0 accounts, Account account, String key, String value) {
        synchronized (accounts.f64351b) {
            writeUserDataIntoCacheLocked(accounts, account, key, value);
        }
    }

    private boolean shouldNotifyPackageOnAccountRemoval(Account account, String packageName, a0 accounts) {
        int intValue = resolveAccountVisibility(account, packageName, accounts).intValue();
        if (intValue == 1 || intValue == 2) {
            Intent intent = new Intent(ACTION_ACCOUNT_REMOVED);
            intent.setPackage(packageName);
            List<ResolveInfo> queryBroadcastReceivers = com.xinzhu.overmind.server.pm.h.get().queryBroadcastReceivers(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), accounts.f64350a);
            return queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0;
        }
        return false;
    }

    private void showCantAddAccount(int errorCode, int userId) {
    }

    private void startChooseAccountActivityWithAccounts(IAccountManagerResponse response, Account[] accounts, String callingPackage) {
        Intent intent = new Intent(Overmind.getContext(), ChooseAccountActivity.class);
        intent.putExtra("accounts", accounts);
        intent.putExtra("accountManagerResponse", new AccountManagerResponse(response));
        intent.putExtra("androidPackageName", callingPackage);
        Overmind.getContext().startActivity(intent);
    }

    private void unregisterAccountListener(String[] accountTypes, String opPackageName, a0 accounts) {
        synchronized (accounts.f64360k) {
            if (accountTypes == null) {
                accountTypes = new String[]{null};
            }
            for (String str : accountTypes) {
                Map map = (Map) accounts.f64360k.get(str);
                if (map != null && map.get(opPackageName) != null) {
                    Integer num = (Integer) map.get(opPackageName);
                    if (num != null) {
                        if (num.intValue() == 1) {
                            map.remove(opPackageName);
                        } else {
                            map.put(opPackageName, Integer.valueOf(num.intValue() - 1));
                        }
                    }
                } else {
                    throw new IllegalArgumentException("attempt to unregister wrong receiver");
                }
            }
        }
    }

    private boolean updateAccountVisibilityLocked(Account account, String packageName, int newVisibility, a0 accounts) {
        if (((MindAccount) accounts.f64352c.get(account)) == null) {
            return false;
        }
        getPackagesAndVisibilityForAccountLocked(account, accounts).put(packageName, Integer.valueOf(newVisibility));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateLastAuthenticatedTime(Account account) {
        a0 userAccountsForCaller = getUserAccountsForCaller();
        synchronized (userAccountsForCaller.f64351b) {
            MindAccount mindAccount = (MindAccount) userAccountsForCaller.f64352c.get(account);
            if (mindAccount != null) {
                mindAccount.f64346c = System.currentTimeMillis();
                saveAccountDataLocked(userAccountsForCaller);
                return true;
            }
            return false;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean accountAuthenticated(Account account) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, String.format("accountAuthenticated( account: %s, callerUid: %s)", account, Integer.valueOf(i2)));
        }
        Objects.requireNonNull(account, "account cannot be null");
        int i4 = b4.f64330c;
        if (isAccountManagedByCaller(account.type, i2, i4)) {
            if (canUserModifyAccounts(i4, i2) && canUserModifyAccountsForType(i4, account.type, i2)) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    getUserAccounts(i4);
                    return updateLastAuthenticatedTime(account);
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            return false;
        }
        throw new SecurityException(String.format("uid %s cannot notify authentication for accounts of type: %s", Integer.valueOf(i2), account.type));
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addAccount(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle optionsIn) {
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "addAccount: accountType " + accountType + ", response " + response + ", authTokenType " + authTokenType + ", requiredFeatures " + Arrays.toString(requiredFeatures) + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid() + " helperuid " + BinderHelper.b().f64329b + " realuid " + Overmind.getHostUid() + " " + Arrays.asList(this.mContext.getPackageManager().getPackagesForUid(Overmind.getHostUid())));
        }
        if (response == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (accountType != null) {
            BinderHelper.CallingInfo b4 = BinderHelper.b();
            int i2 = b4.f64329b;
            int k4 = MindUserHandle.k(i2);
            if (!canUserModifyAccounts(k4, i2)) {
                try {
                    response.onError(100, "User is not allowed to add an account!");
                } catch (RemoteException unused) {
                }
                showCantAddAccount(100, k4);
                return;
            } else if (!canUserModifyAccountsForType(k4, accountType, i2)) {
                try {
                    response.onError(101, "User cannot modify accounts of this type (policy).");
                } catch (RemoteException unused2) {
                }
                showCantAddAccount(101, k4);
                return;
            } else {
                int i4 = b4.f64328a;
                Bundle bundle = optionsIn == null ? new Bundle() : optionsIn;
                bundle.putInt("callerUid", i2);
                bundle.putInt("callerPid", i4);
                int i5 = b4.f64330c;
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    new o(getUserAccounts(i5), response, accountType, expectActivityLaunch, true, null, false, true, authTokenType, requiredFeatures, bundle, accountType).bind();
                    return;
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
        }
        throw new IllegalArgumentException("accountType is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addAccountAsUser(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle optionsIn, int userId) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "addAccount: accountType " + accountType + ", response " + response + ", authTokenType " + authTokenType + ", requiredFeatures " + Arrays.toString(requiredFeatures) + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid() + ", for user id " + userId);
        }
        Objects.requireNonNull(response, "response cannot be null");
        Objects.requireNonNull(accountType, "accountType cannot be null");
        if (!isCrossUser(i2, userId)) {
            if (!canUserModifyAccounts(userId, i2)) {
                try {
                    response.onError(100, "User is not allowed to add an account!");
                } catch (RemoteException unused) {
                }
                showCantAddAccount(100, userId);
                return;
            } else if (!canUserModifyAccountsForType(userId, accountType, i2)) {
                try {
                    response.onError(101, "User cannot modify accounts of this type (policy).");
                } catch (RemoteException unused2) {
                }
                showCantAddAccount(101, userId);
                return;
            } else {
                int i4 = b4.f64328a;
                int i5 = b4.f64329b;
                Bundle bundle = optionsIn == null ? new Bundle() : optionsIn;
                bundle.putInt("callerUid", i5);
                bundle.putInt("callerPid", i4);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    new p(getUserAccounts(userId), response, accountType, expectActivityLaunch, true, null, false, true, authTokenType, requiredFeatures, bundle, accountType).bind();
                    return;
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
        }
        throw new SecurityException(String.format("User %s trying to add account for %s", Integer.valueOf(b4.f64330c), Integer.valueOf(userId)));
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addAccountExplicitly(Account account, String password, Bundle extras) {
        return addAccountExplicitlyWithVisibility(account, password, extras, null);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addAccountExplicitlyWithVisibility(Account account, String password, Bundle extras, Map packageToVisibility) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "addAccountExplicitly: " + account + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        if (isAccountManagedByCaller(account.type, i2, i4)) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return addAccountInternal(getUserAccounts(i4), account, password, extras, i2, packageToVisibility);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException(String.format("uid %s cannot explicitly add accounts of type: %s", Integer.valueOf(i2), account.type));
    }

    public void addOnAppPermissionChangeListener(v listener) {
        this.mAppPermissionChangeListeners.add(listener);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addSharedAccountAsUser(Account account, int userId) throws RemoteException {
        throw new RuntimeException("Not implemented.");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addSharedAccountsFromParentUser(int parentUserId, int userId, String opPackageName) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void clearPassword(Account account) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "clearPassword: " + account + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        int i4 = b4.f64330c;
        if (isAccountManagedByCaller(account.type, i2, i4)) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                setPasswordInternal(getUserAccounts(i4), account, null, i2);
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException(String.format("uid %s cannot clear passwords for accounts of type: %s", Integer.valueOf(i2), account.type));
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void confirmCredentialsAsUser(IAccountManagerResponse response, Account account, Bundle options, boolean expectActivityLaunch, int userId) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "confirmCredentials: " + account + ", response " + response + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + i2 + ", pid " + b4.f64328a);
        }
        if (isCrossUser(i2, userId)) {
            throw new SecurityException(String.format("User %s trying to confirm account credentials for %s", Integer.valueOf(b4.f64330c), Integer.valueOf(userId)));
        }
        if (response == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (account != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                new b(getUserAccounts(userId), response, account.type, expectActivityLaunch, true, account.name, true, true, account, options).bind();
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new IllegalArgumentException("account is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void copyAccountToUser(IAccountManagerResponse response, Account account, int userFrom, int userTo) {
        if (!isCrossUser(BinderHelper.b().f64329b, -1)) {
            a0 userAccounts = getUserAccounts(userFrom);
            a0 userAccounts2 = getUserAccounts(userTo);
            if (userAccounts == null || userAccounts2 == null) {
                if (response != null) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("booleanResult", false);
                    try {
                        response.onResult(bundle);
                        return;
                    } catch (RemoteException e4) {
                        com.xinzhu.overmind.utils.u.j(TAG, "Failed to report error back to the client." + e4);
                        return;
                    }
                }
                return;
            }
            com.xinzhu.overmind.utils.u.a(TAG, "Copying account " + account.toString() + " from user " + userFrom + " to user " + userTo);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                new m(userAccounts, response, account.type, false, false, account.name, false, account, response, userAccounts2, userFrom).bind();
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException("Calling copyAccountToUser requires android.Manifest.permission.INTERACT_ACROSS_USERS_FULL");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public IntentSender createRequestAccountAccessIntentSenderAsUser(Account account, String packageName, UserHandle userHandle) {
        if (MindUserHandle.a(BinderHelper.b().f64329b) == 1000) {
            Objects.requireNonNull(account, "account cannot be null");
            Objects.requireNonNull(packageName, "packageName cannot be null");
            Objects.requireNonNull(userHandle, "userHandle cannot be null");
            int identifier = new com.xinzhu.haunted.android.os.u(userHandle).getIdentifier();
            if (identifier >= 0) {
                int packageUid = com.xinzhu.overmind.server.pm.h.get().getPackageUid(packageName, 0, identifier);
                if (packageUid == -1) {
                    com.xinzhu.overmind.utils.u.c(TAG, "Unknown package " + packageName);
                    return null;
                }
                Intent newRequestAccountAccessIntent = newRequestAccountAccessIntent(account, packageName, packageUid, null);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return com.xinzhu.haunted.android.app.v.c(Overmind.getContext(), 0, newRequestAccountAccessIntent, 1342177280, null, new MindUserHandle(identifier).w()).getIntentSender();
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            throw new IllegalArgumentException("user must be concrete");
        }
        throw new SecurityException("Can be called only by system UID");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void editProperties(IAccountManagerResponse response, String accountType, boolean expectActivityLaunch) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "editProperties: accountType " + accountType + ", response " + response + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        if (response == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (accountType != null) {
            int i4 = b4.f64330c;
            if (!isAccountManagedByCaller(accountType, i2, i4) && !isSystemUid(i2)) {
                throw new SecurityException(String.format("uid %s cannot edit authenticator properites for account type: %s", Integer.valueOf(i2), accountType));
            }
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                new a(getUserAccounts(i4), response, accountType, expectActivityLaunch, true, null, false, accountType).bind();
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new IllegalArgumentException("accountType is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void finishSessionAsUser(IAccountManagerResponse response, Bundle sessionBundle, boolean expectActivityLaunch, Bundle appInfo, int userId) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "finishSession: response " + response + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + i2 + ", caller's user id " + b4.f64330c + ", pid " + Binder.getCallingPid() + ", for user id " + userId);
        }
        Objects.requireNonNull(response, "response cannot be null");
        if (sessionBundle != null && sessionBundle.size() != 0) {
            if (!isCrossUser(i2, userId)) {
                if (!canUserModifyAccounts(userId, i2)) {
                    sendErrorResponse(response, 100, "User is not allowed to add an account!");
                    showCantAddAccount(100, userId);
                    return;
                }
                int callingPid = Binder.getCallingPid();
                try {
                    Bundle c4 = com.xinzhu.overmind.server.accounts.c.e().c(sessionBundle);
                    if (c4 == null) {
                        sendErrorResponse(response, 8, "failed to decrypt session bundle");
                        return;
                    }
                    String string = c4.getString("accountType");
                    if (TextUtils.isEmpty(string)) {
                        sendErrorResponse(response, 7, "accountType is empty");
                        return;
                    }
                    if (appInfo != null) {
                        c4.putAll(appInfo);
                    }
                    c4.putInt("callerUid", i2);
                    c4.putInt("callerPid", callingPid);
                    if (!canUserModifyAccountsForType(userId, string, i2)) {
                        sendErrorResponse(response, 101, "User cannot modify accounts of this type (policy).");
                        showCantAddAccount(101, userId);
                        return;
                    }
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        new f(getUserAccounts(userId), response, string, expectActivityLaunch, true, null, false, true, c4, string).bind();
                        return;
                    } finally {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                } catch (GeneralSecurityException e4) {
                    if (com.xinzhu.overmind.utils.m.g(TAG, 3)) {
                        com.xinzhu.overmind.utils.m.j(TAG, "Failed to decrypt session bundle!", e4);
                    }
                    sendErrorResponse(response, 8, "failed to decrypt session bundle");
                    return;
                }
            }
            throw new SecurityException(String.format("User %s trying to finish session for %s without cross user permission", Integer.valueOf(b4.f64330c), Integer.valueOf(userId)));
        }
        throw new IllegalArgumentException("sessionBundle is empty");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAccountByTypeAndFeatures(IAccountManagerResponse response, String accountType, String[] features, String opPackageName) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "getAccount: accountType " + accountType + ", response " + response + ", features " + Arrays.toString(features) + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        if (response == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (accountType != null) {
            int i4 = b4.f64330c;
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                a0 userAccounts = getUserAccounts(i4);
                if (com.xinzhu.overmind.utils.d.o(features)) {
                    handleGetAccountsResult(response, getAccountsFromCache(userAccounts, accountType, i2, opPackageName, true), opPackageName);
                    return;
                } else {
                    new s(userAccounts, new k(response, opPackageName), accountType, features, i2, opPackageName, true).bind();
                    return;
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new IllegalArgumentException("accountType is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public int getAccountVisibility(Account account, String packageName) {
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(packageName, "packageName cannot be null");
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        if (!isAccountManagedByCaller(account.type, i2, i4) && !isSystemUid(i2)) {
            throw new SecurityException(String.format("uid %s cannot get secrets for accounts of type: %s", Integer.valueOf(i2), account.type));
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i4);
            if (PACKAGE_NAME_KEY_LEGACY_VISIBLE.equals(packageName)) {
                int accountVisibilityFromCache = getAccountVisibilityFromCache(account, packageName, userAccounts);
                if (accountVisibilityFromCache != 0) {
                    return accountVisibilityFromCache;
                }
                return 2;
            } else if (PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE.equals(packageName)) {
                int accountVisibilityFromCache2 = getAccountVisibilityFromCache(account, packageName, userAccounts);
                if (accountVisibilityFromCache2 != 0) {
                    return accountVisibilityFromCache2;
                }
                return 4;
            } else {
                return resolveAccountVisibility(account, packageName, userAccounts).intValue();
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public Account[] getAccounts(int userId, String opPackageName) {
        int i2 = BinderHelper.b().f64329b;
        List<String> typesVisibleToCaller = getTypesVisibleToCaller(i2, userId, opPackageName);
        if (typesVisibleToCaller.isEmpty()) {
            return EMPTY_ACCOUNT_ARRAY;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return getAccountsInternal(getUserAccounts(userId), i2, opPackageName, typesVisibleToCaller, false);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsAsUser(String type, int userId, String opPackageName) {
        return getAccountsAsUserForPackage(type, userId, opPackageName, -1, opPackageName, false);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAccountsByFeatures(IAccountManagerResponse response, String type, String[] features, String opPackageName) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "getAccounts: accountType " + type + ", response " + response + ", features " + Arrays.toString(features) + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        if (response == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (type != null) {
            int i4 = b4.f64330c;
            if (!getTypesVisibleToCaller(i2, i4, opPackageName).contains(type)) {
                Bundle bundle = new Bundle();
                bundle.putParcelableArray("accounts", EMPTY_ACCOUNT_ARRAY);
                try {
                    response.onResult(bundle);
                    return;
                } catch (RemoteException e4) {
                    com.xinzhu.overmind.utils.m.d(TAG, "Cannot respond to caller do to exception.", e4);
                    return;
                }
            }
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                a0 userAccounts = getUserAccounts(i4);
                if (features != null && features.length != 0) {
                    new s(userAccounts, response, type, features, i2, opPackageName, false).bind();
                    return;
                }
                Account[] accountsFromCache = getAccountsFromCache(userAccounts, type, i2, opPackageName, false);
                Bundle bundle2 = new Bundle();
                bundle2.putParcelableArray("accounts", accountsFromCache);
                onResult(response, bundle2);
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new IllegalArgumentException("accountType is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsByTypeForPackage(String type, String packageName, String opPackageName) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        int packageUid = com.xinzhu.overmind.server.pm.h.get().getPackageUid(packageName, 0, i4);
        if (packageUid == -1) {
            com.xinzhu.overmind.utils.u.c(TAG, "Couldn't determine the packageUid for " + packageName);
            return EMPTY_ACCOUNT_ARRAY;
        } else if (!MindUserHandle.p(i2, 1000) && type != null && !isAccountManagedByCaller(type, i2, i4)) {
            return EMPTY_ACCOUNT_ARRAY;
        } else {
            if (!MindUserHandle.p(i2, 1000) && type == null) {
                return getAccountsAsUserForPackage(type, i4, packageName, packageUid, opPackageName, false);
            }
            return getAccountsAsUserForPackage(type, i4, packageName, packageUid, opPackageName, true);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsForPackage(String packageName, int uid, String opPackageName) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (MindUserHandle.p(i2, 1000)) {
            return getAccountsAsUserForPackage(null, b4.f64330c, packageName, uid, opPackageName, true);
        }
        throw new SecurityException("getAccountsForPackage() called from unauthorized uid " + i2 + " with uid=" + uid);
    }

    protected Account[] getAccountsFromCache(a0 userAccounts, String accountType, int callingUid, String callingPackage, boolean includeManagedNotVisible) {
        Account[] accountArr;
        if (accountType != null) {
            synchronized (userAccounts.f64351b) {
                accountArr = userAccounts.f64355f.get(accountType);
            }
            if (accountArr == null) {
                return EMPTY_ACCOUNT_ARRAY;
            }
            return filterAccounts(userAccounts, (Account[]) Arrays.copyOf(accountArr, accountArr.length), callingUid, callingPackage, includeManagedNotVisible);
        }
        synchronized (userAccounts.f64351b) {
            int i2 = 0;
            for (Account[] accountArr2 : userAccounts.f64355f.values()) {
                i2 += accountArr2.length;
            }
            if (i2 == 0) {
                return EMPTY_ACCOUNT_ARRAY;
            }
            Account[] accountArr3 = new Account[i2];
            int i4 = 0;
            for (Account[] accountArr4 : userAccounts.f64355f.values()) {
                System.arraycopy(accountArr4, 0, accountArr3, i4, accountArr4.length);
                i4 += accountArr4.length;
            }
            return filterAccounts(userAccounts, accountArr3, callingUid, callingPackage, includeManagedNotVisible);
        }
    }

    public r[] getAllAccounts() {
        List<MindUserInfo> f4 = com.xinzhu.overmind.client.frameworks.h.d().f();
        int size = f4.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = f4.get(i2).f64670a;
        }
        return getAccounts(iArr);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAuthToken(IAccountManagerResponse response, Account account, String authTokenType, boolean notifyOnAuthFailure, boolean expectActivityLaunch, Bundle loginOptions, int uid) {
        a0 a0Var;
        String readAuthTokenInternal;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "getAuthToken: " + account + ", response " + response + ", authTokenType " + authTokenType + ", notifyOnAuthFailure " + notifyOnAuthFailure + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(response, "response cannot be null");
        try {
            if (account == null) {
                com.xinzhu.overmind.utils.u.j(TAG, "getAuthToken called with null account");
                response.onError(7, "account is null");
            } else if (authTokenType == null) {
                com.xinzhu.overmind.utils.u.j(TAG, "getAuthToken called with null authTokenType");
                response.onError(7, "authTokenType is null");
            } else {
                int i2 = BinderHelper.b().f64330c;
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    a0 userAccounts = getUserAccounts(i2);
                    l.d<AuthenticatorDescription> d4 = this.mAuthenticatorCache.d(AuthenticatorDescription.newKey(account.type), userAccounts.f64350a);
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    boolean z3 = d4 != null && d4.f64637a.customTokens;
                    boolean z4 = z3 || permissionIsGranted(account, authTokenType, uid, i2);
                    String string = loginOptions.getString("androidPackageName");
                    clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        List asList = Arrays.asList(com.xinzhu.overmind.server.pm.h.get().getPackagesForUid(uid));
                        if (string != null && asList.contains(string)) {
                            loginOptions.putInt("callerUid", uid);
                            loginOptions.putInt("callerPid", Binder.getCallingPid());
                            if (notifyOnAuthFailure) {
                                loginOptions.putBoolean(KEY_NOTIFY_ON_FAILURE, true);
                            }
                            clearCallingIdentity = Binder.clearCallingIdentity();
                            try {
                                byte[] calculatePackageSignatureDigest = calculatePackageSignatureDigest(string);
                                if (!z3 && z4 && (readAuthTokenInternal = readAuthTokenInternal(userAccounts, account, authTokenType)) != null) {
                                    Bundle bundle = new Bundle();
                                    bundle.putString("authtoken", readAuthTokenInternal);
                                    bundle.putString("authAccount", account.name);
                                    bundle.putString("accountType", account.type);
                                    onResult(response, bundle);
                                    return;
                                }
                                if (z3) {
                                    a0Var = userAccounts;
                                    String readCachedTokenInternal = readCachedTokenInternal(userAccounts, account, authTokenType, string, calculatePackageSignatureDigest);
                                    if (readCachedTokenInternal != null) {
                                        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
                                            com.xinzhu.overmind.utils.m.i(TAG, "getAuthToken: cache hit ofr custom token authenticator.");
                                        }
                                        Bundle bundle2 = new Bundle();
                                        bundle2.putString("authtoken", readCachedTokenInternal);
                                        bundle2.putString("authAccount", account.name);
                                        bundle2.putString("accountType", account.type);
                                        onResult(response, bundle2);
                                        return;
                                    }
                                } else {
                                    a0Var = userAccounts;
                                }
                                new n(a0Var, response, account.type, expectActivityLaunch, false, account.name, false, loginOptions, account, authTokenType, notifyOnAuthFailure, z4, uid, z3, string, calculatePackageSignatureDigest, a0Var).bind();
                                return;
                            } finally {
                            }
                        }
                        throw new SecurityException(String.format("Uid %s is attempting to illegally masquerade as package %s!", Integer.valueOf(uid), string));
                    } finally {
                    }
                } finally {
                }
            }
        } catch (RemoteException e4) {
            com.xinzhu.overmind.utils.u.j(TAG, "Failed to report error back to the client." + e4);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAuthTokenLabel(IAccountManagerResponse response, String accountType, String authTokenType) {
        Objects.requireNonNull(accountType, "accountType cannot be null");
        Objects.requireNonNull(authTokenType, "authTokenType cannot be null");
        int callingUid = Binder.getCallingUid();
        Binder.clearCallingIdentity();
        if (MindUserHandle.a(callingUid) == 1000) {
            int k4 = MindUserHandle.k(callingUid);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                new c(getUserAccounts(k4), response, accountType, false, false, null, false, accountType, authTokenType).bind();
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException("can only call from system");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public AuthenticatorDescription[] getAuthenticatorTypes(int userId) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "getAuthenticatorTypes: for user id " + userId + " caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        if (!isCrossUser(i2, userId)) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return getAuthenticatorTypesInternal(userId);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException(String.format("User %s tying to get authenticator types for %s", Integer.valueOf(b4.f64330c), Integer.valueOf(userId)));
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Map<String, Integer> getPackagesAndVisibilityForAccount(Account account) {
        Map<String, Integer> packagesAndVisibilityForAccountLocked;
        Objects.requireNonNull(account, "account cannot be null");
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        if (!isAccountManagedByCaller(account.type, i2, i4) && !isSystemUid(i2)) {
            throw new SecurityException(String.format("uid %s cannot get secrets for account %s", Integer.valueOf(i2), account));
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i4);
            synchronized (userAccounts.f64351b) {
                packagesAndVisibilityForAccountLocked = getPackagesAndVisibilityForAccountLocked(account, userAccounts);
            }
            return packagesAndVisibilityForAccountLocked;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getPassword(Account account) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "getPassword: " + account + ", caller's uid " + b4.f64329b + ", pid " + b4.f64328a);
        }
        if (account != null) {
            int i4 = b4.f64330c;
            if (isAccountManagedByCaller(account.type, i2, i4)) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return readPasswordInternal(getUserAccounts(i4), account);
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            throw new SecurityException(String.format("uid %s cannot get secrets for accounts of type: %s", Integer.valueOf(i2), account.type));
        }
        throw new IllegalArgumentException("account is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getPreviousName(Account account) {
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "getPreviousName: " + account + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid());
        }
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        Objects.requireNonNull(account, "account cannot be null");
        int i2 = b4.f64330c;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return readPreviousNameInternal(getUserAccounts(i2), account);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getSharedAccountsAsUser(int userId) throws RemoteException {
        throw new RuntimeException("Not implemented.");
    }

    protected a0 getUserAccounts(int userId) {
        a0 a0Var;
        synchronized (this.mUsers) {
            a0Var = this.mUsers.get(userId);
            if (a0Var == null) {
                a0Var = new a0(userId);
                this.mUsers.append(userId, a0Var);
                purgeOldGrants(a0Var);
            }
        }
        return a0Var;
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getUserData(Account account, String key) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, String.format("getUserData( account: %s, key: %s, callerUid: %s, pid: %s", account, key, Integer.valueOf(i2), Integer.valueOf(Binder.getCallingPid())));
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(key, "key cannot be null");
        int i4 = b4.f64330c;
        if (isAccountManagedByCaller(account.type, i2, i4)) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return readUserDataInternal(getUserAccounts(i4), account, key);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException(String.format("uid %s cannot get user data for accounts of type: %s", Integer.valueOf(i2), account.type));
    }

    void grantAppPermission(final Account account, String authTokenType, final int uid) {
        if (account != null && authTokenType != null) {
            a0 userAccounts = getUserAccounts(MindUserHandle.k(uid));
            synchronized (userAccounts.f64351b) {
                userAccounts.q(account, authTokenType, uid);
                saveUidGrantsLocked(userAccounts);
                cancelNotification(getCredentialPermissionNotificationId(account, authTokenType, uid), MindUserHandle.t(userAccounts.f64350a));
                cancelAccountAccessRequestNotificationIfNeeded(account, uid, true);
            }
            Iterator<v> it2 = this.mAppPermissionChangeListeners.iterator();
            while (it2.hasNext()) {
                final v next = it2.next();
                this.mHandler.post(new Runnable() { // from class: com.xinzhu.overmind.server.accounts.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        MindAccountManagerService.v.this.a(account, uid);
                    }
                });
            }
            return;
        }
        com.xinzhu.overmind.utils.m.d(TAG, "grantAppPermission: called with invalid arguments", new Exception());
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void hasFeatures(IAccountManagerResponse response, Account account, String[] features, String opPackageName) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "hasFeatures: " + account + ", response " + response + ", features " + Arrays.toString(features) + ", caller's uid " + b4.f64329b + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(response, "response cannot be null");
        Objects.requireNonNull(features, "features cannot be null");
        int i2 = b4.f64330c;
        checkReadAccountsPermitted(b4.f64329b, account.type, i2, opPackageName);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new z(getUserAccounts(i2), response, account, features).bind();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void invalidateAuthToken(String accountType, String authToken) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        Objects.requireNonNull(accountType, "accountType cannot be null");
        Objects.requireNonNull(authToken, "authToken cannot be null");
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "invalidateAuthToken: accountType " + accountType + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        int i4 = b4.f64330c;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i4);
            synchronized (userAccounts.f64351b) {
                for (Pair<Account, String> pair : invalidateAuthTokenLocked(userAccounts, accountType, authToken)) {
                    writeAuthTokenIntoCacheLocked(userAccounts, (Account) pair.first, (String) pair.second, null);
                }
                userAccounts.f64358i.d(accountType, authToken);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void isCredentialsUpdateSuggested(IAccountManagerResponse response, Account account, String statusToken) {
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "isCredentialsUpdateSuggested: " + account + ", response " + response + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid());
        }
        if (response == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (account != null) {
            if (!TextUtils.isEmpty(statusToken)) {
                int i2 = BinderHelper.b().f64330c;
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    new g(getUserAccounts(i2), response, account.type, false, false, account.name, false, account, statusToken).bind();
                    return;
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            throw new IllegalArgumentException("status token is empty");
        }
        throw new IllegalArgumentException("account is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void onAccountAccessed(String token) {
        Account[] accounts;
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (MindUserHandle.a(i2) == 1000) {
            return;
        }
        int i4 = b4.f64330c;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            for (Account account : getAccounts(i4, q.a.f73954a)) {
                if (Objects.equals(new com.xinzhu.haunted.android.accounts.a(account).h(), token) && !hasAccountAccess(account, (String) null, i2)) {
                    updateAppPermission(account, ACCOUNT_ACCESS_TOKEN_TYPE, i2, true);
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String peekAuthToken(Account account, String authTokenType) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "peekAuthToken: " + account + ", authTokenType " + authTokenType + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(authTokenType, "authTokenType cannot be null");
        int i4 = b4.f64330c;
        if (isAccountManagedByCaller(account.type, i2, i4)) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return readAuthTokenInternal(getUserAccounts(i4), account, authTokenType);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException(String.format("uid %s cannot peek the authtokens associated with accounts of type: %s", Integer.valueOf(i2), account.type));
    }

    protected String readAuthTokenInternal(a0 accounts, Account account, String authTokenType) {
        synchronized (accounts.f64351b) {
            Map map = (Map) accounts.f64357h.get(account);
            if (map != null) {
                return (String) map.get(authTokenType);
            }
            return null;
        }
    }

    protected String readCachedTokenInternal(a0 accounts, Account account, String tokenType, String callingPackage, byte[] pkgSigDigest) {
        String a4;
        synchronized (accounts.f64351b) {
            a4 = accounts.f64358i.a(account, tokenType, callingPackage, pkgSigDigest);
        }
        return a4;
    }

    public String readUserDataInternal(a0 userAccounts, Account account, String key) {
        synchronized (userAccounts.f64351b) {
            Map map = (Map) userAccounts.f64356g.get(account);
            if (map == null) {
                return null;
            }
            return (String) map.get(key);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void removeAccountAsUser(IAccountManagerResponse response, Account account, boolean expectActivityLaunch, int userId) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "removeAccount: " + account + ", response " + response + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid() + ", for user id " + userId);
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(response, "response cannot be null");
        if (!isCrossUser(i2, userId)) {
            if (isAccountManagedByCaller(account.type, i2, userId)) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                a0 userAccounts = getUserAccounts(userId);
                MindUserHandle mindUserHandle = new MindUserHandle(userId);
                cancelNotification(getSigninRequiredNotificationId(userAccounts, account), mindUserHandle);
                synchronized (userAccounts.f64353d) {
                    for (Pair pair : userAccounts.f64353d.keySet()) {
                        if (account.equals(((Pair) pair.first).first)) {
                            cancelNotification((u) userAccounts.f64353d.get(pair), mindUserHandle);
                        }
                    }
                }
                try {
                    new w(userAccounts, response, account, expectActivityLaunch).bind();
                    return;
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            throw new SecurityException(String.format("uid %s cannot remove accounts of type: %s", Integer.valueOf(i2), account.type));
        }
        throw new SecurityException(String.format("User %s tying remove account for %s", Integer.valueOf(b4.f64330c), Integer.valueOf(userId)));
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean removeAccountExplicitly(Account account) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "removeAccountExplicitly: " + account + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        int i4 = b4.f64330c;
        if (account == null) {
            com.xinzhu.overmind.utils.m.c(TAG, "account is null");
            return false;
        } else if (isAccountManagedByCaller(account.type, i2, i4)) {
            a0 userAccountsForCaller = getUserAccountsForCaller();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return removeAccountInternal(userAccountsForCaller, account, i2);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        } else {
            throw new SecurityException(String.format("uid %s cannot explicitly remove accounts of type: %s", Integer.valueOf(i2), account.type));
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean removeSharedAccountAsUser(Account account, int userId) throws RemoteException {
        throw new RuntimeException("Not implemented.");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void renameAccount(IAccountManagerResponse response, Account accountToRename, String newName) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "renameAccount: " + accountToRename + " -> " + newName + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        if (accountToRename != null) {
            int i4 = b4.f64330c;
            if (isAccountManagedByCaller(accountToRename.type, i2, i4)) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    Account renameAccountInternal = renameAccountInternal(getUserAccounts(i4), accountToRename, newName);
                    Bundle bundle = new Bundle();
                    bundle.putString("authAccount", renameAccountInternal.name);
                    bundle.putString("accountType", renameAccountInternal.type);
                    bundle.putString(KEY_ACCOUNT_ACCESS_ID, new com.xinzhu.haunted.android.accounts.a(renameAccountInternal).h());
                    try {
                        response.onResult(bundle);
                    } catch (RemoteException e4) {
                        com.xinzhu.overmind.utils.m.k(TAG, e4.getMessage());
                    }
                    return;
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            throw new SecurityException(String.format("uid %s cannot rename accounts of type: %s", Integer.valueOf(i2), accountToRename.type));
        }
        throw new IllegalArgumentException("account is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean renameSharedAccountAsUser(Account accountToRename, String newName, int userId) throws RemoteException {
        throw new RuntimeException("Not implemented.");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setAuthToken(Account account, String authTokenType, String authToken) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "setAuthToken: " + account + ", authTokenType " + authTokenType + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(authTokenType, "authTokenType cannot be null");
        int i4 = b4.f64330c;
        if (isAccountManagedByCaller(account.type, i2, i4)) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                saveAuthTokenToDatabase(getUserAccounts(i4), account, authTokenType, authToken);
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException(String.format("uid %s cannot set auth tokens associated with accounts of type: %s", Integer.valueOf(i2), account.type));
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setPassword(Account account, String password) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "setAuthToken: " + account + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        int i4 = b4.f64330c;
        if (isAccountManagedByCaller(account.type, i2, i4)) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                setPasswordInternal(getUserAccounts(i4), account, password, i2);
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException(String.format("uid %s cannot set secrets for accounts of type: %s", Integer.valueOf(i2), account.type));
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setUserData(Account account, String key, String value) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "setUserData: " + account + ", key " + key + ", caller's uid " + i2 + ", pid " + Binder.getCallingPid());
        }
        if (key == null) {
            throw new IllegalArgumentException("key is null");
        }
        if (account != null) {
            int i4 = b4.f64330c;
            if (isAccountManagedByCaller(account.type, i2, i4)) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    a0 userAccounts = getUserAccounts(i4);
                    if (accountExistsCache(userAccounts, account)) {
                        setUserdataInternal(userAccounts, account, key, value);
                        return;
                    }
                    return;
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            throw new SecurityException(String.format("uid %s cannot set user data for accounts of type: %s", Integer.valueOf(i2), account.type));
        }
        throw new IllegalArgumentException("account is null");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean someUserHasAccount(Account account) {
        if (MindUserHandle.p(1000, BinderHelper.b().f64329b)) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                r[] allAccounts = getAllAccounts();
                for (int length = allAccounts.length - 1; length >= 0; length--) {
                    if (allAccounts[length].f64367a.equals(account)) {
                        return true;
                    }
                }
                return false;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new SecurityException("Only system can check for accounts across users");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void startAddAccountSession(IAccountManagerResponse response, String accountType, String authTokenType, String[] requiredFeatures, boolean expectActivityLaunch, Bundle optionsIn) {
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "startAddAccountSession: accountType " + accountType + ", response " + response + ", authTokenType " + authTokenType + ", requiredFeatures " + Arrays.toString(requiredFeatures) + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(response, "response cannot be null");
        Objects.requireNonNull(accountType, "accountType cannot be null");
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        if (!canUserModifyAccounts(i4, i2)) {
            try {
                response.onError(100, "User is not allowed to add an account!");
            } catch (RemoteException unused) {
            }
            showCantAddAccount(100, i4);
        } else if (!canUserModifyAccountsForType(i4, accountType, i2)) {
            try {
                response.onError(101, "User cannot modify accounts of this type (policy).");
            } catch (RemoteException unused2) {
            }
            showCantAddAccount(101, i4);
        } else {
            int callingPid = Binder.getCallingPid();
            Bundle bundle = optionsIn == null ? new Bundle() : optionsIn;
            bundle.putInt("callerUid", i2);
            bundle.putInt("callerPid", callingPid);
            bundle.getString("androidPackageName");
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                new d(getUserAccounts(i4), response, accountType, expectActivityLaunch, null, false, true, false, authTokenType, requiredFeatures, bundle, accountType).bind();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void startUpdateCredentialsSession(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle loginOptions) {
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "startUpdateCredentialsSession: " + account + ", response " + response + ", authTokenType " + authTokenType + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid());
        }
        if (response == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (account != null) {
            BinderHelper.CallingInfo b4 = BinderHelper.b();
            int i2 = b4.f64329b;
            int i4 = b4.f64330c;
            loginOptions.getString("androidPackageName");
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                new e(getUserAccounts(i4), response, account.type, expectActivityLaunch, account.name, false, true, false, account, authTokenType, loginOptions).bind();
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new IllegalArgumentException("account is null");
    }

    @Override // com.xinzhu.overmind.server.c
    public void systemReady() {
        loadAllAccounts();
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void updateAppPermission(Account account, String authTokenType, int uid, boolean value) {
        if (MindUserHandle.a(BinderHelper.b().f64329b) != 1000) {
            throw new SecurityException();
        }
        if (value) {
            grantAppPermission(account, authTokenType, uid);
        } else {
            revokeAppPermission(account, authTokenType, uid);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void updateCredentials(IAccountManagerResponse response, Account account, String authTokenType, boolean expectActivityLaunch, Bundle loginOptions) {
        if (com.xinzhu.overmind.utils.m.g(TAG, 2)) {
            com.xinzhu.overmind.utils.m.i(TAG, "updateCredentials: " + account + ", response " + response + ", authTokenType " + authTokenType + ", expectActivityLaunch " + expectActivityLaunch + ", caller's uid " + BinderHelper.b().f64329b + ", pid " + Binder.getCallingPid());
        }
        if (response == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (account != null) {
            int i2 = BinderHelper.b().f64330c;
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                new q(getUserAccounts(i2), response, account.type, expectActivityLaunch, true, account.name, false, true, account, authTokenType, loginOptions).bind();
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        throw new IllegalArgumentException("account is null");
    }

    protected void writeAuthTokenIntoCacheLocked(a0 accounts, Account account, String key, String value) {
        Map map = (Map) accounts.f64357h.get(account);
        if (map == null) {
            map = new HashMap();
            accounts.f64357h.put(account, map);
        }
        if (value == null) {
            map.remove(key);
        } else {
            map.put(key, value);
        }
        saveAccountAuthTokenLocked(accounts);
    }

    protected void writeUserDataIntoCacheLocked(a0 accounts, Account account, String key, String value) {
        Map map = (Map) accounts.f64356g.get(account);
        if (map == null) {
            map = new HashMap();
            accounts.f64356g.put(account, map);
        }
        if (value == null) {
            map.remove(key);
        } else {
            map.put(key, value);
        }
        saveAccountUserDataLocked(accounts);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelNotification(u id, String packageName, MindUserHandle user) {
        ((NotificationManager) Overmind.getContext().getSystemService("notification")).cancel(id.f64371b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class UidGrant implements Parcelable {
        public static final Parcelable.Creator<UidGrant> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        public int f64347a;

        /* renamed from: b  reason: collision with root package name */
        public String f64348b;

        /* renamed from: c  reason: collision with root package name */
        public Account f64349c;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<UidGrant> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public UidGrant createFromParcel(Parcel in2) {
                return new UidGrant(in2);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public UidGrant[] newArray(int size) {
                return new UidGrant[size];
            }
        }

        public UidGrant(int uid, String authTokenType, Account account) {
            this.f64347a = uid;
            this.f64348b = authTokenType;
            this.f64349c = account;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.f64347a);
            dest.writeString(this.f64348b);
            dest.writeParcelable(this.f64349c, flags);
        }

        protected UidGrant(Parcel in2) {
            this.f64347a = in2.readInt();
            this.f64348b = in2.readString();
            this.f64349c = (Account) in2.readParcelable(Account.class.getClassLoader());
        }
    }

    private void cancelAccountAccessRequestNotificationIfNeeded(String packageName, int uid, boolean checkAccess) {
        for (Account account : getAccountsAsUser(null, MindUserHandle.k(uid), q.a.f73954a)) {
            cancelAccountAccessRequestNotificationIfNeeded(account, uid, packageName, checkAccess);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean hasAccountAccess(Account account, String packageName, UserHandle userHandle) {
        if (MindUserHandle.a(BinderHelper.b().f64329b) == 1000) {
            Objects.requireNonNull(account, "account cannot be null");
            Objects.requireNonNull(packageName, "packageName cannot be null");
            Objects.requireNonNull(userHandle, "userHandle cannot be null");
            int identifier = new com.xinzhu.haunted.android.os.u(userHandle).getIdentifier();
            if (identifier >= 0) {
                int packageUid = com.xinzhu.overmind.server.pm.h.get().getPackageUid(packageName, 0, identifier);
                if (packageUid == -1) {
                    com.xinzhu.overmind.utils.m.a(TAG, "Package not found ");
                    return false;
                }
                return hasAccountAccess(account, packageName, packageUid);
            }
            throw new IllegalArgumentException("user must be concrete");
        }
        throw new SecurityException("Can be called only by system UID");
    }

    private void cancelAccountAccessRequestNotificationIfNeeded(Account account, int uid, boolean checkAccess) {
        String[] packagesForUid = com.xinzhu.overmind.server.pm.h.get().getPackagesForUid(uid);
        if (packagesForUid != null) {
            for (String str : packagesForUid) {
                cancelAccountAccessRequestNotificationIfNeeded(account, uid, str, checkAccess);
            }
        }
    }

    private void cancelAccountAccessRequestNotificationIfNeeded(Account account, int uid, String packageName, boolean checkAccess) {
        if (!checkAccess || hasAccountAccess(account, packageName, MindUserHandle.j(uid).w())) {
            cancelNotification(getCredentialPermissionNotificationId(account, ACCOUNT_ACCESS_TOKEN_TYPE, uid), packageName, MindUserHandle.j(uid));
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void registerAccountListener(String[] accountTypes, String opPackageName) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            registerAccountListener(accountTypes, opPackageName, getUserAccounts(i4));
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    private r[] getAccounts(int[] userIds) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        ArrayList arrayList = new ArrayList();
        for (int i2 : userIds) {
            a0 userAccounts = getUserAccounts(i2);
            if (userAccounts != null) {
                for (Account account : getAccountsFromCache(userAccounts, null, b4.f64329b, null, false)) {
                    arrayList.add(new r(account, i2));
                }
            }
        }
        return (r[]) arrayList.toArray(new r[arrayList.size()]);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void unregisterAccountListener(String[] accountTypes, String opPackageName) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            unregisterAccountListener(accountTypes, opPackageName, getUserAccounts(i4));
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Map<Account, Integer> getAccountsAndVisibilityForPackage(String packageName, String accountType) {
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        boolean p3 = MindUserHandle.p(i2, 1000);
        List<String> typesForCaller = getTypesForCaller(i2, i4, p3);
        if ((accountType != null && !typesForCaller.contains(accountType)) || (accountType == null && !p3)) {
            throw new SecurityException("getAccountsAndVisibilityForPackage() called from unauthorized uid " + i2 + " with packageName=" + packageName);
        }
        if (accountType != null) {
            typesForCaller = new ArrayList<>();
            typesForCaller.add(accountType);
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return getAccountsAndVisibilityForPackage(packageName, typesForCaller, Integer.valueOf(i2), getUserAccounts(i4));
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean setAccountVisibility(Account account, String packageName, int newVisibility) {
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(packageName, "packageName cannot be null");
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        int i2 = b4.f64329b;
        int i4 = b4.f64330c;
        if (!isAccountManagedByCaller(account.type, i2, i4) && !isSystemUid(i2)) {
            throw new SecurityException(String.format("uid %s cannot get secrets for accounts of type: %s", Integer.valueOf(i2), account.type));
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return setAccountVisibility(account, packageName, newVisibility, true, getUserAccounts(i4));
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
