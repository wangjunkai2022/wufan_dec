.class public Lcom/xinzhu/overmind/plugin/b;
.super Ljava/lang/Object;
.source "MindPluginWrapper.java"


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field static b:Lcom/xinzhu/overmind/plugin/a;


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

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/xinzhu/overmind/server/os/MindShareFileInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/xinzhu/overmind/server/e;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v0, p0}, Lcom/xinzhu/overmind/plugin/a;->checkFile(Ljava/lang/String;)Lcom/xinzhu/overmind/server/os/MindShareFileInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method private static c()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/xinzhu/overmind/utils/wrappers/ContentProviderWrapper;->acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PluginMonitor"

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xinzhu/overmind/plugin/a$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/plugin/a;

    move-result-object v1

    sput-object v1, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    .line 4
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/xinzhu/overmind/plugin/b$a;

    invoke-direct {v2}, Lcom/xinzhu/overmind/plugin/b$a;-><init>()V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x1

    :catchall_0
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "target"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/xinzhu/overmind/server/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v0, p0, p1}, Lcom/xinzhu/overmind/plugin/a;->copyDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "target"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/xinzhu/overmind/plugin/b;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;

    .line 5
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v3, v0, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "oat"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/plugin/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/plugin/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    sget-object p0, Lcom/xinzhu/overmind/plugin/b;->a:Ljava/lang/String;

    const-string p1, "copyDirReverse get empty file list"

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "target"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/xinzhu/overmind/server/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v0, p0, p1}, Lcom/xinzhu/overmind/plugin/a;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "target"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 2
    invoke-static {p0}, Lcom/xinzhu/overmind/plugin/b;->n(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 4
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/xinzhu/overmind/utils/j;->e(Ljava/io/InputStream;Ljava/io/File;)J

    .line 5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/xinzhu/overmind/server/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v0, p0}, Lcom/xinzhu/overmind/plugin/a;->deleteFileOrDir(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static i()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->isPluginPkgInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    :try_start_0
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v0}, Lcom/xinzhu/overmind/plugin/a;->initWorks()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x1

    return v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->o()V

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static j(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxNum",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v1, p0, p1}, Lcom/xinzhu/overmind/plugin/a;->getRecentTasks(II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v1}, Lcom/xinzhu/overmind/plugin/a;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static l(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v0, p0}, Lcom/xinzhu/overmind/plugin/a;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/os/MindShareFileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v1, p0}, Lcom/xinzhu/overmind/plugin/a;->listFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static n(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v1, p0}, Lcom/xinzhu/overmind/plugin/a;->openAsParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static o()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x10000

    .line 7
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 8
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object v1, Lcom/xinzhu/overmind/plugin/b;->a:Ljava/lang/String;

    const-string v2, "try start plugin"

    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static p()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/xinzhu/overmind/server/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v0}, Lcom/xinzhu/overmind/plugin/a;->syncAllPackages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static q(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkgName",
            "userId"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/xinzhu/overmind/server/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/plugin/b;->b:Lcom/xinzhu/overmind/plugin/a;

    invoke-interface {v0, p0, p1}, Lcom/xinzhu/overmind/plugin/a;->syncPackage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
