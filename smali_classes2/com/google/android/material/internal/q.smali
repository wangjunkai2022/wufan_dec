.class Lcom/google/android/material/internal/q;
.super Lcom/google/android/material/internal/t;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Lcom/google/android/material/internal/s;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/t;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static b(Landroid/view/ViewGroup;)Lcom/google/android/material/internal/q;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/internal/t;->a(Landroid/view/View;)Lcom/google/android/material/internal/t;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/q;

    return-object p0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/t;->a:Lcom/google/android/material/internal/t$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/t$a;->b(Landroid/view/View;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/t;->a:Lcom/google/android/material/internal/t$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/t$a;->h(Landroid/view/View;)V

    return-void
.end method
