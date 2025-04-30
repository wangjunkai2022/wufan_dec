.class public final Lcom/join/android/app/mgsim/wufun/databinding/u;
.super Ljava/lang/Object;
.source "ActivityEverydayNewGameBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/join/android/app/mgsim/wufun/databinding/qc0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/join/mgps/customview/XListView4NewGame;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/join/android/app/mgsim/wufun/databinding/qc0;Lcom/join/mgps/customview/XListView4NewGame;Lcom/join/mgps/customview/ForumLoadingView;Lcom/join/mgps/ptr/PtrClassicFrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/mgsim/wufun/databinding/qc0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/customview/XListView4NewGame;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/mgps/customview/ForumLoadingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/join/mgps/ptr/PtrClassicFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u;->a:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/u;->b:Lcom/join/android/app/mgsim/wufun/databinding/qc0;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/u;->c:Lcom/join/mgps/customview/XListView4NewGame;

    .line 5
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/u;->d:Lcom/join/mgps/customview/ForumLoadingView;

    .line 6
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/u;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/u;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f090088

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/qc0;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/qc0;

    move-result-object v4

    const v0, 0x7f0908e1

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/join/mgps/customview/XListView4NewGame;

    if-eqz v5, :cond_0

    const v0, 0x7f090986

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/join/mgps/customview/ForumLoadingView;

    if-eqz v6, :cond_0

    const v0, 0x7f0909e2

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v7, :cond_0

    .line 6
    new-instance v0, Lcom/join/android/app/mgsim/wufun/databinding/u;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/join/android/app/mgsim/wufun/databinding/u;-><init>(Landroid/widget/RelativeLayout;Lcom/join/android/app/mgsim/wufun/databinding/qc0;Lcom/join/mgps/customview/XListView4NewGame;Lcom/join/mgps/customview/ForumLoadingView;Lcom/join/mgps/ptr/PtrClassicFrameLayout;)V

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/u;
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
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/u;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/u;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/u;
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

    const v0, 0x7f0c0030

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/u;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/u;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/u;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method
