.class Lit/sephiroth/android/library/widget/AbsHListView$k$a;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView$k;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$k;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$k;

    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$k;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$a;->a:I

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)V

    return-void
.end method
