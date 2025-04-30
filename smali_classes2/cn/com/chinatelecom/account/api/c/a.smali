.class public final Lcn/com/chinatelecom/account/api/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcn/com/chinatelecom/account/api/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/chinatelecom/account/api/c/a;->b:Z

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/c/a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/chinatelecom/account/api/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p7

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;)J

    move-result-wide v13

    sget v0, Lcn/com/chinatelecom/account/api/a;->d:I

    move/from16 v2, p9

    if-ne v2, v0, :cond_0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v15, ""

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcn/com/chinatelecom/account/api/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v15, ""

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcn/com/chinatelecom/account/api/e/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/g;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcn/com/chinatelecom/account/api/e/b;->f:[B

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "p"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "k"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-direct {v2}, Lcn/com/chinatelecom/account/api/d/g$a;-><init>()V

    move-object/from16 v3, p8

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/d/g$a;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-static {}, Lcn/com/chinatelecom/account/api/d/c;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcn/com/chinatelecom/account/api/e/b;->f:[B

    invoke-static {v5}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v5}, Lcn/com/chinatelecom/account/api/d/g$a;->a(ZLjava/lang/String;Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-virtual {v2, v8}, Lcn/com/chinatelecom/account/api/d/g$a;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/g$a;

    move-object/from16 v5, p6

    invoke-virtual {v2, v5}, Lcn/com/chinatelecom/account/api/d/g$a;->a(Landroid/net/Network;)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-static/range {p5 .. p5}, Lcn/com/chinatelecom/account/api/CtSetting;->getConnTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/d/g$a;->a(I)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-static/range {p5 .. p5}, Lcn/com/chinatelecom/account/api/CtSetting;->getReadTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/d/g$a;->b(I)Lcn/com/chinatelecom/account/api/d/g$a;

    invoke-virtual {v2}, Lcn/com/chinatelecom/account/api/d/g$a;->a()Lcn/com/chinatelecom/account/api/d/g;

    move-result-object v3

    new-instance v7, Lcn/com/chinatelecom/account/api/d/b;

    move-object/from16 v10, p1

    invoke-direct {v7, v10}, Lcn/com/chinatelecom/account/api/d/b;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-interface {v7, v0, v9, v11, v3}, Lcn/com/chinatelecom/account/api/d/e;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;

    move-result-object v3

    iget-boolean v12, v3, Lcn/com/chinatelecom/account/api/d/h;->d:Z

    if-eqz v12, :cond_2

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v12, v1, Lcn/com/chinatelecom/account/api/c/a;->b:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_2

    :try_start_2
    invoke-virtual {v2, v11}, Lcn/com/chinatelecom/account/api/d/g$a;->a(Z)Lcn/com/chinatelecom/account/api/d/g$a;

    move-result-object v2

    const-string v3, ""

    const-string v12, ""

    invoke-virtual {v2, v6, v3, v12}, Lcn/com/chinatelecom/account/api/d/g$a;->a(ZLjava/lang/String;Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/g$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/chinatelecom/account/api/d/g$a;->a()Lcn/com/chinatelecom/account/api/d/g;

    move-result-object v2

    invoke-interface {v7, v0, v9, v11, v2}, Lcn/com/chinatelecom/account/api/d/e;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/h;

    move-result-object v0

    invoke-static/range {p7 .. p7}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcn/com/chinatelecom/account/api/e/e;->b(I)Lcn/com/chinatelecom/account/api/e/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    :goto_1
    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, p6

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Lcn/com/chinatelecom/account/api/d/h;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v8, v0, v9}, Lcn/com/chinatelecom/account/api/e/f;->b(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/j;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static/range {p7 .. p7}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gpm \uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v3

    const v4, 0x138e6

    invoke-virtual {v3, v4}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v3

    sget-object v4, Lcn/com/chinatelecom/account/api/e/j;->k:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    sget-object v3, Lcn/com/chinatelecom/account/api/c/a;->a:Ljava/lang/String;

    const-string v4, "GPM Throwable"

    invoke-static {v3, v4, v0}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_2
    return-object v0
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcn/com/chinatelecom/account/api/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/a;->f:Lcn/com/chinatelecom/account/api/c/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/com/chinatelecom/account/api/c/c;->a()V

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/ResultListener;)V
    .locals 1

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcn/com/chinatelecom/account/api/e/e;->b(J)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p4

    invoke-virtual {p4, p6}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->c(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcn/com/chinatelecom/account/api/e/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p7, :cond_0

    invoke-interface {p7, p1}, Lcn/com/chinatelecom/account/api/ResultListener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/c/a;->a()V

    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/ResultListener;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/com/chinatelecom/account/api/c/a;->a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcn/com/chinatelecom/account/api/c/a;->a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 13

    new-instance v0, Lcn/com/chinatelecom/account/api/c/d;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/c/d;-><init>()V

    new-instance v12, Lcn/com/chinatelecom/account/api/c/a$3;

    move-object v1, v12

    move-object v2, p0

    move-wide/from16 v3, p5

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lcn/com/chinatelecom/account/api/c/a$3;-><init>(Lcn/com/chinatelecom/account/api/c/a;JLjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/ResultListener;)V

    invoke-virtual {v0, v12}, Lcn/com/chinatelecom/account/api/c/d;->a(Lcn/com/chinatelecom/account/api/c/e;)V

    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/com/chinatelecom/account/api/c/a;->b:Z

    return p1
.end method

.method static synthetic b(Lcn/com/chinatelecom/account/api/c/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcn/com/chinatelecom/account/api/c/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/c/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/com/chinatelecom/account/api/c/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/c/a;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;ILcn/com/chinatelecom/account/api/ResultListener;)V
    .locals 11

    invoke-static {p2}, Lcn/com/chinatelecom/account/api/CtSetting;->getTotalTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/d;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/com/chinatelecom/account/api/e/e;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcn/com/chinatelecom/account/api/e/e;->c(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/e/e;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/g;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    int-to-long v6, v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v10, p3

    invoke-direct/range {v1 .. v10}, Lcn/com/chinatelecom/account/api/c/a;->a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;ILcn/com/chinatelecom/account/api/ResultListener;)V
    .locals 13

    move-object v9, p0

    invoke-static {p2}, Lcn/com/chinatelecom/account/api/CtSetting;->getTotalTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v2

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/d;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v9, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Lcn/com/chinatelecom/account/api/e/a;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/chinatelecom/account/api/e/e;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/com/chinatelecom/account/api/e/e;->c(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    const-string v1, "BOTH"

    invoke-virtual {v0, v1}, Lcn/com/chinatelecom/account/api/e/e;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    iget-object v1, v9, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/g;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v10, Lcn/com/chinatelecom/account/api/c/c;

    iget-object v0, v9, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcn/com/chinatelecom/account/api/c/c;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Lcn/com/chinatelecom/account/api/c/a;->f:Lcn/com/chinatelecom/account/api/c/c;

    new-instance v11, Lcn/com/chinatelecom/account/api/c/a$1;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/com/chinatelecom/account/api/c/a$1;-><init>(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Lcn/com/chinatelecom/account/api/c/c;->a(Lcn/com/chinatelecom/account/api/c/b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/com/chinatelecom/account/api/c/c;

    iget-object v1, v9, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/com/chinatelecom/account/api/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lcn/com/chinatelecom/account/api/c/a;->f:Lcn/com/chinatelecom/account/api/c/c;

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/g;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcn/com/chinatelecom/account/api/e/b;->f:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v10, v0

    iget-object v11, v9, Lcn/com/chinatelecom/account/api/c/a;->f:Lcn/com/chinatelecom/account/api/c/c;

    new-instance v12, Lcn/com/chinatelecom/account/api/c/a$2;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/com/chinatelecom/account/api/c/a$2;-><init>(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v12, v10}, Lcn/com/chinatelecom/account/api/c/c;->a(Lcn/com/chinatelecom/account/api/c/b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
