.class Lcom/join/mgps/fragment/f$d;
.super Ljava/lang/Object;
.source "CardViewPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f;->F(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f$d;->a:Lcom/join/mgps/fragment/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f$d;->a:Lcom/join/mgps/fragment/f;

    invoke-static {v0}, Lcom/join/mgps/fragment/f;->T(Lcom/join/mgps/fragment/f;)V

    return-void
.end method
