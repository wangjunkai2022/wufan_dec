.class public final Lcom/sina/weibo/sdk/a/e;
.super Lcom/sina/weibo/sdk/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/weibo/sdk/a/c<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private aa:Lcom/sina/weibo/sdk/net/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/weibo/sdk/net/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Ljava/lang/Throwable;

.field private ad:Ljava/lang/String;

.field private af:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Lcom/sina/weibo/sdk/net/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;",
            "Lcom/sina/weibo/sdk/net/c<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/a/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/e;->ad:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/sina/weibo/sdk/a/e;->af:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 4
    iput-object p3, p0, Lcom/sina/weibo/sdk/a/e;->aa:Lcom/sina/weibo/sdk/net/c;

    return-void
.end method

.method private varargs n()Ljava/lang/String;
    .locals 4

    const-string v0, "refresh_token"

    .line 1
    :try_start_0
    new-instance v1, Lcom/sina/weibo/sdk/net/e$a;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/e$a;-><init>()V

    const-string v2, "https://api.weibo.com/oauth2/access_token"

    .line 2
    iput-object v2, v1, Lcom/sina/weibo/sdk/net/e$a;->i:Ljava/lang/String;

    const-string v2, "client_id"

    .line 3
    iget-object v3, p0, Lcom/sina/weibo/sdk/a/e;->ad:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/sina/weibo/sdk/net/e$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/sina/weibo/sdk/a/e;->ad:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/sina/weibo/sdk/net/e$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v1

    const-string v2, "grant_type"

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/e$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/e;->af:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 7
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sina/weibo/sdk/net/e$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/sina/weibo/sdk/net/e$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/net/e$a;->e()Lcom/sina/weibo/sdk/net/e;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/sina/weibo/sdk/net/b;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/b;-><init>()V

    .line 10
    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/net/a;->a(Lcom/sina/weibo/sdk/net/d;)Lcom/sina/weibo/sdk/net/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/sdk/net/f;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    iput-object v0, p0, Lcom/sina/weibo/sdk/a/e;->ab:Ljava/lang/Throwable;

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final synthetic l()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/a/e;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/e;->ab:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/sina/weibo/sdk/a/e;->aa:Lcom/sina/weibo/sdk/net/c;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Lcom/sina/weibo/sdk/net/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/e;->aa:Lcom/sina/weibo/sdk/net/c;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/net/c;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
