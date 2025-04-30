.class Lit/sephiroth/android/library/widget/AbsHListView$o;
.super Ljava/lang/Object;
.source "AbsHListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$o;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$o;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$o;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->D(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$o;->a:I

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$o;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$o;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->L(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$o;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
