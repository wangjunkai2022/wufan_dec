.class public Lcom/join/mgps/joystick/map/a;
.super Ljava/lang/Object;
.source "BlackListManager.java"


# static fields
.field static e:Lcom/join/mgps/Util/t;

.field private static f:Lcom/join/mgps/joystick/map/a;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/wufan91/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/joystick/map/a;->a:Ljava/lang/String;

    .line 3
    const-class v0, Lcom/join/mgps/joystick/map/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/joystick/map/a;->b:Ljava/lang/String;

    const-string v0, "blacklist_config.ini"

    .line 4
    iput-object v0, p0, Lcom/join/mgps/joystick/map/a;->c:Ljava/lang/String;

    const-string v0, "BT_BLACK_LIST"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/joystick/map/a;->d:[Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/joystick/map/a;->a:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->g()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->g()V

    .line 2
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/joystick/map/a;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->i(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->j()V

    :cond_0
    return-void
.end method

.method public static b()Lcom/join/mgps/joystick/map/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/a;->f:Lcom/join/mgps/joystick/map/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/joystick/map/a;

    invoke-direct {v0}, Lcom/join/mgps/joystick/map/a;-><init>()V

    sput-object v0, Lcom/join/mgps/joystick/map/a;->f:Lcom/join/mgps/joystick/map/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/joystick/map/a;->f:Lcom/join/mgps/joystick/map/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->g()V

    .line 3
    sget-object v1, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    .line 4
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/t$c;->d()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private d()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/joystick/map/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "blacklist_config.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private declared-synchronized g()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->d()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Ljava/io/File;->setReadable(Z)Z

    .line 9
    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_3
    :goto_0
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, v1}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    .line 14
    :cond_4
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->h()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized h(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class p0, Lcom/join/mgps/joystick/map/a;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/Util/t;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private i()V
    .locals 4

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/joystick/map/a;->d:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3
    aget-object v2, v2, v1

    .line 4
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Lcom/join/mgps/Util/t$c;

    invoke-direct {v3, v2}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private m(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->g()V

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    sget-object v3, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3, p1, v2, v1}, Lcom/join/mgps/Util/t;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->j()V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/map/a;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->g()V

    .line 3
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/joystick/map/a;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/t$c;->d()Ljava/util/Set;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-direct {p0, v3}, Lcom/join/mgps/joystick/map/a;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public k(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->g()V

    .line 3
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    sget-object v3, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    iget-object v4, p0, Lcom/join/mgps/joystick/map/a;->d:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-virtual {v3, v4, v2, v5}, Lcom/join/mgps/Util/t;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public l(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->g()V

    .line 3
    sget-object v0, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->a()V

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-direct {p0, v0}, Lcom/join/mgps/joystick/map/a;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    sget-object v2, Lcom/join/mgps/joystick/map/a;->e:Lcom/join/mgps/Util/t;

    iget-object v3, p0, Lcom/join/mgps/joystick/map/a;->d:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1, v0}, Lcom/join/mgps/Util/t;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/joystick/map/a;->j()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
