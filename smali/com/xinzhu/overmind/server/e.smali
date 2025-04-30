.class public Lcom/xinzhu/overmind/server/e;
.super Ljava/lang/Object;
.source "MindSystem.java"


# static fields
.field private static a:Lcom/xinzhu/overmind/server/e;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xinzhu/overmind/server/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/e;->a:Lcom/xinzhu/overmind/server/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xinzhu/overmind/server/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/e;->a:Lcom/xinzhu/overmind/server/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xinzhu/overmind/server/e;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/e;-><init>()V

    sput-object v1, Lcom/xinzhu/overmind/server/e;->a:Lcom/xinzhu/overmind/server/e;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xinzhu/overmind/server/e;->a:Lcom/xinzhu/overmind/server/e;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/a;->W()V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/h;->systemReady()V

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/user/c;->systemReady()V

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/am/f;->systemReady()V

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/am/g;->get()Lcom/xinzhu/overmind/server/am/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/am/g;->systemReady()V

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/os/h;->get()Lcom/xinzhu/overmind/server/os/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/os/h;->systemReady()V

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/g;->get()Lcom/xinzhu/overmind/server/pm/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/g;->systemReady()V

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/os/g;->get()Lcom/xinzhu/overmind/server/os/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/os/g;->systemReady()V

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->systemReady()V

    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/xinzhu/overmind/server/e;->b:Z

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/env/a;->a()Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/xinzhu/overmind/server/pm/h;->installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 15
    :cond_0
    sput-boolean v2, Lcom/xinzhu/overmind/server/e;->b:Z

    return-void
.end method
