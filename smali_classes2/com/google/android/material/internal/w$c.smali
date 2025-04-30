.class Lcom/google/android/material/internal/w$c;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/w;->d(Landroid/view/View;Lcom/google/android/material/internal/w$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/w$e;

.field final synthetic b:Lcom/google/android/material/internal/w$f;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/w$e;Lcom/google/android/material/internal/w$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/w$c;->a:Lcom/google/android/material/internal/w$e;

    iput-object p2, p0, Lcom/google/android/material/internal/w$c;->b:Lcom/google/android/material/internal/w$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/w$c;->a:Lcom/google/android/material/internal/w$e;

    new-instance v1, Lcom/google/android/material/internal/w$f;

    iget-object v2, p0, Lcom/google/android/material/internal/w$c;->b:Lcom/google/android/material/internal/w$f;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/w$f;-><init>(Lcom/google/android/material/internal/w$f;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/w$e;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/w$f;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
