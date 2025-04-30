.class public Lcom/heepay/plugin/d/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CallAPP(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cmd"

    invoke-static {v0, p1}, Lcom/heepay/plugin/c/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "---->object1"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heepay/plugin/c/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "---->method1"

    invoke-static {v0, p1}, Lcom/heepay/plugin/c/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6ec4786c

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x276046

    if-eq v1, v2, :cond_1

    const v2, 0x1578a4c9

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "can_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "TODO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "pay_result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/heepay/plugin/activity/HyNotityActivity;

    iput-boolean v3, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->k:Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/heepay/plugin/activity/HyNotityActivity;

    iput-boolean v5, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->k:Z

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/heepay/plugin/activity/HyNotityActivity;

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/heepay/plugin/c/i;->a()Lcom/heepay/plugin/c/i;

    move-result-object p1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u652f\u4ed8\u5b8c\u6210"

    invoke-virtual {p1, v0, v1}, Lcom/heepay/plugin/c/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/heepay/plugin/activity/HyNotityActivity;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method
