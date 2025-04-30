.class final Lcn/aigestudio/downloader/bizs/k;
.super Ljava/lang/Object;
.source "DLUtil.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "DLUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 3
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 4
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v6, "REL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v5, "MultiThreadDownloader"

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string v5, "/"

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v5, " (Linux; U; Android"

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    const-string v1, ";"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v4, :cond_5

    const-string v1, " Build/"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ")"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/aigestudio/downloader/bizs/k;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcn/aigestudio/downloader/bizs/k;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object p0, v3

    goto :goto_2

    :catch_1
    move-exception p1

    .line 5
    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNewFile error."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :cond_3
    :goto_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/e;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/e;

    .line 2
    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static c(Ljava/util/List;Lcn/aigestudio/downloader/bizs/f;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/e;",
            ">;",
            "Lcn/aigestudio/downloader/bizs/f;",
            ")",
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/e;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Lcn/aigestudio/downloader/bizs/e;

    const-string v1, "Accept"

    const-string v2, "image/gif, image/jpeg, image/pjpeg, image/pjpeg,application/x-shockwave-flash, application/xaml+xml,application/vnd.ms-xpsdocument, application/x-ms-xbap,application/x-ms-application, application/vnd.ms-excel,application/vnd.ms-powerpoint, application/msword, */*"

    invoke-direct {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcn/aigestudio/downloader/bizs/e;

    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-direct {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcn/aigestudio/downloader/bizs/e;

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcn/aigestudio/downloader/bizs/e;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-direct {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcn/aigestudio/downloader/bizs/e;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-direct {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcn/aigestudio/downloader/bizs/e;

    const-string v1, "Range"

    const-string v2, "bytes=0-"

    invoke-direct {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "User-Agent"

    .line 9
    invoke-static {v0, p0}, Lcn/aigestudio/downloader/bizs/k;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Lcn/aigestudio/downloader/bizs/e;

    sget-object v2, Lcn/aigestudio/downloader/bizs/k;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcn/aigestudio/downloader/bizs/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcn/aigestudio/downloader/bizs/e;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->l:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-direct {v0, v1, p1}, Lcn/aigestudio/downloader/bizs/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method static d(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3b

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2f

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    const/16 v1, 0x3f

    const-string v2, "/"

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_2

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p2

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 9
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_4

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_4

    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-nez p1, :cond_5

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_5
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "="

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_1

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_1

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    const/16 v3, 0x5f

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
