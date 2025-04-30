.class public Lcom/sdk/Unicorn/base/framework/bean/DataInfo;
.super Lorg/json/JSONObject;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "r"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public toAESString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
