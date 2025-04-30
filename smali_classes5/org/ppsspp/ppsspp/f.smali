.class public Lorg/ppsspp/ppsspp/f;
.super Ljava/lang/Object;
.source "MogaHack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bda/controller/Controller;Landroid/content/Context;)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mIsBound"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v6, "mServiceConnection"

    .line 6
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-object v4, v0

    :catch_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    .line 9
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/bda/controller/f;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 11
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 12
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 13
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 14
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 15
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 17
    invoke-virtual {p1, v3, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 18
    :try_start_3
    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/bda/controller/Controller;->init()Z

    :catch_3
    :cond_2
    :goto_1
    return-void
.end method
