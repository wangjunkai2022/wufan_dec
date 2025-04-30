.class public Lcom/sdk/g/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.sdk.g.b"

.field public static final b:Z


# instance fields
.field public c:Lcom/sdk/Unicorn/base/framework/bean/PInfo;

.field public d:Lcom/sdk/Unicorn/base/framework/bean/AInfo;

.field public e:Lcom/sdk/Unicorn/base/framework/bean/SInfo;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sdk/Unicorn/base/framework/bean/KInfo;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/sdk/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/e/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Landroid/content/Context;

.field public i:Ljava/lang/String;

.field public j:Lcom/sdk/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    sput-boolean v0, Lcom/sdk/g/b;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdk/e/a;Lcom/sdk/f/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdk/e/a<",
            "TT;>;",
            "Lcom/sdk/f/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdk/g/b;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdk/g/b;->g:Lcom/sdk/e/a;

    iput-object p3, p0, Lcom/sdk/g/b;->j:Lcom/sdk/f/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/Unicorn/base/framework/bean/DataInfo;Lcom/sdk/e/b;ILcom/sdk/a/g$a;)Lcom/sdk/a/e;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sdk/Unicorn/base/framework/bean/DataInfo;",
            "Lcom/sdk/e/b<",
            "TT;>;I",
            "Lcom/sdk/a/g$a;",
            ")",
            "Lcom/sdk/a/e<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "sign"

    invoke-static/range {p1 .. p1}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const v0, 0x18a90

    const-string v2, "\u672a\u68c0\u6d4b\u5230\u57df\u540d"

    invoke-virtual {v1, v5, v0, v2}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    return-object v4

    :cond_0
    if-nez p3, :cond_1

    .line 2
    :try_start_0
    new-instance v3, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;

    invoke-direct {v3}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;-><init>()V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p3

    :goto_0
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const/16 v7, 0x10

    invoke-static {v7}, Lcom/sdk/r/a;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/sdk/r/a;->a(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/sdk/g/b;->h:Landroid/content/Context;

    sget-object v11, Lcom/sdk/Unicorn/base/module/config/BaseConfig;->apk:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getApiKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3
    sget-object v11, Lcom/sdk/v/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v12, "/st/api/v1.0/ses"

    .line 4
    :try_start_1
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v12, :cond_2

    const-string v11, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCgdQaZgBcrXGxxD6F1TVVXAzvbB3xpoyk2AFMNj4vOcDWZoH1b3Mx5aVcEd0BZPZR6Icb8yi8ecMUVChGCRe20O8EQWLh1aCwR8JazNL+koD3Tn6TIwVwjVEQWy9w6DeXxMtQuFBL/jAChJcU7aDwMsSD1jYpdET37aB4p8Lvn2QIDAQAB"

    :cond_2
    const/4 v12, 0x2

    :try_start_2
    new-array v13, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    aput-object v11, v13, v5

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_5

    .line 5
    aget-object v15, v13, v11

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v12, v5, :cond_4

    :cond_3
    invoke-static {v15}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v12, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x2

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_6

    const v0, 0x18a8c

    const-string v2, "ApiKey\u6216PublicKey\u4e0d\u80fd\u4e3a\u7a7a"

    .line 6
    :try_start_3
    invoke-virtual {v1, v5, v0, v2}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v1, v3, v8, v9}, Lcom/sdk/g/b;->a(Lcom/sdk/Unicorn/base/framework/bean/DataInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-static {}, Lcom/sdk/r/f;->a()Lcom/sdk/r/f;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7
    iget-object v9, v11, Lcom/sdk/r/f;->b:Lcom/sdk/s/a;

    iget-object v11, v11, Lcom/sdk/r/f;->c:Ljava/lang/String;

    invoke-interface {v9, v11, v8}, Lcom/sdk/s/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v9, "apiKey"

    .line 8
    :try_start_5
    invoke-virtual {v6, v9, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v9, "params"

    :try_start_6
    invoke-virtual {v6, v9, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-string v3, "paramsKey"

    :try_start_7
    invoke-virtual {v6, v3, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v0, v6}, Lcom/sdk/t/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const-string v7, "sign_Type"

    :try_start_8
    invoke-static {}, Lcom/sdk/v/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const-string v2, "api-protocol"

    const-string v7, "1.1"

    :try_start_9
    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const-string v7, "sign: "

    :try_start_a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    const-string v3, "sign_Type: "

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdk/v/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v2, Lcom/sdk/a/h;

    invoke-direct {v2}, Lcom/sdk/a/h;-><init>()V

    move-object/from16 v3, p6

    .line 9
    iget-object v3, v3, Lcom/sdk/a/g$a;->l:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Lcom/sdk/a/h;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sdk/a/h;->b(Ljava/lang/String;)V

    move-object/from16 v3, p4

    .line 11
    iput-object v3, v2, Lcom/sdk/a/h;->j:Lcom/sdk/e/b;

    move/from16 v3, p5

    .line 12
    iput v3, v2, Lcom/sdk/a/h;->i:I

    .line 13
    iput-object v6, v2, Lcom/sdk/a/h;->f:Ljava/util/TreeMap;

    .line 14
    iput-object v4, v2, Lcom/sdk/a/h;->g:Ljava/util/ArrayList;

    .line 15
    iput-object v8, v2, Lcom/sdk/a/h;->h:Ljava/util/HashMap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    const-string v3, "/dro/netm/v1.0/qc"

    .line 16
    :try_start_c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v0, Lcom/sdk/p/f$b;->b:Lcom/sdk/p/f$b;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_3

    :cond_8
    const-string v3, "/dro/ctc/v1.0/gctcbs"

    :try_start_d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sdk/p/f$b;->c:Lcom/sdk/p/f$b;

    :cond_9
    :goto_3
    new-instance v0, Lcom/sdk/a/g;

    iget-object v3, v1, Lcom/sdk/g/b;->h:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/sdk/a/g;-><init>(Landroid/content/Context;Lcom/sdk/a/h;)V

    new-instance v2, Lcom/sdk/a/e;

    invoke-direct {v2, v0}, Lcom/sdk/a/e;-><init>(Lcom/sdk/a/g;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :try_start_e
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v14

    .line 17
    sget-object v0, Lcom/sdk/d/e;->b:Ljava/util/concurrent/Executor;

    .line 18
    iget-boolean v4, v2, Lcom/sdk/d/e;->g:Z

    if-nez v4, :cond_a

    iput-boolean v5, v2, Lcom/sdk/d/e;->g:Z

    iget-object v4, v2, Lcom/sdk/d/e;->c:Lcom/sdk/d/e$c;

    iput-object v3, v4, Lcom/sdk/d/e$c;->a:[Ljava/lang/Object;

    new-instance v3, Lcom/sdk/d/j;

    iget-object v4, v2, Lcom/sdk/d/e;->i:Lcom/sdk/d/b;

    iget-object v6, v2, Lcom/sdk/d/e;->d:Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v4, v6}, Lcom/sdk/d/j;-><init>(Lcom/sdk/d/b;Ljava/lang/Runnable;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v4, v2

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v3, "Cannot execute task: the task is already executed."

    :try_start_f
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :catch_1
    move-exception v0

    const v2, 0x18a8e

    const-string v3, "\u516c\u94a5\u51fa\u9519"

    .line 19
    :try_start_10
    invoke-virtual {v1, v5, v2, v3}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    sget-object v2, Lcom/sdk/g/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    const-string v6, "\u516c\u94a5\u51fa\u9519\uff1a"

    :try_start_11
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sdk/g/b;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sdk/o/c;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x49bb2

    invoke-virtual {v1, v5, v3, v2}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    sget-object v2, Lcom/sdk/g/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sdk/g/b;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_5
    return-object v4
.end method

.method public final a(Lcom/sdk/Unicorn/base/framework/bean/DataInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/sdk/g/b;->d:Lcom/sdk/Unicorn/base/framework/bean/AInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sdk/g/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/f/a;->a(Landroid/content/Context;)Lcom/sdk/Unicorn/base/framework/bean/AInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/g/b;->d:Lcom/sdk/Unicorn/base/framework/bean/AInfo;

    :cond_0
    iget-object v0, p0, Lcom/sdk/g/b;->e:Lcom/sdk/Unicorn/base/framework/bean/SInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sdk/f/a;->c()Lcom/sdk/Unicorn/base/framework/bean/SInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/g/b;->e:Lcom/sdk/Unicorn/base/framework/bean/SInfo;

    :cond_1
    iget-object v0, p0, Lcom/sdk/g/b;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sdk/f/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/g/b;->f:Ljava/util/ArrayList;

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdk/g/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdk/Unicorn/base/framework/bean/KInfo;

    new-instance v3, Lcom/sdk/Unicorn/base/framework/bean/MobileKInfo;

    invoke-direct {v3}, Lcom/sdk/Unicorn/base/framework/bean/MobileKInfo;-><init>()V

    invoke-virtual {v2}, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->getIe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sdk/Unicorn/base/framework/bean/MobileKInfo;->setIe(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->getIs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sdk/Unicorn/base/framework/bean/MobileKInfo;->setIs(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->getM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sdk/Unicorn/base/framework/bean/MobileKInfo;->setM(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->isIdfd()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sdk/Unicorn/base/framework/bean/MobileKInfo;->setIdfd(Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sdk/g/b;->c:Lcom/sdk/Unicorn/base/framework/bean/PInfo;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sdk/f/a;->b()Lcom/sdk/Unicorn/base/framework/bean/PInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sdk/g/b;->c:Lcom/sdk/Unicorn/base/framework/bean/PInfo;

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "{app:"

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/g/b;->d:Lcom/sdk/Unicorn/base/framework/bean/AInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, ",sdk:"

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/g/b;->e:Lcom/sdk/Unicorn/base/framework/bean/SInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, ",device:"

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/g/b;->c:Lcom/sdk/Unicorn/base/framework/bean/PInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, ",sim:"

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, ",data:"

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "}"

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sdk/g/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/sdk/g/b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const/4 p1, 0x0

    :goto_1
    invoke-static {}, Lcom/sdk/r/f;->a()Lcom/sdk/r/f;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/sdk/r/f;->b:Lcom/sdk/s/a;

    invoke-interface {v0, p2, p3, p1}, Lcom/sdk/s/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sdk/g/b;->g:Lcom/sdk/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sdk/e/a;->a(IILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/g/b;->g:Lcom/sdk/e/a;

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/g/b;->g:Lcom/sdk/e/a;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sdk/e/a;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/g/b;->g:Lcom/sdk/e/a;

    :cond_0
    return-void
.end method
