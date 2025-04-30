.class public final Lcom/join/android/app/mgsim/wufun/databinding/sz;
.super Ljava/lang/Object;
.source "MgForumProfileMessageReplyActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Lcom/join/mgps/customview/KeyboardListenLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/join/android/app/mgsim/wufun/databinding/oo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/join/android/app/mgsim/wufun/databinding/j00;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/join/mgps/customview/XListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/KeyboardListenLayout;Lcom/join/android/app/mgsim/wufun/databinding/oo;Lcom/join/android/app/mgsim/wufun/databinding/j00;Lcom/join/mgps/customview/ForumLoadingView;Lcom/join/mgps/customview/XListView;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/KeyboardListenLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/mgsim/wufun/databinding/oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/android/app/mgsim/wufun/databinding/j00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/mgps/customview/ForumLoadingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/join/mgps/customview/XListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sz;->a:Lcom/join/mgps/customview/KeyboardListenLayout;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/sz;->b:Lcom/join/android/app/mgsim/wufun/databinding/oo;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/sz;->c:Lcom/join/android/app/mgsim/wufun/databinding/j00;

    .line 5
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/sz;->d:Lcom/join/mgps/customview/ForumLoadingView;

    .line 6
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/sz;->e:Lcom/join/mgps/customview/XListView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/sz;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f09088d

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/oo;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/oo;

    move-result-object v4

    const v0, 0x7f090896

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/j00;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/j00;

    move-result-object v5

    const v0, 0x7f090986

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/join/mgps/customview/ForumLoadingView;

    if-eqz v6, :cond_0

    const v0, 0x7f090a4a

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/join/mgps/customview/XListView;

    if-eqz v7, :cond_0

    .line 7
    new-instance v0, Lcom/join/android/app/mgsim/wufun/databinding/sz;

    move-object v3, p0

    check-cast v3, Lcom/join/mgps/customview/KeyboardListenLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/join/android/app/mgsim/wufun/databinding/sz;-><init>(Lcom/join/mgps/customview/KeyboardListenLayout;Lcom/join/android/app/mgsim/wufun/databinding/oo;Lcom/join/android/app/mgsim/wufun/databinding/j00;Lcom/join/mgps/customview/ForumLoadingView;Lcom/join/mgps/customview/XListView;)V

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/sz;
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
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/sz;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/sz;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/sz;
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

    const v0, 0x7f0c0433

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/sz;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/sz;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/join/mgps/customview/KeyboardListenLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/sz;->a:Lcom/join/mgps/customview/KeyboardListenLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/sz;->b()Lcom/join/mgps/customview/KeyboardListenLayout;

    move-result-object v0

    return-object v0
.end method
