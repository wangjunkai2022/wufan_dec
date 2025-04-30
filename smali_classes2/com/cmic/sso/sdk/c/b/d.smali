.class public Lcom/cmic/sso/sdk/c/b/d;
.super Lcom/cmic/sso/sdk/c/b/g;
.source "GetPhoneNubmerNotify.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cmic/sso/sdk/c/b/g;-><init>()V

    const-string v0, "authz"

    .line 2
    iput-object v0, p0, Lcom/cmic/sso/sdk/c/b/d;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/d;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/cmic/sso/sdk/c/b/d;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/cmic/sso/sdk/c/b/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/c/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ver"

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "data"

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "userCapaid"

    .line 5
    :try_start_2
    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "funcType"

    .line 6
    :try_start_3
    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/d;->d:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/d;->e:Ljava/lang/String;

    return-void
.end method
