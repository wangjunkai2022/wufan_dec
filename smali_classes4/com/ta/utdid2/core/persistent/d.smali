.class public Lcom/ta/utdid2/core/persistent/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/d$a;
    }
.end annotation


# static fields
.field public static final d:I = 0x2

.field public static final e:I = 0x1

.field public static final f:I

.field private static final g:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/io/File;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/core/persistent/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/d;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/d;->c:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/d;->b:Ljava/io/File;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Directory can not be empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ta/utdid2/core/persistent/d;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/ta/utdid2/core/persistent/d;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private d()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/d;->b:Ljava/io/File;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/d;->d()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ta/utdid2/core/persistent/d;->g(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private static f(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".bak"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private g(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " contains a path separator"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/d;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/ta/utdid2/core/persistent/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/utdid2/core/persistent/d$a;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/ta/utdid2/core/persistent/d$a;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v1

    .line 6
    :cond_0
    monitor-exit v0

    .line 7
    invoke-static {p1}, Lcom/ta/utdid2/core/persistent/d;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 10
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    :cond_2
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 14
    invoke-static {v2}, Lcom/ta/utdid2/core/persistent/e;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    .line 15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 17
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 18
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 19
    :catch_3
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v4, v3, [B

    .line 21
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 22
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    :catch_4
    move-exception v2

    .line 23
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v2

    .line 24
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 25
    :cond_3
    :goto_0
    sget-object v2, Lcom/ta/utdid2/core/persistent/d;->g:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v1, :cond_4

    .line 26
    :try_start_3
    invoke-virtual {v1, v0}, Lcom/ta/utdid2/core/persistent/d$a;->i(Ljava/util/Map;)V

    goto :goto_1

    .line 27
    :cond_4
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/utdid2/core/persistent/d$a;

    if-nez v1, :cond_5

    .line 28
    new-instance v1, Lcom/ta/utdid2/core/persistent/d$a;

    invoke-direct {v1, p1, p2, v0}, Lcom/ta/utdid2/core/persistent/d$a;-><init>(Ljava/io/File;ILjava/util/Map;)V

    .line 29
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/d;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_5
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v2

    throw p1

    :catchall_1
    move-exception p1

    .line 32
    monitor-exit v0

    throw p1
.end method
