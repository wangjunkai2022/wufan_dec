.class Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;
.super Ljava/lang/Object;
.source "PlayerInfoContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p1

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {v2}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->e(Lcom/papa91/battle/protocol/RoomPosition;ZI)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->b(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {v2}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->e(Lcom/papa91/battle/protocol/RoomPosition;ZI)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-static {v1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->a(Lcom/papa91/battle/protocol/RoomPosition;I)V

    :cond_3
    :goto_0
    return-void
.end method
