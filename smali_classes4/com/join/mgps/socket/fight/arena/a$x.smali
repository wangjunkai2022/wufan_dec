.class Lcom/join/mgps/socket/fight/arena/a$x;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->n([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$x;->b:Lcom/join/mgps/socket/fight/arena/a;

    iput p2, p0, Lcom/join/mgps/socket/fight/arena/a$x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$x;->b:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->REMOVE:Lapp/mgsim/arena/RoomSeatState;

    iget v1, p0, Lcom/join/mgps/socket/fight/arena/a$x;->a:I

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a$y;->i0(Lapp/mgsim/arena/RoomSeatState;I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$x;->b:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    return-void
.end method
