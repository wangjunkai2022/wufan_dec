.class Lcom/papa91/activity/EmuBaseActivity$15;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Lcom/papa91/paay/PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->buySp()V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$15;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/papa91/paay/PayResponse;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponse;->getData()Lcom/papa91/paay/PayResponseData;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponseData;->getBuy_error_message()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/papa91/paay/PayResponseData;->getResult()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "result"

    .line 5
    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
