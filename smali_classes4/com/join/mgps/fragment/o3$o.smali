.class Lcom/join/mgps/fragment/o3$o;
.super Ljava/lang/Object;
.source "NewArenaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$o;->a:Lcom/join/mgps/fragment/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$o;->a:Lcom/join/mgps/fragment/o3;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/join/mgps/fragment/o3;->Z(Lcom/join/mgps/fragment/o3;ILandroidx/fragment/app/FragmentTransaction;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$o;->a:Lcom/join/mgps/fragment/o3;

    iget-object p1, p1, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$o;->a:Lcom/join/mgps/fragment/o3;

    iput v0, p1, Lcom/join/mgps/fragment/o3;->t0:I

    return-void
.end method
