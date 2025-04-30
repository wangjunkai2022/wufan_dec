.class Lcom/flipboard/bottomsheet/BottomSheetLayout$b;
.super Lcom/flipboard/bottomsheet/BottomSheetLayout$h;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$h;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$a;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$h;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    :cond_0
    return-void
.end method
