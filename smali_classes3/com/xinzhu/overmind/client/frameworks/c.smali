.class public Lcom/xinzhu/overmind/client/frameworks/c;
.super Ljava/lang/Object;
.source "MindFileShare.java"


# static fields
.field private static final b:Ljava/lang/String; = "c"

.field private static c:Lcom/xinzhu/overmind/client/frameworks/c;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/os/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/frameworks/c;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/c;->c:Lcom/xinzhu/overmind/client/frameworks/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/xinzhu/overmind/client/frameworks/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/c;->c:Lcom/xinzhu/overmind/client/frameworks/c;

    return-object v0
.end method

.method private d()Lcom/xinzhu/overmind/server/os/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/c;->a:Lcom/xinzhu/overmind/server/os/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/c;->a:Lcom/xinzhu/overmind/server/os/b;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "file_share"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/os/b$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/os/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/c;->a:Lcom/xinzhu/overmind/server/os/b;

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/c;->d()Lcom/xinzhu/overmind/server/os/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/c;->f(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/xinzhu/overmind/utils/j;->e(Ljava/io/InputStream;Ljava/io/File;)J

    .line 5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/c;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/client/frameworks/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/client/frameworks/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    sget-object p1, Lcom/xinzhu/overmind/client/frameworks/c;->b:Ljava/lang/String;

    const-string p2, "copyDirectory get empty file list"

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
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

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/c;->d()Lcom/xinzhu/overmind/server/os/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/os/b;->listFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/c;->d()Lcom/xinzhu/overmind/server/os/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/os/b;->openAsParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
