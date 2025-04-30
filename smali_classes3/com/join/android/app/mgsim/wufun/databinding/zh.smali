.class public final Lcom/join/android/app/mgsim/wufun/databinding/zh;
.super Ljava/lang/Object;
.source "FragmentSearchGameListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/join/android/app/mgsim/wufun/databinding/xz;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;Lcom/join/android/app/mgsim/wufun/databinding/xz;)V
    .locals 0
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/android/app/mgsim/wufun/databinding/xz;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/zh;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/zh;->b:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/zh;->c:Lcom/join/android/app/mgsim/wufun/databinding/xz;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/zh;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f090da9

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v1, :cond_0

    const v0, 0x7f091255

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v2}, Lcom/join/android/app/mgsim/wufun/databinding/xz;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/xz;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/join/android/app/mgsim/wufun/databinding/zh;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v2, p0, v1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/zh;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;Lcom/join/android/app/mgsim/wufun/databinding/xz;)V

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/zh;
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
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/zh;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/zh;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/zh;
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

    const v0, 0x7f0c022b

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/zh;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/zh;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zh;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/zh;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
