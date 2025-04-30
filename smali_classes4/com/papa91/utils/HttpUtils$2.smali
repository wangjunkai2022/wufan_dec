.class Lcom/papa91/utils/HttpUtils$2;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/utils/HttpUtils;->getUserRewardConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/utils/HttpUtils;

.field final synthetic val$device_id:Ljava/lang/String;

.field final synthetic val$game_id:Ljava/lang/String;

.field final synthetic val$listener:Lcom/papa91/utils/HttpFinishInterface;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/utils/HttpUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/utils/HttpUtils$2;->this$0:Lcom/papa91/utils/HttpUtils;

    iput-object p2, p0, Lcom/papa91/utils/HttpUtils$2;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa91/utils/HttpUtils$2;->val$game_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa91/utils/HttpUtils$2;->val$device_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa91/utils/HttpUtils$2;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/utils/HttpUtils;->REWARD_CONFIG_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/user/activity/banana_peel/get_user_reward_info?uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/papa91/utils/HttpUtils$2;->val$uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&game_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/papa91/utils/HttpUtils$2;->val$game_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&device_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/papa91/utils/HttpUtils$2;->val$device_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    .line 4
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/papa91/utils/HttpUtils$2;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/papa91/utils/HttpUtils$2;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1, v0}, Lcom/papa91/utils/HttpFinishInterface;->onRequestSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/papa91/utils/HttpUtils$2;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 11
    invoke-interface {v0, v1}, Lcom/papa91/utils/HttpFinishInterface;->onRequestError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
