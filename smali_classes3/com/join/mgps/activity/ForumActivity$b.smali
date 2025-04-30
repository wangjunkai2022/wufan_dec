.class Lcom/join/mgps/activity/ForumActivity$b;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Lcom/join/mgps/ptr/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$b;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->d(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$b;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->a1()V

    return-void
.end method
