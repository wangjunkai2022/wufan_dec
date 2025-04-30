.class public Ly2/b;
.super Ljava/lang/Object;
.source "MultiChoiceModeWrapper.java"

# interfaces
.implements Ly2/a;


# instance fields
.field private a:Ly2/a;

.field private b:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/b;->a:Ly2/a;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ly2/a;->a(Landroid/view/ActionMode;IJZ)V

    .line 2
    iget-object p2, p0, Ly2/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/AbsHListView;->getCheckedItemCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/b;->a:Ly2/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ly2/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly2/b;->a:Ly2/a;

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/b;->a:Ly2/a;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/b;->a:Ly2/a;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ly2/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/b;->a:Ly2/a;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2
    iget-object p1, p0, Ly2/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v0, 0x0

    iput-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->Q()V

    .line 4
    iget-object p1, p0, Ly2/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    .line 5
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AdapterView;->r()V

    .line 6
    iget-object p1, p0, Ly2/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 7
    iget-object p1, p0, Ly2/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/b;->a:Ly2/a;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
