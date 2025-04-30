.class Lcom/flipboard/bottomsheet/BottomSheetLayout$e;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->J(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$e$a;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$e$a;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
