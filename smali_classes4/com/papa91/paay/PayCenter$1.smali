.class final Lcom/papa91/paay/PayCenter$1;
.super Landroid/os/Handler;
.source "PayCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/paay/PayCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$000()Lcom/papa91/paay/PayResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$000()Lcom/papa91/paay/PayResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/paay/PayResponse;->getError()I

    move-result p1

    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$100()Lcom/papa91/paay/PayListener;

    move-result-object p1

    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$000()Lcom/papa91/paay/PayResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/papa91/paay/PayListener;->onResult(Lcom/papa91/paay/PayResponse;)V

    :cond_1
    :goto_0
    return-void
.end method
