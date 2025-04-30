.class public abstract Lcom/wufun/union/ad/AdChannel;
.super Ljava/lang/Object;
.source "AdChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufun/union/ad/AdChannel$a;,
        Lcom/wufun/union/ad/AdChannel$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Lcom/wufun/union/ad/AdChannel$Type;

.field protected d:Lcom/wufun/union/ad/AdChannel$a;

.field protected e:Landroid/content/Context;

.field protected f:Z

.field protected g:I

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->f:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/wufun/union/ad/AdChannel$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->d:Lcom/wufun/union/ad/AdChannel$a;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    return-object v0
.end method

.method public abstract d(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    const/high16 v0, 0x44870000    # 1080.0f

    const/high16 v1, 0x44f00000    # 1920.0f

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/wufun/union/ad/AdChannel;->h(Ljava/lang/String;FF)V

    return-void
.end method

.method public getType()Lcom/wufun/union/ad/AdChannel$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    return-object v0
.end method

.method public abstract h(Ljava/lang/String;FF)V
.end method

.method public i(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 2
    iget-object v2, p0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    iget v2, v2, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    .line 4
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "message"

    .line 5
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object p2, p0, Lcom/wufun/union/ad/AdChannel;->d:Lcom/wufun/union/ad/AdChannel$a;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/wufun/union/ad/AdChannel$a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public j(Lcom/wufun/union/ad/AdChannel$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->d:Lcom/wufun/union/ad/AdChannel$a;

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    return-void
.end method

.method public abstract m(Landroid/app/Activity;)V
.end method
