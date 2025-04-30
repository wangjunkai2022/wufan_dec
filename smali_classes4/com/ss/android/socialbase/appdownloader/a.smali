.class public Lcom/ss/android/socialbase/appdownloader/a;
.super Ljava/lang/Object;
.source "AhAttempt.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/a;
    .locals 3

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 9
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    .line 10
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "device_plans"

    .line 11
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    const-string p0, "real_device_plan"

    .line 12
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->d:Ljava/lang/String;

    const-string p0, "error_msg"

    .line 13
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    const-string p0, "ah_plan_type"

    .line 14
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    const-string p0, "error_code"

    .line 15
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, -0x1

    .line 17
    iput p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/ss/android/socialbase/appdownloader/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "ah_plan_type"

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_code"

    .line 4
    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    .line 5
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "real_device_plan"

    .line 6
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device_plans"

    .line 7
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/a;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method
