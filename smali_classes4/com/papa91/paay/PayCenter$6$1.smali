.class Lcom/papa91/paay/PayCenter$6$1;
.super Ljava/lang/Object;
.source "PayCenter.java"

# interfaces
.implements Lcom/papa91/paay/NetWorkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/PayCenter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/paay/PayCenter$6;


# direct methods
.method constructor <init>(Lcom/papa91/paay/PayCenter$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/PayCenter$6$1;->this$0:Lcom/papa91/paay/PayCenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/paay/PayResponse;

    invoke-direct {v0}, Lcom/papa91/paay/PayResponse;-><init>()V

    .line 2
    new-instance v1, Lcom/papa91/paay/PayResponseData;

    invoke-direct {v1}, Lcom/papa91/paay/PayResponseData;-><init>()V

    .line 3
    invoke-virtual {v1, p1}, Lcom/papa91/paay/PayResponseData;->setBuy_error_message(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/papa91/paay/PayResponse;->setData(Lcom/papa91/paay/PayResponseData;)V

    const/4 p1, -0x1

    .line 5
    invoke-virtual {v0, p1}, Lcom/papa91/paay/PayResponse;->setError(I)V

    .line 6
    invoke-static {v0}, Lcom/papa91/paay/PayCenter;->access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;

    .line 7
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$300()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$200()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/papa91/paay/PayResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/paay/PayResponse;

    invoke-static {p1}, Lcom/papa91/paay/PayCenter;->access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;

    .line 2
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$300()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$400()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.broadcast.action_update_user_purchase_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
