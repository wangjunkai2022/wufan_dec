.class Lcom/join/mgps/socket/fight/arena/a$c;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$c;->a:Lcom/join/mgps/socket/fight/arena/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$c;->a:Lcom/join/mgps/socket/fight/arena/a;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/a;->h(Lcom/join/mgps/socket/fight/arena/a;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$c;->a:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$c;->a:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a;->g(Lcom/join/mgps/socket/fight/arena/a;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$y;->W(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$c;->a:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    return-void
.end method
