.class final Lcom/bytedance/pangle/plugin/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/plugin/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/bytedance/pangle/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "status_code"

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_package_name"

    .line 106
    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version_code"

    .line 107
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 108
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 109
    invoke-static {p6}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 111
    :goto_0
    invoke-static {}, Lcom/bytedance/pangle/b/b;->a()Lcom/bytedance/pangle/b/b;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/bytedance/pangle/b/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method static a(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 20

    move-object/from16 v8, p1

    const-string v9, "--runtime-arg"

    const-string/jumbo v10, "\u63d2\u4ef6\u5305\u5305\u542bso\u4e0d\u7b26\u5408\u5bbf\u4e3bABI\u7c7b\u578b"

    const-string v11, "PluginInstaller "

    const-string v12, "Zeus/install"

    .line 1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;
    :try_end_0
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    const-string v1, "PluginInstaller"

    const-string v2, "install:"

    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v1, v2}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/pangle/log/b;

    move-result-object v15

    .line 4
    sget-object v1, Lcom/bytedance/pangle/b/b;->e:Ljava/lang/String;

    sget v2, Lcom/bytedance/pangle/b/b$a;->n:I

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 5
    invoke-static/range {p1 .. p2}, Lcom/bytedance/pangle/c/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/pangle/util/f;->a(Ljava/lang/String;)V

    const-string v1, "cleanDir"

    .line 6
    invoke-virtual {v15, v1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    const-string v3, ";"

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1e

    cmp-long v16, v1, v6

    if-gtz v16, :cond_0

    cmp-long v16, v1, v4

    if-gez v16, :cond_1

    :cond_0
    :try_start_2
    const-string v14, "cleanDir cost:"

    .line 7
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 8
    :cond_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/bytedance/pangle/f/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v1, :cond_23

    :try_start_4
    const-string v1, "checkSignature"

    .line 9
    invoke-virtual {v15, v1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v14, v1, v6

    if-gtz v14, :cond_2

    cmp-long v14, v1, v4

    if-gez v14, :cond_3

    :cond_2
    const-string v14, "checkSignature cost:"

    .line 10
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/pangle/GlobalParam;->checkMatchHostAbi()Z

    move-result v1
    :try_end_4
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v1, :cond_5

    .line 12
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/bytedance/pangle/c/b;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Lcom/bytedance/pangle/plugin/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v10, v1}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;B)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 14
    :try_start_6
    sget-object v1, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v2, Lcom/bytedance/pangle/b/b$a;->w:I

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 15
    sget-object v1, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    const/16 v2, 0x44c

    const/4 v3, -0x5

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 16
    new-instance v1, Lcom/bytedance/pangle/plugin/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v0, v2}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v1
    :try_end_6
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_5
    :goto_0
    :try_start_7
    const-string v1, "checkMathHostAbi"

    .line 17
    invoke-virtual {v15, v1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v10, v1, v6

    if-gtz v10, :cond_6

    cmp-long v10, v1, v4

    if-gez v10, :cond_7

    :cond_6
    const-string v10, "checkMathHostAbi cost:"

    .line 18
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_7
    invoke-static/range {p0 .. p2}, Lcom/bytedance/pangle/plugin/b;->b(Ljava/io/File;Ljava/lang/String;I)V

    const-string v1, "checkPermissions"

    .line 20
    invoke-virtual {v15, v1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v10, v1, v6

    if-gtz v10, :cond_8

    cmp-long v10, v1, v4

    if-gez v10, :cond_9

    :cond_8
    const-string v10, "checkPermissions cost:"

    .line 21
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_9
    invoke-static/range {p0 .. p2}, Lcom/bytedance/pangle/plugin/b;->c(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "copyApk"

    .line 23
    invoke-virtual {v15, v2}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-gtz v2, :cond_a

    const-wide/16 v17, 0x0

    cmp-long v2, v4, v17

    if-gez v2, :cond_b

    :cond_a
    const-string v2, "copyApk cost:"

    .line 24
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    new-instance v4, Lcom/bytedance/pangle/res/a/c;

    invoke-direct {v4}, Lcom/bytedance/pangle/res/a/c;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v5, v1, v2}, Lcom/bytedance/pangle/res/a/c;->a(Ljava/io/File;ZLjava/lang/StringBuilder;)I

    move-result v10
    :try_end_7
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/16 v1, 0x64

    if-eq v10, v1, :cond_d

    const/16 v4, 0xc8

    if-ne v10, v4, :cond_c

    goto :goto_1

    .line 27
    :cond_c
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 28
    sget-object v1, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v2, Lcom/bytedance/pangle/b/b$a;->x:I

    const-wide/16 v5, -0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v7, v9

    invoke-static/range {v1 .. v7}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const/16 v2, 0x44c

    const/4 v3, -0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 30
    new-instance v0, Lcom/bytedance/pangle/plugin/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "modifyRes failed. result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorLog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_d
    :goto_1
    if-ne v10, v1, :cond_e

    const-string v0, "modifyRes"
    :try_end_8
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    :cond_e
    :try_start_9
    const-string v0, "noModifyRes"

    .line 31
    :goto_2
    invoke-virtual {v15, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-gtz v2, :cond_f

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_10

    :cond_f
    const-string v2, "modifyRes cost:"

    .line 32
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_10
    invoke-static/range {p1 .. p2}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static/range {p1 .. p2}, Lcom/bytedance/pangle/c/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 35
    :try_start_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v8}, Lcom/bytedance/pangle/c/b;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :try_start_b
    const-string v0, "copySo"

    .line 36
    invoke-virtual {v15, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-gtz v2, :cond_11

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_12

    :cond_11
    const-string v2, "copySo cost:"

    .line 37
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v1, ""
    :try_end_b
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 38
    :try_start_c
    invoke-static/range {p1 .. p2}, Lcom/bytedance/pangle/c/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static/range {p1 .. p2}, Lcom/bytedance/pangle/c/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 41
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    const/4 v10, 0x0

    const/16 v14, 0x1a

    if-ge v5, v14, :cond_13

    .line 42
    :try_start_d
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    .line 43
    invoke-static {v0, v10, v5}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 45
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :cond_13
    :goto_3
    invoke-static/range {p1 .. p2}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    const/16 v19, 0x1

    .line 47
    :try_start_f
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->isFastDex2oat()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v0, v6, :cond_14

    if-ge v0, v14, :cond_14

    const/4 v6, 0x1

    goto :goto_4

    :cond_14
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_1d

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    .line 50
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "."

    .line 51
    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const-string v8, ".dex"

    if-lt v0, v14, :cond_15

    :try_start_10
    const-string v14, ".odex"

    goto :goto_5

    :cond_15
    move-object v14, v8

    .line 52
    :goto_5
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, ".zip"

    .line 53
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, ".apk"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_6

    .line 54
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 55
    :cond_17
    :goto_6
    invoke-virtual {v7, v10, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 56
    :cond_18
    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-static {v7}, Lcom/bytedance/pangle/d/c;->a(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 59
    :cond_19
    sget v7, Lcom/bytedance/pangle/d/b$a;->b:I

    .line 60
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "dex2oat"

    .line 61
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x18

    if-lt v0, v10, :cond_1a

    .line 62
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "-classpath"

    .line 63
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "&"

    .line 65
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "--instruction-set="

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/pangle/d/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget v0, Lcom/bytedance/pangle/d/b$a;->a:I

    if-ne v7, v0, :cond_1b

    const-string v0, "--compiler-filter=verify-none"

    .line 68
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 69
    :cond_1b
    sget v0, Lcom/bytedance/pangle/d/b$a;->b:I

    if-ne v7, v0, :cond_1c

    const-string v0, "--compiler-filter=interpret-only"

    .line 70
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 71
    :cond_1c
    sget v0, Lcom/bytedance/pangle/d/b$a;->c:I

    :goto_8
    const-string v0, "--dex-file="

    .line 72
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "--oat-file="

    .line 73
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 75
    invoke-static {v0}, Lcom/bytedance/pangle/d/a;->a([Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_11
    const-string v6, "fastDex2oat failed."

    .line 76
    invoke-static {v12, v6, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_1d
    :goto_9
    new-instance v0, Lcom/bytedance/pangle/PluginClassLoader;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/bytedance/pangle/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 79
    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :cond_1e
    :try_start_12
    const-string v0, "dexOpt"

    .line 80
    invoke-virtual {v15, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x1e

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1f

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_20

    :cond_1f
    const-string v2, "dexOpt cost:"

    .line 81
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_20
    invoke-static/range {p0 .. p0}, Lcom/bytedance/pangle/util/f;->a(Ljava/io/File;)V

    const-string v0, "cleanPluginApk"

    .line 83
    invoke-virtual {v15, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x1e

    cmp-long v2, v0, v4

    if-gtz v2, :cond_21

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_22

    :cond_21
    const-string v2, "cleanPluginApk cost:"

    .line 84
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_22
    sget-object v1, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v2, Lcom/bytedance/pangle/b/b$a;->o:I

    invoke-virtual {v15}, Lcom/bytedance/pangle/log/b;->a()J

    move-result-wide v5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const-string v0, "success"

    .line 86
    invoke-virtual {v15, v0}, Lcom/bytedance/pangle/log/b;->b(Ljava/lang/String;)J

    .line 87
    sget-object v1, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    const/16 v2, 0x44c

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    return v19

    :catch_2
    move-exception v0

    .line 88
    sget-object v1, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v2, Lcom/bytedance/pangle/b/b$a;->v:I

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 89
    sget-object v1, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    const/16 v2, 0x44c

    const/4 v3, -0x8

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 90
    new-instance v1, Lcom/bytedance/pangle/plugin/b$a;

    const-string v2, "dexOpt\u5931\u8d25"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v1

    :catch_3
    move-exception v0

    .line 91
    sget-object v1, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v2, Lcom/bytedance/pangle/b/b$a;->t:I

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 92
    sget-object v1, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    const/16 v2, 0x44c

    const/4 v3, -0x7

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 93
    new-instance v1, Lcom/bytedance/pangle/plugin/b$a;

    const-string/jumbo v2, "\u5b89\u88c5\u5305\u52a8\u6001\u5e93\u62f7\u8d1d\u5931\u8d25"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v1
    :try_end_12
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 94
    :cond_23
    :try_start_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u5b89\u88c5\u5305\u7b7e\u540d\u6821\u9a8c\u5931\u8d25[1]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    :catch_4
    move-exception v0

    .line 95
    :try_start_14
    sget-object v1, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v2, Lcom/bytedance/pangle/b/b$a;->q:I

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 96
    sget-object v1, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    const/16 v2, 0x44c

    const/4 v3, -0x3

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 97
    new-instance v1, Lcom/bytedance/pangle/plugin/b$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v1
    :try_end_14
    .catch Lcom/bytedance/pangle/plugin/b$a; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    :catch_5
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_a

    :catch_6
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " install failed unknown error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    sget-object v1, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v2, Lcom/bytedance/pangle/b/b$a;->p:I

    const-wide/16 v5, -0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 100
    sget-object v1, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    const/16 v2, 0x44c

    const/4 v3, -0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_b

    :catch_7
    move-exception v0

    .line 101
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " install failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    const/4 v1, 0x0

    return v1
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;I)V
    .locals 9

    const-string v0, "The following permissions are declared in the plugin but not in the host: "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 4
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_3

    array-length v3, v3

    if-lez v3, :cond_3

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    .line 7
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 8
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "PluginInstaller"

    .line 10
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/pangle/GlobalParam;->checkPermission()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance p0, Lcom/bytedance/pangle/plugin/b$a;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;B)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 13
    sget-object v2, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v3, Lcom/bytedance/pangle/b/b$a;->r:I

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v2 .. v8}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 14
    sget-object v2, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    const/16 v3, 0x44c

    const/4 v4, -0x4

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 15
    new-instance p1, Lcom/bytedance/pangle/plugin/b$a;

    const-string/jumbo p2, "\u5b89\u88c5\u5305\u6743\u9650\u6821\u9a8c\u5931\u8d25"

    invoke-direct {p1, p2, p0, v1}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {p1, p2}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 12
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 13
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 14
    invoke-virtual {v9, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 15
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 16
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 18
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 19
    sget-object v0, Lcom/bytedance/pangle/b/b;->f:Ljava/lang/String;

    sget v1, Lcom/bytedance/pangle/b/b$a;->s:I

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 20
    sget-object v0, Lcom/bytedance/pangle/plugin/b;->a:Lcom/bytedance/pangle/g;

    const/16 v1, 0x44c

    const/4 v2, -0x6

    move-object v3, p1

    move v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 21
    new-instance p1, Lcom/bytedance/pangle/plugin/b$a;

    const/4 p2, 0x0

    const-string/jumbo v0, "\u5b89\u88c5\u5305\u62f7\u8d1d\u5931\u8d25"

    invoke-direct {p1, v0, p0, p2}, Lcom/bytedance/pangle/plugin/b$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p1
.end method
