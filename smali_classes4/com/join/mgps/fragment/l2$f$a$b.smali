.class Lcom/join/mgps/fragment/l2$f$a$b;
.super Ljava/lang/Object;
.source "GameFromBuildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/l2$f$a;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/join/mgps/fragment/l2$f$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/l2$f$a;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l2$f$a$b;->b:Lcom/join/mgps/fragment/l2$f$a;

    iput-object p2, p0, Lcom/join/mgps/fragment/l2$f$a$b;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/l2$f$a$b;->b:Lcom/join/mgps/fragment/l2$f$a;

    iget-object p1, p1, Lcom/join/mgps/fragment/l2$f$a;->c:Lcom/join/mgps/fragment/l2$f;

    iget-object p1, p1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget v0, p1, Lcom/join/mgps/fragment/l2;->u:I

    iget-object p1, p1, Lcom/join/mgps/fragment/l2;->l:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/fragment/l2$f$a$b;->b:Lcom/join/mgps/fragment/l2$f$a;

    iget-object p1, p1, Lcom/join/mgps/fragment/l2$f$a;->c:Lcom/join/mgps/fragment/l2$f;

    iget-object p1, p1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget p1, p1, Lcom/join/mgps/fragment/l2;->u:I

    if-nez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/l2$f$a$b;->b:Lcom/join/mgps/fragment/l2$f$a;

    iget-object v0, p1, Lcom/join/mgps/fragment/l2$f$a;->c:Lcom/join/mgps/fragment/l2$f;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object p1, p1, Lcom/join/mgps/fragment/l2$f$a;->a:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/l2;->U(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/l2$f$a$b;->b:Lcom/join/mgps/fragment/l2$f$a;

    iget-object v0, p1, Lcom/join/mgps/fragment/l2$f$a;->c:Lcom/join/mgps/fragment/l2$f;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget p1, p1, Lcom/join/mgps/fragment/l2$f$a;->b:I

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/l2;->T(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/l2$f$a$b;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
