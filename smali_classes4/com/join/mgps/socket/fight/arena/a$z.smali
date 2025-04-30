.class final Lcom/join/mgps/socket/fight/arena/a$z;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "z"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method public constructor <init>(Lcom/join/mgps/socket/fight/arena/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$z;->b:Lcom/join/mgps/socket/fight/arena/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$z;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$z;->b:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$z;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$y;->L(Ljava/lang/String;)V

    return-void
.end method
