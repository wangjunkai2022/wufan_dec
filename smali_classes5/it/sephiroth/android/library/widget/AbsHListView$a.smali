.class Lit/sephiroth/android/library/widget/AbsHListView$a;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView$j;

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/AbsHListView$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iput-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->a:Landroid/view/View;

    iput-object p3, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$j;->run()V

    :cond_0
    return-void
.end method
