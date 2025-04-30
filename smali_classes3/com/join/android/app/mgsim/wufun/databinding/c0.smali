.class public final Lcom/join/android/app/mgsim/wufun/databinding/c0;
.super Ljava/lang/Object;
.source "ActivityForumPostsTagSelectBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/join/android/app/mgsim/wufun/databinding/j00;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/join/mgps/customview/XListView2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/join/android/app/mgsim/wufun/databinding/j00;Lcom/join/mgps/customview/XListView2;Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/mgsim/wufun/databinding/j00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/customview/XListView2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/mgps/customview/ForumLoadingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/c0;->a:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/c0;->b:Lcom/join/android/app/mgsim/wufun/databinding/j00;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/c0;->c:Lcom/join/mgps/customview/XListView2;

    .line 5
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/c0;->d:Lcom/join/mgps/customview/ForumLoadingView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/c0;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f09006a

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/j00;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/j00;

    move-result-object v0

    const v1, 0x7f0908e1

    .line 3
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/customview/XListView2;

    if-eqz v2, :cond_1

    const v1, 0x7f090986

    .line 4
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/customview/ForumLoadingView;

    if-eqz v3, :cond_0

    .line 5
    new-instance v1, Lcom/join/android/app/mgsim/wufun/databinding/c0;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/join/android/app/mgsim/wufun/databinding/c0;-><init>(Landroid/widget/LinearLayout;Lcom/join/android/app/mgsim/wufun/databinding/j00;Lcom/join/mgps/customview/XListView2;Lcom/join/mgps/customview/ForumLoadingView;)V

    return-object v1

    :cond_0
    const v0, 0x7f090986

    goto :goto_0

    :cond_1
    const v0, 0x7f0908e1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/c0;
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
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/c0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/c0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/c0;
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

    const v0, 0x7f0c0038

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/c0;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/c0;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/c0;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
