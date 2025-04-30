.class public Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.super Lcom/xinzhu/overmind/server/accounts/e$b;
.source "MindAccountManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$w;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$z;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final ACCOUNTS_FILE_AUTH_TOKEN:Ljava/lang/String; = "authtoken.db"

.field private static final ACCOUNTS_FILE_AUTH_TOKEN_MAGIC:[B

.field private static final ACCOUNTS_FILE_DATA:Ljava/lang/String; = "accounts.db"

.field private static final ACCOUNTS_FILE_DATA_MAGIC:[B

.field private static final ACCOUNTS_FILE_PREVIOUS_NAME:Ljava/lang/String; = "previous.db"

.field private static final ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC:[B

.field private static final ACCOUNTS_FILE_UID_GRANT:Ljava/lang/String; = "grant.db"

.field private static final ACCOUNTS_FILE_UID_GRANT_MAGIC:[B

.field private static final ACCOUNTS_FILE_USER_DATA:Ljava/lang/String; = "userdata.db"

.field private static final ACCOUNTS_FILE_USER_DATA_MAGIC:[B

.field private static final ACCOUNTS_FILE_VISIBILITY:Ljava/lang/String; = "visibility.db"

.field private static final ACCOUNTS_FILE_VISIBILITY_MAGIC:[B

.field public static final ACCOUNT_ACCESS_TOKEN_TYPE:Ljava/lang/String; = "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

.field public static final ACTION_ACCOUNT_REMOVED:Ljava/lang/String; = "android.accounts.action.ACCOUNT_REMOVED"

.field public static final ACTION_VISIBLE_ACCOUNTS_CHANGED:Ljava/lang/String; = "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field public static final ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE:I = 0x65

.field public static final ERROR_CODE_USER_RESTRICTED:I = 0x64

.field public static final KEY_ACCOUNT_ACCESS_ID:Ljava/lang/String; = "accountAccessId"

.field public static final KEY_ACCOUNT_SESSION_BUNDLE:Ljava/lang/String; = "accountSessionBundle"

.field public static final KEY_CUSTOM_TOKEN_EXPIRY:Ljava/lang/String; = "android.accounts.expiry"

.field public static final KEY_LAST_AUTHENTICATED_TIME:Ljava/lang/String; = "lastAuthenticatedTime"

.field public static final KEY_NOTIFY_ON_FAILURE:Ljava/lang/String; = "notifyOnAuthFailure"

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field public static final PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE:Ljava/lang/String; = "android:accounts:key_legacy_not_visible"

.field public static final PACKAGE_NAME_KEY_LEGACY_VISIBLE:Ljava/lang/String; = "android:accounts:key_legacy_visible"

.field private static final SIGNATURE_CHECK_MATCH:I = 0x1

.field private static final SIGNATURE_CHECK_MISMATCH:I = 0x0

.field private static final SIGNATURE_CHECK_UID_MATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MAccountManagerService"

.field public static final VISIBILITY_NOT_VISIBLE:I = 0x3

.field public static final VISIBILITY_UNDEFINED:I = 0x0

.field public static final VISIBILITY_USER_MANAGED_NOT_VISIBLE:I = 0x4

.field public static final VISIBILITY_USER_MANAGED_VISIBLE:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x1

.field private static final sService:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# instance fields
.field private final mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

.field private mContext:Landroid/content/Context;

.field final mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

.field private final mPackageMonitor:Lcom/xinzhu/overmind/server/pm/j;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserListener:Lcom/xinzhu/overmind/server/user/b;

.field private mUserManager:Lcom/xinzhu/overmind/client/frameworks/h;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sService:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 2
    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 3
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_DATA_MAGIC:[B

    new-array v1, v0, [B

    .line 4
    fill-array-data v1, :array_1

    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_USER_DATA_MAGIC:[B

    new-array v1, v0, [B

    .line 5
    fill-array-data v1, :array_2

    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_AUTH_TOKEN_MAGIC:[B

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_3

    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_VISIBILITY_MAGIC:[B

    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_4

    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC:[B

    new-array v0, v0, [B

    .line 8
    fill-array-data v0, :array_5

    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_UID_GRANT_MAGIC:[B

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x55t
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x56t
    .end array-data

    :array_3
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x57t
    .end array-data

    :array_4
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x58t
    .end array-data

    :array_5
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/e$b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserManager:Lcom/xinzhu/overmind/client/frameworks/h;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$i;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$i;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserListener:Lcom/xinzhu/overmind/server/user/b;

    .line 8
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;

    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mPackageMonitor:Lcom/xinzhu/overmind/server/pm/j;

    .line 9
    new-instance v2, Lcom/xinzhu/overmind/server/accounts/a;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xinzhu/overmind/server/accounts/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 10
    new-instance v2, Lcom/xinzhu/overmind/server/h;

    const-string v3, "MAccountManagerService"

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/xinzhu/overmind/server/h;-><init>(Ljava/lang/String;IZ)V

    .line 11
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xinzhu/overmind/server/user/c;->registerListener(Lcom/xinzhu/overmind/server/user/b;)V

    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/server/pm/h;->addPackageMonitor(Lcom/xinzhu/overmind/server/pm/j;)V

    return-void
.end method

.method public static synthetic a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->lambda$removeAccountInternal$0(Landroid/accounts/Account;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->purgeUserData(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Lcom/xinzhu/overmind/server/accounts/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeVisibilityValuesForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAuthTokenToDatabase(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveCachedToken(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->doNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object p0

    return-object p0
.end method

.method private accountExistsCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    if-eqz p1, :cond_1

    .line 4
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 5
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private accountTypeManagesContacts(Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountType",
            "userId"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    invoke-interface {v3, p2}, Lcom/xinzhu/overmind/server/accounts/d;->e(I)Ljava/util/Collection;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/l$d;

    .line 5
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7
    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private addAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "password",
            "extras",
            "callingUid",
            "packageToVisibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 p5, 0x0

    if-nez p2, :cond_0

    return p5

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    invoke-direct {v1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccount;-><init>(Landroid/accounts/Account;)V

    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "MAccountManagerService"

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "insertAccountIntoDatabase: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", skipping since the account already exists"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/m;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0

    return p5

    .line 6
    :cond_1
    iput-object p3, v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    if-eqz p4, :cond_3

    .line 9
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    :cond_3
    if-eqz p6, :cond_4

    .line 15
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    move-object v3, p5

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z

    goto :goto_1

    .line 19
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 22
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static synthetic b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->lambda$grantAppPermission$1(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    return-void
.end method

.method public static synthetic c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->lambda$revokeAppPermission$2(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    return-void
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callerPkg"
        }
    .end annotation

    const-string v0, "MAccountManagerService"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SHA-256"

    .line 1
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v3

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/xinzhu/overmind/server/pm/h;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find packageinfo for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xinzhu/overmind/utils/m;->k(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4
    :cond_0
    iget-object p1, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, p1

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v4, p1, v5

    .line 5
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "SHA-256 should be available"

    .line 6
    invoke-static {v0, v2, p1}, Lcom/xinzhu/overmind/utils/m;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private canUserModifyAccounts(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "callingUid"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "accountType",
            "callingUid"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "checkAccess"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {p0, v1, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-direct {p0, v3, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "uid",
            "packageName",
            "checkAccess"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 10
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->j(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->w()Landroid/os/UserHandle;

    move-result-object p4

    .line 11
    invoke-virtual {p0, p1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p4

    if-eqz p4, :cond_1

    :cond_0
    const-string p4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 12
    invoke-direct {p0, p1, p4, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object p1

    .line 13
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->j(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object p2

    .line 14
    invoke-direct {p0, p1, p3, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    :cond_1
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "uid",
            "checkAccess"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/server/pm/h;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 9
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "uid",
            "checkAccess"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {p0, v1, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 6
    invoke-direct {p0, v3, p2, p1, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "user"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    return-void
.end method

.method private cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "packageName",
            "user"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "notification"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private checkPackageSignature(Ljava/lang/String;II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountType",
            "callingUid",
            "userId"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    invoke-interface {v3, p3}, Lcom/xinzhu/overmind/server/accounts/d;->e(I)Ljava/util/Collection;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/l$d;

    .line 5
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget v2, v1, Lcom/xinzhu/overmind/server/pm/l$d;->d:I

    if-ne v2, p2, :cond_2

    const/4 p1, 0x2

    return p1

    .line 7
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v2

    iget v1, v1, Lcom/xinzhu/overmind/server/pm/l$d;->d:I

    const/16 v3, 0x10

    invoke-virtual {v2, v1, p2, v3}, Lcom/xinzhu/overmind/server/pm/h;->hasSignatureCapability(III)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callingUid",
            "accountType",
            "userId",
            "opPackageName"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "caller uid %s cannot access %s accounts"

    .line 3
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MAccountManagerService"

    invoke-static {p3, p2}, Lcom/xinzhu/overmind/utils/m;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "response",
            "accountCredentials",
            "account",
            "targetUser",
            "parentUserId"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2
    :try_start_0
    new-instance v15, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$l;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$l;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 3
    invoke-virtual {v15}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5
    throw v0
.end method

.method private doNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "accounts",
            "account",
            "message",
            "intent",
            "packageName",
            "userId"
        }
    .end annotation

    return-void
.end method

.method private filterAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "unfiltered",
            "callingUid",
            "callingPackage",
            "includeManagedNotVisible"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 1
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 2
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    .line 4
    invoke-direct {p0, v4, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    if-eqz p5, :cond_2

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 5
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_3
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->filterSharedAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Landroid/accounts/Account;

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1
.end method

.method private filterSharedAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAccounts",
            "unfiltered",
            "callingUid",
            "callingPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public static get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sService:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    return-object v0
.end method

.method private getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "accounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/xinzhu/overmind/server/pm/h;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 8
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1, v2, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "accounts"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getAccounts([I)[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userIds"
        }
    .end annotation

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p1, v4

    .line 14
    invoke-virtual {p0, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    .line 15
    iget v9, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v6

    .line 16
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 17
    new-instance v10, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    invoke-direct {v10, v9, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    return-object p1
.end method

.method private getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "accountTypes",
            "callingUid",
            "accounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "MAccountManagerService"

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Package not found "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xinzhu/overmind/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    if-eqz v1, :cond_1

    .line 8
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 9
    invoke-direct {p0, v5, p1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v6

    .line 10
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p4, v0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->filterSharedAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "userId",
            "callingPackage",
            "packageUid",
            "opPackageName",
            "includeUserManagedNotVisible"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 3
    iget v2, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    const/16 v3, 0x3e8

    if-eq p2, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "User "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " trying to get account for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    const-string v2, "MAccountManagerService"

    .line 5
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccounts: accountType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v4

    iget v4, v4, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v0

    const/4 v2, -0x1

    if-eq p4, v2, :cond_4

    .line 11
    invoke-static {v1, v3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v5, p3

    move v4, p4

    goto :goto_1

    :cond_4
    move-object v5, p5

    move v4, v1

    .line 13
    :goto_1
    invoke-direct {p0, v4, p2, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 14
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_7

    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v6, p3

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 20
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    move-object v2, p0

    move v7, p6

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p1

    .line 24
    :cond_7
    :goto_2
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1
.end method

.method private getAccountsInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAccounts",
            "callingUid",
            "callingPackage",
            "visibleAccountTypes",
            "includeUserManagedNotVisible"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/accounts/Account;

    const/4 p2, 0x0

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    aput-object p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/d;->b(I)V

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/d;->e(I)Ljava/util/Collection;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/AuthenticatorDescription;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/l$d;

    .line 5
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    if-nez p3, :cond_0

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAccountManagerService:38:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x26

    .line 8
    new-instance p3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    invoke-direct {p3, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;-><init>(Ljava/lang/String;I)V

    .line 9
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    monitor-exit v1

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/pm/h;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 3
    aget-object v2, v0, v1

    .line 4
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    const v3, 0x7fffffff

    .line 5
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v7

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v8

    .line 8
    invoke-virtual {v7, v6, v1, v8}, Lcom/xinzhu/overmind/server/pm/h;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 9
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v7, v3, :cond_2

    move-object v2, v6

    move v3, v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "accounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, "MAccountManagerService"

    const-string v1, "Visibility was not initialized"

    .line 2
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getRequestingPackages(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "accounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    .line 3
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput-object v4, v3, v6

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v4, v3, v5

    .line 4
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1, v2, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAccountManagerService:37:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p2}, Landroid/accounts/Account;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    .line 5
    new-instance v3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    invoke-direct {v3, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 7
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callingUid",
            "userId",
            "isOtherwisePermitted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    invoke-interface {v3, p2}, Lcom/xinzhu/overmind/server/accounts/d;->e(I)Ljava/util/Collection;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/l$d;

    if-nez p3, :cond_1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v2

    iget v3, v1, Lcom/xinzhu/overmind/server/pm/l$d;->d:I

    const/16 v4, 0x10

    invoke-virtual {v2, v3, p1, v4}, Lcom/xinzhu/overmind/server/pm/h;->hasSignatureCapability(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    :cond_1
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingUid",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callingUid",
            "userId",
            "opPackageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p3, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getUserAccountsForCaller()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Lcom/xinzhu/overmind/client/frameworks/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserManager:Lcom/xinzhu/overmind/client/frameworks/h;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/h;->d()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserManager:Lcom/xinzhu/overmind/client/frameworks/h;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserManager:Lcom/xinzhu/overmind/client/frameworks/h;

    return-object v0
.end method

.method private handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accounts",
            "callingPackage"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    array-length p3, p2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    .line 5
    aget-object v1, p2, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "authAccount"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    aget-object p2, p2, v0

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v0, "accountType"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 8
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method private hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "uid"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object p3

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "callerUid"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 3
    iget-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p3, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->o(ILjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, p3, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->p(ILandroid/accounts/Account;)J

    move-result-wide p1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_1
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 3
    new-array v3, v3, [Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1
    new-instance v0, Lcom/xinzhu/haunted/android/accounts/a;

    invoke-direct {v0, p2}, Lcom/xinzhu/haunted/android/accounts/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/accounts/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/xinzhu/haunted/android/accounts/a;

    invoke-direct {v0, p2}, Lcom/xinzhu/haunted/android/accounts/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/accounts/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_1
    invoke-static {p2, v0}, Lcom/xinzhu/haunted/android/accounts/a;->f(Landroid/accounts/Account;Ljava/lang/String;)Lcom/xinzhu/haunted/android/accounts/a;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/haunted/android/accounts/a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    aput-object v0, v3, v2

    .line 9
    iget-object p1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    aget-object p1, v3, v2

    return-object p1
.end method

.method private invalidateAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "accountType",
            "authToken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 4
    iget-object v4, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 7
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    new-instance v6, Landroid/accounts/Account;

    iget-object v7, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v6, v7, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 15
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountType",
            "callingUid",
            "userId"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountName",
            "accountType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccountsForCaller()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    if-eqz p2, :cond_1

    .line 5
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 6
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountType",
            "callingUid",
            "userId",
            "opPackageName"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isCrossUser(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingUid",
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    if-eq p2, v0, :cond_0

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPreOApplication(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v2

    const/16 v3, 0x3e8

    .line 3
    invoke-static {v3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v3

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v2, p1, v4, v3}, Lcom/xinzhu/overmind/server/pm/h;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 6
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8
    throw p1
.end method

.method private isSpecialPackageKey(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    const-string v0, "android:accounts:key_legacy_visible"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android:accounts:key_legacy_not_visible"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isSystemUid(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callingUid"
        }
    .end annotation

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isVisible(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$grantAppPermission$1(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;->a(Landroid/accounts/Account;I)V

    return-void
.end method

.method private synthetic lambda$removeAccountInternal$0(Landroid/accounts/Account;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    return-void
.end method

.method private static synthetic lambda$revokeAppPermission$2(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;->a(Landroid/accounts/Account;I)V

    return-void
.end method

.method private loadAllAccounts()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadCompatAccounts()V

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/b;->a()Z

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/user/c;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 5
    new-instance v2, Ljava/io/File;

    iget v3, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    invoke-static {v3}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "accounts.db"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x4

    :try_start_1
    new-array v2, v2, [B

    .line 8
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 9
    sget-object v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_DATA_MAGIC:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10
    new-instance v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    iget v4, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    invoke-direct {v2, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;-><init>(I)V

    .line 11
    invoke-static {v7}, Lcom/xinzhu/overmind/utils/j;->w(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 12
    array-length v8, v4

    invoke-virtual {v3, v4, v6, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 13
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 14
    sget-object v4, Lcom/xinzhu/overmind/server/accounts/MindAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 16
    iget-object v9, v8, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    invoke-direct {p0, v2, v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 17
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, v8, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadUserData(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 19
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 20
    :cond_2
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadAuthToken(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 21
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 22
    :cond_3
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadVisibilities(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 23
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 24
    :cond_4
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadPreviousName(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 25
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 26
    :cond_5
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadUidGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 27
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->e(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_6
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    iget v8, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v7, v1, v6

    .line 30
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 31
    :cond_7
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 32
    :cond_8
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v7

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v4, v7

    goto :goto_2

    :catch_1
    move-object v4, v7

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_2
    :try_start_3
    const-string v7, "MAccountManagerService"

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading accounts for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/xinzhu/overmind/utils/m;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v4, v1, v6

    .line 36
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 37
    :goto_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v4, v1, v6

    .line 38
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 39
    throw v0

    .line 40
    :catch_3
    :goto_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v4, v1, v6

    .line 41
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private loadAuthToken(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object p1

    const-string v1, "authtoken.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_AUTH_TOKEN_MAGIC:[B

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadMap(Ljava/io/File;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private loadCompatAccounts()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserManager()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/b;->c()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/accounts/b$a;

    .line 4
    iget v3, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    invoke-virtual {v0, v3}, Lcom/xinzhu/overmind/client/frameworks/h;->c(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    iget-object v4, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->b:Landroid/accounts/Account;

    invoke-direct {v3, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccount;-><init>(Landroid/accounts/Account;)V

    .line 6
    iget-object v4, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Ljava/lang/String;

    .line 7
    iget-wide v4, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->e:J

    iput-wide v4, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->c:J

    .line 8
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    iget v5, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    if-nez v4, :cond_1

    .line 9
    new-instance v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    iget v5, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    invoke-direct {v4, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;-><init>(I)V

    .line 10
    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    iget v6, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    :cond_1
    iget-object v5, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    invoke-direct {p0, v4, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 12
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-object v6, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 15
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 18
    iget-object v6, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 19
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 20
    :cond_3
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    iget-object v3, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->c:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 22
    :cond_4
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/b;->d()Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/accounts/b$b;

    .line 24
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, v1, Lcom/xinzhu/overmind/server/accounts/b$b;->a:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    if-eqz v2, :cond_5

    .line 25
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v1, Lcom/xinzhu/overmind/server/accounts/b$b;->b:Landroid/accounts/Account;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    iget-object v4, v1, Lcom/xinzhu/overmind/server/accounts/b$b;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 28
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 29
    :cond_6
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    iget-object v1, v1, Lcom/xinzhu/overmind/server/accounts/b$b;->b:Landroid/accounts/Account;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    return-void
.end method

.method private loadList(Ljava/io/File;[B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "magic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    array-length v3, p2

    new-array v3, v3, [B

    .line 4
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 5
    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 7
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->w(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 8
    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    const-class p2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v2, "MAccountManagerService"

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading data file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/m;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 14
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    throw p1

    .line 16
    :catch_1
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method private loadMap(Ljava/io/File;[B)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "magic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    array-length v3, p2

    new-array v3, v3, [B

    .line 4
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 5
    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 7
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->w(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 8
    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    const-class p2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v2, "MAccountManagerService"

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading data file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/m;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 14
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    throw p1

    .line 16
    :catch_1
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method private loadPreviousName(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object p1

    const-string v1, "previous.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC:[B

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadMap(Ljava/io/File;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private loadUidGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object p1

    const-string v1, "grant.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_UID_GRANT_MAGIC:[B

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadList(Ljava/io/File;[B)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private loadUserData(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object p1

    const-string v1, "userdata.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_USER_DATA_MAGIC:[B

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadMap(Ljava/io/File;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private loadVisibilities(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object p1

    const-string v1, "visibility.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_VISIBILITY_MAGIC:[B

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadMap(Ljava/io/File;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accounts",
            "callingPackage"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    array-length v0, p1

    if-le v0, v2, :cond_1

    return v2

    .line 3
    :cond_1
    aget-object p1, p1, v1

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "uid",
            "response",
            "authTokenType",
            "startInNewTask"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p6, :cond_0

    const/high16 p6, 0x10000000

    .line 2
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    :cond_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p5, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object v1

    iget-object v1, v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->a:Ljava/lang/String;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 4
    :goto_0
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "account"

    .line 6
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "authTokenType"

    .line 7
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "response"

    .line 8
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "uid"

    .line 9
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "uid",
            "callback"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 2
    invoke-static {v6}, Lcom/xinzhu/haunted/android/accounts/b;->b(Ljava/lang/Object;)Lcom/xinzhu/haunted/android/accounts/b;

    move-result-object p4

    iget-object p4, p4, Lcom/xinzhu/haunted/android/accounts/b;->a:Ljava/lang/Object;

    move-object v4, p4

    check-cast v4, Landroid/accounts/AccountAuthenticatorResponse;

    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private notifyPackage(Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "accounts"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p2

    .line 7
    invoke-virtual {p1, v0, v1, p2}, Lcom/xinzhu/overmind/server/am/f;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/env/a;->k(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "response",
            "result"
        }
    .end annotation

    const-string v0, "MAccountManagerService"

    if-nez p2, :cond_0

    .line 1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "the result is unexpectedly null"

    invoke-static {v0, v2, v1}, Lcom/xinzhu/overmind/utils/m;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "failure while notifying response"

    .line 6
    invoke-static {v0, p2, p1}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private packageExistsForUser(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/xinzhu/overmind/server/pm/h;->getPackageUid(Ljava/lang/String;II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "callerUid",
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Access to "

    const/4 v3, 0x2

    const-string v4, "MAccountManagerService"

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_1

    .line 2
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " granted calling uid is system"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const-string v0, " granted calling uid "

    if-eqz p1, :cond_3

    .line 4
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 5
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " manages the account"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    if-eqz p1, :cond_5

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 8
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " user granted access"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    .line 10
    :cond_5
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not granted for uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private purgeOldGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accounts"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->n()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/h;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "MAccountManagerService"

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting grants for UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " because its package is no longer installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xinzhu/overmind/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveUidGrantsLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    goto :goto_0

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->purgeOldGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private purgeUserData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private readPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userAccounts",
            "account"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 3
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/accounts/MindAccount;->a()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 6
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private readPreviousNameInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountPreviousNameLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountTypes",
            "opPackageName",
            "accounts"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 4
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v5, v3

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private removeAccountFromCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 10
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 13
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 15
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountPreviousNameLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 17
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountVisibilitiesLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    return-void
.end method

.method private removeAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "callingUid"
        }
    .end annotation

    .line 1
    iget-object p3, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter p3

    .line 2
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeAccountFromCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)V

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 11
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_1

    .line 15
    :cond_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 17
    :try_start_1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 18
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 21
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    new-instance v2, Lcom/xinzhu/overmind/server/accounts/h;

    invoke-direct {v2, p0, p2, p3}, Lcom/xinzhu/overmind/server/accounts/h;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 22
    :cond_5
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 23
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private removeVisibilityValuesForPackage(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    const/4 v5, -0x1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v6

    .line 6
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v7

    invoke-virtual {v6, p1, v2, v7}, Lcom/xinzhu/overmind/server/pm/h;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 7
    iget-object v5, v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    .line 9
    invoke-direct {p0, v7, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v7

    .line 10
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountVisibilitiesLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 12
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private renameAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "accountToRename",
            "newName"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object v0

    new-instance v1, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 4
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 6
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 8
    new-instance v3, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    invoke-direct {p0, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v2, p3, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    invoke-direct {p3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccount;-><init>(Landroid/accounts/Account;)V

    .line 14
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    if-eqz v3, :cond_2

    const-string p1, "MAccountManagerService"

    const-string p2, "renameAccount failed - account with new name already exists"

    .line 15
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/m;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 16
    monitor-exit v1

    return-object p1

    .line 17
    :cond_2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    if-eqz v3, :cond_3

    .line 18
    iget-object v3, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Ljava/lang/String;

    iput-object v3, p3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Ljava/lang/String;

    .line 19
    :cond_3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 22
    invoke-direct {p0, p1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object p3

    .line 23
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 24
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 25
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeAccountFromCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)V

    .line 27
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 29
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 31
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountVisibilitiesLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 33
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountPreviousNameLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 35
    invoke-direct {p0, p3, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 36
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_1

    .line 39
    :cond_4
    monitor-exit v1

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 40
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "accounts"
        }
    .end annotation

    const-string v0, "packageName cannot be null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/xinzhu/overmind/server/pm/h;->getPackageUid(Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, 0x3e8

    .line 6
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 9
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->checkPackageSignature(Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isPreOApplication(Ljava/lang/String;)Z

    move-result p2

    if-nez v0, :cond_4

    if-nez p2, :cond_4

    .line 14
    iget-object p2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 15
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->accountTypeManagesContacts(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "android:accounts:key_legacy_not_visible"

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    :goto_0
    const-string p2, "android:accounts:key_legacy_visible"

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, p1

    .line 18
    :cond_6
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    throw p1
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "uid"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->l(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object p2

    .line 5
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object v0

    .line 6
    invoke-direct {p0, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

    .line 9
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    new-instance v2, Lcom/xinzhu/overmind/server/accounts/g;

    invoke-direct {v2, v0, p1, p3}, Lcom/xinzhu/overmind/server/accounts/g;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const-string p1, "MAccountManagerService"

    const-string p2, "revokeAppPermission: called with invalid arguments"

    .line 11
    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/xinzhu/overmind/utils/m;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v1

    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "authtoken.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_AUTH_TOKEN_MAGIC:[B

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveMap(Ljava/io/File;[BLjava/util/Map;)V

    return-void
.end method

.method private saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-static {v2}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "accounts.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 7
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_DATA_MAGIC:[B

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 8
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/utils/j;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 9
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v3

    .line 11
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v3

    .line 15
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v3

    .line 17
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 18
    throw p1
.end method

.method private saveAccountPreviousNameLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v1

    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "previous.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC:[B

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveMap(Ljava/io/File;[BLjava/util/Map;)V

    return-void
.end method

.method private saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v1

    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "userdata.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_USER_DATA_MAGIC:[B

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveMap(Ljava/io/File;[BLjava/util/Map;)V

    return-void
.end method

.method private saveAccountVisibilitiesLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v1

    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "visibility.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_VISIBILITY_MAGIC:[B

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveMap(Ljava/io/File;[BLjava/util/Map;)V

    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "type",
            "authToken"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object v0

    new-instance v1, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 4
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private saveCachedToken(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "callerPkg",
            "callerSigDigest",
            "tokenType",
            "token",
            "expiryMillis"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p5, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v1

    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object v1

    move-object v9, p0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    move-object v0, p1

    .line 4
    iget-object v10, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v10

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;

    move-result-object v1

    move-object v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/xinzhu/overmind/server/accounts/i;->b(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 6
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    move-object v9, p0

    return-void
.end method

.method private saveList(Ljava/io/File;[BLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "magic",
            "list"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 6
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 7
    invoke-static {v0, v3}, Lcom/xinzhu/overmind/utils/j;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object v3, p1, v2

    .line 10
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object v3, p1, v2

    .line 14
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p2

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object v3, p1, v2

    .line 16
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 17
    throw p2
.end method

.method private saveMap(Ljava/io/File;[BLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "magic",
            "map"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 6
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 7
    invoke-static {v0, v3}, Lcom/xinzhu/overmind/utils/j;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object v3, p1, v2

    .line 10
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object v3, p1, v2

    .line 14
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p2

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object v3, p1, v2

    .line 16
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/l;->a([Ljava/io/Closeable;)V

    .line 17
    throw p2
.end method

.method private saveUidGrantsLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAccounts"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v1

    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "grant.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_UID_GRANT_MAGIC:[B

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->e(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveList(Ljava/io/File;[BLjava/util/List;)V

    return-void
.end method

.method private sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p2, "accountType"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p1, v0, p2, p3}, Lcom/xinzhu/overmind/server/am/f;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/env/a;->k(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the accounts changed, sending broadcast of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAccountManagerService"

    .line 3
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/m;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/xinzhu/overmind/server/am/f;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/env/a;->k(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "errorCode",
            "errorMessage"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    const-string p3, "MAccountManagerService"

    .line 2
    invoke-static {p3, p2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "failure while notifying response"

    .line 3
    invoke-static {p3, p2, p1}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "accounts"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "response",
            "result"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    const-string v0, "MAccountManagerService"

    .line 2
    invoke-static {v0, p2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "failure while notifying response"

    .line 3
    invoke-static {v0, p2, p1}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "newVisibility",
            "notify",
            "accounts"
        }
    .end annotation

    .line 1
    iget-object v0, p5, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-direct {p0, p1, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    .line 4
    invoke-direct {p0, p1, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    monitor-exit v0

    return v1

    .line 7
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-direct {p0, p1, p2, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-direct {p0, p1, p2, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    invoke-static {p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    monitor-exit v0

    return v1

    .line 16
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 18
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 19
    monitor-exit v0

    return v1

    :cond_5
    if-eqz p4, :cond_9

    .line 20
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    .line 21
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 23
    invoke-direct {p0, p1, p2, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 24
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isVisible(I)Z

    move-result v1

    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isVisible(I)Z

    move-result v2

    if-eq v1, v2, :cond_6

    .line 25
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    goto :goto_1

    .line 26
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 27
    invoke-static {p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p4

    invoke-direct {p0, p1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    .line 28
    :cond_8
    invoke-static {p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    :cond_9
    const/4 p1, 0x1

    .line 29
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private setPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "password",
            "callingUid"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p4, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter p4

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    if-eqz v0, :cond_1

    .line 3
    iput-object p3, v0, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/server/accounts/i;->c(Landroid/accounts/Account;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 8
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 9
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 10
    :cond_1
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setUserdataInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "key",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->writeUserDataIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "accounts"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p3

    .line 7
    invoke-virtual {p2, p1, v1, v2, p3}, Lcom/xinzhu/overmind/server/pm/h;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showCantAddAccount(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "userId"
        }
    .end annotation

    return-void
.end method

.method private startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accounts",
            "callingPackage"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "accounts"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    new-instance p2, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    invoke-direct {p2, p1}, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    const-string p1, "accountManagerResponse"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "androidPackageName"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountTypes",
            "opPackageName",
            "accounts"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 4
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 5
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 6
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 8
    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to unregister wrong receiver"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "newVisibility",
            "accounts"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccountsForCaller()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/xinzhu/overmind/server/accounts/MindAccount;->c:J

    .line 5
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    const/4 p1, 0x1

    .line 6
    monitor-exit v1

    return p1

    .line 7
    :cond_0
    monitor-exit v1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v6

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v7, "accountAuthenticated( account: %s, callerUid: %s)"

    .line 5
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "account cannot be null"

    .line 7
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 9
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 11
    invoke-direct {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 13
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 14
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    throw p1

    :cond_2
    :goto_0
    return v6

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, v0, v5

    const-string p1, "uid %s cannot notify authentication for accounts of type: %s"

    .line 18
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "authTokenType",
            "requiredFeatures",
            "expectActivityLaunch",
            "optionsIn"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    const-string v1, "MAccountManagerService"

    const/4 v2, 0x2

    .line 1
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requiredFeatures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v3

    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " helperuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v3

    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " realuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v11, p3

    move/from16 v6, p5

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v14, :cond_4

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 11
    iget v2, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 12
    invoke-static {v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v3

    .line 13
    invoke-direct {v15, v3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v1, 0x64

    :try_start_0
    const-string v2, "User is not allowed to add an account!"

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    invoke-direct {v15, v1, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 16
    :cond_1
    invoke-direct {v15, v3, v14, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v1, 0x65

    :try_start_1
    const-string v2, "User cannot modify accounts of this type (policy)."

    .line 17
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    :catch_1
    invoke-direct {v15, v1, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 19
    :cond_2
    iget v3, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->a:I

    if-nez p6, :cond_3

    .line 20
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v13, v4

    goto :goto_1

    :cond_3
    move-object/from16 v13, p6

    :goto_1
    const-string v4, "callerUid"

    .line 21
    invoke-virtual {v13, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "callerPid"

    .line 22
    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 25
    :try_start_2
    invoke-virtual {v15, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 26
    new-instance v18, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$o;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$o;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {v18 .. v18}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    throw v0

    .line 30
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "authTokenType",
            "requiredFeatures",
            "expectActivityLaunch",
            "optionsIn",
            "userId"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    move/from16 v1, p7

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v2

    .line 2
    iget v3, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v4, "MAccountManagerService"

    const/4 v5, 0x2

    .line 3
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount: accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", authTokenType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requiredFeatures "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", expectActivityLaunch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", caller\'s uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v8

    iget v8, v8, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", for user id "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {v4, v6}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v11, p3

    move/from16 v7, p5

    :goto_0
    const-string v4, "response cannot be null"

    .line 9
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "accountType cannot be null"

    .line 10
    invoke-static {v14, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-direct {v15, v3, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 12
    invoke-direct {v15, v1, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v2, 0x64

    :try_start_0
    const-string v3, "User is not allowed to add an account!"

    .line 13
    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    invoke-direct {v15, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 15
    :cond_1
    invoke-direct {v15, v1, v14, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v2, 0x65

    :try_start_1
    const-string v3, "User cannot modify accounts of this type (policy)."

    .line 16
    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :catch_1
    invoke-direct {v15, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 18
    :cond_2
    iget v3, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->a:I

    .line 19
    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    if-nez p6, :cond_3

    .line 20
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v13, v4

    goto :goto_1

    :cond_3
    move-object/from16 v13, p6

    :goto_1
    const-string v4, "callerUid"

    .line 21
    invoke-virtual {v13, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "callerPid"

    .line 22
    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 24
    :try_start_2
    invoke-virtual {v15, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 25
    new-instance v18, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$p;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v12

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$p;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {v18 .. v18}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw v0

    .line 29
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    .line 31
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "User %s trying to add account for %s"

    .line 32
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "password",
            "extras"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "password",
            "extras",
            "packageToVisibility"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v6, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 3
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    const-string v1, "MAccountManagerService"

    const/4 v2, 0x2

    .line 4
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccountExplicitly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v1, v3}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "account cannot be null"

    .line 8
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->addAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw p1

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, p3

    const-string p1, "uid %s cannot explicitly add accounts of type: %s"

    .line 16
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addOnAppPermissionChangeListener(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentUserId",
            "userId",
            "opPackageName"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "account cannot be null"

    .line 7
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 9
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    const/4 v4, 0x0

    .line 12
    invoke-direct {p0, v0, p1, v4, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw p1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "uid %s cannot clear passwords for accounts of type: %s"

    .line 16
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "options",
            "expectActivityLaunch",
            "userId"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move/from16 v1, p5

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v2

    .line 2
    iget v3, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v4, "MAccountManagerService"

    const/4 v5, 0x2

    .line 3
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "confirmCredentials: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", expectActivityLaunch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", caller\'s uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->a:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    .line 5
    :goto_0
    invoke-direct {v13, v3, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    if-eqz v11, :cond_1

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 7
    :try_start_0
    invoke-virtual {v13, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 8
    new-instance v16, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$b;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x1

    iget-object v9, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v12

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$b;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 9
    invoke-virtual/range {v16 .. v16}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    throw v0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    .line 16
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "User %s trying to confirm account credentials for %s"

    .line 17
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "userFrom",
            "userTo"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move/from16 v13, p3

    move/from16 v1, p4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v2

    .line 2
    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const/4 v3, -0x1

    .line 3
    invoke-direct {v14, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    invoke-virtual {v14, v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 5
    invoke-virtual {v14, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v12

    const-string v2, "MAccountManagerService"

    if-eqz v3, :cond_1

    if-nez v12, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 8
    :try_start_0
    new-instance v17, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;

    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move/from16 v13, p3

    invoke-direct/range {v1 .. v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V

    .line 9
    invoke-virtual/range {v17 .. v17}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    const-string v4, "booleanResult"

    .line 13
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    :try_start_1
    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report error back to the client."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling copyAccountToUser requires android.Manifest.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "userHandle"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const-string v0, "account cannot be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName cannot be null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "userHandle cannot be null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/xinzhu/haunted/android/os/u;

    invoke-direct {v0, p3}, Lcom/xinzhu/haunted/android/os/u;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/u;->getIdentifier()I

    move-result p3

    if-ltz p3, :cond_1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Lcom/xinzhu/overmind/server/pm/h;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAccountManagerService"

    invoke-static {p2, p1}, Lcom/xinzhu/overmind/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v5

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 10
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v6, 0x50000000

    const/4 v7, 0x0

    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    invoke-direct {v0, p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 11
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->w()Landroid/os/UserHandle;

    move-result-object v8

    .line 12
    invoke-static/range {v3 .. v8}, Lcom/xinzhu/haunted/android/app/v;->c(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p3

    .line 13
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p3

    :catchall_0
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    throw p3

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user must be concrete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can be called only by system UID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "expectActivityLaunch"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 2
    iget v2, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v3, "MAccountManagerService"

    const/4 v4, 0x2

    .line 3
    invoke-static {v3, v4}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editProperties: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", caller\'s uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v3, v5}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v10, :cond_3

    .line 7
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 8
    invoke-direct {p0, v10, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSystemUid(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v10, v0, v1

    const-string v1, "uid %s cannot edit authenticator properites for account type: %s"

    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 14
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 15
    new-instance v14, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 16
    invoke-virtual {v14}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "sessionBundle",
            "expectActivityLaunch",
            "appInfo",
            "userId"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    const-string v3, "failed to decrypt session bundle"

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v5

    .line 2
    iget v6, v5, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v7, "MAccountManagerService"

    const/4 v8, 0x2

    .line 3
    invoke-static {v7, v8}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finishSession: response "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", expectActivityLaunch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", caller\'s uid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", caller\'s user id "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", pid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", for user id "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-static {v7, v9}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v10, p3

    :goto_0
    const-string v9, "response cannot be null"

    .line 7
    invoke-static {v4, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v9

    if-eqz v9, :cond_8

    .line 9
    invoke-direct {v13, v6, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    move-result v9

    if-nez v9, :cond_7

    .line 10
    invoke-direct {v13, v2, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v0, 0x64

    const-string v1, "User is not allowed to add an account!"

    .line 11
    invoke-direct {v13, v4, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 12
    invoke-direct {v13, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 13
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/16 v8, 0x8

    .line 14
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/c;->e()Lcom/xinzhu/overmind/server/accounts/c;

    move-result-object v9

    .line 15
    invoke-virtual {v9, v0}, Lcom/xinzhu/overmind/server/accounts/c;->c(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_2

    .line 16
    invoke-direct {v13, v4, v8, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "accountType"

    .line 17
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    const-string v1, "accountType is empty"

    .line 19
    invoke-direct {v13, v4, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    const-string v0, "callerUid"

    .line 21
    invoke-virtual {v11, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "callerPid"

    .line 22
    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-direct {v13, v2, v12, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x65

    const-string v1, "User cannot modify accounts of this type (policy)."

    .line 24
    invoke-direct {v13, v4, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 25
    invoke-direct {v13, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 26
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 27
    :try_start_1
    invoke-virtual {v13, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 28
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$f;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v5, v12

    move/from16 v6, p3

    move/from16 v10, v16

    invoke-direct/range {v1 .. v12}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$f;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw v0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    .line 32
    invoke-static {v7, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Failed to decrypt session bundle!"

    .line 33
    invoke-static {v7, v1, v0}, Lcom/xinzhu/overmind/utils/m;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_6
    invoke-direct {v13, v4, v8, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    .line 35
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v5, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 37
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "User %s trying to finish session for %s without cross user permission"

    .line 38
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionBundle is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "features",
            "opPackageName"
        }
    .end annotation

    move-object v10, p0

    move-object v0, p1

    move-object v5, p2

    move-object/from16 v8, p4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 2
    iget v7, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccount: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", features "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    if-eqz v5, :cond_2

    .line 8
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 10
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 11
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v3

    move-object v3, p2

    move v4, v7

    move-object/from16 v5, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    .line 13
    invoke-direct {p0, p1, v1, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 15
    :cond_1
    :try_start_1
    new-instance v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;

    invoke-direct {v4, p0, p1, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;

    const/4 v9, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 17
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    throw v0

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName"
        }
    .end annotation

    const-string v0, "account cannot be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName cannot be null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 4
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 5
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    .line 7
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v0

    const-string p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    const-string v4, "android:accounts:key_legacy_visible"

    .line 13
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_3
    :try_start_1
    const-string v3, "android:accounts:key_legacy_not_visible"

    .line 16
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_4
    const/4 p1, 0x4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 19
    :cond_5
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p1
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "opPackageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v3, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 3
    invoke-direct {p0, v3, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    throw p1
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "accountType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 14
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 15
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    const/16 v2, 0x3e8

    .line 16
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result v2

    .line 17
    invoke-direct {p0, v1, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 18
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountsAndVisibilityForPackage() called from unauthorized uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 23
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object p2

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    throw p1
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "userId",
            "opPackageName"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "type",
            "features",
            "opPackageName"
        }
    .end annotation

    move-object v10, p0

    move-object v0, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 2
    iget v7, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccounts: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", features "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_5

    if-eqz v5, :cond_4

    .line 8
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    move-object/from16 v8, p4

    .line 9
    invoke-direct {p0, v7, v1, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v9, "accounts"

    if-nez v3, :cond_1

    .line 11
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    sget-object v3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    invoke-virtual {v1, v9, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 13
    :try_start_0
    invoke-interface {p1, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "Cannot respond to caller do to exception."

    .line 14
    invoke-static {v2, v0, v1}, Lcom/xinzhu/overmind/utils/m;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 16
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    if-eqz v6, :cond_3

    .line 17
    array-length v1, v6

    if-nez v1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance v13, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;

    const/4 v9, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 19
    invoke-virtual {v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    :goto_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move v4, v7

    move-object/from16 v5, p4

    .line 21
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    .line 22
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 24
    invoke-direct {p0, p1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    throw v0

    .line 27
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "packageName",
            "opPackageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 3
    iget v4, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v4}, Lcom/xinzhu/overmind/server/pm/h;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t determine the packageUid for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAccountManagerService"

    invoke-static {p2, p1}, Lcom/xinzhu/overmind/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    :cond_0
    const/16 v0, 0x3e8

    .line 7
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0, p1, v1, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 10
    :cond_1
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    .line 11
    invoke-direct/range {v2 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    .line 12
    invoke-direct/range {v2 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "uid",
            "opPackageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const/16 v2, 0x3e8

    .line 3
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    .line 4
    iget v5, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with uid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAccounts",
            "accountType",
            "callingUid",
            "callingPackage",
            "includeManagedNotVisible"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 4
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 5
    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [Landroid/accounts/Account;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->filterAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 7
    :cond_1
    iget-object p2, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter p2

    .line 8
    :try_start_2
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    .line 9
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 10
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    monitor-exit p2

    return-object p1

    .line 11
    :cond_3
    new-array v2, v2, [Landroid/accounts/Account;

    .line 12
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 13
    array-length v5, v4

    invoke-static {v4, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 15
    :cond_4
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->filterAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getAllAccounts()[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;
    .locals 5

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/h;->d()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/frameworks/h;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    iget v4, v4, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccounts([I)[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "authTokenType",
            "notifyOnAuthFailure",
            "expectActivityLaunch",
            "loginOptions",
            "uid"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v10, p6

    move/from16 v14, p7

    const-string v7, "MAccountManagerService"

    const/4 v8, 0x2

    .line 1
    invoke-static {v7, v8}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", notifyOnAuthFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v2

    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v7, v1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v9, p5

    :goto_0
    const-string v1, "response cannot be null"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x7

    if-nez v11, :cond_1

    :try_start_0
    const-string v2, "getAuthToken called with null account"

    .line 7
    invoke-static {v7, v2}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "account is null"

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-nez v12, :cond_2

    const-string v2, "getAuthToken called with null authTokenType"

    .line 9
    invoke-static {v7, v2}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "authTokenType is null"

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report error back to the client."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 13
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 15
    :try_start_1
    invoke-virtual {v15, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v6

    .line 16
    iget-object v4, v15, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 17
    invoke-static {v5}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    invoke-static {v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v8

    .line 18
    invoke-interface {v4, v5, v8}, Lcom/xinzhu/overmind/server/accounts/d;->d(Landroid/accounts/AuthenticatorDescription;I)Lcom/xinzhu/overmind/server/pm/l$d;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v4, :cond_3

    .line 20
    iget-object v4, v4, Lcom/xinzhu/overmind/server/pm/l$d;->a:Ljava/lang/Object;

    check-cast v4, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v4, v4, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v4, :cond_3

    const/16 v17, 0x1

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    :goto_2
    if-nez v17, :cond_5

    .line 21
    invoke-direct {v15, v11, v12, v14, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v18, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v18, 0x1

    :goto_4
    const-string v1, "androidPackageName"

    .line 22
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 24
    :try_start_2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/xinzhu/overmind/server/pm/h;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_b

    .line 27
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "callerUid"

    .line 28
    invoke-virtual {v10, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "callerPid"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v13, :cond_6

    const-string v1, "notifyOnAuthFailure"

    .line 30
    invoke-virtual {v10, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 32
    :try_start_3
    invoke-direct {v15, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    move-result-object v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, "accountType"

    const-string v4, "authAccount"

    const-string v3, "authtoken"

    if-nez v17, :cond_7

    if-eqz v18, :cond_7

    .line 33
    :try_start_4
    invoke-virtual {v15, v6, v11, v12}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readAuthTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 34
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 35
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {v15, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_7
    if-eqz v17, :cond_9

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v9, v3

    move-object/from16 v3, p2

    move-object v10, v4

    move-object/from16 v4, p3

    move-object v12, v5

    move-object v5, v8

    move-object/from16 v22, v6

    move-object/from16 v6, v19

    .line 40
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readCachedTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v2, 0x2

    .line 41
    invoke-static {v7, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "getAuthToken: cache hit ofr custom token authenticator."

    .line 42
    invoke-static {v7, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 44
    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {v15, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 48
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9
    move-object/from16 v22, v6

    .line 49
    :cond_a
    :try_start_6
    new-instance v23, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v10, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    move-object/from16 v4, p1

    move/from16 v6, p5

    move-object v0, v8

    move-object v8, v10

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, v18

    move/from16 v15, p7

    move/from16 v16, v17

    move-object/from16 v17, v0

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    invoke-direct/range {v1 .. v19}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 50
    invoke-virtual/range {v23 .. v23}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 51
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    throw v0

    :cond_b
    move-object v0, v8

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    const-string v0, "Uid %s is attempting to illegally masquerade as package %s!"

    .line 54
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    throw v0

    :catchall_2
    move-exception v0

    .line 58
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    throw v0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "authTokenType"
        }
    .end annotation

    const-string v0, "accountType cannot be null"

    move-object/from16 v10, p2

    .line 1
    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "authTokenType cannot be null"

    move-object/from16 v11, p3

    .line 2
    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 6
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move-object v14, p0

    .line 8
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$c;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    throw v0

    :cond_0
    move-object v14, p0

    .line 13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "can only call from system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAuthenticatorTypes: for user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    throw p1

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "User %s tying to get authenticator types for %s"

    .line 15
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "account cannot be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 4
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 5
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "uid %s cannot get secrets for account %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 10
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 11
    iget-object v3, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    throw p1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 8
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    throw p1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 13
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "account is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    const-string v0, "MAccountManagerService"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v2

    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    const-string v1, "account cannot be null"

    .line 7
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 10
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readPreviousNameInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    throw p1
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    invoke-direct {v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;-><init>(I)V

    .line 4
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->purgeOldGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "key"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    const/4 v7, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v7, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    .line 5
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "account cannot be null"

    .line 7
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "key cannot be null"

    .line 8
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 10
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readUserDataInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    throw p1

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v6

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v5

    const-string p1, "uid %s cannot get user data for accounts of type: %s"

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "uid"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->q(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveUidGrantsLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object p2

    .line 6
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object v0

    .line 7
    invoke-direct {p0, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p1, p3, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

    .line 11
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    new-instance v2, Lcom/xinzhu/overmind/server/accounts/f;

    invoke-direct {v2, v0, p1, p3}, Lcom/xinzhu/overmind/server/accounts/f;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const-string p1, "MAccountManagerService"

    const-string p2, "grantAppPermission: called with invalid arguments"

    .line 13
    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/xinzhu/overmind/utils/m;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "userHandle"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const-string v0, "account cannot be null"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName cannot be null"

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "userHandle cannot be null"

    .line 8
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/xinzhu/haunted/android/os/u;

    invoke-direct {v0, p3}, Lcom/xinzhu/haunted/android/os/u;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/u;->getIdentifier()I

    move-result p3

    if-ltz p3, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Lcom/xinzhu/overmind/server/pm/h;->getPackageUid(Ljava/lang/String;II)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const-string p1, "MAccountManagerService"

    const-string p2, "Package not found "

    .line 11
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user must be concrete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can be called only by system UID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "features",
            "opPackageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    const-string v1, "MAccountManagerService"

    const/4 v2, 0x2

    .line 2
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFeatures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "account cannot be null"

    .line 7
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "response cannot be null"

    .line 8
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "features cannot be null"

    .line 9
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 11
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 13
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v6

    .line 14
    new-instance p4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$z;

    move-object v4, p4

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$z;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    throw p1
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountType",
            "authToken"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "accountType cannot be null"

    .line 3
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "authToken cannot be null"

    .line 4
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 5
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MAccountManagerService"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidateAuthToken: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 12
    iget-object v3, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->invalidateAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 14
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 15
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/accounts/Account;

    .line 16
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    .line 17
    invoke-virtual {p0, v0, v6, v5, v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "statusToken"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "MAccountManagerService"

    const/4 v2, 0x2

    .line 1
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCredentialsUpdateSuggested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v3

    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    if-eqz v10, :cond_2

    .line 6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 8
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move-object/from16 v14, p0

    .line 10
    :try_start_0
    invoke-virtual {v14, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 11
    new-instance v15, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;

    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v15}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw v0

    :cond_1
    move-object/from16 v14, p0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "status token is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v14, p0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v14, p0

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 3
    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string v4, "android"

    .line 6
    invoke-virtual {p0, v0, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 7
    new-instance v7, Lcom/xinzhu/haunted/android/accounts/a;

    invoke-direct {v7, v6}, Lcom/xinzhu/haunted/android/accounts/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/xinzhu/haunted/android/accounts/a;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    .line 8
    invoke-direct {p0, v6, v7, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v8, 0x1

    .line 9
    invoke-virtual {p0, v6, v7, v1, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peekAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "account cannot be null"

    .line 7
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "authTokenType cannot be null"

    .line 8
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 10
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readAuthTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    throw p1

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v0

    const-string p1, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected readAuthTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "authTokenType"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected readCachedTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "tokenType",
            "callingPackage",
            "pkgSigDigest"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xinzhu/overmind/server/accounts/i;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public readUserDataInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAccounts",
            "account",
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountTypes",
            "opPackageName"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 11
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 12
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 14
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    throw p1
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "expectActivityLaunch",
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MAccountManagerService"

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", for user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "account cannot be null"

    .line 7
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "response cannot be null"

    .line 8
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0, v1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4

    .line 10
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 12
    invoke-virtual {p0, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v4

    .line 13
    new-instance v2, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    invoke-direct {v2, p4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 14
    invoke-direct {p0, v4, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object p4

    invoke-direct {p0, p4, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 15
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object p4

    monitor-enter p4

    .line 16
    :try_start_0
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 17
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 18
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 19
    invoke-direct {p0, v5, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    goto :goto_0

    .line 20
    :cond_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    new-instance p4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$w;

    move-object v2, p4

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$w;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p1

    :catchall_1
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    const-string p1, "uid %s cannot remove accounts of type: %s"

    new-array p3, v3, [Ljava/lang/Object;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v5

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p2, p3, v4

    .line 26
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "User %s tying remove account for %s"

    new-array p3, v3, [Ljava/lang/Object;

    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v5

    .line 30
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    .line 31
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAccountExplicitly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    const/4 v4, 0x0

    if-nez p1, :cond_1

    const-string p1, "account is null"

    .line 8
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/m;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 9
    :cond_1
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccountsForCaller()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 12
    :try_start_0
    invoke-direct {p0, v0, p1, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw p1

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "uid %s cannot explicitly remove accounts of type: %s"

    .line 16
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountToRename",
            "newName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renameAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    .line 7
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 8
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 10
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->renameAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p2

    .line 12
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "authAccount"

    .line 13
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accountType"

    .line 14
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accountAccessId"

    .line 15
    new-instance v1, Lcom/xinzhu/haunted/android/accounts/a;

    invoke-direct {v1, p2}, Lcom/xinzhu/haunted/android/accounts/a;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/accounts/a;->h()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-interface {p1, p3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/m;->k(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p1

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p3

    const/4 p3, 0x1

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p2, p1, p3

    const-string p2, "uid %s cannot rename accounts of type: %s"

    .line 23
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountToRename",
            "newName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "packageName",
            "newVisibility"
        }
    .end annotation

    const-string v0, "account cannot be null"

    .line 31
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName cannot be null"

    .line 32
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 34
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 35
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 36
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, p3

    const-string p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 39
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 42
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v8

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 43
    invoke-direct/range {v3 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    throw p1
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "authToken"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "account cannot be null"

    .line 7
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "authTokenType cannot be null"

    .line 8
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 10
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 13
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAuthTokenToDatabase(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    throw p1

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, p3

    const-string p1, "uid %s cannot set auth tokens associated with accounts of type: %s"

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "account",
            "password"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "account cannot be null"

    .line 7
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 9
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw p1

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v0

    const-string p1, "uid %s cannot set secrets for accounts of type: %s"

    .line 16
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const-string v2, "MAccountManagerService"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 7
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 8
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 10
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->accountExistsCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 13
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setUserdataInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    throw p1

    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, p3

    const-string p1, "uid %s cannot set user data for accounts of type: %s"

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAllAccounts()[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    move-result-object v2

    .line 5
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 6
    aget-object v5, v2, v3

    iget-object v5, v5, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    invoke-virtual {v5, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8
    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Only system can check for accounts across users"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "accountType",
            "authTokenType",
            "requiredFeatures",
            "expectActivityLaunch",
            "optionsIn"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    const-string v1, "MAccountManagerService"

    const/4 v2, 0x2

    .line 1
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAddAccountSession: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requiredFeatures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v3

    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v11, p3

    move/from16 v6, p5

    :goto_0
    const-string v1, "response cannot be null"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "accountType cannot be null"

    .line 8
    invoke-static {v14, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 10
    iget v2, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 11
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 12
    invoke-direct {v15, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v2, 0x64

    :try_start_0
    const-string v3, "User is not allowed to add an account!"

    .line 13
    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    invoke-direct {v15, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 15
    :cond_1
    invoke-direct {v15, v1, v14, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v2, 0x65

    :try_start_1
    const-string v3, "User cannot modify accounts of this type (policy)."

    .line 16
    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :catch_1
    invoke-direct {v15, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 18
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-nez p6, :cond_3

    .line 19
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v13, v4

    goto :goto_1

    :cond_3
    move-object/from16 v13, p6

    :goto_1
    const-string v4, "callerUid"

    .line 20
    invoke-virtual {v13, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "callerPid"

    .line 21
    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "androidPackageName"

    .line 22
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v10, 0x0

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 24
    :try_start_2
    invoke-virtual {v15, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 25
    new-instance v18, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$d;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$d;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {v18 .. v18}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw v0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "authTokenType",
            "expectActivityLaunch",
            "loginOptions"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    const-string v1, "MAccountManagerService"

    const/4 v2, 0x2

    .line 1
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUpdateCredentialsSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v3

    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v12, p3

    move/from16 v6, p4

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v11, :cond_1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 7
    iget v2, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 8
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    const-string v2, "androidPackageName"

    move-object/from16 v13, p5

    .line 9
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v10, 0x0

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-object/from16 v9, p0

    .line 11
    :try_start_0
    invoke-virtual {v9, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 12
    new-instance v16, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$e;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v17, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move/from16 v9, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$e;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    invoke-virtual/range {v16 .. v16}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    throw v0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadAllAccounts()V

    return-void
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountTypes",
            "opPackageName"
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 13
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 14
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 16
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    throw p1
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "authTokenType",
            "uid",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 3
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "response",
            "account",
            "authTokenType",
            "expectActivityLaunch",
            "loginOptions"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    const-string v1, "MAccountManagerService"

    const/4 v2, 0x2

    .line 1
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v3

    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/m;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v12, p3

    move/from16 v6, p4

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v11, :cond_1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v1

    .line 7
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-object/from16 v13, p0

    .line 9
    :try_start_0
    invoke-virtual {v13, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v3

    .line 10
    new-instance v16, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    invoke-virtual/range {v16 .. v16}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    throw v0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p4, :cond_1

    .line 4
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    return-void
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accounts",
            "account",
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p4, :cond_1

    .line 4
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    return-void
.end method
