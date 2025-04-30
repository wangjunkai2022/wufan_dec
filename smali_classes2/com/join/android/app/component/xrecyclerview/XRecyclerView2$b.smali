.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "XRecyclerView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$b;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
