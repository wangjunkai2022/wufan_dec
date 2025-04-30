.class Lcom/papa91/activity/EmuMenuBaseActivity$11;
.super Landroid/os/AsyncTask;
.source "EmuMenuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->restoreAdData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iput-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity$11;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string p1, ""

    .line 2
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 3
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v3, v3, Lcom/papa91/activity/EmuMenuBaseActivity;->ad_host_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/v5/game/simulatorGameInterfaceAd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json;charset=utf-8"

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->val$s:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 8
    :goto_0
    :try_start_1
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 10
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "utf-8"

    .line 11
    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity$11;->onRequestSuccess(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity$11;->onRequestError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity$11;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 9

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 3
    :cond_0
    new-instance v0, Lcom/papa91/arc/MyJson;

    invoke-direct {v0, p1}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    new-instance v1, Lcom/papa91/arc/bean/AdInfoBean;

    invoke-direct {v1}, Lcom/papa91/arc/bean/AdInfoBean;-><init>()V

    iput-object v1, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    const-string v0, "main"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "title"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "label"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "pic_remote"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "title_type"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "sub_title"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "ad_switch"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 13
    new-instance v0, Lcom/papa91/arc/bean/MainBean;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/papa91/arc/bean/MainBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v1, v1, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/AdInfoBean;->setMain(Lcom/papa91/arc/bean/MainBean;)V

    const-string v0, "sub"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "link_type"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "link_type_val"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "crc_link_type_val"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "jump_type"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "is_more"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "tpl_type"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 22
    new-instance p1, Lcom/papa91/arc/bean/SubBean;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/papa91/arc/bean/SubBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/bean/AdInfoBean;->setSub(Lcom/papa91/arc/bean/SubBean;)V

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->showAdView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method onRequestError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method onRequestSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
