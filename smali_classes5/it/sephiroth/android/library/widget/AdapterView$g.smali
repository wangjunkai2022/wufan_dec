.class Lit/sephiroth/android/library/widget/AdapterView$g;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AdapterView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView$g;->a:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;Lit/sephiroth/android/library/widget/AdapterView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView$g;-><init>(Lit/sephiroth/android/library/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$g;->a:Lit/sephiroth/android/library/widget/AdapterView;

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$g;->a:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->c(Lit/sephiroth/android/library/widget/AdapterView;)V

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$g;->a:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->d(Lit/sephiroth/android/library/widget/AdapterView;)V

    :cond_1
    :goto_0
    return-void
.end method
