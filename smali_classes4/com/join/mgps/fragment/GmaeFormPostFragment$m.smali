.class Lcom/join/mgps/fragment/GmaeFormPostFragment$m;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;->playVideo()V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$m;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$m;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->R0()V

    return-void
.end method
