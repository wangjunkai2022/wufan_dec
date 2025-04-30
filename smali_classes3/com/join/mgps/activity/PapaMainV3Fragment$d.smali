.class Lcom/join/mgps/activity/PapaMainV3Fragment$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PapaMainV3Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV3Fragment;->c1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$d;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$d;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->m0(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$d;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->n0(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$d;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->m0(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z

    return-void
.end method
