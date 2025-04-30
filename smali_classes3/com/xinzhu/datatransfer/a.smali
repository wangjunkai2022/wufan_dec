.class public Lcom/xinzhu/datatransfer/a;
.super Ljava/lang/Object;
.source "DataTransferHelper.java"


# static fields
.field public static a:Ljava/lang/String; = "a"

.field static b:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static c:Lcom/xinzhu/overmind/utils/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xinzhu/overmind/utils/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xinzhu/datatransfer/a;->b:Landroid/util/ArrayMap;

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/utils/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/utils/c;-><init>()V

    sput-object v0, Lcom/xinzhu/datatransfer/a;->c:Lcom/xinzhu/overmind/utils/c;

    .line 3
    sget-object v0, Lcom/xinzhu/datatransfer/a;->b:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/xinzhu/datatransfer/b;->c()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/a;->D()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/xinzhu/datatransfer/a;->c:Lcom/xinzhu/overmind/utils/c;

    invoke-static {}, Lcom/xinzhu/datatransfer/b;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/c;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/xinzhu/datatransfer/a;->c:Lcom/xinzhu/overmind/utils/c;

    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/c;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/xinzhu/datatransfer/a;->c:Lcom/xinzhu/overmind/utils/c;

    invoke-static {}, Lcom/xinzhu/datatransfer/b;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/utils/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/xinzhu/datatransfer/a;->a:Ljava/lang/String;

    const-string v1, "Need Data Transfer, do it."

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/xinzhu/datatransfer/a;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/j;->g(Ljava/io/File;Ljava/io/File;)V

    .line 8
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ln2/a;->a(Z)V

    .line 11
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    return-void
.end method

.method public static b()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/xinzhu/datatransfer/a;->a:Ljava/lang/String;

    const-string v1, "Need Data Transfer for main package, do it."

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/xinzhu/datatransfer/a;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/j;->g(Ljava/io/File;Ljava/io/File;)V

    .line 8
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Ln2/a;->a(Z)V

    return-void
.end method
