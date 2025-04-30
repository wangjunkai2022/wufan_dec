.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;
.super Ljava/lang/Object;
.source "LuckDrawAddressDialog.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->commitAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u63d0\u4ea4\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u63d0\u4ea4\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
