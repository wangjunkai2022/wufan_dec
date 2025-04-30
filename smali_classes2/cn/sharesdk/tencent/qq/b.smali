.class public Lcn/sharesdk/tencent/qq/b;
.super Lcn/sharesdk/framework/authorize/c;
.source "QQSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/c;-><init>(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    new-instance v0, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/utils/DownLoadWebPage;->setListener(Lcn/sharesdk/framework/authorize/SSOListener;)V

    .line 3
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v1}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/sharesdk/tencent/qq/b;->f:Ljava/lang/String;

    const-string v1, "com.tencent.qqlite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/b;->f:Ljava/lang/String;

    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v1}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 9
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/b;->b()V

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/b;->e:Ljava/lang/String;

    const-string v3, "scope"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pf"

    const-string v3, "openmobile_android"

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "need_pay"

    const-string v3, "1"

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_params"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17
    iget v1, p0, Lcn/sharesdk/framework/authorize/c;->b:I

    const-string v2, "key_request_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_action"

    const-string v2, "action_login"

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    iget v2, p0, Lcn/sharesdk/framework/authorize/c;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/FakeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 20
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v1}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 21
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_3

    .line 22
    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 23
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcn/sharesdk/tencent/qq/b;->b()V

    .line 24
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 8

    const-string p1, "access_token"

    const-string v0, "pfkey"

    const-string v1, "expires_in"

    const-string v2, "pf"

    const-string v3, "pay_token"

    const-string v4, "ret"

    const-string v5, "msg"

    .line 25
    iget-object v6, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v6}, Lcom/mob/tools/FakeActivity;->finish()V

    if-nez p2, :cond_1

    .line 26
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    :cond_0
    return-void

    :cond_1
    const-string p2, "response is empty"

    if-nez p3, :cond_3

    .line 28
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_2

    .line 29
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 30
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_5

    .line 31
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_4

    .line 32
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    const-string v6, "key_response"

    .line 33
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 34
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_6

    .line 35
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    .line 36
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_8

    goto :goto_0

    .line 38
    :cond_8
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 40
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "open_id"

    const-string v3, "openid"

    .line 43
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p2, :cond_9

    .line 50
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    return-void

    .line 51
    :cond_9
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_a

    .line 52
    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 54
    iget-object p2, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p2, :cond_b

    .line 55
    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_b
    return-void

    .line 56
    :cond_c
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_d

    .line 57
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/b;->d:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcn/sharesdk/tencent/qq/b;->e:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/sharesdk/tencent/qq/b;->f:Ljava/lang/String;

    return-void
.end method
