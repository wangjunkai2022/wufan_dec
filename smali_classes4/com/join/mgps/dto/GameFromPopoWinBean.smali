.class public Lcom/join/mgps/dto/GameFromPopoWinBean;
.super Ljava/lang/Object;
.source "GameFromPopoWinBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBean;->error:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBean;->data:Ljava/util/List;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBean;->error:I

    return-void
.end method
