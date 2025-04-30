.class public Lcom/cmic/sso/sdk/d/b;
.super Lcom/cmic/sso/sdk/c/b/g;
.source "LogBean.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field public a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lorg/json/JSONArray;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cmic/sso/sdk/c/b/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->e:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->f:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->g:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->h:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->i:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->j:Ljava/lang/String;

    const-string v1, ""

    .line 11
    iput-object v1, p0, Lcom/cmic/sso/sdk/d/b;->k:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->l:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->m:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->n:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->p:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->q:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->r:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->s:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->t:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->u:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->v:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->w:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->x:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->A:Ljava/lang/String;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->B:Ljava/lang/String;

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->o:Lorg/json/JSONArray;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "traceId"

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "appName"

    .line 5
    :try_start_2
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "appVersion"

    .line 6
    :try_start_3
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    const-string v2, "quick_login_android_5.9.1"

    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clientType"

    const-string v2, "android"

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "timeOut"

    .line 9
    :try_start_4
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "requestTime"

    .line 10
    :try_start_5
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "responseTime"

    .line 11
    :try_start_6
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "elapsedTime"

    .line 12
    :try_start_7
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "requestType"

    .line 13
    :try_start_8
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "interfaceType"

    .line 14
    :try_start_9
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "interfaceCode"

    .line 15
    :try_start_a
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "interfaceElasped"

    .line 16
    :try_start_b
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "loginType"

    .line 17
    :try_start_c
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "exceptionStackTrace"

    .line 18
    :try_start_d
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->o:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    const-string v1, "operatorType"

    .line 19
    :try_start_e
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    const-string v1, "networkType"

    .line 20
    :try_start_f
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    const-string v1, "networkClass"

    .line 21
    :try_start_10
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    const-string v1, "brand"

    .line 22
    :try_start_11
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0

    const-string v1, "reqDevice"

    .line 23
    :try_start_12
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0

    const-string v1, "reqSystem"

    .line 24
    :try_start_13
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0

    const-string v1, "simCardNum"

    .line 25
    :try_start_14
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_0

    const-string v1, "imsiState"

    .line 26
    :try_start_15
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_0

    const-string v1, "resultCode"

    .line 27
    :try_start_16
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_0

    const-string v1, "is_phoneStatePermission"

    .line 28
    :try_start_17
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_0

    const-string v1, "AID"

    .line 29
    :try_start_18
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_0

    const-string v1, "sysOperType"

    .line 30
    :try_start_19
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_0

    const-string v1, "scripType"

    .line 31
    :try_start_1a
    iget-object v2, p0, Lcom/cmic/sso/sdk/d/b;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->y:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->w:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->x:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->s:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->m:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->l:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->k:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->d:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->e:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->f:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->i:Ljava/lang/String;

    return-void
.end method

.method n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->v:Ljava/lang/String;

    return-void
.end method

.method o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->p:Ljava/lang/String;

    return-void
.end method

.method p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->t:Ljava/lang/String;

    return-void
.end method

.method q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->u:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->n:Ljava/lang/String;

    return-void
.end method

.method s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->c:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->g:Ljava/lang/String;

    return-void
.end method

.method v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->r:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->h:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->j:Ljava/lang/String;

    return-void
.end method

.method y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->q:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/d/b;->z:Ljava/lang/String;

    return-void
.end method
