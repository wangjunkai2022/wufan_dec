.class public Lcom/xinzhu/overmind/client/hook/env/a;
.super Ljava/lang/Object;
.source "ClientSystemEnv.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/String; = ".overmind"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->a:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xinzhu/overmind/client/hook/env/a;->b:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/xinzhu/overmind/client/hook/env/a;->c:Ljava/util/List;

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/xinzhu/overmind/client/hook/env/a;->d:Ljava/util/List;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/xinzhu/overmind/client/hook/env/a;->e:Ljava/util/List;

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/xinzhu/overmind/client/hook/env/a;->f:Ljava/util/List;

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/xinzhu/overmind/client/hook/env/a;->g:Ljava/util/List;

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/xinzhu/overmind/client/hook/env/a;->h:Ljava/util/List;

    const-string v8, "android"

    .line 9
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.google.android.webview"

    .line 10
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.google.android.webview.dev"

    .line 11
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.google.android.webview.beta"

    .line 12
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.google.android.webview.canary"

    .line 13
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.android.webview"

    .line 14
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.android.camera"

    .line 15
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.android.chrome"

    .line 16
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.android.providers.downloads"

    .line 17
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.huawei.webview"

    .line 18
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.noshufou.android.su"

    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.noshufou.android.su.elite"

    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "eu.chainfire.supersu"

    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.koushikdutta.superuser"

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.thirdparty.superuser"

    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.yellowes.su"

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.topjohnwu.magisk"

    .line 25
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "de.robv.android.xposed.installer"

    .line 27
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.huawei.hwid"

    .line 28
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.vivo.sdkplugin"

    .line 29
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.mm"

    .line 30
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.eg.android.AlipayGphone"

    .line 31
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.mobileqq"

    .line 32
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCOUNT_MANAGER"

    .line 33
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 34
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BACKUP"

    .line 35
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    .line 36
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.accounts.action.ACCOUNT_REMOVED"

    .line 37
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 38
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 39
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 40
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.intent.action.USER_ADDED"

    .line 41
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 42
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 43
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perm"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isHideRoot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isHideXposed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/ComponentName;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xinzhu/overmind/client/hook/env/a;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/client/hook/env/a;->e:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/xinzhu/overmind/client/hook/env/b;->f(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    return v3

    .line 4
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v4, 0x0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPm()Lcom/xinzhu/haunted/android/content/pm/e;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    move-result v6

    invoke-virtual {v1, p0, v4, v5, v6}, Lcom/xinzhu/haunted/android/content/pm/e;->e(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPm()Lcom/xinzhu/haunted/android/content/pm/e;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    move-result v4

    invoke-virtual {v1, p0, v3, v4}, Lcom/xinzhu/haunted/android/content/pm/e;->d(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 7
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_5

    .line 8
    :cond_4
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v2
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ".overmind"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static i(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".overmind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xinzhu/overmind/client/hook/env/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/a;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".overmind"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static k(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/env/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xinzhu/overmind/client/hook/env/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static l(Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/content/n;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/content/n;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/content/n;->h()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/env/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
