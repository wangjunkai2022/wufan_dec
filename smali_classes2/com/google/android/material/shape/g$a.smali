.class Lcom/google/android/material/shape/g$a;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/shape/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/g$a;->a:Lcom/google/android/material/shape/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/g$a;->a:Lcom/google/android/material/shape/g;

    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->e()V

    return-void
.end method
