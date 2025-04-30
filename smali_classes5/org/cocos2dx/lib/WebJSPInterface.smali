.class public Lorg/cocos2dx/lib/WebJSPInterface;
.super Ljava/lang/Object;
.source "WebJSPInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJaveScriptFace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "game_id"

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "uid"

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 6
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    const-string v0, "token"

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->server_ip:Ljava/lang/String;

    const-string v0, "ip"

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
