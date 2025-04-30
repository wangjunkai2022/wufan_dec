.class Lcom/papa91/activity/EmuBaseActivity$13;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Lcom/papa91/paay/PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
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
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/papa91/paay/PayResponse;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "isbuy"

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnInquiry(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponse;->getError()I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "errorMsg"

    const-string v5, "data"

    const-string v6, "type"

    if-ne v2, v3, :cond_1

    .line 5
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "\u60a8\u7684\u7f51\u7edc\u6709\u70b9\u5dee\uff0c\u8bf7\u91cd\u8bd5"

    .line 6
    invoke-virtual {v0, v5, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    invoke-virtual {v0, v4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnPay(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponse;->getData()Lcom/papa91/paay/PayResponseData;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponseData;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ok"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 13
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponseData;->getPrice_message()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponseData;->getError_message()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v6, ""

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 18
    invoke-virtual {v2, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    invoke-virtual {v2, v4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_3
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnPay(Ljava/lang/String;)V

    return-void
.end method
