.class Lcom/join/mgps/activity/CloudActivity$g;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CloudActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$g;->a:Lcom/join/mgps/activity/CloudActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "onFailed----------"

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "status"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ok"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$g;->a:Lcom/join/mgps/activity/CloudActivity;

    iget v0, p1, Lcom/join/mgps/activity/CloudActivity;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/join/mgps/activity/CloudActivity;->p:I

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ok------------"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity$g;->a:Lcom/join/mgps/activity/CloudActivity;

    iget v0, v0, Lcom/join/mgps/activity/CloudActivity;->p:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$g;->a:Lcom/join/mgps/activity/CloudActivity;

    iget v0, p1, Lcom/join/mgps/activity/CloudActivity;->p:I

    iget-object v1, p1, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/CloudActivity;->I0(II)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$g;->a:Lcom/join/mgps/activity/CloudActivity;

    iget v0, p1, Lcom/join/mgps/activity/CloudActivity;->p:I

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$g;->a:Lcom/join/mgps/activity/CloudActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/CloudActivity;->uploadSuccess()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
