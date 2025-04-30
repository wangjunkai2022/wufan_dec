.class Lcn/com/chinatelecom/account/api/b/b$3;
.super Lcn/com/chinatelecom/account/api/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/chinatelecom/account/api/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;JLjava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/net/Network;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcn/com/chinatelecom/account/api/b/a;

.field final synthetic h:Lcn/com/chinatelecom/account/api/b/b;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/b/b;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 0

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/b/b$3;->h:Lcn/com/chinatelecom/account/api/b/b;

    iput-object p4, p0, Lcn/com/chinatelecom/account/api/b/b$3;->a:Landroid/content/Context;

    iput-object p5, p0, Lcn/com/chinatelecom/account/api/b/b$3;->b:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/chinatelecom/account/api/b/b$3;->c:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/chinatelecom/account/api/b/b$3;->d:Landroid/net/Network;

    iput-object p8, p0, Lcn/com/chinatelecom/account/api/b/b$3;->e:Ljava/lang/String;

    iput-object p9, p0, Lcn/com/chinatelecom/account/api/b/b$3;->f:Ljava/lang/String;

    iput-object p10, p0, Lcn/com/chinatelecom/account/api/b/b$3;->g:Lcn/com/chinatelecom/account/api/b/a;

    invoke-direct {p0, p2, p3}, Lcn/com/chinatelecom/account/api/c/e;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b$3;->h:Lcn/com/chinatelecom/account/api/b/b;

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/b/b$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/b/b$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/b/b$3;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/chinatelecom/account/api/b/b$3;->d:Landroid/net/Network;

    iget-object v5, p0, Lcn/com/chinatelecom/account/api/b/b$3;->e:Ljava/lang/String;

    iget-object v6, p0, Lcn/com/chinatelecom/account/api/b/b$3;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcn/com/chinatelecom/account/api/b/b;->a(Lcn/com/chinatelecom/account/api/b/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/e;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/com/chinatelecom/account/api/c/e;->a(Z)V

    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/e;->d()V

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/b/b$3;->g:Lcn/com/chinatelecom/account/api/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v1, "reqId"

    :try_start_1
    iget-object v2, p0, Lcn/com/chinatelecom/account/api/b/b$3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcn/com/chinatelecom/account/api/b/b$3;->g:Lcn/com/chinatelecom/account/api/b/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/com/chinatelecom/account/api/b/a;->callbackPreCode(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b$3;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/f;->c(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b$3;->d:Landroid/net/Network;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b$3;->h:Lcn/com/chinatelecom/account/api/b/b;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/b/b;->a(Lcn/com/chinatelecom/account/api/b/b;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 9

    invoke-super {p0}, Lcn/com/chinatelecom/account/api/c/e;->b()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/chinatelecom/account/api/c/e;->a(Z)V

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/b/b$3;->h:Lcn/com/chinatelecom/account/api/b/b;

    const v2, 0x13880

    sget-object v0, Lcn/com/chinatelecom/account/api/e/j;->a:[B

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/com/chinatelecom/account/api/b/b$3;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    const-string v7, ""

    :try_start_1
    iget-object v8, p0, Lcn/com/chinatelecom/account/api/b/b$3;->g:Lcn/com/chinatelecom/account/api/b/a;

    invoke-static/range {v1 .. v8}, Lcn/com/chinatelecom/account/api/b/b;->a(Lcn/com/chinatelecom/account/api/b/b;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b$3;->d:Landroid/net/Network;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b$3;->h:Lcn/com/chinatelecom/account/api/b/b;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/b/b;->a(Lcn/com/chinatelecom/account/api/b/b;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
