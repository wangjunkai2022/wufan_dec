.class public Lcom/mob/tools/MobUIShell;
.super Landroid/app/Activity;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/FakeActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/mob/tools/FakeActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/tools/MobUIShell;->a:Ljava/util/HashMap;

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "==============================="

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string v0, "2022-12-15"

    const-string v2, "-0"

    const-string v4, "-"

    .line 3
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    .line 4
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobTools "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/mob/tools/FakeActivity;
    .locals 2

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "."

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    instance-of v0, p1, Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Lcom/mob/tools/FakeActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lcom/mob/tools/MobUIShell;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/mob/tools/MobUIShell;->a:Ljava/util/HashMap;

    check-cast p1, Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private b()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "MobUIShell found executor: "

    if-eqz v2, :cond_0

    const-string v4, "005j8cadababc"

    .line 4
    invoke-static {v4}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mob/tools/MobUIShell;->a(Ljava/lang/String;)Lcom/mob/tools/FakeActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p0}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    return v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "011RcbbdbabibeRa@bbFbAbcUjg"

    .line 8
    invoke-static {v4}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "013g!bjOgObeba7bWcabfbbbibdLjg"

    .line 9
    invoke-static {v5}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v6, Lcom/mob/tools/MobUIShell;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/FakeActivity;

    iput-object v6, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-nez v6, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v6, Lcom/mob/tools/MobUIShell;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/FakeActivity;

    iput-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->a()Lcom/mob/tools/FakeActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-nez v0, :cond_1

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executor lost! launchTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", executorName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v2

    .line 15
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0, p0}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private c()Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-le v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v2, "013j0chbe$bQbc9hEbcVbFbgcebidfca"

    invoke-static {v2}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    const/4 v4, -0x1

    .line 5
    iput v4, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Fix orientation for 8.0 encountered exception"

    invoke-virtual {v2, v0, v4, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method private d()Z
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "com.android.internal.R$styleable"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Window"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3
    iget-object v3, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    iget-object v3, v3, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4
    const-class v3, Landroid/content/pm/ActivityInfo;

    const-string v4, "023?bcdecgbfbdbidecbbabe:g@bi9b%djbfdicbcabd6b(bcbidd"

    invoke-static {v4}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/res/TypedArray;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v1

    .line 6
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method


# virtual methods
.method public a()Lcom/mob/tools/FakeActivity;
    .locals 3

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 16
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "015fgPdfbdbacb7bKchbeRb8bcRhQbc%bHbg"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-direct {p0, v0}, Lcom/mob/tools/MobUIShell;->a(Ljava/lang/String;)Lcom/mob/tools/FakeActivity;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/mob/tools/FakeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->c()Z

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    iget-object v0, v0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    iget-object v0, v0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->onCreate()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Lcom/mob/tools/MobUIShell;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/mob/tools/FakeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->sendResult()V

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onDestroy()V

    .line 5
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mob/tools/FakeActivity;->onNewIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/mob/tools/FakeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onRestart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onRestart()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onStart()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->onStop()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/mob/tools/MobUIShell;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/mob/tools/FakeActivity;->setContentView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2, p1}, Lcom/mob/tools/FakeActivity;->setContentView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/MobUIShell;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 4
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "030Wfdbd@hFbdcjcbbdbiddcjcg-a=bf(g3bdCfRcjdd7gb*cf1b:bdbebhcgbfbdbe4g"

    invoke-static {v3}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 5
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0487bdbi0fXbfcabc+fDcjbdUccRcjchbeZbDbc,hCbc!bLbgcg<aQbfDg$bd(f\'cj_cg-bfdfcabfPjXcibdbabibeFa)chbe%bGbc]hMbcCb!bg"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    invoke-virtual {v1, p1, v0}, Lcom/mob/tools/FakeActivity;->onSetTheme(IZ)I

    move-result p1

    if-lez p1, :cond_0

    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcom/mob/tools/FakeActivity;->beforeStartActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mob/tools/MobUIShell;->b:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->beforeStartActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
