.class public final Lcom/join/android/app/mgsim/wufun/databinding/g2;
.super Ljava/lang/Object;
.source "ActivityTestScroolAcitivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/appbar/CollapsingToolbarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->c:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 5
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 7
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 8
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->g:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 9
    iput-object p8, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->h:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/g2;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0900f9

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f09029d

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f09046d

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v6, :cond_0

    .line 4
    move-object v7, p0

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f090cf3

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz v8, :cond_0

    const v0, 0x7f090d00

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    if-eqz v9, :cond_0

    const v0, 0x7f091053

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 8
    new-instance p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v10}, Lcom/join/android/app/mgsim/wufun/databinding/g2;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;Landroid/widget/ImageView;)V

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/g2;
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
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/g2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/g2;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/g2;
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

    const v0, 0x7f0c0074

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/g2;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/g2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/g2;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/g2;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method
