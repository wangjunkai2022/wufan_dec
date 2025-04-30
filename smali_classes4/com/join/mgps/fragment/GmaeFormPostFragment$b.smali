.class Lcom/join/mgps/fragment/GmaeFormPostFragment$b;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;->d1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iput p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d0(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    const v0, 0x7f110206

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-static {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Q(Lcom/join/mgps/fragment/GmaeFormPostFragment;)Lcom/join/mgps/dialog/p0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
