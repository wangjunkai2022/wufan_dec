.class public Lcom/xinzhu/overmind/server/os/f;
.super Lcom/xinzhu/overmind/server/os/b$b;
.source "MindFileShareService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# static fields
.field private static sService:Lcom/xinzhu/overmind/server/os/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/os/f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/os/f;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/os/f;->sService:Lcom/xinzhu/overmind/server/os/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/os/b$b;-><init>()V

    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/os/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/os/f;->sService:Lcom/xinzhu/overmind/server/os/f;

    return-object v0
.end method


# virtual methods
.method public listFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 5
    new-instance v4, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;

    invoke-direct {v4, v3}, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public openAsParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
