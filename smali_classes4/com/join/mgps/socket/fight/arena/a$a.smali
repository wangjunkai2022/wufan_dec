.class Lcom/join/mgps/socket/fight/arena/a$a;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->s([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;[Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->d:Lcom/join/mgps/socket/fight/arena/a;

    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$a;->a:[Ljava/lang/Object;

    iput p3, p0, Lcom/join/mgps/socket/fight/arena/a$a;->b:I

    iput-object p4, p0, Lcom/join/mgps/socket/fight/arena/a$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, ""

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a;->a:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->a:[Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v0, p1

    .line 3
    :catch_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->d:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/a;->b(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/a$a;->d:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {v2}, Lcom/join/mgps/socket/fight/arena/a;->b(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/papa/sim/statistic/p;->g1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->d:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/socket/fight/arena/a$a;->b:I

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a$y;->A0(ILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a;->d:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    return-void
.end method
