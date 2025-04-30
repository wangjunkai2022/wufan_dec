.class public final Lcom/join/android/app/mgsim/wufun/databinding/o5;
.super Ljava/lang/Object;
.source "ChioceItemRecommand2CoverBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/view/SimpleDraweeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/view/SimpleDraweeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o5;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/o5;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/o5;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "rootView"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    new-instance v0, Lcom/join/android/app/mgsim/wufun/databinding/o5;

    invoke-direct {v0, p0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/o5;-><init>(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    return-object v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/o5;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/o5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/o5;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/o5;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0c00c2

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/o5;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/o5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o5;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/o5;->b()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    return-object v0
.end method
