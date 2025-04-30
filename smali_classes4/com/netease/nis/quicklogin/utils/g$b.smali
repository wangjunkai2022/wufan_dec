.class public Lcom/netease/nis/quicklogin/utils/g$b;
.super Ljava/lang/Object;
.source "UploadInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/quicklogin/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/netease/nis/quicklogin/utils/g$b;->n:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/utils/g$b;->s:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->r:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/nis/quicklogin/utils/g$b;->j:J

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->q:J

    return-void
.end method

.method public a(Lcom/netease/nis/quicklogin/utils/g$c;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/utils/g$b;->s:Z

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/netease/nis/quicklogin/utils/g$c;->a:Lcom/netease/nis/quicklogin/utils/g$c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->c:I

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/netease/nis/quicklogin/utils/g$c;->b:Lcom/netease/nis/quicklogin/utils/g$c;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->c:I

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/netease/nis/quicklogin/utils/g$c;->a:Lcom/netease/nis/quicklogin/utils/g$c;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->c:I

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/netease/nis/quicklogin/utils/g$c;->b:Lcom/netease/nis/quicklogin/utils/g$c;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x5

    .line 10
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->c:I

    :cond_3
    :goto_0
    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->s:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "businessId"

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "token"

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "monitorType"

    .line 7
    :try_start_2
    iget v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "errorType"

    .line 8
    :try_start_3
    iget v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "httpCode"

    .line 9
    :try_start_4
    iget v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "code"

    .line 10
    :try_start_5
    iget v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "message"

    .line 11
    :try_start_6
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "ip"

    .line 12
    :try_start_7
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "dns"

    .line 13
    :try_start_8
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "requestTime"

    .line 14
    :try_start_9
    iget-wide v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->j:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "requestURL"

    .line 15
    :try_start_a
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "ot"

    .line 16
    :try_start_b
    iget v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "phone"

    .line 17
    :try_start_c
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "envType"

    .line 18
    :try_start_d
    iget v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    const-string v1, "phoneModel"

    .line 19
    :try_start_e
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    const-string v1, "osInfo"

    .line 20
    :try_start_f
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    const-string v1, "clientTime"

    .line 21
    :try_start_10
    iget-wide v2, p0, Lcom/netease/nis/quicklogin/utils/g$b;->q:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, "3.2.5"

    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->d:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->r:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->i:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->e:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->m:Ljava/lang/String;

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->l:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->h:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->g:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->p:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->o:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->k:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g$b;->b:Ljava/lang/String;

    return-void
.end method
