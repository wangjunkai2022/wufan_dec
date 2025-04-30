.class Lcom/join/mgps/activity/MGMainActivity$d0;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->add(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$d0;->a:Lcom/join/mgps/activity/MGMainActivity;

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
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;)V"
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

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$d0;->a:Lcom/join/mgps/activity/MGMainActivity;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->addSuccess(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$d0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/MGMainActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$d0;->a:Lcom/join/mgps/activity/MGMainActivity;

    const-string p2, "\u6dfb\u52a0\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
