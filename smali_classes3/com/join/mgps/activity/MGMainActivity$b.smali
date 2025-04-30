.class Lcom/join/mgps/activity/MGMainActivity$b;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->startIntentOldUserRecom(J)V
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
        "Ljava/util/List<",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$b;->b:Lcom/join/mgps/activity/MGMainActivity;

    iput-wide p2, p0, Lcom/join/mgps/activity/MGMainActivity$b;->a:J

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
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$b;->b:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    check-cast p1, Ljava/io/Serializable;

    const-string v0, "listDatas"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-wide v0, p0, Lcom/join/mgps/activity/MGMainActivity$b;->a:J

    const-string p1, "range"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$b;->b:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
