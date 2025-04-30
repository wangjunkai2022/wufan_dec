.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "CommonStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "startActivity"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    const-class v3, Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v3

    .line 2
    aget-object v3, v2, v3

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/helpers/a;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    instance-of v4, v3, Landroid/content/Intent;

    if-eqz v4, :cond_9

    .line 5
    check-cast v3, Landroid/content/Intent;

    const-string v4, "_VM_|_target_"

    .line 6
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/helpers/c;->b(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xinzhu/overmind/client/hook/provider/a;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 14
    :cond_2
    invoke-static {v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 16
    new-instance v5, Landroid/content/ComponentName;

    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;

    .line 18
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;->f()I

    move-result v3

    aput-object v4, v2, v3

    .line 22
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 23
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 24
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 26
    :cond_4
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 27
    :cond_5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v4

    const/16 v5, 0x80

    .line 28
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/helpers/g;->o([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v7

    .line 30
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/xinzhu/overmind/client/frameworks/f;->y(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_7

    .line 31
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 33
    :cond_6
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 34
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 35
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_8

    .line 37
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v6

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v7

    .line 39
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v8

    .line 40
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/helpers/g;->o([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 41
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/helpers/g;->q([Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v11

    .line 42
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/helpers/g;->s([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 43
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/helpers/g;->m([Ljava/lang/Object;)I

    move-result v13

    .line 44
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/helpers/g;->d([Ljava/lang/Object;)I

    move-result v14

    .line 45
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/helpers/g;->i([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v15

    .line 46
    invoke-virtual/range {v6 .. v15}, Lcom/xinzhu/overmind/client/frameworks/a;->y(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 48
    :cond_9
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected f()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method
