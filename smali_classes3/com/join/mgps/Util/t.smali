.class public Lcom/join/mgps/Util/t;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/t$c;,
        Lcom/join/mgps/Util/t$a;,
        Lcom/join/mgps/Util/t$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "[<sectionless!>]"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/Util/t$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/join/mgps/Util/t$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/t;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/Util/t;->h()Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/t$c;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/t$c;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/t$c;->a(Lcom/join/mgps/Util/t$c;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/t$c;->a(Lcom/join/mgps/Util/t$c;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/t$b;

    if-nez p1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/Util/t$b;->b:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/t$c;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lcom/join/mgps/Util/t$c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/join/mgps/Util/t$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/Util/t$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/t$c;

    invoke-direct {v0, p1}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/Util/t;->a()V

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/join/mgps/Util/t;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "[<sectionless!>]"

    .line 6
    new-instance v3, Lcom/join/mgps/Util/t$c;

    invoke-direct {v3, v2, v0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;Ljava/io/BufferedReader;)V

    .line 7
    iget-object v4, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    invoke-static {v3}, Lcom/join/mgps/Util/t$c;->b(Lcom/join/mgps/Util/t$c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {v3}, Lcom/join/mgps/Util/t$c;->b(Lcom/join/mgps/Util/t$c;)Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v3, Lcom/join/mgps/Util/t$c;

    invoke-direct {v3, v2, v0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;Ljava/io/BufferedReader;)V

    .line 12
    iget-object v4, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v0, 0x1

    return v0

    .line 16
    :catch_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/Util/t;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/Util/t;->h()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    :catch_2
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return v1
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/t;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/Util/t;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/join/mgps/Util/t;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/Util/t;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/Util/t$c;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3, v0}, Lcom/join/mgps/Util/t$c;->f(Ljava/io/FileWriter;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 11
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_1
    return v1
.end method
