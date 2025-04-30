.class Lcn/com/chinatelecom/account/api/c/a$3;
.super Lcn/com/chinatelecom/account/api/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/chinatelecom/account/api/c/a;->a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/com/chinatelecom/account/api/CtSetting;

.field final synthetic c:Landroid/net/Network;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcn/com/chinatelecom/account/api/ResultListener;

.field final synthetic h:Lcn/com/chinatelecom/account/api/c/a;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/a;JLjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    iput-object p4, p0, Lcn/com/chinatelecom/account/api/c/a$3;->a:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/chinatelecom/account/api/c/a$3;->b:Lcn/com/chinatelecom/account/api/CtSetting;

    iput-object p6, p0, Lcn/com/chinatelecom/account/api/c/a$3;->c:Landroid/net/Network;

    iput-object p7, p0, Lcn/com/chinatelecom/account/api/c/a$3;->d:Ljava/lang/String;

    iput-object p8, p0, Lcn/com/chinatelecom/account/api/c/a$3;->e:Ljava/lang/String;

    iput p9, p0, Lcn/com/chinatelecom/account/api/c/a$3;->f:I

    iput-object p10, p0, Lcn/com/chinatelecom/account/api/c/a$3;->g:Lcn/com/chinatelecom/account/api/ResultListener;

    invoke-direct {p0, p2, p3}, Lcn/com/chinatelecom/account/api/c/e;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/a;->b(Lcn/com/chinatelecom/account/api/c/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/c/a;->c(Lcn/com/chinatelecom/account/api/c/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/c/a;->d(Lcn/com/chinatelecom/account/api/c/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/com/chinatelecom/account/api/c/a$3;->a:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/chinatelecom/account/api/c/a$3;->b:Lcn/com/chinatelecom/account/api/CtSetting;

    iget-object v6, p0, Lcn/com/chinatelecom/account/api/c/a$3;->c:Landroid/net/Network;

    iget-object v7, p0, Lcn/com/chinatelecom/account/api/c/a$3;->d:Ljava/lang/String;

    iget-object v8, p0, Lcn/com/chinatelecom/account/api/c/a$3;->e:Ljava/lang/String;

    iget v9, p0, Lcn/com/chinatelecom/account/api/c/a$3;->f:I

    invoke-static/range {v0 .. v9}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/com/chinatelecom/account/api/c/e;->a(Z)V

    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/e;->d()V

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/a$3;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/a$3;->g:Lcn/com/chinatelecom/account/api/ResultListener;

    invoke-static {v1, v0, v2}, Lcn/com/chinatelecom/account/api/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lorg/json/JSONObject;Lcn/com/chinatelecom/account/api/ResultListener;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/a$3;->c:Landroid/net/Network;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 11

    invoke-super {p0}, Lcn/com/chinatelecom/account/api/c/e;->b()V

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcn/com/chinatelecom/account/api/c/e;->a(Z)V

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    const v4, 0x13880

    sget-object v0, Lcn/com/chinatelecom/account/api/e/j;->a:[B

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/chinatelecom/account/api/c/a$3;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x0

    const-string v9, ""

    :try_start_2
    iget-object v10, p0, Lcn/com/chinatelecom/account/api/c/a$3;->g:Lcn/com/chinatelecom/account/api/ResultListener;

    invoke-static/range {v3 .. v10}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/ResultListener;)V

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/a$3;->c:Landroid/net/Network;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/a$3;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
