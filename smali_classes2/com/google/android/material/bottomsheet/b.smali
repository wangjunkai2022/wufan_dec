.class public Lcom/google/android/material/bottomsheet/b;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/b$b;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic M(Lcom/google/android/material/bottomsheet/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->N()V

    return-void
.end method

.method private N()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method private O(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 2
    .param p1    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/b;->a:Z

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->N()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/material/bottomsheet/a;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/a;->i()V

    .line 6
    :cond_1
    new-instance p2, Lcom/google/android/material/bottomsheet/b$b;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/google/android/material/bottomsheet/b$b;-><init>(Lcom/google/android/material/bottomsheet/b;Lcom/google/android/material/bottomsheet/b$a;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0(I)V

    :goto_0
    return-void
.end method

.method private P(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/a;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/material/bottomsheet/a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->f()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/bottomsheet/b;->O(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->P(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->P(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
