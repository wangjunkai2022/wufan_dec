.class Lcom/join/mgps/socket/fight/arena/a$n;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->v(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$n;->b:Lcom/join/mgps/socket/fight/arena/a;

    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$n;->b:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$n;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$y;->L(Ljava/lang/String;)V

    return-void
.end method
