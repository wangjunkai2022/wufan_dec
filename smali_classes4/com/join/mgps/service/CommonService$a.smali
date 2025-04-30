.class Lcom/join/mgps/service/CommonService$a;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->g0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultMainBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/join/mgps/service/CommonService;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService$a;->a:Ljava/lang/String;

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
            "Lcom/join/mgps/dto/ResultMainBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u8bf7\u6c42\u5931\u8d25\uff01"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.broadcast.bespeak.sussess"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$a;->a:Ljava/lang/String;

    const-string v0, "gameid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/join/mgps/service/CommonService;

    invoke-static {p2}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u6536\u5230\uff0c\u6e38\u620f\u4e0a\u67b6\u540e\u4f1a\u901a\u77e5\u60a8"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
