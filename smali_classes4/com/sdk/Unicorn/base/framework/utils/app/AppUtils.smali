.class public Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;
.super Lcom/sdk/i/a;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.sdk.Unicorn.base.framework.utils.app.AppUtils"

.field public static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static isDebug:Z

.field public static targetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    sput-boolean v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    const/4 v0, -0x1

    sput v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->targetSdkVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sdk/i/a;-><init>()V

    return-void
.end method

.method public static doFingerprint([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string p1, ""

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static getAndroidSDKVersion(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getApiKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lcom/sdk/v/a;->c:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    const-string v2, "getAppIcon"

    const-string v3, "mContext \u4e3a\u7a7a"

    invoke-static {p0, v2, v3, v1}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getAppLable(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    const-string v2, "getAppLable"

    const-string v3, "mContext \u4e3a\u7a7a"

    invoke-static {p0, v2, v3, v1}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_0
    return-object v0
.end method

.method public static getAppMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :try_start_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "MD5"

    :try_start_2
    invoke-static {p0, v0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->doFingerprint([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_0
    :goto_1
    return-object v1
.end method

.method public static getInstallDate(Landroid/content/Context;)J
    .locals 6

    sget-object v0, Lcom/sdk/f/g;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/sdk/f/g;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocalIPAddress()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    const-string v0, "null"

    return-object v0
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 5

    const-string v0, "android.app.ActivityThread"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "currentPackageName"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return-object v1
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mContext \u4e3a\u7a7a"

    invoke-static {p0, v2, v1}, Lcom/sdk/o/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return-object v0
.end method

.method public static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p0, :cond_0

    sget p0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->targetSdkVersion:I

    return p0

    :cond_0
    sget v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->targetSdkVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput p0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_1
    :goto_0
    sget p0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->targetSdkVersion:I

    return p0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static isFirstLogin(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    sget-boolean p1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isServiceRunning: mContext \u4e3a\u7a7a"

    invoke-static {p0, v1, p1}, Lcom/sdk/o/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return v0

    :cond_0
    const-string v1, "activity"

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->isDebug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public finishActivity()V
    .locals 1

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishAllActivity()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method
