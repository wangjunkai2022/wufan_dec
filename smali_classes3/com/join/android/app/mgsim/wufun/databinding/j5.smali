.class public final Lcom/join/android/app/mgsim/wufun/databinding/j5;
.super Ljava/lang/Object;
.source "ChioceItemGameClassifyContentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Lcom/join/mgps/customview/WrapContentGridView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/join/mgps/customview/WrapContentGridView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/WrapContentGridView;Lcom/join/mgps/customview/WrapContentGridView;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/WrapContentGridView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/customview/WrapContentGridView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j5;->a:Lcom/join/mgps/customview/WrapContentGridView;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/j5;->b:Lcom/join/mgps/customview/WrapContentGridView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/j5;
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
    check-cast p0, Lcom/join/mgps/customview/WrapContentGridView;

    .line 3
    new-instance v0, Lcom/join/android/app/mgsim/wufun/databinding/j5;

    invoke-direct {v0, p0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/j5;-><init>(Lcom/join/mgps/customview/WrapContentGridView;Lcom/join/mgps/customview/WrapContentGridView;)V

    return-object v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/j5;
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
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/j5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/j5;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/j5;
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

    const v0, 0x7f0c00bd

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/j5;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/j5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/join/mgps/customview/WrapContentGridView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j5;->a:Lcom/join/mgps/customview/WrapContentGridView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/j5;->b()Lcom/join/mgps/customview/WrapContentGridView;

    move-result-object v0

    return-object v0
.end method
