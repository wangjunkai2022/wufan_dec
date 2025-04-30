.class Lit/sephiroth/android/library/widget/AbsHListView$b;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->K0:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L0:Z

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->K0:Z

    .line 3
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->E(Lit/sephiroth/android/library/widget/AbsHListView;Z)V

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->F(Lit/sephiroth/android/library/widget/AbsHListView;Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method
