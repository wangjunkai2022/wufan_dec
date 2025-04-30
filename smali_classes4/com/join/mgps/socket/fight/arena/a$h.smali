.class Lcom/join/mgps/socket/fight/arena/a$h;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->r([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/BattleChallengeConfig;

.field final synthetic b:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$h;->b:Lcom/join/mgps/socket/fight/arena/a;

    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$h;->a:Lcom/join/mgps/dto/BattleChallengeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$h;->b:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$h;->a:Lcom/join/mgps/dto/BattleChallengeConfig;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$y;->z(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$h;->b:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    return-void
.end method
