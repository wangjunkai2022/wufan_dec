.class public Lcom/xinzhu/overmind/utils/j;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "j"

.field public static final b:I = 0x1c0

.field public static final c:I = 0x100

.field public static final d:I = 0x80

.field public static final e:I = 0x40

.field public static final f:I = 0x38

.field public static final g:I = 0x20

.field public static final h:I = 0x10

.field public static final i:I = 0x8

.field public static final j:I = 0x7

.field public static final k:I = 0x4

.field public static final l:I = 0x2

.field public static final m:I = 0x1

.field private static n:Z = true

.field private static final o:J = 0x80000L


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

.method public static a(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "mode"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)J
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-static {v0, p0}, Lcom/xinzhu/overmind/utils/j;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-wide v1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static c(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    .locals 2
    .param p0    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/xinzhu/overmind/utils/j;->d(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;J)J
    .locals 0
    .param p0    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/utils/j;->h(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Ljava/io/InputStream;Ljava/io/File;)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/utils/j;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/xinzhu/overmind/utils/j;->n:Z

    if-eqz v0, :cond_0

    .line 2
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/utils/j;->c(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/utils/j;->i(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static g(Ljava/io/File;Ljava/io/File;)V
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/xinzhu/overmind/utils/j;->a:Ljava/lang/String;

    const-string p1, "copyDirectory failed, source not exist"

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/j;->g(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/io/File;Ljava/io/File;)J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static h(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {p2, p0}, Lcom/xinzhu/overmind/utils/j;->i(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static i(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x0

    .line 2
    invoke-virtual {p1, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-long/2addr v5, v7

    const-wide/32 v7, 0x80000

    cmp-long v9, v5, v7

    if-ltz v9, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public static j(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/j;->l(Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    return-void
.end method

.method static l(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileOrDirectory"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xinzhu/overmind/utils/j;->o(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/j;->l(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static m(Ljava/lang/String;)Z
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
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static o(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "File must not be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v1

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static p(Ljava/io/File;)Z
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
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0
.end method

.method public static q(Ljava/io/File;)Landroid/os/Parcel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/j;->v(Ljava/io/File;)[B

    move-result-object p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0
.end method

.method public static r(Ljava/io/File;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origFile",
            "newFile"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static s(Ljava/io/File;III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "mode",
            "uid",
            "gid"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/utils/j;->u(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static t(Ljava/io/FileDescriptor;III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fd",
            "mode",
            "uid",
            "gid"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 2
    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/xinzhu/overmind/utils/j;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to fchown(): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    return p0

    :catch_1
    move-exception p0

    .line 5
    sget-object p1, Lcom/xinzhu/overmind/utils/j;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to fchmod(): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    return p0
.end method

.method public static u(Ljava/lang/String;III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "mode",
            "uid",
            "gid"
        }
    .end annotation

    const-string v0, "): "

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 2
    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p1

    .line 3
    sget-object p2, Lcom/xinzhu/overmind/utils/j;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to chown("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget p0, p1, Landroid/system/ErrnoException;->errno:I

    return p0

    :catch_1
    move-exception p1

    .line 5
    sget-object p2, Lcom/xinzhu/overmind/utils/j;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to chmod("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget p0, p1, Landroid/system/ErrnoException;->errno:I

    return p0
.end method

.method public static v(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->w(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->b(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/l;->b(Ljava/lang/AutoCloseable;)V

    .line 4
    throw p0
.end method

.method public static w(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static x(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zipFile",
            "targetDirectory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 5
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to ensure directory: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :goto_3
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 12
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 13
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :cond_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 15
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "targetDir"
        }
    .end annotation

    const-string v0, "/"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v3, v1

    move-object v4, v3

    .line 5
    :goto_0
    :try_start_2
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x800

    new-array v6, v5, [B

    .line 6
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 7
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 8
    sget-object v9, Lcom/xinzhu/overmind/utils/j;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unzip file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eq v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 10
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 12
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 14
    :cond_1
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    if-eqz v9, :cond_2

    .line 16
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 17
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 18
    invoke-virtual {v2, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 19
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 20
    :try_start_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v7, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :goto_2
    :try_start_4
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-le v1, v10, :cond_3

    .line 22
    invoke-virtual {v3, v6, v11, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 24
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 25
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 26
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v3

    move-object v3, v7

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    move-object v3, v7

    goto :goto_b

    :catch_1
    move-exception p0

    :goto_4
    move-object v3, v7

    goto :goto_7

    .line 27
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_5

    .line 28
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5
    if-eqz v3, :cond_6

    .line 29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v4, :cond_7

    .line 30
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 31
    :cond_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    :catch_2
    move-exception p0

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v3, v1

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v3, v1

    goto :goto_6

    :catchall_3
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_5
    move-object v4, v3

    goto :goto_b

    :catch_4
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_6
    move-object v4, v3

    .line 32
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v1, :cond_8

    .line 33
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_8

    :catch_5
    move-exception p0

    goto :goto_9

    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    .line 34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_9
    if-eqz v4, :cond_a

    .line 35
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v2, :cond_b

    .line 36
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_a

    .line 37
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_a
    return-void

    :catchall_4
    move-exception p0

    :goto_b
    if-eqz v1, :cond_c

    .line 38
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_c

    :catch_6
    move-exception p1

    goto :goto_d

    :cond_c
    :goto_c
    if-eqz v3, :cond_d

    .line 39
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_d
    if-eqz v4, :cond_e

    .line 40
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_e
    if-eqz v2, :cond_f

    .line 41
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_e

    .line 42
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :cond_f
    :goto_e
    goto :goto_10

    :goto_f
    throw p0

    :goto_10
    goto :goto_f
.end method

.method public static z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
