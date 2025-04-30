.class Lcom/join/mgps/activity/login/LoginMainActivity$3;
.super Ljava/lang/Object;
.source "LoginMainActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep()V
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
        "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->val$number:Ljava/lang/String;

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
            "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    const-string p2, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u3002"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/login/LoginResultMain;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    move-result p2

    if-nez p2, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->isNewMembers()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->isMobilePhone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->val$number:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    const-string p2, "\u7528\u6237\u540d\u4e0d\u5b58\u5728\uff0c\u8bf7\u5148\u7528\u624b\u673a\u53f7\u6ce8\u518c\u8d26\u53f7\uff01"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->isMobilePhone()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->val$number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->isSetPwd()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isSetPwd(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->val$number:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    .line 13
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    return-void
.end method
