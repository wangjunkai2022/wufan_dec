.class Lcom/papa91/utils/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/utils/HttpUtils;->sendRequestWithHttpClient(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/utils/HttpUtils;

.field final synthetic val$agr1:Ljava/lang/String;

.field final synthetic val$listener:Lcom/papa91/utils/HttpFinishInterface;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/utils/HttpUtils;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/utils/HttpUtils$1;->this$0:Lcom/papa91/utils/HttpUtils;

    iput-object p2, p0, Lcom/papa91/utils/HttpUtils$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa91/utils/HttpUtils$1;->val$agr1:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa91/utils/HttpUtils$1;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/papa91/utils/HttpUtils$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    iget-object v3, p0, Lcom/papa91/utils/HttpUtils$1;->val$agr1:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 6
    :goto_0
    :try_start_1
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 8
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "utf-8"

    .line 9
    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/papa91/utils/HttpUtils$1;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1, v0}, Lcom/papa91/utils/HttpFinishInterface;->onRequestSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/utils/HttpUtils$1;->val$listener:Lcom/papa91/utils/HttpFinishInterface;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 13
    invoke-interface {v0, v1}, Lcom/papa91/utils/HttpFinishInterface;->onRequestError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
