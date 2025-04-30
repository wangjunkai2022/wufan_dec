.class Lit/sephiroth/android/library/widget/AbsHListView$j;
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
    name = "j"
.end annotation


# instance fields
.field c:I

.field final synthetic d:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$j;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$o;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$j;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$j;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    .line 3
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$j;->c:I

    if-eqz v1, :cond_1

    .line 4
    iget v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-lez v0, :cond_1

    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    .line 5
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$j;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$j;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v0, v2, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->q(Landroid/view/View;IJ)Z

    :cond_1
    return-void
.end method
