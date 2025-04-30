.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView$d;
.super Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$d;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/appbar/AppBarLayout;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$d;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->X0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    return-void
.end method
