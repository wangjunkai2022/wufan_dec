.class Lit/sephiroth/android/library/widget/AbsHListView$d;
.super Lit/sephiroth/android/library/widget/AbsHListView$o;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$o;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$d;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    if-ltz v1, :cond_2

    .line 2
    iget v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v2, v1, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$o;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v2, v1, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    iget-wide v4, v1, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    invoke-virtual {v1, v0, v2, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->u0(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setPressed(Z)V

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_1
    return-void
.end method
