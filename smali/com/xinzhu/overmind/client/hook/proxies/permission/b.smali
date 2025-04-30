.class public Lcom/xinzhu/overmind/client/hook/proxies/permission/b;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "PermissionManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/permission/b$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/permission/b$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String;

.field static final g:Ljava/lang/String; = "permissionmgr"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/b;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "permissionmgr"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    const-string v0, "permissionmgr"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/android/permission/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseInvocation",
            "proxyInvocation"
        }
    .end annotation

    const-string p1, "permissionmgr"

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    move-object p1, p2

    check-cast p1, Landroid/os/IInterface;

    invoke-static {p1}, Lcom/xinzhu/haunted/android/app/g;->o0(Landroid/os/IInterface;)Z

    .line 4
    :cond_0
    :try_start_0
    new-instance p1, Lcom/xinzhu/haunted/android/app/i;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/i;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/i;->b()Landroid/os/IInterface;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 6
    check-cast p2, Landroid/os/IInterface;

    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/app/i;->c(Landroid/os/IInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxy",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->c([Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/c;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected k()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "getPermissionFlags"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "updatePermissionFlags"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "updatePermissionFlagsForAllApps"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/b$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/b$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/b$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/b$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "getWhitelistedRestrictedPermissions"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "addWhitelistedRestrictedPermission"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "removeWhitelistedRestrictedPermission"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "grantRuntimePermission"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 11
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v2, "revokeRuntimePermission"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "setDefaultBrowser"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 13
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "getDefaultBrowser"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 14
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "grantDefaultPermissionsToEnabledCarrierApps"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 15
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "grantDefaultPermissionsToEnabledImsServices"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 16
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "grantDefaultPermissionsToActiveLuiApp"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 19
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "revokeDefaultPermissionsFromLuiApps"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 20
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "shouldShowRequestPermissionRationale"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 21
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "isPermissionRevokedByPolicy"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 22
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v2, "startOneTimePermissionSession"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 23
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "stopOneTimePermissionSession"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 24
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "getAutoRevokeExemptionRequestedPackages"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "getAutoRevokeExemptionGrantedPackages"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 26
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "setAutoRevokeWhitelisted"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 27
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v3, "isAutoRevokeWhitelisted"

    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 28
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v2, "checkUidPermission"

    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 29
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    const-string v2, "checkDeviceIdentifierAccess"

    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 30
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "addOnPermissionsChangeListener"

    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
