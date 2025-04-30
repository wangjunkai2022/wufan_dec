.class Lcom/mob/tools/a/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    const-class v0, [Ljava/lang/Object;

    const-class v1, Ljava/lang/Object;

    const-class v2, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 2
    iput-object v3, p0, Lcom/mob/tools/a/h$b;->a:Ljava/lang/reflect/Method;

    .line 3
    iput-object v3, p0, Lcom/mob/tools/a/h$b;->b:Ljava/lang/reflect/Method;

    .line 4
    iput-object v3, p0, Lcom/mob/tools/a/h$b;->c:Ljava/lang/reflect/Method;

    .line 5
    iput-object v3, p0, Lcom/mob/tools/a/h$b;->d:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    .line 6
    iput-boolean v4, p0, Lcom/mob/tools/a/h$b;->e:Z

    .line 7
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lcom/mob/tools/a/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v6, 0x2

    if-nez p1, :cond_0

    const-string p1, "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"

    .line 9
    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 10
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 11
    invoke-virtual {v7, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 12
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    const-string p1, "021fObdcb_h8bcbhcjdebgde0bgjTcjdg2gKbjdibccbAg"

    .line 13
    invoke-static {p1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v4

    .line 14
    invoke-static {p1, v8}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v5, "009Hcbcabd?f5eecbbddede"

    .line 15
    invoke-static {v5}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "026?beca<jScj(jf_cjbebd8bUcjdabcbiEfgEbfcjfbbcdhbcbiBfg%bf"

    .line 16
    invoke-static {v9}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object v3, v8, v7

    new-array v3, v6, [Ljava/lang/Class;

    aput-object v2, v3, v4

    const-class v9, Ljava/lang/ClassLoader;

    aput-object v9, v3, v7

    .line 17
    invoke-static {p1, v5, v8, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v3, "010Xbcbi1hQcabhLg@fbchefce"

    .line 18
    invoke-static {v3}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    aput-object v9, v8, v4

    aput-object v1, v8, v7

    aput-object v2, v8, v6

    const-class v9, [Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x4

    aput-object v0, v8, v9

    invoke-virtual {p1, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/a/h$b;->a:Ljava/lang/reflect/Method;

    .line 19
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v3, "010_bcbiTh2cabhWg%fbchefce"

    .line 20
    invoke-static {v3}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v2, v5, v4

    aput-object v1, v5, v7

    aput-object v2, v5, v6

    const-class v8, [Ljava/lang/Class;

    aput-object v8, v5, v10

    aput-object v0, v5, v9

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/h$b;->b:Ljava/lang/reflect/Method;

    .line 21
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v0, "0128biTg3dbfbcebide@b4bdbibeNg"

    .line 22
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Class;

    aput-object v2, v3, v4

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/h$b;->c:Ljava/lang/reflect/Method;

    .line 23
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v0, "009Odd%gbQfbdibcNg]cb4f"

    .line 24
    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v2, v3, v4

    aput-object v2, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a/h$b;->d:Ljava/lang/reflect/Method;

    .line 25
    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 26
    iput-boolean v7, p0, Lcom/mob/tools/a/h$b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/h$b;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "IHA is null"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/mob/tools/a/h$b;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "nHI is null"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/mob/tools/a/h$b;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "IHABC is null"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/mob/tools/a/h$b;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "mGHF is null"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method
