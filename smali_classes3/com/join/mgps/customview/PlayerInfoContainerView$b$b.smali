.class Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;
.super Ljava/lang/Object;
.source "PlayerInfoContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;->a:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->d()V

    return-void
.end method
