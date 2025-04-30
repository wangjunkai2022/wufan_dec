.class Lcom/papa91/arc/EmuActivity_psp$10;
.super Landroid/os/AsyncTask;
.source "EmuActivity_psp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V
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
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$10;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/papa91/arc/EmuActivity_psp$10;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v2, v2, Lcom/papa91/arc/EmuActivity_psp;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json;charset=utf-8"

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp$10;->val$s:Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp$10;->onRequestSuccess(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/EmuActivity_psp$10;->onRequestError(Ljava/lang/String;)V
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

    invoke-virtual {p0, p1}, Lcom/papa91/arc/EmuActivity_psp$10;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v1, v1, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    new-instance v1, Lcom/papa91/arc/MyJson;

    invoke-direct {v1, p1}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    const-string p1, "messages"

    .line 4
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "data"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 8
    new-instance v3, Lcom/papa91/arc/bean/VipBean;

    invoke-direct {v3}, Lcom/papa91/arc/bean/VipBean;-><init>()V

    const-string v4, "main"

    .line 9
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "title"

    .line 10
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "label"

    .line 11
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "pic_remote"

    .line 12
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "title_type"

    .line 13
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "sub_title"

    .line 14
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "ad_switch"

    .line 15
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 16
    new-instance v4, Lcom/papa91/arc/bean/MainBean;

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/papa91/arc/bean/MainBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/VipBean;->setMain(Lcom/papa91/arc/bean/MainBean;)V

    const-string v4, "sub"

    .line 18
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "link_type"

    .line 19
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "link_type_val"

    .line 20
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "crc_link_type_val"

    .line 21
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "jump_type"

    .line 22
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "is_more"

    .line 23
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "tpl_type"

    .line 24
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 25
    new-instance v2, Lcom/papa91/arc/bean/SubBean;

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/papa91/arc/bean/SubBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, v2}, Lcom/papa91/arc/bean/VipBean;->setSub(Lcom/papa91/arc/bean/SubBean;)V

    .line 27
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v2, v2, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 29
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->access$000(Lcom/papa91/arc/EmuActivity_psp;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 30
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 31
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v1, p1, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/VipBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/papa91/arc/EmuActivity_psp;->access$1200(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v0, p1, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingVipDialog;->updateVipDatas(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
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
