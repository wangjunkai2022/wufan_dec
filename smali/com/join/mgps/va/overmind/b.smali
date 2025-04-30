.class public final Lcom/join/mgps/va/overmind/b;
.super Lcom/xinzhu/overmind/custom/CustomCallback;
.source "CustomCallbackImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J8\u0010\u0008\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006j\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\n\u001a\u00020\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016R\"\u0010\u0015\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0010\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/join/mgps/va/overmind/b;",
        "Lcom/xinzhu/overmind/custom/CustomCallback;",
        "",
        "pkgName",
        "",
        "userId",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "customIORedirect",
        "",
        "customLoadLibgggg",
        "name",
        "",
        "addr",
        "customOnSoLoaded",
        "",
        "a",
        "Z",
        "()Z",
        "b",
        "(Z)V",
        "libLoaded",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/custom/CustomCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/va/overmind/b;->a:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/va/overmind/b;->a:Z

    return-void
.end method

.method public customIORedirect(Ljava/lang/String;I)Ljava/util/LinkedHashMap;
    .locals 23
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "pkgName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xinzhu/overmind/client/frameworks/f;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    .line 4
    sget-object v4, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v4, v0}, Lcom/join/mgps/va/overmind/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 5
    :cond_0
    sget-object v4, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v4, v0, v1}, Lcom/join/mgps/va/overmind/f;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 6
    :goto_0
    sget-object v5, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v5, v0}, Lcom/join/mgps/va/overmind/f;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v5}, Lcom/join/mgps/va/overmind/f;->X()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v5}, Lcom/join/mgps/va/overmind/f;->c0()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    .line 9
    sget-object v4, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v4, v0}, Lcom/join/mgps/va/overmind/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 10
    :cond_2
    sget-object v4, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v4, v0, v1}, Lcom/join/mgps/va/overmind/f;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 11
    :goto_1
    sget-object v5, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v5, v0}, Lcom/join/mgps/va/overmind/f;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v5}, Lcom/join/mgps/va/overmind/f;->W()Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v5}, Lcom/join/mgps/va/overmind/f;->b0()Ljava/lang/String;

    move-result-object v5

    .line 14
    :goto_2
    invoke-virtual {v3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->k()Z

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-static {v3, v0, v10, v9, v8}, Lcom/join/mgps/va/overmind/f;->u(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 15
    :cond_3
    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-static {v3, v0, v10, v9, v8}, Lcom/join/mgps/va/overmind/f;->r(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 16
    :goto_3
    invoke-static {v3}, Lcom/join/mgps/mod/utils/PluginConfig;->getArchiveSection(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v3

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v3, :cond_4

    const-string v11, "archiveId"

    .line 18
    invoke-virtual {v3, v11}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    const-string v11, "archivePath"

    .line 19
    invoke-virtual {v3, v11}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "archivePath2"

    .line 20
    invoke-virtual {v3, v13}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v13, v9, [Ljava/lang/String;

    aput-object v11, v13, v10

    aput-object v3, v13, v12

    .line 21
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 22
    :cond_4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v3

    const/16 v13, 0x80

    .line 23
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v14

    invoke-virtual {v3, v0, v13, v14}, Lcom/xinzhu/overmind/client/frameworks/f;->f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 24
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data/data/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_5
    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v3}, Lcom/join/mgps/va/overmind/f;->L()Ljava/util/List;

    move-result-object v3

    .line 26
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "/"

    .line 27
    invoke-static {v13, v14, v10, v9, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 28
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "Android/obb/"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "Android/data/"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "save_data/"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v12, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_8

    :cond_7
    move-object/from16 v22, v3

    const/4 v9, 0x0

    goto/16 :goto_b

    .line 31
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_a

    .line 32
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_9

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v16, 0x1

    :goto_7
    if-eqz v16, :cond_c

    move-object/from16 v22, v3

    :cond_b
    :goto_8
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_c
    const-string v8, "/data/data"

    move-object/from16 v22, v3

    const/4 v3, 0x0

    .line 33
    invoke-static {v15, v8, v10, v9, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :goto_9
    goto :goto_8

    :cond_d
    const-string v8, "/Android/data"

    .line 34
    invoke-static {v15, v8, v10, v9, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_9

    .line 35
    :cond_e
    invoke-static {v15, v14, v10, v9, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "/"

    const-string v18, ""

    move-object/from16 v16, v15

    .line 36
    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 37
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/user/"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 38
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 39
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/String;

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "archiveRedirect: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/ => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    :goto_a
    move-object/from16 v3, v22

    const/16 v8, 0x2f

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_5

    :goto_b
    move-object/from16 v3, v22

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_10
    return-object v2
.end method

.method public customLoadLibgggg(Ljava/lang/String;I)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "isUseNativeLib"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customLoadLibgggg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v3, p1, v4}, Lcom/join/mgps/va/overmind/f;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/app_pluginLib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "packageName"

    .line 5
    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "userId"

    .line 6
    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x0

    :try_start_0
    const-string v5, "com.join.android.app.mgsim.wufun.virtual.service.dbprovider"

    .line 7
    invoke-static {v5, v0, p2, v3}, Lcom/join/mgps/va/overmind/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :cond_3
    if-eqz v4, :cond_5

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->is64Bit()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/join/mgps/va/overmind/f;->l(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/arm64"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 12
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/join/mgps/va/overmind/f;->l(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/arm"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v2, p1

    .line 13
    :cond_5
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    sget-object p1, Lcom/join/mgps/va/overmind/PaCtrl;->a:Lcom/join/mgps/va/overmind/PaCtrl;

    invoke-virtual {p1, v2}, Lcom/join/mgps/va/overmind/PaCtrl;->mountLibGggg(Ljava/lang/String;)V

    .line 15
    iput-boolean v1, p0, Lcom/join/mgps/va/overmind/b;->a:Z

    :cond_6
    return-void
.end method

.method public customOnSoLoaded(Ljava/lang/String;J)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customOnSoLoaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/va/overmind/b;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/join/mgps/va/overmind/PaCtrl;->a:Lcom/join/mgps/va/overmind/PaCtrl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/va/overmind/PaCtrl;->onSoLoaded(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
