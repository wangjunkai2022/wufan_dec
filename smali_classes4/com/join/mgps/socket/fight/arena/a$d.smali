.class Lcom/join/mgps/socket/fight/arena/a$d;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$d;->a:Lcom/join/mgps/socket/fight/arena/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$d;->a:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->g(Lcom/join/mgps/socket/fight/arena/a;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$d;->a:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$d;->a:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a;->g(Lcom/join/mgps/socket/fight/arena/a;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$y;->W(I)V

    :cond_0
    return-void
.end method
