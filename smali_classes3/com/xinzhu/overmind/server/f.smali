.class public Lcom/xinzhu/overmind/server/f;
.super Ljava/lang/Object;
.source "MindSystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/f$a;,
        Lcom/xinzhu/overmind/server/f$b;
    }
.end annotation


# static fields
.field static final b:Ljava/lang/String; = "MindSystemConfig"

.field static c:Lcom/xinzhu/overmind/server/f; = null

.field private static final d:I = 0x2

.field private static final e:I = -0x1


# instance fields
.field final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/f$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/f;->a:Landroid/util/ArrayMap;

    .line 3
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/f;->d()V

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/f;->h()V

    return-void
.end method

.method public static a()Lcom/xinzhu/overmind/server/f;
    .locals 2

    .line 1
    const-class v0, Lcom/xinzhu/overmind/server/f;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/f;->c:Lcom/xinzhu/overmind/server/f;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/xinzhu/overmind/server/f;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/f;-><init>()V

    sput-object v1, Lcom/xinzhu/overmind/server/f;->c:Lcom/xinzhu/overmind/server/f;

    .line 4
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/server/f;->c:Lcom/xinzhu/overmind/server/f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "permFile",
            "parser"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> not allowed in partition of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MindSystemConfig"

    .line 3
    invoke-static {p2, p1}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc"

    const-string v2, "permissions"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v0, v3}, Lcom/xinzhu/overmind/a;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/xinzhu/overmind/server/f;->e(Ljava/io/File;I)V

    .line 3
    new-instance v0, Ljava/io/File;

    const-string v4, "/vendor"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xinzhu/overmind/a;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/xinzhu/overmind/server/f;->e(Ljava/io/File;I)V

    .line 4
    new-instance v0, Ljava/io/File;

    const-string v4, "/odm"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xinzhu/overmind/a;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/xinzhu/overmind/server/f;->e(Ljava/io/File;I)V

    .line 5
    new-instance v0, Ljava/io/File;

    const-string v4, "/oem"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xinzhu/overmind/a;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/xinzhu/overmind/server/f;->e(Ljava/io/File;I)V

    .line 6
    new-instance v0, Ljava/io/File;

    const-string v4, "/product"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xinzhu/overmind/a;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/xinzhu/overmind/server/f;->e(Ljava/io/File;I)V

    .line 7
    new-instance v0, Ljava/io/File;

    const-string v4, "/system_ext"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/a;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/xinzhu/overmind/server/f;->e(Ljava/io/File;I)V

    return-void
.end method

.method private f(Ljava/io/File;I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permFile",
            "permissionFlag"
        }
    .end annotation

    const-string v0, "Got exception parsing permissions."

    const-string v1, "MindSystemConfig"

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading permissions from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xinzhu/overmind/utils/u;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 4
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 5
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v4, v6, :cond_d

    .line 6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "permissions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "config"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start tag in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": found "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expected \'permissions\' or \'config\'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    and-int/2addr p2, v6

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 9
    :goto_2
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/v;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 10
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v5, :cond_4

    goto/16 :goto_6

    .line 11
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 12
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/v;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_5
    const/4 v7, -0x1

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x9e824bb

    if-eq v8, v9, :cond_6

    goto :goto_3

    :cond_6
    const-string v8, "library"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v7, 0x0

    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    .line 14
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/v;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_c

    const-string v7, "name"

    const/4 v8, 0x0

    .line 15
    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "file"

    .line 16
    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "dependency"

    .line 17
    invoke-interface {v3, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, " at "

    const-string v11, "<"

    if-nez v7, :cond_9

    .line 18
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> without name in "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-static {v1, v6}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    if-nez v9, :cond_a

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "> without file in "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-static {v1, v6}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 24
    :cond_a
    new-instance v6, Lcom/xinzhu/overmind/server/f$b;

    if-nez v8, :cond_b

    new-array v8, v4, [Ljava/lang/String;

    goto :goto_4

    :cond_b
    const-string v10, ":"

    .line 25
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-direct {v6, v7, v9, v8}, Lcom/xinzhu/overmind/server/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    iget-object v8, p0, Lcom/xinzhu/overmind/server/f;->a:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 27
    :cond_c
    invoke-direct {p0, v6, p1, v3}, Lcom/xinzhu/overmind/server/f;->c(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 28
    :goto_5
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/v;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 29
    :cond_d
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "No start tag found"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 30
    :try_start_3
    invoke-static {v1, v0, p1}, Lcom/xinzhu/overmind/utils/u;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_1
    move-exception p1

    .line 31
    invoke-static {v1, v0, p1}, Lcom/xinzhu/overmind/utils/u;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :goto_6
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->b(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_7
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->b(Ljava/lang/AutoCloseable;)V

    .line 33
    throw p1

    .line 34
    :catch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find or open permissions file "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private g(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listFile"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 5
    new-instance v3, Lcom/xinzhu/overmind/server/f$b;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v1, v2, v4}, Lcom/xinzhu/overmind/server/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 6
    iget-object v1, p0, Lcom/xinzhu/overmind/server/f;->a:Landroid/util/ArrayMap;

    iget-object v2, v3, Lcom/xinzhu/overmind/server/f$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 8
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read public libraries file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MindSystemConfig"

    invoke-static {v1, p1, v0}, Lcom/xinzhu/overmind/utils/u;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private h()V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/public.libraries.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/f;->g(Ljava/io/File;)V

    const-string v0, "/system/etc"

    const-string v1, "/system_ext/etc"

    const-string v2, "/product/etc"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 3
    aget-object v3, v0, v2

    .line 4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Public libraries file folder missing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MindSystemConfig"

    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6
    :cond_0
    array-length v3, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v4, v5

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "public.libraries-"

    .line 8
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    invoke-direct {p0, v6}, Lcom/xinzhu/overmind/server/f;->g(Ljava/io/File;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public b()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/f$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/f;->a:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public e(Ljava/io/File;I)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "libraryDir",
            "permissionFlag"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "MindSystemConfig"

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v2, " cannot be read"

    if-nez v0, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Directory "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 5
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "etc/permissions/platform.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v6

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " directory, ignoring"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xinzhu/overmind/utils/u;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_5

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permissions library file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11
    :cond_5
    invoke-direct {p0, v6, p2}, Lcom/xinzhu/overmind/server/f;->f(Ljava/io/File;I)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 12
    invoke-direct {p0, v0, p2}, Lcom/xinzhu/overmind/server/f;->f(Ljava/io/File;I)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No directory "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xinzhu/overmind/utils/u;->j(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
