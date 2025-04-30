.class Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;
.super Ljava/lang/Object;
.source "ChangeAccountNickNameActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->changeNickName(Ljava/lang/String;)V
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
        "Lcom/join/mgps/dto/AccountresultData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

.field final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->val$nickname:Ljava/lang/String;

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
            "Lcom/join/mgps/dto/AccountresultData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->dialogLoding:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/login/LoginResultMain;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountresultData;->isIs_success()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    iget-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->val$nickname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    iget-object v0, p2, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/join/mgps/dto/AccountBean;

    iget-object p2, p2, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    const-string p2, "\u6570\u636e\u5f02\u5e38"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->error(Ljava/lang/String;)V

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->dialogLoding:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
