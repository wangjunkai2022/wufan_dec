.class public final Lcom/bytedance/pangle/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field static b:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/bytedance/pangle/util/f;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/pangle/util/f;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :cond_0
    :goto_0
    sget-object p0, Lcom/bytedance/pangle/util/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 11
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    .line 5
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-instance v0, Lcom/bytedance/pangle/util/g$1;

    invoke-direct {v0}, Lcom/bytedance/pangle/util/g$1;-><init>()V

    invoke-static {p0, v0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 9
    aget-object v1, v0, v2

    invoke-static {v1}, Lcom/bytedance/pangle/util/f;->a(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/pangle/util/f;->a(Ljava/io/File;)V

    return-void
.end method
