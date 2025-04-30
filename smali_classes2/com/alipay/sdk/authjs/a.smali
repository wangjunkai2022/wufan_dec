.class public final Lcom/alipay/sdk/authjs/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/authjs/a$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "CallInfo"

.field public static final h:Ljava/lang/String; = "call"

.field public static final i:Ljava/lang/String; = "callback"

.field public static final j:Ljava/lang/String; = "bundleName"

.field public static final k:Ljava/lang/String; = "clientId"

.field public static final l:Ljava/lang/String; = "param"

.field public static final m:Ljava/lang/String; = "func"

.field public static final n:Ljava/lang/String; = "msgType"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lorg/json/JSONObject;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/sdk/authjs/a;->f:Z

    .line 3
    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/alipay/sdk/authjs/a$a;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/authjs/b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "none"

    goto :goto_0

    :cond_0
    const-string p0, "runtime error"

    goto :goto_0

    :cond_1
    const-string p0, "invalid parameter"

    goto :goto_0

    :cond_2
    const-string p0, "function not found"

    :goto_0
    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    return-void
.end method

.method private d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/sdk/authjs/a;->f:Z

    return-void
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/sdk/authjs/a;->f:Z

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->b:Ljava/lang/String;

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->d:Ljava/lang/String;

    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private m()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    const-string v2, "clientId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    const-string v2, "func"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    const-string v2, "param"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/alipay/sdk/authjs/a;->d:Ljava/lang/String;

    const-string v2, "msgType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
