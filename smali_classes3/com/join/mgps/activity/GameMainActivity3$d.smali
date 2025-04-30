.class Lcom/join/mgps/activity/GameMainActivity3$d;
.super Ljava/lang/Object;
.source "GameMainActivity3.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3;->A2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$d;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$d;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GameMainActivity3;->B2()V

    return-void
.end method

.method public onSuccess(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$d;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GameMainActivity3;->B2()V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    return-void
.end method
