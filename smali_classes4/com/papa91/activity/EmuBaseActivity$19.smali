.class Lcom/papa91/activity/EmuBaseActivity$19;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Lcom/papa91/utils/HttpFinishInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->initSign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iput-object p1, v0, Lcom/papa91/activity/EmuBaseActivity;->messData:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/papa91/common/MyJson;

    invoke-direct {v0, p1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    const-string p1, "messages"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "data"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "pic_remote"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string v2, "link_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1002(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string v2, "jump_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/papa91/activity/EmuBaseActivity;->jump_type:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string v2, "link_type_val"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1102(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string v2, "crc_link_type_val"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1202(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string v2, "tpl_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1302(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "ad_switch"

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "quit_switch"

    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 15
    sput-boolean v1, Lcom/papa91/activity/EmuBaseActivity;->hasAd:Z

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iput-boolean v1, p1, Lcom/papa91/activity/EmuBaseActivity;->onAdShwoIsCloseMine:Z

    .line 17
    :cond_0
    new-instance p1, Lcom/papa91/utils/DownLoadFile;

    invoke-direct {p1}, Lcom/papa91/utils/DownLoadFile;-><init>()V

    .line 18
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/papa91/images/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/papa91/utils/DownLoadFile;->downLoad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->ExitAdImageFilePath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
