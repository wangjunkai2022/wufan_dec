.class public Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/sdk/Unicorn/base/api/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->dispatchHandler(ILcom/sdk/Unicorn/base/api/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/Unicorn/base/api/CallBack<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

.field public final synthetic val$callBack:Lcom/sdk/Unicorn/base/api/CallBack;


# direct methods
.method public constructor <init>(Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;Lcom/sdk/Unicorn/base/api/CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager$1;->this$0:Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    iput-object p2, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager$1;->val$callBack:Lcom/sdk/Unicorn/base/api/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed code--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed status--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager$1;->val$callBack:Lcom/sdk/Unicorn/base/api/CallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sdk/Unicorn/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess code--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess msg--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess status--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess response--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager$1;->val$callBack:Lcom/sdk/Unicorn/base/api/CallBack;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/sdk/Unicorn/base/api/CallBack;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    iget-object v0, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager$1;->val$callBack:Lcom/sdk/Unicorn/base/api/CallBack;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sdk/Unicorn/base/api/CallBack;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
