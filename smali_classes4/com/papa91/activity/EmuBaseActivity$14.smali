.class Lcom/papa91/activity/EmuBaseActivity$14;
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
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$14;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/papa91/paay/PayResponse;)V
    .locals 10

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

    const/16 v3, 0x2bd

    const-string v4, ""

    const-string v5, "data"

    const-string v6, "type"

    if-ne v2, v3, :cond_1

    .line 5
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 6
    invoke-virtual {v0, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnInquiry(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponse;->getData()Lcom/papa91/paay/PayResponseData;

    move-result-object v2

    const/4 v3, 0x0

    const-string v7, "\u60a8\u7684\u7f51\u7edc\u6709\u70b9\u5dee\uff0c\u8bf7\u91cd\u8bd5"

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/papa91/paay/PayResponseData;->isIs_buy()Z

    move-result v3

    .line 11
    invoke-virtual {v2}, Lcom/papa91/paay/PayResponseData;->getPrice_message()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v2}, Lcom/papa91/paay/PayResponseData;->getBuy_error_message()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v7

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponse;->getError()I

    move-result p1

    const/4 v8, -0x1

    const-string v9, "errorMsg"

    if-ne p1, v8, :cond_3

    .line 14
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "\u9a8c\u8bc1\u5931\u8d25\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 15
    invoke-virtual {v0, v5, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 17
    invoke-virtual {v0, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnInquiry(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    invoke-virtual {v0, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    invoke-virtual {v0, v9, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnInquiry(Ljava/lang/String;)V

    return-void
.end method
