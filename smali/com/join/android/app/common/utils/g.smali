.class public Lcom/join/android/app/common/utils/g;
.super Ljava/lang/Object;
.source "PermissionPageUtils.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PermissionPageManager"

    .line 2
    iput-object v0, p0, Lcom/join/android/app/common/utils/g;->a:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 3
    iput-object v0, p0, Lcom/join/android/app/common/utils/g;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "android.intent.category.LAUNCHER"

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v2

    :goto_0
    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    return-void

    .line 4
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveinfoList"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 15
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    :try_start_2
    iget-object p1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 20
    :try_start_3
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 22
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method private b()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    const-string v1, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    const-string v0, "ro.miui.ui.version.name"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    .line 8
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 11
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    :goto_4
    throw v0
.end method

.method private d()V
    .locals 1

    const-string v0, "com.yulong.android.security:remote"

    .line 1
    invoke-direct {p0, v0}, Lcom/join/android/app/common/utils/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 5

    const-string v0, "com.huawei.systemmanager"

    const/high16 v1, 0x10000000

    .line 1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/join/android/app/common/utils/g;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.huawei.permissionmanager.ui.PermissionSettingActivity"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    iget-object v3, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/join/android/app/common/utils/g;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.huawei.permissionmanager.ui.SingleAppActivity"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    iget-object v3, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 12
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/join/android/app/common/utils/g;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.huawei.permissionmanager.ui.MainActivity"

    invoke-direct {v1, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    iget-object v0, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    .line 19
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$AccessLockSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "\u8df3\u8f6c\u5931\u8d25"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    .line 3
    iget-object v2, p0, Lcom/join/android/app/common/utils/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oppo.launcher"

    const-string v4, "com.oppo.launcher.shortcut.ShortcutSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.color.safecenter"

    const-string v4, "com.color.safecenter.permission.PermissionManagerActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "com.coloros.safecenter"

    .line 10
    invoke-direct {p0, v1}, Lcom/join/android/app/common/utils/g;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private j()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.cta"

    const-string v3, "com.sonymobile.cta.SomcCTAMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "\u8df3\u8f6c\u5931\u8d25"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.bbk.launcher2"

    const-string v3, "com.bbk.launcher2.installshortcut.PurviewActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "com.iqoo.secure"

    .line 6
    invoke-direct {p0, v1}, Lcom/join/android/app/common/utils/g;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/g;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goMiaoMiMainager --- rom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "V6"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "V7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "miui.intent.action.APP_PERM_EDITOR"

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.securitycenter"

    const-string v2, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 6
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/utils/g;->c:Ljava/lang/String;

    const-string v2, "extra_pkgname"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcom/join/android/app/common/utils/g;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    return-void
.end method


# virtual methods
.method public n()V
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpPermissionPage --- name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "Meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "LG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "Coolpad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->f()V

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->e()V

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->j()V

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->h()V

    goto :goto_1

    .line 8
    :pswitch_3
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->l()V

    goto :goto_1

    .line 9
    :pswitch_4
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->k()V

    goto :goto_1

    .line 10
    :pswitch_5
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->i()V

    goto :goto_1

    .line 11
    :pswitch_6
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->g()V

    goto :goto_1

    .line 12
    :pswitch_7
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->m()V

    goto :goto_1

    .line 13
    :pswitch_8
    invoke-direct {p0}, Lcom/join/android/app/common/utils/g;->d()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64059776 -> :sswitch_8
        -0x63e01f25 -> :sswitch_7
        0x97b -> :sswitch_6
        0x251fa0 -> :sswitch_5
        0x276947 -> :sswitch_4
        0x373cac -> :sswitch_3
        0x46c94ac -> :sswitch_2
        0x6f28bffa -> :sswitch_1
        0x7fa995e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
