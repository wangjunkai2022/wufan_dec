.class Lit/sephiroth/android/library/widget/AbsHListView$k$b;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView$k;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView$k;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$k;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->c:Lit/sephiroth/android/library/widget/AbsHListView$k;

    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->a:I

    iput p3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->c:Lit/sephiroth/android/library/widget/AbsHListView$k;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->a:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->b:I

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView$k;->c(II)V

    return-void
.end method
