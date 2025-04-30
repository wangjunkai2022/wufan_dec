.class public Lcom/sdk/g/a;
.super Lcom/sdk/e/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sdk/e/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/sdk/g/b;


# direct methods
.method public constructor <init>(Lcom/sdk/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/g/a;->b:Lcom/sdk/g/b;

    invoke-direct {p0}, Lcom/sdk/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sdk/a/i;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/i<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/sdk/a/i;->b:Ljava/lang/Object;

    .line 2
    check-cast p1, Ljava/lang/String;

    :goto_0
    const/4 p2, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p1, "code"

    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string p1, "msg"

    :try_start_2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p1, "status"

    :try_start_3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p1, "obj"

    :try_start_4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p1, "seq"

    :try_start_5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v6}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v5}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/sdk/g/a;->b:Lcom/sdk/g/b;

    invoke-static {}, Lcom/sdk/o/c;->a()Lcom/sdk/f/b;

    move-result-object p1

    .line 3
    iget-object v12, p1, Lcom/sdk/f/b;->c:Ljava/lang/String;

    const/4 v8, 0x1

    const v10, 0x49bb3

    const/4 v11, 0x0

    const-string v9, "\u670d\u52a1\u7aef\u6570\u636e\u683c\u5f0f\u51fa\u9519"

    .line 4
    invoke-virtual/range {v7 .. v12}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/sdk/g/b;->a:Ljava/lang/String;

    .line 6
    sget-boolean p2, Lcom/sdk/g/b;->b:Z

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    invoke-static {p1, v0, p2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sdk/g/a;->b:Lcom/sdk/g/b;

    invoke-virtual/range {v1 .. v6}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sdk/o/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdk/g/a;->b:Lcom/sdk/g/b;

    invoke-static {}, Lcom/sdk/o/c;->a()Lcom/sdk/f/b;

    move-result-object p2

    .line 8
    iget-object v5, p2, Lcom/sdk/f/b;->c:Ljava/lang/String;

    const v3, 0x49bb3

    const/4 v4, 0x0

    const-string v2, "\u670d\u52a1\u7aef\u6570\u636e\u683c\u5f0f\u51fa\u9519"

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p2, Lcom/sdk/g/b;->a:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fd4\u56de\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-boolean v0, Lcom/sdk/g/b;->b:Z

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    return-void
.end method
