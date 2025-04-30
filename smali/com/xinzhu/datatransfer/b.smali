.class public Lcom/xinzhu/datatransfer/b;
.super Ljava/lang/Object;
.source "TransferEnvironment.java"


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Android_va"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/datatransfer/b;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->S()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/app/system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->S()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/datatransfer/b;->a:Ljava/io/File;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/io/File;
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
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "package.ini"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "packages.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/io/File;
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
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "signature.ini"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "uid-list.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
