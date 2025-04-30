.class Lcom/join/mgps/fragment/GmaeFormPostFragment$a;
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
.field final synthetic a:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$a;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$a;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-static {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Q(Lcom/join/mgps/fragment/GmaeFormPostFragment;)Lcom/join/mgps/dialog/p0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
