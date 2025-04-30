.class Lcom/join/mgps/socket/fight/arena/a$v;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->l([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$v;->c:Lcom/join/mgps/socket/fight/arena/a;

    iput p2, p0, Lcom/join/mgps/socket/fight/arena/a$v;->a:I

    iput-object p3, p0, Lcom/join/mgps/socket/fight/arena/a$v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$v;->c:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/socket/fight/arena/a$v;->a:I

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$v;->b:Ljava/lang/Object;

    const/16 v2, 0x65

    invoke-interface {p1, v2, v0, v1}, Lcom/join/mgps/socket/fight/arena/a$y;->w0(IILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$v;->c:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    return-void
.end method
