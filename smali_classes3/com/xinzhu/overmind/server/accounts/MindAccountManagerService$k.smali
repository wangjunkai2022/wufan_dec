.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$response",
            "val$opPackageName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;->val$response:Landroid/accounts/IAccountManagerResponse;

    iput-object p3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;->val$opPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMessage"
        }
    .end annotation

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "accounts"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 2
    array-length v0, p1

    new-array v0, v0, [Landroid/accounts/Account;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p1, v1

    check-cast v2, Landroid/accounts/Account;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;->val$response:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;->val$opPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$1900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method
