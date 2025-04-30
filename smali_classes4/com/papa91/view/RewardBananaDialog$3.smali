.class Lcom/papa91/view/RewardBananaDialog$3;
.super Ljava/lang/Object;
.source "RewardBananaDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RewardBananaDialog;->getRewardInfoPost(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RewardBananaDialog;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/papa91/view/RewardBananaDialog;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog$3;->this$0:Lcom/papa91/view/RewardBananaDialog;

    iput-object p2, p0, Lcom/papa91/view/RewardBananaDialog$3;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onError(ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog$3;->this$0:Lcom/papa91/view/RewardBananaDialog;

    invoke-virtual {p1, p2}, Lcom/papa91/view/RewardBananaDialog;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onResponse(Ljava/lang/String;)V
    .locals 10

    const-string v0, "total_reward_amount"

    const-string v1, "left_start_reward_count"

    const-string v2, "left_device_play_reward_count"

    const-string v3, "left_play_reward_count"

    const-string v4, "reward_amount"

    const-string v5, "reward_times"

    const-string v6, "unique_id"

    .line 1
    :try_start_0
    new-instance v7, Lcom/papa91/arc/MyJson;

    invoke-direct {v7, p1}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    const-string p1, "error"

    const/4 v8, 0x0

    .line 2
    invoke-virtual {v7, p1, v8}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v9, "msg"

    .line 3
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1, v9}, Lcom/papa91/view/RewardBananaDialog$3;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "data"

    const/4 v9, 0x0

    .line 5
    invoke-virtual {v7, p1, v9}, Lcom/papa91/arc/MyJson;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v7, ""

    .line 6
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    :cond_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 9
    :goto_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 11
    :goto_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 13
    :goto_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    .line 15
    :goto_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 17
    :cond_7
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 18
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$3;->this$0:Lcom/papa91/view/RewardBananaDialog;

    move-object v1, v7

    move v2, v5

    move v3, v4

    move v4, p1

    move v5, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/papa91/view/RewardBananaDialog;->onRewardInfo(Ljava/lang/String;IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, ""

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/utils/HttpUtils;->REWARD_CONFIG_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/user/activity/banana_peel/get_reward_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const/4 v3, -0x1

    .line 3
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v5, p0, Lcom/papa91/view/RewardBananaDialog$3;->val$params:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 6
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 9
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "utf-8"

    invoke-direct {v5, v1, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 11
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_2

    .line 13
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 15
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_1

    const/4 v6, 0x0

    .line 16
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 17
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 19
    invoke-virtual {p0, v4}, Lcom/papa91/view/RewardBananaDialog$3;->onResponse(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/papa91/view/RewardBananaDialog$3;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    invoke-virtual {p0, v3, v0}, Lcom/papa91/view/RewardBananaDialog$3;->onError(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
