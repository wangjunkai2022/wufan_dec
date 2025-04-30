.class public Lit/sephiroth/android/library/widget/AbsHListView$c;
.super Lit/sephiroth/android/library/widget/AdapterView$c;
.source "AbsHListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">.c;"
    }
.end annotation


# instance fields
.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$c;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView$c;-><init>(Lit/sephiroth/android/library/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView$c;->a()V

    return-void
.end method

.method public onChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView$c;->onChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView$c;->onInvalidated()V

    return-void
.end method
