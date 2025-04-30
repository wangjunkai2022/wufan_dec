.class Lcom/join/mgps/dialog/r0$b;
.super Ljava/lang/Object;
.source "GDTAdVipDialog.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/r0;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Lcom/join/mgps/dto/SearchPostsBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/r0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r0$b;->a:Lcom/join/mgps/dialog/r0;

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
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchPostsBean;",
            ">;>;",
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
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchPostsBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchPostsBean;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
