.class Lcom/join/mgps/activity/login/LoginSplashActivity$2;
.super Ljava/lang/Object;
.source "LoginSplashActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginSplashActivity;->toLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/activity/login/LoginResultMain<",
        "Lcom/join/mgps/dto/AccountresultData<",
        "Lcom/join/mgps/dto/AccountBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

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
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->dismissLoadingDialog()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/login/LoginResultMain;

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p2}, Lcom/join/mgps/activity/login/LoginSplashActivity;->dismissLoadingDialog()V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountresultData;->isIs_success()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountresultData;->getUser_info()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountBean;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, p2, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountresultData;->getGame_list_permission()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/mgps/Util/UtilsMy;->A3(Landroid/content/Context;Ljava/util/List;)V

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->K(Landroid/content/Context;)V

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getUser_info()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V

    goto :goto_1

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    const-string p2, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    :goto_1
    return-void
.end method
